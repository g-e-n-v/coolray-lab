package vn.coolkit.app.util

import java.net.Inet4Address
import java.net.InetAddress

fun List<InetAddress>.preferredHostAddress(): String? {
    val usable = filterNot { it.isLoopbackAddress }
    return (usable.firstOrNull { it is Inet4Address } ?: usable.firstOrNull())?.hostAddress
}
