package vn.culycentral.app

import android.app.Activity
import android.net.ConnectivityManager
import android.net.LinkProperties
import android.net.Network
import android.net.NetworkCapabilities
import android.net.NetworkRequest
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.util.Log
import android.widget.TextView
import java.net.Inet4Address

class MainActivity : Activity() {
    private lateinit var status: TextView
    private lateinit var cm: ConnectivityManager
    private val mainHandler = Handler(Looper.getMainLooper())
    private var wifiNetwork: Network? = null
    private var registered = false

    private val callback = object : ConnectivityManager.NetworkCallback() {
        override fun onAvailable(network: Network) {
            wifiNetwork = network
            refresh()
        }

        override fun onLinkPropertiesChanged(network: Network, lp: LinkProperties) {
            refresh()
        }

        override fun onLost(network: Network) {
            if (wifiNetwork === network) {
                wifiNetwork = null
            }
            refresh()
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        status = findViewById(R.id.status)
        cm = getSystemService(ConnectivityManager::class.java)
    }

    override fun onStart() {
        super.onStart()
        try {
            cm.registerNetworkCallback(wifiRequest, callback, mainHandler)
            registered = true
        } catch (e: Exception) {
            Log.w(TAG, "registerNetworkCallback failed", e)
        }
        refresh()
    }

    override fun onStop() {
        super.onStop()
        if (!registered) return
        try {
            cm.unregisterNetworkCallback(callback)
        } catch (e: Exception) {
            Log.w(TAG, "unregisterNetworkCallback failed", e)
        }
        registered = false
    }

    private fun refresh() {
        val lp = wifiNetwork?.let { cm.getLinkProperties(it) }
        val addresses = lp?.linkAddresses
            ?.mapNotNull { it.address }
            ?.filterNot { it.isLoopbackAddress }
            .orEmpty()
        val ip = addresses.firstOrNull { it is Inet4Address } ?: addresses.firstOrNull()
        status.text = ip?.hostAddress ?: getString(R.string.no_connection)
    }

    private companion object {
        const val TAG = "CulyCentral"
        val wifiRequest = NetworkRequest.Builder()
            .addTransportType(NetworkCapabilities.TRANSPORT_WIFI)
            .build()
    }
}
