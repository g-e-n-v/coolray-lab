package vn.coon.app.data.adb

import vn.coon.app.data.adb.source.SystemPropertiesDataSource

class DefaultAdbRepository(
    private val systemProperties: SystemPropertiesDataSource,
) : AdbRepository {

    override fun enableOverTcp() {
        systemProperties.set(TCP_PORT_PROPERTY, TCP_PORT)
    }

    private companion object {
        const val TCP_PORT_PROPERTY = "persist.adb.tcp.port"
        const val TCP_PORT = "5555"
    }
}
