package vn.coolkit.app.util

import java.net.InetAddress
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class InetAddressesTest {

    @Test
    fun prefersIpv4OverIpv6() {
        val addresses = listOf(
            InetAddress.getByName("fe80::1"),
            InetAddress.getByName("192.168.1.10"),
        )
        assertEquals("192.168.1.10", addresses.preferredHostAddress())
    }

    @Test
    fun skipsLoopbackAddresses() {
        val addresses = listOf(
            InetAddress.getLoopbackAddress(),
            InetAddress.getByName("192.168.1.10"),
        )
        assertEquals("192.168.1.10", addresses.preferredHostAddress())
    }

    @Test
    fun fallsBackToFirstNonLoopbackAddress() {
        val addresses = listOf(
            InetAddress.getLoopbackAddress(),
            InetAddress.getByName("fd00::1"),
        )
        assertEquals("fd00:0:0:0:0:0:0:1", addresses.preferredHostAddress())
    }

    @Test
    fun returnsNullWhenNoUsableAddress() {
        assertNull(emptyList<InetAddress>().preferredHostAddress())
        assertNull(listOf(InetAddress.getLoopbackAddress()).preferredHostAddress())
    }
}
