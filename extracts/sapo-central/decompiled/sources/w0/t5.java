package w0;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.os.SystemClock;
import android.util.Log;
import java.io.File;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class t5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HashMap f4261a = new HashMap();

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, java.util.Map] */
    public static final s5 a(Context context, String str) {
        i2.g.e(context, "context");
        x1.a aVar = (x1.a) u.f4292g.get(str);
        if (aVar == null) {
            return null;
        }
        String str2 = (String) aVar.f4641a;
        String str3 = (String) aVar.b;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        HashMap map = f4261a;
        synchronized (map) {
            x1.a aVar2 = (x1.a) map.get(str);
            if (aVar2 != null) {
                long jLongValue = ((Number) aVar2.f4641a).longValue();
                s5 s5Var = (s5) aVar2.b;
                if (jElapsedRealtime - jLongValue < 300000) {
                    return s5Var;
                }
            }
            try {
                SharedPreferences sharedPreferences = context.getSharedPreferences("tela_preta_prefs", 0);
                byte[] bArr = u6.f4334a;
                i2.g.b(sharedPreferences);
                t6 t6VarD = u6.d(context, sharedPreferences, str2, 0L);
                Log.i("DistAux", str3 + " pela distribuicao propria: vc=" + t6VarD.f4262a);
                s5 s5Var2 = new s5(t6VarD.f4262a, t6VarD.f4263c, t6VarD.b, str3);
                synchronized (map) {
                    map.put(str, new x1.a(Long.valueOf(jElapsedRealtime), s5Var2));
                }
                return s5Var2;
            } catch (Exception e3) {
                if (t1.c(str, u.f4293h) == d5.b) {
                    Log.w("DistAux", str3 + " indisponivel na distribuicao propria (" + e3.getMessage() + ") — e NAO ha reserva no GitHub: o que vier a seguir vai dar 404, a falha de verdade e esta");
                    return null;
                }
                Log.w("DistAux", str3 + " indisponivel na distribuicao propria (" + e3.getMessage() + "); usando o GitHub");
                return null;
            }
        }
    }

    public static final void b(Context context, File file, String str, long j3) {
        i2.g.e(context, "context");
        i2.g.e(str, "pacoteEsperado");
        PackageInfo packageArchiveInfo = context.getPackageManager().getPackageArchiveInfo(file.getAbsolutePath(), 64);
        if (packageArchiveInfo == null) {
            throw new IllegalStateException("APK ilegível");
        }
        if (!i2.g.a(packageArchiveInfo.packageName, str)) {
            throw new IllegalStateException("APK de outro pacote: " + packageArchiveInfo.packageName);
        }
        long longVersionCode = packageArchiveInfo.getLongVersionCode();
        if (j3 > 0 && longVersionCode != j3) {
            throw new IllegalStateException("APK é vc=" + longVersionCode + ", manifesto prometeu " + j3);
        }
        Signature[] signatureArr = packageArchiveInfo.signatures;
        int i3 = 0;
        if (signatureArr == null) {
            signatureArr = new Signature[0];
        }
        ArrayList arrayList = new ArrayList(signatureArr.length);
        for (Signature signature : signatureArr) {
            byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(signature.toByteArray());
            i2.g.d(bArrDigest, "digest(...)");
            arrayList.add(y1.f.b0(bArrDigest, new n2(12)));
        }
        if (!arrayList.isEmpty()) {
            int size = arrayList.size();
            while (i3 < size) {
                Object obj = arrayList.get(i3);
                i3++;
                if (o2.t.a0((String) obj, "c8a2e9bccf597c2fb6dc66bee293fc13f2fc47ec77bc6b2b0d52c11f51192ab8")) {
                    return;
                }
            }
        }
        throw new IllegalStateException("APK não está assinado com a chave de plataforma");
    }
}
