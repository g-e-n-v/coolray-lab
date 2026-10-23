package vn.coon.app.data.wifi

import kotlinx.coroutines.flow.StateFlow

interface WifiAddressRepository {
    val wifiAddress: StateFlow<String?>

    fun start()

    fun stop()
}
