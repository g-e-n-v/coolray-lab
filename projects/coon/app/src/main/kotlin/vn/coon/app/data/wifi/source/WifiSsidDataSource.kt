package vn.coon.app.data.wifi.source

interface WifiSsidDataSource {
    fun currentSsid(): String?
}
