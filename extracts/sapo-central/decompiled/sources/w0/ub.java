package w0;

import android.content.Intent;
import android.view.View;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.BackgroundKeepAliveActivity;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ub implements h2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4345a;
    public final /* synthetic */ MainActivity b;

    public /* synthetic */ ub(MainActivity mainActivity, int i3) {
        this.f4345a = i3;
        this.b = mainActivity;
    }

    @Override // h2.a
    public final Object a() {
        int i3 = this.f4345a;
        MainActivity mainActivity = this.b;
        switch (i3) {
            case 0:
                String strJ2 = MainActivity.j2("/sdcard/Download");
                StringBuilder sb = new StringBuilder("\n            ");
                sb.append(e8.v());
                sb.append("\n            echo \"== copiar APKs do pen-drive para Downloads ==\"\n            mkdir -p ");
                sb.append(strJ2);
                sb.append(" 2>&1 || exit 20\n            chmod 755 ");
                sb.append(strJ2);
                androidx.activity.result.b.q(sb, " 2>&1 || true\n            copied=0\n            for root in /storage/* /mnt/media_rw/* /mnt/usb* /mnt/media_rw/usb*; do\n              [ -d \"$root\" ] || continue\n              case \"$root\" in\n                /storage/emulated|/storage/self) continue ;;\n              esac\n              echo \"-- procurando em $root\"\n              for f in \"$root\"/*.apk \"$root\"/*.xapk \"$root\"/*.apkm \"$root\"/*/*.apk \"$root\"/*/*.xapk \"$root\"/*/*.apkm \"$root\"/*/*/*.apk \"$root\"/*/*/*.xapk \"$root\"/*/*/*.apkm; do\n                [ -f \"$f\" ] || continue\n                base=${f##*/}\n                echo \"copiando $f -> /sdcard/Download/$base\"\n                cp -f \"$f\" ", strJ2, "/\"$base\" 2>&1 && copied=$((copied + 1))\n              done\n            done\n            echo \"copiados=$copied\"\n            ls -l ", strJ2);
                sb.append(" 2>&1 || true\n        ");
                String strV = o2.m.V(sb.toString());
                MainActivity mainActivity2 = this.b;
                View viewFindViewById = mainActivity2.findViewById(R.id.masterAppsCopyUsb);
                String string = mainActivity2.getString(R.string.k_copying_apks_pendrive);
                i2.g.d(string, "getString(...)");
                MainActivity.J1(mainActivity2, viewFindViewById, string, 3000L, 60000, strV, mainActivity2.getString(R.string.k_copying_apks_pendrive), null, new e9(mainActivity2, 6), false, null, null, 3712);
                return x1.e.f4647c;
            case 1:
                int i4 = MainActivity.f1002z1;
                mainActivity.startActivity(new Intent(mainActivity, (Class<?>) BackgroundKeepAliveActivity.class));
                return x1.e.f4647c;
            case 2:
                int i5 = MainActivity.f1002z1;
                return mainActivity.createDeviceProtectedStorageContext().getSharedPreferences("drive_regen_prefs", 0);
            case 3:
                int i6 = MainActivity.f1002z1;
                mainActivity.W0();
                return x1.e.f4647c;
            case 4:
                int i7 = MainActivity.f1002z1;
                mainActivity.W1("temp");
                return x1.e.f4647c;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                int i8 = MainActivity.f1002z1;
                mainActivity.W1("batt");
                return x1.e.f4647c;
            case MusicClient.TYPE_GESTURE /* 6 */:
                int i9 = MainActivity.f1002z1;
                mainActivity.W1("both");
                return x1.e.f4647c;
            default:
                int i10 = MainActivity.f1002z1;
                List listU = y1.f.U(new xb[]{new xb(mainActivity, "com.amaze.filemanager", "https://raw.githubusercontent.com/swimapps/Outros/main/filemanager.json", "AmazeFileManager-install.apk"), new xb(mainActivity, "com.timhss.geelybattery", "https://github.com/Timoteohss/geelybattery_releases/releases/latest/download/latest.json", "GeelyBattery-install.apk"), new xb(mainActivity, "com.geely.eisapo", "https://raw.githubusercontent.com/swimapps/Outros/main/eisapo.json", "EiSapo-install.apk"), new xb(mainActivity, "br.com.central.dualdashcam", "https://raw.githubusercontent.com/swimapps/Outros/main/dualdashcam.json", "DualDashcam-install.apk"), new xb(mainActivity, "com.geely.connadaptorlogger", "https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/connadaptorlogger.json", "ConnAdaptorLogger-install.apk"), new xb(mainActivity, "org.mozilla.firefox", "https://raw.githubusercontent.com/swimapps/Outros/main/firefox.json", "Firefox-install.apk"), new xb(mainActivity, "app.revanced.android.gms", "https://raw.githubusercontent.com/swimapps/Outros/main/microg.json", "MicroG-install.apk"), new xb(mainActivity, "org.bromite.chromium", "https://raw.githubusercontent.com/swimapps/Outros/main/chromium.json", "Chromium-install.apk")});
                int iV = y1.s.V(y1.i.X(listU));
                if (iV < 16) {
                    iV = 16;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap(iV);
                for (Object obj : listU) {
                    linkedHashMap.put(((xb) obj).f4509a, obj);
                }
                return linkedHashMap;
        }
    }
}
