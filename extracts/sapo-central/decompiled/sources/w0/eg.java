package w0;

import android.content.Context;
import android.util.Log;
import com.ex.auto.Politica;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class eg {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile boolean f3557c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f3556a = Politica.b(1);
    public static volatile String b = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final x1.c f3558d = new x1.c(new w5(10));

    public static String a(int i3, String str) {
        try {
            return new kotlinx.coroutines.scheduling.h(5555).b(i3, str);
        } catch (Exception e3) {
            Log.w("RvcBlackBg", "adb falhou: " + e3.getClass().getSimpleName() + ": " + e3.getMessage());
            return "ADB_FAIL: " + e3.getClass().getSimpleName() + ": " + e3.getMessage();
        }
    }

    public static boolean b(Context context) {
        boolean zE0;
        boolean z2 = false;
        f3557c = false;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("mkdir -p ");
            sb.append(d("/data/local/tmp"));
            sb.append(' ');
            sb.append(d("/data/local/tmp/rvc_overlay"));
            sb.append(" 2>/dev/null\n");
            Iterator it = ((List) f3558d.a()).iterator();
            int i3 = 0;
            while (true) {
                boolean z3 = true;
                if (!it.hasNext()) {
                    sb.append("sync 2>/dev/null || true\n");
                    sb.append("[ -f ");
                    sb.append(d("/data/local/tmp/rvc_black_bg.png"));
                    sb.append(" ] && echo SRC_DONE || echo SRC_FAIL\n");
                    String string = sb.toString();
                    i2.g.d(string, "toString(...)");
                    String strX = m.x(string, 25000, null, new n(12));
                    b = "ensureSources: " + o2.k.D0(1500, o2.k.E0(strX).toString());
                    if (!o2.k.m0(strX) && !o2.k.e0(strX, "ADB_FAIL", false) && !o2.k.e0(strX, "refused", true)) {
                        z3 = false;
                    }
                    f3557c = z3;
                    zE0 = o2.k.e0(strX, "SRC_DONE", false);
                    break;
                }
                Object next = it.next();
                int i4 = i3 + 1;
                if (i3 < 0) {
                    y1.h.W();
                    throw null;
                }
                dg dgVar = (dg) next;
                z3 = i3 != 0 ? z2 : true;
                try {
                    File file = new File(context.getCacheDir(), "rvcstage_" + o2.k.z0(dgVar.b, '/'));
                    InputStream inputStreamOpen = context.getAssets().open(dgVar.f3513a);
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        try {
                            i2.g.b(inputStreamOpen);
                            a1.b.r(inputStreamOpen, fileOutputStream);
                            fileOutputStream.close();
                            inputStreamOpen.close();
                            String str = z3 ? "2>&1 || exit 20" : "2>/dev/null || true";
                            sb.append("cp -f ");
                            String absolutePath = file.getAbsolutePath();
                            i2.g.d(absolutePath, "getAbsolutePath(...)");
                            sb.append(d(absolutePath));
                            sb.append(' ');
                            sb.append(d(dgVar.b));
                            sb.append(' ');
                            sb.append(str);
                            sb.append('\n');
                            sb.append("chown root:root ");
                            sb.append(d(dgVar.b));
                            sb.append(" 2>/dev/null || true\n");
                            sb.append("chmod 644 ");
                            sb.append(d(dgVar.b));
                            sb.append(" 2>/dev/null || true\n");
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                a1.b.p(fileOutputStream, th);
                                throw th2;
                            }
                        }
                    } catch (Throwable th3) {
                        try {
                            throw th3;
                        } catch (Throwable th4) {
                            a1.b.p(inputStreamOpen, th3);
                            throw th4;
                        }
                    }
                } catch (Throwable th5) {
                    if (z3) {
                        throw th5;
                    }
                    Log.w("RvcBlackBg", "stage skip " + dgVar.f3513a + ": " + th5.getMessage());
                    i3 = i4;
                    z2 = false;
                }
                i3 = i4;
                z2 = false;
            }
        } catch (Throwable th6) {
            b = "ensureSources exceção: " + th6.getMessage();
            androidx.activity.result.b.s(th6, new StringBuilder("ensureSources: "), "RvcBlackBg");
            zE0 = false;
        }
        if (!zE0) {
            Log.w("RvcBlackBg", "apply abortado — " + b + " (adbUnreachable=" + f3557c + ')');
            return false;
        }
        StringBuilder sb2 = new StringBuilder("setenforce 0 2>/dev/null || true\necho \"== rvc overlays bind ==\"\n");
        for (dg dgVar2 : (List) f3558d.a()) {
            String strD = d(dgVar2.b);
            String strD2 = d(dgVar2.f3514c);
            sb2.append("if [ -f " + strD + " ] && [ -f " + strD2 + " ]; then\n");
            StringBuilder sb3 = new StringBuilder("  _n=0; while grep -F \" ");
            androidx.activity.result.b.q(sb3, dgVar2.f3514c, " \" /proc/mounts >/dev/null 2>&1 && [ $_n -lt 12 ]; do umount ", strD2, " 2>/dev/null || umount -l ");
            sb3.append(strD2);
            sb3.append(" 2>/dev/null || break; _n=$((_n+1)); done\n");
            sb2.append(sb3.toString());
            sb2.append("  chown root:root " + strD + " 2>&1 || true\n");
            sb2.append("  chmod 644 " + strD + " 2>&1 || true\n");
            sb2.append("  restorecon -v " + strD + " 2>&1 || true\n");
            sb2.append("  chcon u:object_r:system_file:s0 " + strD + " 2>&1 || true\n");
            sb2.append("  restorecon -v " + strD2 + " 2>&1 || true\n");
            sb2.append("  mount --bind " + strD + ' ' + strD2 + " 2>&1 && echo \"BOUND:" + dgVar2.f3514c + "\" || echo \"FAILBIND:" + dgVar2.f3514c + "\"\n");
            StringBuilder sb4 = new StringBuilder("  chmod 644 ");
            sb4.append(strD2);
            sb4.append(" 2>&1 || true\n");
            sb2.append(sb4.toString());
            StringBuilder sb5 = new StringBuilder("  restorecon -v ");
            sb5.append(strD2);
            sb5.append(" 2>&1 || true\n");
            sb2.append(sb5.toString());
            sb2.append("fi\n");
        }
        sb2.append("setprop ctl.restart " + Politica.b(6) + " 2>/dev/null || true\n");
        sb2.append("if grep -F \" " + u.f4294i + " \" /proc/mounts >/dev/null 2>&1; then echo BIND_OK; else echo BIND_FAIL; fi\n");
        String string2 = sb2.toString();
        i2.g.d(string2, "toString(...)");
        String strX2 = m.x(string2, 40000, null, new n(11));
        b = o2.k.E0(strX2).toString();
        boolean zE1 = o2.k.e0(strX2, "BIND_OK", false);
        StringBuilder sb6 = new StringBuilder("apply: ");
        sb6.append(zE1 ? "OK" : "FAIL");
        sb6.append(" — ");
        sb6.append(o2.k.E0(o2.k.D0(300, strX2)).toString());
        Log.i("RvcBlackBg", sb6.toString());
        return zE1;
    }

    public static boolean c() {
        return o2.k.e0(a(6000, "grep -F ' " + u.f4294i + " ' /proc/mounts >/dev/null 2>&1 && echo Y || echo N"), "Y", false);
    }

    public static String d(String str) {
        return androidx.activity.result.b.i(str, "'", "'\\''", new StringBuilder("'"), '\'');
    }

    public static boolean e(Context context) {
        StringBuilder sb = new StringBuilder("echo \"== rvc overlays unbind ==\"\n");
        for (dg dgVar : (List) f3558d.a()) {
            String strD = d(dgVar.f3514c);
            StringBuilder sb2 = new StringBuilder("_n=0; while grep -F \" ");
            androidx.activity.result.b.q(sb2, dgVar.f3514c, " \" /proc/mounts >/dev/null 2>&1 && [ $_n -lt 12 ]; do umount ", strD, " 2>/dev/null || umount -l ");
            sb2.append(strD);
            sb2.append(" 2>/dev/null || break; _n=$((_n+1)); done\n");
            sb.append(sb2.toString());
            sb.append("restorecon -v " + strD + " 2>/dev/null || true\n");
        }
        sb.append("setprop ctl.restart " + Politica.b(6) + " 2>/dev/null || true\n");
        sb.append("grep -F \" " + u.f4294i + " \" /proc/mounts >/dev/null 2>&1 && echo AINDA_MONTADO || echo LIVRE\n");
        String string = sb.toString();
        i2.g.d(string, "toString(...)");
        String strX = m.x(string, 25000, null, new n(10));
        boolean zE0 = o2.k.e0(strX, "LIVRE", false);
        StringBuilder sb3 = new StringBuilder("remove: ");
        sb3.append(zE0 ? "OK" : "FAIL");
        sb3.append(" — ");
        sb3.append(o2.k.E0(o2.k.D0(120, strX)).toString());
        Log.i("RvcBlackBg", sb3.toString());
        return zE0;
    }
}
