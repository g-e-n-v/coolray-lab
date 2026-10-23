package vn.coon.app

import android.content.Context
import android.net.ConnectivityManager
import vn.coon.app.data.adb.AdbRepository
import vn.coon.app.data.adb.DefaultAdbRepository
import vn.coon.app.data.adb.source.DefaultSystemPropertiesDataSource
import vn.coon.app.data.wifi.DefaultWifiAddressRepository
import vn.coon.app.data.wifi.WifiAddressRepository
import vn.coon.app.data.wifi.source.DefaultWifiAddressDataSource

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
