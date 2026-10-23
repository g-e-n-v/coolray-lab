package vn.coon.app.main

import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.flow.stateIn
import vn.coon.app.data.wifi.WifiStatusRepository

class MainStateHolder(
    private val wifiStatusRepository: WifiStatusRepository,
    scope: CoroutineScope,
) {
    val uiState: StateFlow<MainUiState> = wifiStatusRepository.status
        .map { MainUiState(wifi = it) }
        .stateIn(
            scope = scope,
            started = SharingStarted.Eagerly,
            initialValue = MainUiState(),
        )

    fun start() {
        wifiStatusRepository.start()
    }

    fun stop() {
        wifiStatusRepository.stop()
    }
}
