package vn.coon.app.main

import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.plus
import kotlinx.coroutines.test.UnconfinedTestDispatcher
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Test
import vn.coon.app.data.wifi.WifiStatus
import vn.coon.app.data.wifi.WifiStatusRepository

@OptIn(ExperimentalCoroutinesApi::class)
class MainStateHolderTest {

    private class FakeWifiStatusRepository : WifiStatusRepository {
        private val _status = MutableStateFlow(WifiStatus())
        override val status: StateFlow<WifiStatus> = _status.asStateFlow()

        override fun start() = Unit

        override fun stop() = Unit

        fun emit(status: WifiStatus) {
            _status.value = status
        }
    }

    @Test
    fun uiStateExposesLatestWifiStatus() = runTest {
        val repository = FakeWifiStatusRepository()
        val holder = MainStateHolder(
            repository,
            backgroundScope + UnconfinedTestDispatcher(testScheduler),
        )

        assertEquals(MainUiState(), holder.uiState.value)
        val connected = WifiStatus(connected = true, ssid = "Coolray-5G", ipAddress = "192.168.1.10")
        repository.emit(connected)
        assertEquals(MainUiState(connected), holder.uiState.value)
        repository.emit(WifiStatus())
        assertEquals(MainUiState(), holder.uiState.value)
    }
}
