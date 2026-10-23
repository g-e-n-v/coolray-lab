package vn.coon.app.data.adb

import org.junit.Assert.assertEquals
import org.junit.Test
import vn.coon.app.data.adb.source.SystemPropertiesDataSource

class DefaultAdbRepositoryTest {

    private class RecordingSystemPropertiesDataSource : SystemPropertiesDataSource {
        val written = mutableListOf<Pair<String, String>>()

        override fun set(key: String, value: String) {
            written.add(key to value)
        }
    }

    @Test
    fun enableOverTcpWritesTcpPortProperty() {
        val systemProperties = RecordingSystemPropertiesDataSource()
        val repository = DefaultAdbRepository(systemProperties)

        repository.enableOverTcp()

        assertEquals(listOf("persist.adb.tcp.port" to "5555"), systemProperties.written)
    }
}
