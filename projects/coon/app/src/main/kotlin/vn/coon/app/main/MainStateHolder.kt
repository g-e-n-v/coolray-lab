package vn.coon.app.main

import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.flow.stateIn
import vn.coon.app.data.wifi.WifiAddressRepository

class MainStateHolder(
    private val wifiAddressRepository: WifiAddressRepository,
    scope: CoroutineScope,
) {
    val uiState: StateFlow<MainUiState> = wifiAddressRepository.wifiAddress
        .map { MainUiState(wifiAddress = it) }
        .stateIn(
            scope = scope,
            started = SharingStarted.Eagerly,
            initialValue = MainUiState(),
        )

    fun start() {
        wifiAddressRepository.start()
    }

    fun stop() {
        wifiAddressRepository.stop()
    }
}
