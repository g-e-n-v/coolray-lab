package vn.coon.app.main

import android.app.Activity
import android.os.Bundle
import android.widget.TextView
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import kotlinx.coroutines.launch
import vn.coon.app.CoonApplication
import vn.coon.app.R

class MainActivity : Activity() {

    private lateinit var status: TextView
    private lateinit var stateHolder: MainStateHolder
    private val scope = CoroutineScope(Dispatchers.Main.immediate + SupervisorJob())

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        status = findViewById(R.id.status)
        val container = (application as CoonApplication).container
        stateHolder = MainStateHolder(container.wifiAddressRepository, scope)
        scope.launch {
            stateHolder.uiState.collect { state ->
                status.text = state.wifiAddress ?: getString(R.string.no_connection)
            }
        }
    }

    override fun onStart() {
        super.onStart()
        stateHolder.start()
    }

    override fun onStop() {
        stateHolder.stop()
        super.onStop()
    }

    override fun onDestroy() {
        scope.cancel()
        super.onDestroy()
    }
}
