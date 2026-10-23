package vn.coon.app.data.wifi.source

data class WifiNetworkState(
    val connected: Boolean,
    val ipAddress: String?,
)

interface WifiNetworkDataSource {
    fun start(onChanged: () -> Unit)

    fun stop()

    fun current(): WifiNetworkState
}
