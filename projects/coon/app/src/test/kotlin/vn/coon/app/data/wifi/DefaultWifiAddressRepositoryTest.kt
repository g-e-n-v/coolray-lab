package vn.coon.app.data.wifi

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import vn.coon.app.data.wifi.source.WifiAddressDataSource

class DefaultWifiAddressRepositoryTest {

    private class FakeWifiAddressDataSource : WifiAddressDataSource {
        var started = false
            private set
        var listener: ((String?) -> Unit)? = null
            private set

        fun emit(address: String?) {
            listener?.invoke(address)
        }

        override fun start(onAddressChanged: (String?) -> Unit) {
            started = true
            listener = onAddressChanged
        }

        override fun stop() {
            started = false
            listener = null
        }
    }

    @Test
    fun exposesNullBeforeStart() {
        val repository = DefaultWifiAddressRepository(FakeWifiAddressDataSource())

        assertNull(repository.wifiAddress.value)
    }

    @Test
    fun startObservesSourceUpdates() {
        val dataSource = FakeWifiAddressDataSource()
        val repository = DefaultWifiAddressRepository(dataSource)

        repository.start()

        assertTrue(dataSource.started)
        dataSource.emit("192.168.1.10")
        assertEquals("192.168.1.10", repository.wifiAddress.value)
        dataSource.emit(null)
        assertNull(repository.wifiAddress.value)
    }

    @Test
    fun stopDetachesFromSourceButKeepsLastValue() {
        val dataSource = FakeWifiAddressDataSource()
        val repository = DefaultWifiAddressRepository(dataSource)
        repository.start()
        dataSource.emit("192.168.1.10")

        repository.stop()

        assertFalse(dataSource.started)
        dataSource.emit("10.0.0.1")
        assertEquals("192.168.1.10", repository.wifiAddress.value)
    }
}
