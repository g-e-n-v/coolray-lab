package vn.coon.app

import android.content.Context
import android.net.ConnectivityManager
import android.net.wifi.WifiManager
import vn.coon.app.data.adb.AdbRepository
import vn.coon.app.data.adb.DefaultAdbRepository
import vn.coon.app.data.adb.source.DefaultSystemPropertiesDataSource
import vn.coon.app.data.wifi.DefaultWifiStatusRepository
import vn.coon.app.data.wifi.WifiStatusRepository
import vn.coon.app.data.wifi.source.DefaultWifiNetworkDataSource
import vn.coon.app.data.wifi.source.DefaultWifiSsidDataSource

class AppContainer(context: Context) {

    private val appContext = context.applicationContext

    val adbRepository: AdbRepository by lazy {
        DefaultAdbRepository(DefaultSystemPropertiesDataSource())
    }

    val wifiStatusRepository: WifiStatusRepository by lazy {
        DefaultWifiStatusRepository(
            DefaultWifiNetworkDataSource(
                appContext.getSystemService(ConnectivityManager::class.java),
            ),
            DefaultWifiSsidDataSource(
                appContext.getSystemService(WifiManager::class.java),
            ),
        )
    }
}
