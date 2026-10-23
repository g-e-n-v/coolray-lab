package vn.coolkit.app

import android.content.Context
import android.net.ConnectivityManager
import vn.coolkit.app.data.adb.AdbRepository
import vn.coolkit.app.data.adb.DefaultAdbRepository
import vn.coolkit.app.data.adb.source.DefaultSystemPropertiesDataSource
import vn.coolkit.app.data.wifi.DefaultWifiAddressRepository
import vn.coolkit.app.data.wifi.WifiAddressRepository
import vn.coolkit.app.data.wifi.source.DefaultWifiAddressDataSource

class AppContainer(context: Context) {

    private val appContext = context.applicationContext

    val adbRepository: AdbRepository by lazy {
        DefaultAdbRepository(DefaultSystemPropertiesDataSource())
    }

    val wifiAddressRepository: WifiAddressRepository by lazy {
        DefaultWifiAddressRepository(
            DefaultWifiAddressDataSource(
                appContext.getSystemService(ConnectivityManager::class.java),
            ),
        )
    }
}
