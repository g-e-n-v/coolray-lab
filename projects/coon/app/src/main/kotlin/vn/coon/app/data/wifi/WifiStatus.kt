package vn.coon.app.data.wifi

data class WifiStatus(
    val connected: Boolean = false,
    val ssid: String? = null,
    val ipAddress: String? = null,
)
