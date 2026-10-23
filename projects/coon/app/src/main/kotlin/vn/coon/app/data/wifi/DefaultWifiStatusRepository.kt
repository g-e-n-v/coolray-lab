package vn.coon.app.data.wifi

import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import vn.coon.app.data.wifi.source.WifiNetworkDataSource
import vn.coon.app.data.wifi.source.WifiSsidDataSource

class DefaultWifiStatusRepository(
    private val networkDataSource: WifiNetworkDataSource,
    private val ssidDataSource: WifiSsidDataSource,
) : WifiStatusRepository {

    private val _status = MutableStateFlow(WifiStatus())
    override val status: StateFlow<WifiStatus> = _status.asStateFlow()

    private val onNetworkChanged: () -> Unit = {
        _status.value = readStatus()
    }

    override fun start() {
        networkDataSource.start(onNetworkChanged)
        _status.value = readStatus()
    }

    override fun stop() {
        networkDataSource.stop()
    }

    private fun readStatus(): WifiStatus {
        val network = networkDataSource.current()
        return WifiStatus(
            connected = network.connected,
            ssid = ssidDataSource.currentSsid(),
            ipAddress = network.ipAddress,
        )
    }
}
