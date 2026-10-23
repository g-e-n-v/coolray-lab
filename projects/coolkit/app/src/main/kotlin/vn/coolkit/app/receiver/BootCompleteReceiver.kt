package vn.coolkit.app.receiver

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import vn.coolkit.app.CoolKitApplication

class BootCompleteReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
        if (intent.action == Intent.ACTION_BOOT_COMPLETED) {
            val container = (context.applicationContext as CoolKitApplication).container
            container.adbRepository.enableOverTcp()
        }
    }
}
