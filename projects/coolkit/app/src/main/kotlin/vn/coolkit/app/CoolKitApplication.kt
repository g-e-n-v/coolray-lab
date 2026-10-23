package vn.coolkit.app

import android.app.Application

class CoolKitApplication : Application() {

    val container: AppContainer by lazy { AppContainer(this) }
}
