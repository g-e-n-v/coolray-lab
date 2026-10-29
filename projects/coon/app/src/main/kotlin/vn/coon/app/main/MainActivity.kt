package vn.coon.app.main

import android.app.Activity
import android.content.Intent
import android.os.Bundle
import android.provider.Settings
import android.view.View
import android.widget.FrameLayout
import android.widget.ImageView
import android.widget.TextView
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import vn.coon.app.CoonApplication
import vn.coon.app.R
import vn.coon.app.data.wifi.WifiStatus
import java.util.Calendar

class MainActivity : Activity() {

    private class Tab(
        val button: ImageView,
        val screen: View,
        val outlineRes: Int,
        val filledRes: Int,
    )

    private lateinit var stateHolder: MainStateHolder
    private lateinit var tabs: List<Tab>
    private lateinit var wifiChip: View
    private lateinit var wifiLabel: TextView
    private lateinit var ipGroup: View
    private lateinit var ipAddress: TextView
    private lateinit var clockHour: TextView
    private lateinit var clockMinute: TextView
    private val scope = CoroutineScope(Dispatchers.Main.immediate + SupervisorJob())

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        val container = (application as CoonApplication).container
        stateHolder = MainStateHolder(container.wifiStatusRepository, scope)
        bindViews()
        wireWifiChip()
        scope.launch {
            while (true) {
                tickClock()
                delay(CLOCK_TICK_MS)
            }
        }
        scope.launch {
            stateHolder.uiState.collect { renderWifi(it.wifi) }
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

    private fun bindViews() {
        clockHour = findViewById(R.id.clock_hour)
        clockMinute = findViewById(R.id.clock_minute)
        wifiChip = findViewById(R.id.wifi_chip)
        wifiLabel = findViewById(R.id.wifi_label)
        ipGroup = findViewById(R.id.ip_group)
        ipAddress = findViewById(R.id.ip_address)
        val content = findViewById<View>(R.id.content)
        content.clipToOutline = true
        val screenContainer = findViewById<FrameLayout>(R.id.screen_container)
        val homeScreen = HomeView(this)
        val shortcutsScreen = layoutInflater.inflate(R.layout.view_shortcuts, screenContainer, false)
        val appsScreen = layoutInflater.inflate(R.layout.view_apps, screenContainer, false)
        val aboutScreen = layoutInflater.inflate(R.layout.view_about, screenContainer, false)
        screenContainer.addView(homeScreen)
        screenContainer.addView(shortcutsScreen)
        screenContainer.addView(appsScreen)
        screenContainer.addView(aboutScreen)
        tabs = listOf(
            Tab(
                findViewById(R.id.nav_home),
                homeScreen,
                R.drawable.ic_home_outline,
                R.drawable.ic_home_filled,
            ),
            Tab(
                findViewById(R.id.nav_shortcuts),
                shortcutsScreen,
                R.drawable.ic_shortcuts_outline,
                R.drawable.ic_shortcuts_filled,
            ),
            Tab(
                findViewById(R.id.nav_apps),
                appsScreen,
                R.drawable.ic_apps_outline,
                R.drawable.ic_apps_filled,
            ),
            Tab(
                findViewById(R.id.nav_about),
                aboutScreen,
                R.drawable.ic_info_outline,
                R.drawable.ic_info_filled,
            ),
        )
        tabs.forEach { tab ->
            tab.button.setOnClickListener { selectTab(tab) }
        }
        selectTab(tabs.first())
    }

    private fun selectTab(selected: Tab) {
        tabs.forEach { tab ->
            val active = tab === selected
            tab.button.isActivated = active
            tab.button.setImageResource(if (active) tab.filledRes else tab.outlineRes)
            tab.screen.visibility = if (active) View.VISIBLE else View.GONE
        }
    }

    private fun wireWifiChip() {
        wifiChip.setOnClickListener {
            startActivity(
                Intent(Settings.ACTION_WIFI_SETTINGS)
                    .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK),
            )
        }
    }

    private fun renderWifi(wifi: WifiStatus) {
        wifiLabel.text = when {
            !wifi.connected -> getString(R.string.no_connection)
            wifi.ssid != null -> wifi.ssid
            else -> getString(R.string.wifi_connected_no_ssid)
        }
        wifiLabel.setTextColor(
            if (wifi.connected) {
                getColor(R.color.status_text)
            } else {
                getColor(R.color.status_text_muted)
            },
        )
        val address = wifi.ipAddress
        if (address == null) {
            ipGroup.visibility = View.GONE
        } else {
            ipAddress.text = address
            ipGroup.visibility = View.VISIBLE
        }
    }

    private fun tickClock() {
        val calendar = Calendar.getInstance()
        val hour = calendar.get(Calendar.HOUR_OF_DAY).toString().padStart(2, '0')
        val minute = calendar.get(Calendar.MINUTE).toString().padStart(2, '0')
        if (clockHour.text != hour) {
            clockHour.text = hour
        }
        if (clockMinute.text != minute) {
            clockMinute.text = minute
        }
    }

    private companion object {
        const val CLOCK_TICK_MS = 1_000L
    }
}
