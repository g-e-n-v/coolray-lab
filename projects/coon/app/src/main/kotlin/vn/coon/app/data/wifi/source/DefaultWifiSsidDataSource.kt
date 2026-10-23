package vn.coon.app.data.wifi.source

import android.net.wifi.WifiManager
import android.util.Log
import vn.coon.app.util.cleanSsid

class DefaultWifiSsidDataSource(
    private val wifiManager: WifiManager,
) : WifiSsidDataSource {

    override fun currentSsid(): String? {
        val rawSsid = try {
            wifiManager.connectionInfo?.ssid
        } catch (e: Exception) {
            Log.w(TAG, "getConnectionInfo failed", e)
            null
        }
        return cleanSsid(rawSsid)
    }

    private companion object {
        const val TAG = "Coon"
    }
}
