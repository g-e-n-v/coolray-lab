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
import vn.coon.app.data.wifi.WifiAddressRepository

@OptIn(ExperimentalCoroutinesApi::class)
class MainStateHolderTest {

    private class FakeWifiAddressRepository : WifiAddressRepository {
        private val _wifiAddress = MutableStateFlow<String?>(null)
        override val wifiAddress: StateFlow<String?> = _wifiAddress.asStateFlow()

        override fun start() = Unit

        override fun stop() = Unit

        fun emit(address: String?) {
            _wifiAddress.value = address
        }
    }

    @Test
    fun uiStateExposesLatestWifiAddress() = runTest {
        val repository = FakeWifiAddressRepository()
        val holder = MainStateHolder(
            repository,
            backgroundScope + UnconfinedTestDispatcher(testScheduler),
        )

        assertEquals(MainUiState(), holder.uiState.value)
        repository.emit("192.168.1.10")
        assertEquals(MainUiState("192.168.1.10"), holder.uiState.value)
        repository.emit(null)
        assertEquals(MainUiState(), holder.uiState.value)
    }
}
