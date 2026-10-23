package vn.coon.app

import android.app.Application

class CoonApplication : Application() {

    val container: AppContainer by lazy { AppContainer(this) }
}
