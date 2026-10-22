package vn.culycentral.app

import android.annotation.SuppressLint
import android.util.Log

@SuppressLint("PrivateApi")
object SysProps {
    private const val TAG = "CulyCentral"

    private val setMethod by lazy {
        Class.forName("android.os.SystemProperties")
            .getMethod("set", String::class.java, String::class.java)
    }

    fun set(key: String, value: String) {
        runCatching { setMethod.invoke(null, key, value) }
            .onFailure { Log.w(TAG, "SystemProperties.set($key, $value) failed", it) }
    }
}
