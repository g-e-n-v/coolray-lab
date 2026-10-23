package vn.coolkit.app.data.adb.source

import android.annotation.SuppressLint
import android.util.Log

@SuppressLint("PrivateApi")
class DefaultSystemPropertiesDataSource : SystemPropertiesDataSource {

    private val setMethod by lazy {
        Class.forName("android.os.SystemProperties")
            .getMethod("set", String::class.java, String::class.java)
    }

    override fun set(key: String, value: String) {
        runCatching { setMethod.invoke(null, key, value) }
            .onFailure { Log.w(TAG, "SystemProperties.set($key, $value) failed", it) }
    }

    private companion object {
        const val TAG = "CoolKit"
    }
}
