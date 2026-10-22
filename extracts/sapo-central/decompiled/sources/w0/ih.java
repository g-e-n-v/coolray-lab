package w0;

import android.content.Context;
import android.util.Log;
import com.ex.auto.Politica;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class ih {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f3730a = Politica.b(11);
    public static final String b = Politica.b(12);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile String f3731c = "";

    public static String a(int i3, String str) {
        try {
            return new kotlinx.coroutines.scheduling.h(5555).b(i3, str);
        } catch (Exception e3) {
            Log.w("VideoCodec", "adb falhou: " + e3.getClass().getSimpleName() + ": " + e3.getMessage());
            return "ADB_FAIL: " + e3.getClass().getSimpleName() + ": " + e3.getMessage();
        }
    }

    public static final boolean b(String str, String str2) {
        return (str == null || o2.k.m0(str) || !i2.g.a(str, str2)) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x015e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:36:0x015f  */
    /* JADX WARN: Code duplicated, block: B:38:0x020b  */
    /* JADX WARN: Code duplicated, block: B:39:0x020e  */
    /* JADX WARN: Instruction removed from duplicated block: B:36:0x015f, please report this as an issue */
    public static boolean c(Context context) {
        String str;
        boolean zE0;
        boolean zB;
        String str2;
        String str3 = f3730a;
        if (!e(str3, b)) {
            f3731c = "cofre de caminhos indisponível — bind não tentado";
            Log.w("VideoCodec", f3731c);
            return false;
        }
        String strG = g(str3);
        StringBuilder sbM = androidx.activity.result.b.m("_n=0; while grep -F \" ", str3, " \" /proc/mounts >/dev/null 2>&1 && [ $_n -lt 12 ]; do umount ", strG, " 2>/dev/null || umount -l ");
        sbM.append(strG);
        sbM.append(" 2>/dev/null || break; _n=$((_n+1)); done");
        String string = sbM.toString();
        m.x(string + '\n', 20000, null, new n(14));
        try {
            str = "/data/local/tmp/vcodec642.so";
            try {
                File file = new File(context.getCacheDir(), "vcodec_stage.so");
                InputStream inputStreamOpen = context.getAssets().open("vcodec642.so");
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    try {
                        i2.g.b(inputStreamOpen);
                        a1.b.r(inputStreamOpen, fileOutputStream);
                        fileOutputStream.close();
                        inputStreamOpen.close();
                        String strG2 = g(str);
                        StringBuilder sb = new StringBuilder("mkdir -p ");
                        sb.append(g("/data/local/tmp"));
                        sb.append(" 2>/dev/null || true\nif [ \"$(md5sum ");
                        sb.append(strG2);
                        sb.append(" 2>/dev/null | cut -d' ' -f1)\" != \"84fc8f9d2f2ba44a4a15a04d7259f6b7\" ]; then\n  cp -f ");
                        String absolutePath = file.getAbsolutePath();
                        i2.g.d(absolutePath, "getAbsolutePath(...)");
                        sb.append(g(absolutePath));
                        sb.append(' ');
                        sb.append(strG2);
                        sb.append(" 2>&1 || exit 20\nfi\nchown 0:0 ");
                        sb.append(strG2);
                        sb.append(" 2>/dev/null || true\nchmod 644 ");
                        sb.append(strG2);
                        sb.append(" 2>/dev/null || true\nchcon u:object_r:vendor_file:s0 ");
                        sb.append(strG2);
                        sb.append(" 2>&1 || true\nsync 2>/dev/null || true\nmd5sum ");
                        sb.append(strG2);
                        sb.append(" 2>/dev/null | cut -d' ' -f1\n");
                        String string2 = sb.toString();
                        i2.g.d(string2, "toString(...)");
                        String strX = m.x(string2, 40000, null, new n(16));
                        zE0 = o2.k.e0(strX, "84fc8f9d2f2ba44a4a15a04d7259f6b7", true);
                        f3731c = "ensureSource: ".concat(o2.k.D0(400, o2.k.E0(strX).toString()));
                        if (!zE0) {
                            Log.w("VideoCodec", "md5 não confere após copiar: ".concat(o2.k.D0(120, o2.k.E0(strX).toString())));
                        }
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
                th = th5;
                f3731c = "ensureSource exceção: " + th.getMessage();
                androidx.activity.result.b.s(th, new StringBuilder("ensureSource: "), "VideoCodec");
                zE0 = false;
                if (!zE0) {
                    return false;
                }
                String strG3 = g(str);
                StringBuilder sb2 = new StringBuilder("setenforce 0 2>/dev/null || true\n");
                sb2.append(string);
                sb2.append('\n');
                sb2.append("mount --bind " + strG3 + ' ' + strG + " 2>&1 || echo FAILBIND\n");
                StringBuilder sb3 = new StringBuilder("setprop ctl.restart ");
                sb3.append(b);
                sb3.append(" 2>/dev/null || true\n");
                sb2.append(sb3.toString());
                sb2.append("echo \"SRC_INODE=$(stat -c %i " + strG3 + " 2>/dev/null)\"\n");
                sb2.append("echo \"TGT_INODE=$(stat -c %i " + strG + " 2>/dev/null)\"\n");
                String string3 = sb2.toString();
                i2.g.d(string3, "toString(...)");
                String strX2 = m.x(string3, 40000, null, new n(15));
                f3731c = o2.k.E0(strX2).toString();
                zB = b(d(strX2, "TGT_INODE"), d(strX2, "SRC_INODE"));
                StringBuilder sb4 = new StringBuilder("apply: ");
                if (zB) {
                    str2 = "OK";
                } else {
                    str2 = "FAIL";
                }
                sb4.append(str2);
                sb4.append(" — ");
                sb4.append(o2.k.E0(o2.k.D0(200, strX2)).toString());
                Log.i("VideoCodec", sb4.toString());
                return zB;
            }
        } catch (Throwable th6) {
            th = th6;
            str = "/data/local/tmp/vcodec642.so";
        }
        if (!zE0) {
            return false;
        }
        String strG4 = g(str);
        StringBuilder sb5 = new StringBuilder("setenforce 0 2>/dev/null || true\n");
        sb5.append(string);
        sb5.append('\n');
        sb5.append("mount --bind " + strG4 + ' ' + strG + " 2>&1 || echo FAILBIND\n");
        StringBuilder sb6 = new StringBuilder("setprop ctl.restart ");
        sb6.append(b);
        sb6.append(" 2>/dev/null || true\n");
        sb5.append(sb6.toString());
        sb5.append("echo \"SRC_INODE=$(stat -c %i " + strG4 + " 2>/dev/null)\"\n");
        sb5.append("echo \"TGT_INODE=$(stat -c %i " + strG + " 2>/dev/null)\"\n");
        String string4 = sb5.toString();
        i2.g.d(string4, "toString(...)");
        String strX3 = m.x(string4, 40000, null, new n(15));
        f3731c = o2.k.E0(strX3).toString();
        zB = b(d(strX3, "TGT_INODE"), d(strX3, "SRC_INODE"));
        StringBuilder sb7 = new StringBuilder("apply: ");
        if (zB) {
            str2 = "OK";
        } else {
            str2 = "FAIL";
        }
        sb7.append(str2);
        sb7.append(" — ");
        sb7.append(o2.k.E0(o2.k.D0(200, strX3)).toString());
        Log.i("VideoCodec", sb7.toString());
        return zB;
    }

    public static final String d(String str, String str2) {
        String string;
        i2.g.e(str, "saida");
        Iterator it = o2.k.n0(str).iterator();
        do {
            if (!it.hasNext()) {
                string = null;
                break;
            }
            String str3 = (String) it.next();
            i2.g.e(str3, "it");
            string = o2.k.E0(str3).toString();
        } while (!o2.t.d0(string, str2.concat("=")));
        if (string != null) {
            String strX0 = o2.k.x0(string, '=', string);
            if (!o2.k.m0(strX0)) {
                return strX0;
            }
        }
        return null;
    }

    public static final boolean e(String str, String str2) {
        i2.g.e(str, "alvo");
        i2.g.e(str2, "svc");
        return (str.equals("/nao-disponivel") || str2.equals("/nao-disponivel") || o2.k.m0(str) || o2.k.m0(str2)) ? false : true;
    }

    public static boolean f() {
        String str = b;
        String str2 = f3730a;
        if (!e(str2, str)) {
            return false;
        }
        String strA = a(8000, "echo \"SRC_INODE=$(stat -c %i " + g("/data/local/tmp/vcodec642.so") + " 2>/dev/null)\"; echo \"TGT_INODE=$(stat -c %i " + g(str2) + " 2>/dev/null)\"");
        return b(d(strA, "TGT_INODE"), d(strA, "SRC_INODE"));
    }

    public static String g(String str) {
        return androidx.activity.result.b.i(str, "'", "'\\''", new StringBuilder("'"), '\'');
    }
}
