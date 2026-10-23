package vn.coolkit.app.data.wifi.source

interface WifiAddressDataSource {
    fun start(onAddressChanged: (String?) -> Unit)

    fun stop()
}
