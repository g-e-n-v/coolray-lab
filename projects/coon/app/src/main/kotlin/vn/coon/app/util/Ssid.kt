package vn.coon.app.util

private const val UNKNOWN_SSID = "<unknown ssid>"

fun cleanSsid(rawSsid: String?): String? {
    if (rawSsid.isNullOrBlank()) return null
    val stripped = rawSsid.trim().removeSurrounding("\"").trim()
    if (stripped.isBlank() || stripped == UNKNOWN_SSID) return null
    return stripped
}
