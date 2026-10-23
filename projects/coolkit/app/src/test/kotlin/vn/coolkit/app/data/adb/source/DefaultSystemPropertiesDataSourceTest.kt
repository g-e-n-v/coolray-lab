package vn.coolkit.app.data.adb.source

import org.junit.Test

class DefaultSystemPropertiesDataSourceTest {

    @Test
    fun setFailsGracefullyWhenSystemPropertiesUnavailable() {
        val dataSource = DefaultSystemPropertiesDataSource()

        dataSource.set("persist.adb.tcp.port", "5555")
    }
}
