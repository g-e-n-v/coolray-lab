package vn.culycentral.app

object AdbEnabler {
    const val PROP = "persist.adb.tcp.port"
    const val PORT = "5555"

    fun enable() = SysProps.set(PROP, PORT)
}
