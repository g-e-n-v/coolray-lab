package vn.coolkit.app.data.wifi.source

import android.net.ConnectivityManager
import android.net.LinkProperties
import android.net.Network
import android.net.NetworkCapabilities
import android.net.NetworkRequest
import android.os.Handler
import android.os.Looper
import android.util.Log
import vn.coolkit.app.util.preferredHostAddress

class DefaultWifiAddressDataSource(
    private val connectivityManager: ConnectivityManager,
) : WifiAddressDataSource {

    private val mainHandler = Handler(Looper.getMainLooper())
    private var wifiNetwork: Network? = null
    private var registered = false
    private var onAddressChanged: ((String?) -> Unit)? = null

    private val callback = object : ConnectivityManager.NetworkCallback() {
        override fun onAvailable(network: Network) {
            wifiNetwork = network
            notifyLatest()
        }

        override fun onLinkPropertiesChanged(network: Network, lp: LinkProperties) {
            notifyLatest()
        }

        override fun onLost(network: Network) {
            if (wifiNetwork === network) {
                wifiNetwork = null
            }
            notifyLatest()
        }
    }

    override fun start(onAddressChanged: (String?) -> Unit) {
        this.onAddressChanged = onAddressChanged
        if (!registered) {
            registered = try {
                connectivityManager.registerNetworkCallback(wifiRequest, callback, mainHandler)
                true
            } catch (e: Exception) {
                Log.w(TAG, "registerNetworkCallback failed", e)
                false
            }
        }
        notifyLatest()
    }

    override fun stop() {
        if (!registered) return
        try {
            connectivityManager.unregisterNetworkCallback(callback)
        } catch (e: Exception) {
            Log.w(TAG, "unregisterNetworkCallback failed", e)
        }
        registered = false
        wifiNetwork = null
        this.onAddressChanged = null
    }

    private fun notifyLatest() {
        val listener = onAddressChanged ?: return
        val linkProperties = wifiNetwork?.let { connectivityManager.getLinkProperties(it) }
        listener(
            linkProperties?.linkAddresses
                .orEmpty()
                .mapNotNull { it.address }
                .preferredHostAddress(),
        )
    }

    private companion object {
        const val TAG = "CoolKit"
        val wifiRequest = NetworkRequest.Builder()
            .addTransportType(NetworkCapabilities.TRANSPORT_WIFI)
            .build()
    }
}
