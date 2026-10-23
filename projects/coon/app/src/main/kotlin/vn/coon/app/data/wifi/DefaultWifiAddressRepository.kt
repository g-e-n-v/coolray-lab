package vn.coon.app.data.wifi

import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import vn.coon.app.data.wifi.source.WifiAddressDataSource

class DefaultWifiAddressRepository(
    private val dataSource: WifiAddressDataSource,
) : WifiAddressRepository {

    private val _wifiAddress = MutableStateFlow<String?>(null)
    override val wifiAddress: StateFlow<String?> = _wifiAddress.asStateFlow()

    private val onAddressChanged: (String?) -> Unit = { address ->
        _wifiAddress.value = address
    }

    override fun start() {
        dataSource.start(onAddressChanged)
    }

    override fun stop() {
        dataSource.stop()
    }
}
