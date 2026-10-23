package vn.coon.app.main

import vn.coon.app.data.wifi.WifiStatus

data class MainUiState(
    val wifi: WifiStatus = WifiStatus(),
)
