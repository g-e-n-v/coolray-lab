package vn.coon.app.receiver

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.os.Handler
import android.os.Looper
import vn.coon.app.CoonApplication
import vn.coon.app.main.MainActivity

class BootCompleteReceiver : BroadcastReceiver() {

    override fun onReceive(context: Context, intent: Intent) {
        if (intent.action != Intent.ACTION_BOOT_COMPLETED) return
        val container = (context.applicationContext as CoonApplication).container
        container.adbRepository.enableOverTcp()
        val pendingResult = goAsync()
        Handler(Looper.getMainLooper()).postDelayed(
            {
                context.startActivity(
                    Intent(context, MainActivity::class.java)
                        .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK),
                )
                pendingResult.finish()
            },
            LAUNCH_DELAY_MS,
        )
    }

    private companion object {
        const val LAUNCH_DELAY_MS = 4_000L
    }
}
