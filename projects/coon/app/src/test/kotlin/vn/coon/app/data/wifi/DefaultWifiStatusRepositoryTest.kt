package vn.coon.app.data.wifi

import kotlinx.coroutines.flow.MutableStateFlow
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import vn.coon.app.data.wifi.source.WifiNetworkDataSource
import vn.coon.app.data.wifi.source.WifiNetworkState
import vn.coon.app.data.wifi.source.WifiSsidDataSource

class DefaultWifiStatusRepositoryTest {

    private class FakeWifiNetworkDataSource : WifiNetworkDataSource {
        var started = false
            private set
        var onChanged: (() -> Unit)? = null
            private set
        var state = WifiNetworkState(connected = false, ipAddress = null)

        fun notifyChanged() {
            onChanged?.invoke()
        }

        override fun start(onChanged: () -> Unit) {
            started = true
            this.onChanged = onChanged
        }

        override fun stop() {
            started = false
            this.onChanged = null
        }

        override fun current(): WifiNetworkState = state
    }

    private class FakeWifiSsidDataSource : WifiSsidDataSource {
        val flow = MutableStateFlow<String?>(null)

        override fun currentSsid(): String? = flow.value
    }

    @Test
    fun exposesDisconnectedBeforeStart() {
        val repository = DefaultWifiStatusRepository(FakeWifiNetworkDataSource(), FakeWifiSsidDataSource())

        assertEquals(WifiStatus(), repository.status.value)
    }

    @Test
    fun startReadsCurrentStateFromBothSources() {
        val network = FakeWifiNetworkDataSource().apply {
            state = WifiNetworkState(connected = true, ipAddress = "192.168.1.10")
        }
        val ssid = FakeWifiSsidDataSource().apply { flow.value = "Coolray-5G" }
        val repository = DefaultWifiStatusRepository(network, ssid)

        repository.start()

        assertTrue(network.started)
        assertEquals(
            WifiStatus(connected = true, ssid = "Coolray-5G", ipAddress = "192.168.1.10"),
            repository.status.value,
        )
    }

    @Test
    fun networkUpdateRefreshesWholeStatus() {
        val network = FakeWifiNetworkDataSource()
        val ssid = FakeWifiSsidDataSource().apply { flow.value = "Coolray-5G" }
        val repository = DefaultWifiStatusRepository(network, ssid)
        repository.start()

        network.state = WifiNetworkState(connected = true, ipAddress = "10.98.197.218")
        network.notifyChanged()

        assertEquals(
            WifiStatus(connected = true, ssid = "Coolray-5G", ipAddress = "10.98.197.218"),
            repository.status.value,
        )

        network.state = WifiNetworkState(connected = false, ipAddress = null)
        network.notifyChanged()

        assertEquals(
            WifiStatus(connected = false, ssid = "Coolray-5G", ipAddress = null),
            repository.status.value,
        )
    }

    @Test
    fun stopDetachesFromSourceButKeepsLastValue() {
        val network = FakeWifiNetworkDataSource()
        val repository = DefaultWifiStatusRepository(network, FakeWifiSsidDataSource())
        repository.start()
        network.state = WifiNetworkState(connected = true, ipAddress = "192.168.1.10")
        network.notifyChanged()

        repository.stop()

        assertFalse(network.started)
        network.state = WifiNetworkState(connected = false, ipAddress = null)
        network.notifyChanged()
        assertEquals(
            WifiStatus(connected = true, ipAddress = "192.168.1.10"),
            repository.status.value,
        )
    }
}
