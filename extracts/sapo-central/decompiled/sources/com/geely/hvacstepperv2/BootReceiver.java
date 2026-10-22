package com.geely.hvacstepperv2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
public class BootReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if ("android.intent.action.BOOT_COMPLETED".equals(action) || "android.intent.action.LOCKED_BOOT_COMPLETED".equals(action)) {
            try {
                if (context.getSharedPreferences("tela_preta_prefs", 0).getBoolean("hvac_stepper_enabled", false)) {
                    context.startForegroundService(new Intent(context, (Class<?>) TempStepperService.class));
                }
            } catch (Exception unused) {
            }
        }
    }
}
