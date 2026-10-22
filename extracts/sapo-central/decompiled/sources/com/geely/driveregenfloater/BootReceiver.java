package com.geely.driveregenfloater;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class BootReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        Log.i("DriveRegenBoot", "onReceive action=" + action);
        if ("android.intent.action.BOOT_COMPLETED".equals(action) || "android.intent.action.LOCKED_BOOT_COMPLETED".equals(action) || "android.intent.action.ACTION_BOOT_HU".equals(action)) {
            if (context.createDeviceProtectedStorageContext().getSharedPreferences("drive_regen_prefs", 0).getBoolean("drive_regen_enabled", false)) {
                context.startForegroundService(new Intent(context, (Class<?>) DriveRegenFloaterService.class));
                return;
            } else {
                Log.i("DriveRegenBoot", "drive_regen_enabled=false — não iniciando serviço");
                return;
            }
        }
        if ("android.intent.action.ACTION_SHUTDOWN_HU".equals(action)) {
            try {
                context.stopService(new Intent(context, (Class<?>) DriveRegenFloaterService.class));
            } catch (Exception unused) {
            }
        }
    }
}
