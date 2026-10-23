package vn.coon.app.data.wifi

import kotlinx.coroutines.flow.StateFlow

interface WifiStatusRepository {
    val status: StateFlow<WifiStatus>

    fun start()

    fun stop()
}
