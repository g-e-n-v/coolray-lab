package vn.coon.app.util

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class SsidTest {

    @Test
    fun stripsQuotes() {
        assertEquals("Coolray-5G", cleanSsid("\"Coolray-5G\""))
    }

    @Test
    fun keepsPlainSsid() {
        assertEquals("Coolray-5G", cleanSsid("Coolray-5G"))
    }

    @Test
    fun mapsUnknownSsidToNull() {
        assertNull(cleanSsid("<unknown ssid>"))
    }

    @Test
    fun mapsBlankToNull() {
        assertNull(cleanSsid(null))
        assertNull(cleanSsid(""))
        assertNull(cleanSsid("   "))
        assertNull(cleanSsid("\"\""))
    }
}
