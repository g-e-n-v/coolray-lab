package vn.coon.app.data.wifi.source

import android.net.ConnectivityManager
import android.net.LinkProperties
import android.net.Network
import android.net.NetworkCapabilities
import android.net.NetworkRequest
import android.os.Handler
import android.os.Looper
import android.util.Log
import vn.coon.app.util.preferredHostAddress

class DefaultWifiNetworkDataSource(
    private val connectivityManager: ConnectivityManager,
) : WifiNetworkDataSource {

    private val mainHandler = Handler(Looper.getMainLooper())
    private var wifiNetwork: Network? = null
    private var registered = false
    private var onChanged: (() -> Unit)? = null

    private val callback = object : ConnectivityManager.NetworkCallback() {
        override fun onAvailable(network: Network) {
            wifiNetwork = network
            notifyChanged()
        }

        override fun onLinkPropertiesChanged(network: Network, lp: LinkProperties) {
            notifyChanged()
        }

        override fun onLost(network: Network) {
            if (wifiNetwork === network) {
                wifiNetwork = null
            }
            notifyChanged()
        }
    }

    override fun start(onChanged: () -> Unit) {
        this.onChanged = onChanged
        if (!registered) {
            registered = try {
                connectivityManager.registerNetworkCallback(wifiRequest, callback, mainHandler)
                true
            } catch (e: Exception) {
                Log.w(TAG, "registerNetworkCallback failed", e)
                false
            }
        }
        notifyChanged()
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
        this.onChanged = null
    }

    override fun current(): WifiNetworkState {
        val linkProperties = wifiNetwork?.let { connectivityManager.getLinkProperties(it) }
        val ipAddress = linkProperties?.linkAddresses
            .orEmpty()
            .mapNotNull { it.address }
            .preferredHostAddress()
        return WifiNetworkState(
            connected = wifiNetwork != null,
            ipAddress = ipAddress,
        )
    }

    private fun notifyChanged() {
        onChanged?.invoke()
    }

    private companion object {
        const val TAG = "Coon"
        val wifiRequest = NetworkRequest.Builder()
            .addTransportType(NetworkCapabilities.TRANSPORT_WIFI)
            .build()
    }
}
