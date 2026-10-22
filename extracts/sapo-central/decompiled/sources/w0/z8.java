package w0;

import android.car.hardware.property.CarPropertyManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Environment;
import android.view.View;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.AppPipFloaterService;
import com.ex.auto.BlackoutFloaterService;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.DpadFloaterService;
import com.ex.auto.ExSapoCastFloaterService;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.HomeWidgetsPollService;
import com.ex.auto.LyricsFloaterService;
import com.ex.auto.MainActivity;
import com.ex.auto.MediaBarFloaterService;
import com.ex.auto.PhoneSyncService;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import com.ex.auto.SplitFloaterService;
import com.ex.auto.TempBattPillFloaterService;
import com.ex.auto.VhalProviderService;
import com.ex.auto.WifiFloaterService;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class z8 implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4628a;
    public final /* synthetic */ MainActivity b;

    public /* synthetic */ z8(MainActivity mainActivity, int i3) {
        this.f4628a = i3;
        this.b = mainActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i3) {
        String string;
        int i4 = 12;
        int i5 = 3;
        int i6 = 1;
        int i7 = 0;
        switch (this.f4628a) {
            case 0:
                MainActivity mainActivity = this.b;
                int i8 = MainActivity.f1002z1;
                mainActivity.startService(new Intent(mainActivity, (Class<?>) CentralWatchdogService.class).putExtra("crash_action", "resume"));
                return;
            case 1:
                MainActivity mainActivity2 = this.b;
                int i9 = MainActivity.f1002z1;
                mainActivity2.startService(new Intent(mainActivity2, (Class<?>) CentralWatchdogService.class).putExtra("crash_action", "disable_all"));
                return;
            case 2:
                MainActivity.K(this.b, 3);
                return;
            case 3:
                MainActivity mainActivity3 = this.b;
                int i10 = MainActivity.f1002z1;
                mainActivity3.o0().edit().putBoolean("keyserver_first_activate_warned", true).apply();
                mainActivity3.I1();
                return;
            case 4:
                MainActivity mainActivity4 = this.b;
                int i11 = MainActivity.f1002z1;
                mainActivity4.L0();
                return;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                MainActivity mainActivity5 = this.b;
                String str = (String) y1.g.c0(mainActivity5.D, mainActivity5.f1007c0);
                if (str == null) {
                    androidx.activity.result.b.n(R.string.k_refresh_list_choose_audio, 0, mainActivity5, "getString(...)");
                    return;
                }
                String strZ0 = o2.k.z0(str, '/');
                String strJ2 = MainActivity.j2(str);
                String str2 = u.f4307v;
                String strJ3 = MainActivity.j2(str2);
                StringBuilder sbM = androidx.activity.result.b.m("\n            echo \"== apagando áudio: ", strZ0, " ==\"\n            TGT_INO=$(stat -c %i ", strJ3, " 2>/dev/null)\n            SRC_INO=$(stat -c %i ");
                androidx.activity.result.b.q(sbM, strJ2, " 2>/dev/null)\n            if [ -n \"$SRC_INO\" ] && [ \"$TGT_INO\" = \"$SRC_INO\" ] && grep -F \" ", str2, " \" /proc/mounts >/dev/null 2>&1; then\n              umount ");
                androidx.activity.result.b.q(sbM, strJ3, " 2>/dev/null || umount -l ", strJ3, " 2>/dev/null || true\n              restorecon -v ");
                androidx.activity.result.b.q(sbM, strJ3, " 2>/dev/null || true\n              echo \"unbind_deste_audio\"\n            else\n              echo \"unbind_nao_necessario\"\n            fi\n            rm -f ", strJ2, " 2>&1 || exit 41\n            sync 2>/dev/null || true\n            if [ -f ");
                sbM.append(strJ2);
                sbM.append(" ]; then echo \"FALHA_REMOVER\"; exit 42; else echo \"REMOVIDO_OK\"; fi\n        ");
                String strV = o2.m.V(sbM.toString());
                String string2 = mainActivity5.getString(R.string.k_deleting_audio_named, strZ0);
                i2.g.d(string2, "getString(...)");
                MainActivity.J1(mainActivity5, mainActivity5.findViewById(R.id.masterAudioLockDelete), string2, 3000L, 15000, strV, string2, null, new e9(mainActivity5, 11), false, null, null, 3712);
                return;
            case MusicClient.TYPE_GESTURE /* 6 */:
                MainActivity mainActivity6 = this.b;
                int i12 = MainActivity.f1002z1;
                String strV2 = o2.m.V("\n        TS=$(date +%Y%m%d-%H%M%S)\n        F=/sdcard/Download/aa_route_create_${TS}.txt\n        (\n          " + t1.d(null, mainActivity6.getSharedPreferences("tela_preta_prefs", 0).getBoolean("auto_proxy_enabled", false)) + "\n        ) 2>&1 | tee \"$F\"\n        echo \"Salvo: $F\"\n    ");
                String string3 = mainActivity6.getString(R.string.k_creating_network_routes);
                i2.g.d(string3, "getString(...)");
                MainActivity.J1(mainActivity6, null, string3, 3000L, 30000, strV2, mainActivity6.getString(R.string.k_creating_routes_toast), new e9(mainActivity6, i4), new e9(mainActivity6, 13), false, null, new y2(mainActivity6, 9, strV2), 1536);
                return;
            case PlaybackState.STATE_ERROR /* 7 */:
                MainActivity mainActivity7 = this.b;
                int i13 = MainActivity.f1002z1;
                ae aeVar = ae.f3361a;
                ae.b("Reiniciar", "reboot pedido pelo botão da tela", true);
                mainActivity7.C.execute(new ma(mainActivity7, 14));
                return;
            case 8:
                MainActivity mainActivity8 = this.b;
                int i14 = MainActivity.f1002z1;
                mainActivity8.P0();
                return;
            case 9:
                MainActivity mainActivity9 = this.b;
                int i15 = MainActivity.f1002z1;
                mainActivity9.o0().edit().putBoolean("rvc_black_bg", true).apply();
                mainActivity9.Z0 = true;
                mainActivity9.X0 = Boolean.TRUE;
                mainActivity9.v1();
                mainActivity9.startForegroundService(new Intent(mainActivity9, (Class<?>) CentralWatchdogService.class));
                String string4 = mainActivity9.getString(R.string.k_rvc_black_bg_applying);
                i2.g.d(string4, "getString(...)");
                mainActivity9.t2(string4, 0);
                mainActivity9.C.execute(new ma(mainActivity9, i4));
                return;
            case 10:
                MainActivity mainActivity10 = this.b;
                int i16 = MainActivity.f1002z1;
                mainActivity10.o0().edit().putBoolean("speed_auto_lock_enabled", false).apply();
                mainActivity10.y(false);
                mainActivity10.y1();
                return;
            case 11:
                MainActivity mainActivity11 = this.b;
                String strJ4 = MainActivity.j2("/data/local/tmp/sons");
                StringBuilder sb = new StringBuilder("\n            ");
                sb.append(e8.v());
                sb.append("\n            echo \"== copiar áudios do pen-drive para sons/ ==\"\n            mkdir -p ");
                sb.append(strJ4);
                sb.append(" 2>&1 || exit 20\n            chmod 755 ");
                sb.append(strJ4);
                androidx.activity.result.b.q(sb, " 2>&1 || true\n            copied=0\n            for root in /storage/* /mnt/media_rw/* /mnt/usb* /mnt/media_rw/usb*; do\n              [ -d \"$root\" ] || continue\n              case \"$root\" in\n                /storage/emulated|/storage/self) continue ;;\n              esac\n              echo \"-- procurando em $root\"\n              for f in \"$root\"/*.wav \"$root\"/*.WAV \"$root\"/*.mp3 \"$root\"/*.MP3 \"$root\"/*.ogg \"$root\"/*.OGG \"$root\"/*.flac \"$root\"/*.FLAC \"$root\"/*.m4a \"$root\"/*.M4A \"$root\"/*.aac \"$root\"/*.AAC \\\n                        \"$root\"/*/*.wav \"$root\"/*/*.WAV \"$root\"/*/*.mp3 \"$root\"/*/*.MP3 \\\n                        \"$root\"/*/*.ogg \"$root\"/*/*.OGG \"$root\"/*/*.flac \"$root\"/*/*.FLAC \\\n                        \"$root\"/*/*.m4a \"$root\"/*/*.M4A \"$root\"/*/*.aac \"$root\"/*/*.AAC; do\n                [ -f \"$f\" ] || continue\n                base=${f##*/}\n                base=$(echo \"$base\" | tr ' ' '_')\n                echo \"copiando $f -> /data/local/tmp/sons/$base\"\n                cp -f \"$f\" ", strJ4, "/\"$base\" 2>&1\n                chown root:root ", strJ4);
                androidx.activity.result.b.q(sb, "/\"$base\" 2>/dev/null || true\n                chmod 644 ", strJ4, "/\"$base\" 2>/dev/null || true\n                restorecon -v ", strJ4);
                sb.append("/\"$base\" 2>/dev/null || true\n                copied=$((copied + 1))\n              done\n            done\n            echo \"copiados=$copied\"\n            ls -l ");
                sb.append(strJ4);
                sb.append(" 2>&1 || true\n        ");
                String strV3 = o2.m.V(sb.toString());
                View viewFindViewById = mainActivity11.findViewById(R.id.masterAudioCopyUsb);
                String string5 = mainActivity11.getString(R.string.k_copying_audios_pendrive);
                i2.g.d(string5, "getString(...)");
                MainActivity.J1(mainActivity11, viewFindViewById, string5, 3000L, 60000, strV3, mainActivity11.getString(R.string.k_copying_audios_pendrive), null, new e9(mainActivity11, 10), false, null, null, 3712);
                return;
            case 12:
                MainActivity mainActivity12 = this.b;
                int i17 = MainActivity.f1002z1;
                mainActivity12.C();
                return;
            case 13:
                MainActivity mainActivity13 = this.b;
                int i18 = MainActivity.f1002z1;
                mainActivity13.R1(true);
                return;
            case 14:
                MainActivity mainActivity14 = this.b;
                int i19 = MainActivity.f1002z1;
                mainActivity14.getClass();
                String strH = androidx.activity.result.b.h("centralexauto-", new SimpleDateFormat("yyyyMMdd-HHmmss", Locale.US).format(new Date()), ".txt");
                File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
                if (!externalStoragePublicDirectory.isDirectory() && !externalStoragePublicDirectory.mkdirs()) {
                    androidx.activity.result.b.n(R.string.k_download_folder_inaccessible, 0, mainActivity14, "getString(...)");
                    return;
                }
                File file = new File(externalStoragePublicDirectory, strH);
                try {
                    synchronized (mainActivity14.f1049w0) {
                        string = mainActivity14.f1046v0.toString();
                    }
                    i2.g.d(string, "synchronized(...)");
                    FileOutputStream fileOutputStream = new FileOutputStream(file, false);
                    try {
                        byte[] bytes = string.getBytes(o2.a.f2622a);
                        i2.g.d(bytes, "getBytes(...)");
                        fileOutputStream.write(bytes);
                        fileOutputStream.close();
                        mainActivity14.w("Log", "Ficheiro guardado: " + file.getAbsolutePath());
                        String string6 = mainActivity14.getString(R.string.k_saved_as, strH);
                        i2.g.d(string6, "getString(...)");
                        mainActivity14.t2(string6, 1);
                        return;
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            a1.b.p(fileOutputStream, th);
                            throw th2;
                        }
                    }
                } catch (Exception e3) {
                    String message = e3.getMessage();
                    if (message == null) {
                        message = e3.getClass().getSimpleName();
                    }
                    String string7 = mainActivity14.getString(R.string.k_save_error, message);
                    i2.g.d(string7, "getString(...)");
                    mainActivity14.t2(string7, 1);
                    return;
                }
            case 15:
                MainActivity mainActivity15 = this.b;
                synchronized (mainActivity15.f1049w0) {
                    StringBuilder sb2 = mainActivity15.f1046v0;
                    i2.g.e(sb2, "<this>");
                    sb2.setLength(0);
                }
                androidx.activity.result.b.n(R.string.k_log_cleared, 0, mainActivity15, "getString(...)");
                return;
            case 16:
                MainActivity mainActivity16 = this.b;
                int i20 = MainActivity.f1002z1;
                mainActivity16.o0().edit().putBoolean("aeb_restore_on_boot", true).apply();
                mainActivity16.v1();
                int[] iArr = CentralWatchdogService.S2;
                CentralWatchdogService centralWatchdogService = CentralWatchdogService.V2;
                if (centralWatchdogService != null) {
                    centralWatchdogService.f811a.post(new v2(centralWatchdogService, 7));
                }
                CarPropertyManager carPropertyManager = mainActivity16.M;
                if (carPropertyManager != null) {
                    try {
                        mainActivity16.B.execute(new j9(carPropertyManager, mainActivity16, i6));
                        return;
                    } catch (RejectedExecutionException unused) {
                        return;
                    }
                }
                return;
            case 17:
                MainActivity mainActivity17 = this.b;
                int i21 = MainActivity.f1002z1;
                String string8 = mainActivity17.getString(R.string.k_modo_oficina_trabalhando);
                i2.g.d(string8, "getString(...)");
                h9 h9Var = new h9(mainActivity17, 8);
                mainActivity17.t2(string8, 0);
                mainActivity17.C.execute(new a1.i(h9Var, 29, mainActivity17));
                return;
            case 18:
                MainActivity mainActivity18 = this.b;
                int i22 = MainActivity.f1002z1;
                if (mainActivity18.o0().getBoolean("device_banned", false)) {
                    k5 k5Var = k5.f3786a;
                    SharedPreferences sharedPreferencesO0 = mainActivity18.o0();
                    i2.g.d(sharedPreferencesO0, "<get-prefs>(...)");
                    new Thread(new j5(sharedPreferencesO0, i5)).start();
                    List listU = y1.f.U(new String[]{"quick_access_enabled", "media_bar_floater_enabled", "widget_float_apps_enabled", "widget_float_drive_regen_enabled", "lyrics_floater_enabled", "temp_batt_pill_enabled", "app_pip_enabled", "phone_sync_enabled"});
                    SharedPreferences.Editor editorEdit = mainActivity18.o0().edit();
                    Iterator it = listU.iterator();
                    while (it.hasNext()) {
                        editorEdit.putBoolean((String) it.next(), false);
                    }
                    editorEdit.apply();
                    Iterator it2 = y1.f.U(new Class[]{QuickAccessFloaterService.class, MediaBarFloaterService.class, HomeFloatingWidgetsService.class, HomeWidgetsPollService.class, LyricsFloaterService.class, TempBattPillFloaterService.class, AppPipFloaterService.class, BlackoutFloaterService.class, DpadFloaterService.class, SplitFloaterService.class, WifiFloaterService.class, ExSapoCastFloaterService.class, PhoneSyncService.class, VhalProviderService.class, CentralWatchdogService.class}).iterator();
                    while (it2.hasNext()) {
                        mainActivity18.stopService(new Intent(mainActivity18, (Class<?>) it2.next()));
                    }
                    ae aeVar2 = ae.f3361a;
                    ae.b("Ban", "bloqueio aplicado — serviços parados e recursos desligados", false);
                    mainActivity18.finishAffinity();
                    return;
                }
                return;
            case 19:
                MainActivity mainActivity19 = this.b;
                int i23 = MainActivity.f1002z1;
                String string9 = mainActivity19.getString(R.string.update_declined);
                i2.g.d(string9, "getString(...)");
                mainActivity19.Z1(string9);
                mainActivity19.t2(string9, 0);
                return;
            case 20:
                MainActivity mainActivity20 = this.b;
                mainActivity20.f1018h1 = false;
                mainActivity20.l1();
                return;
            case 21:
                MainActivity mainActivity21 = this.b;
                mainActivity21.f1018h1 = false;
                mainActivity21.l1();
                return;
            case 22:
                MainActivity mainActivity22 = this.b;
                int i24 = MainActivity.f1002z1;
                mainActivity22.o0().edit().putBoolean("gestures_enabled", true).apply();
                mainActivity22.j0();
                mainActivity22.f1018h1 = true;
                mainActivity22.f1014f1 = Boolean.TRUE;
                mainActivity22.l1();
                String string10 = mainActivity22.getString(R.string.xml_gestos_status_aplicando);
                i2.g.d(string10, "getString(...)");
                mainActivity22.t2(string10, 0);
                mainActivity22.startForegroundService(new Intent(mainActivity22, (Class<?>) CentralWatchdogService.class));
                mainActivity22.C.execute(new nb(mainActivity22, i7));
                return;
            case 23:
                MainActivity mainActivity23 = this.b;
                int i25 = MainActivity.f1002z1;
                mainActivity23.J(true, true);
                return;
            case 24:
                MainActivity mainActivity24 = this.b;
                int i26 = MainActivity.f1002z1;
                mainActivity24.v1();
                return;
            case 25:
                MainActivity mainActivity25 = this.b;
                int i27 = MainActivity.f1002z1;
                mainActivity25.v1();
                mainActivity25.J0 = false;
                mainActivity25.y1();
                return;
            case 26:
                MainActivity mainActivity26 = this.b;
                int i28 = MainActivity.f1002z1;
                mainActivity26.J(true, true);
                return;
            case 27:
                MainActivity mainActivity27 = this.b;
                int i29 = MainActivity.f1002z1;
                mainActivity27.L();
                return;
            default:
                MainActivity mainActivity28 = this.b;
                int i30 = MainActivity.f1002z1;
                mainActivity28.finish();
                return;
        }
    }
}
