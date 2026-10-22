package w0;

import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.os.Handler;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class s9 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4220a = 0;
    public final /* synthetic */ MainActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f4221c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f4222d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f4223e;
    public final /* synthetic */ boolean f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ Object f4224g;

    public /* synthetic */ s9(MainActivity mainActivity, e.i iVar, String str, String str2, boolean z2, String str3) {
        this.b = mainActivity;
        this.f4224g = iVar;
        this.f4221c = str;
        this.f4222d = str2;
        this.f = z2;
        this.f4223e = str3;
    }

    /* JADX WARN: Code duplicated, block: B:115:0x029a  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9, types: [android.os.Handler] */
    /* JADX WARN: Type inference failed for: r7v22 */
    /* JADX WARN: Type inference failed for: r7v23 */
    /* JADX WARN: Type inference failed for: r7v24 */
    /* JADX WARN: Type inference failed for: r7v25 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [i2.j] */
    /* JADX WARN: Type inference failed for: r7v8 */
    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        boolean z2;
        i2.j jVar;
        ?? r3;
        ?? r7;
        String message;
        String string;
        ?? r8;
        ?? r4;
        Handler handler;
        int i3;
        PackageInfo packageArchiveInfo;
        PackageInfo packageInfo;
        switch (this.f4220a) {
            case 0:
                MainActivity mainActivity = this.b;
                e.i iVar = (e.i) this.f4224g;
                String str = this.f4221c;
                String str2 = this.f4222d;
                boolean z3 = this.f;
                String str3 = this.f4223e;
                mainActivity.f1030n1 = false;
                try {
                    iVar.dismiss();
                    break;
                } catch (Throwable unused) {
                }
                StringBuilder sbL = androidx.activity.result.b.l("compile ", str, ": ");
                sbL.append(o2.k.C0(200, str2));
                mainActivity.w("Desempenho", sbL.toString());
                String string2 = mainActivity.getString(z3 ? R.string.master_perf_done : R.string.master_perf_failed, str3);
                i2.g.d(string2, "getString(...)");
                mainActivity.t2(string2, 0);
                if (mainActivity.isFinishing() || mainActivity.isDestroyed()) {
                    return;
                }
                mainActivity.W0();
                return;
            case 1:
                MainActivity mainActivity2 = this.b;
                Handler handler2 = mainActivity2.f1045v;
                zb zbVar = (zb) this.f4224g;
                String str4 = this.f4221c;
                String str5 = this.f4222d;
                String str6 = this.f4223e;
                boolean z4 = this.f;
                int i4 = MainActivity.f1002z1;
                i2.j jVar2 = new i2.j();
                try {
                    mainActivity2.H1(8000, e8.v());
                    String str7 = zbVar.b;
                    long j3 = zbVar.f4635e;
                    String str8 = zbVar.a() ? null : str4;
                    e9 e9Var = new e9(mainActivity2, 19);
                    z2 = z4;
                    try {
                        File file = new File(mainActivity2.getCacheDir(), "ca_fix-update-staging.apk");
                        try {
                            str5 = str5;
                            str6 = str6;
                            try {
                                MainActivity.X(mainActivity2, str7, file, "ca_fix", null, str8, new h0(mainActivity2, str5, str6, 4), e9Var, 40);
                                mainActivity2.q2(file, "/data/local/tmp/ca_fix-update.apk", "ca_fix", false);
                                File file2 = new File("/data/local/tmp/ca_fix-update.apk");
                                boolean zA = zbVar.a();
                                try {
                                    if (zA) {
                                        try {
                                            mainActivity2.z2(file2, "com.njda.adapter", zbVar.f4633c);
                                        } catch (Exception e3) {
                                            file2.delete();
                                            throw e3;
                                        }
                                    } else {
                                        String strH0 = MainActivity.h0(file2, "MD5");
                                        if (!strH0.equals(str4)) {
                                            file2.delete();
                                            throw new IllegalStateException(mainActivity2.getString(R.string.k_md5_mismatch_manifest, o2.k.C0(8, str4), o2.k.C0(8, strH0)));
                                        }
                                    }
                                    SharedPreferences.Editor editorEdit = mainActivity2.o0().edit();
                                    if (str4.length() > 0) {
                                        editorEdit.putString("connadaptor_expected_md5", str4);
                                    } else {
                                        editorEdit.remove("connadaptor_expected_md5");
                                    }
                                    editorEdit.putString("connadaptor_arquivo_versao", str5);
                                    editorEdit.putString("connadaptor_arquivo_modo", str6);
                                    if (j3 > 0) {
                                        editorEdit.putLong(MainActivity.I(str6, str5), j3);
                                    } else {
                                        editorEdit.remove(MainActivity.I(str6, str5));
                                    }
                                    editorEdit.apply();
                                    mainActivity2.B(str6, str5);
                                    Handler handler3 = handler2;
                                    try {
                                        handler3.post(new ma(mainActivity2, 28));
                                        try {
                                            i3 = 0;
                                            try {
                                                packageArchiveInfo = mainActivity2.getPackageManager().getPackageArchiveInfo("/data/local/tmp/ca_fix-update.apk", 0);
                                            } catch (Throwable unused2) {
                                                packageArchiveInfo = null;
                                            }
                                            break;
                                        } catch (Throwable unused3) {
                                            i3 = 0;
                                        }
                                        if (packageArchiveInfo != null) {
                                            try {
                                                packageInfo = mainActivity2.getPackageManager().getPackageInfo("com.njda.adapter", i3);
                                            } catch (Throwable unused4) {
                                                packageInfo = null;
                                            }
                                            if (packageInfo != null && packageArchiveInfo.getLongVersionCode() < packageInfo.getLongVersionCode()) {
                                                throw new IllegalStateException(mainActivity2.getString(R.string.k_connadaptor_install_downgrade, mainActivity2.S(str5)));
                                            }
                                            break;
                                        }
                                        boolean zO = mainActivity2.O();
                                        String strC = u.c(str6, str5);
                                        qe qeVar = qe.f4124a;
                                        if (!qe.e(mainActivity2, "rede.trocarArquivoConnAdaptor", y1.s.X(new x1.a("caApk", strC), new x1.a("staging", "/data/local/tmp/ca_fix-update.apk")), 8)) {
                                            throw new IllegalStateException(mainActivity2.getString(R.string.k_connadaptor_pm_sem_canal));
                                        }
                                        String strW = t1.w(strC);
                                        if (strW.length() <= 0) {
                                            strW = null;
                                        }
                                        if (strW != null) {
                                            mainActivity2.p0(strW, str6, str5);
                                        }
                                        if (zO && !z2) {
                                            String strW2 = t1.w(strC);
                                            if (strW2.length() == 0) {
                                                throw new IllegalStateException(mainActivity2.getString(R.string.k_connadaptor_pm_missing));
                                            }
                                            if (!qe.e(mainActivity2, "rede.ativarConnAdaptor", y1.s.X(new x1.a("caApk", strC), new x1.a("caMd5", strW2)), 8) || !mainActivity2.O()) {
                                                throw new IllegalStateException(mainActivity2.getString(R.string.k_connadaptor_pm_error));
                                            }
                                        }
                                        i2.j jVar3 = jVar2;
                                        jVar3.f2289a = true;
                                        mainActivity2.f1028m1 = o2.k.e0("", "BIND_ATIVO=1", false);
                                        string = mainActivity2.getString(R.string.k_cafix_updated_monitor_restarted, o2.k.E0("").toString());
                                        r4 = handler3;
                                        r8 = jVar3;
                                        String str9 = string;
                                        i2.g.b(str9);
                                        r4.post(new s9(mainActivity2, str9, (i2.j) r8, z2, str6, str5));
                                        return;
                                    } catch (Exception e4) {
                                        e = e4;
                                        handler = handler3;
                                        r7 = jVar2;
                                        r3 = handler;
                                        message = e.getMessage();
                                        if (message == null) {
                                            message = e.getClass().getSimpleName();
                                        }
                                        string = mainActivity2.getString(R.string.k_connadaptor_error, message);
                                        r4 = r3;
                                        r8 = r7;
                                    }
                                } catch (Exception e5) {
                                    e = e5;
                                    r3 = j3;
                                    r7 = zA;
                                    message = e.getMessage();
                                    if (message == null) {
                                        message = e.getClass().getSimpleName();
                                    }
                                    string = mainActivity2.getString(R.string.k_connadaptor_error, message);
                                    r4 = r3;
                                    r8 = r7;
                                }
                            } catch (Exception e6) {
                                e = e6;
                                handler = handler2;
                            }
                        } catch (Exception e7) {
                            e = e7;
                            str5 = str5;
                            str6 = str6;
                            jVar = jVar2;
                            r3 = handler2;
                            r7 = jVar;
                            message = e.getMessage();
                            if (message == null) {
                                message = e.getClass().getSimpleName();
                            }
                            string = mainActivity2.getString(R.string.k_connadaptor_error, message);
                            r4 = r3;
                            r8 = r7;
                            String str10 = string;
                            i2.g.b(str10);
                            r4.post(new s9(mainActivity2, str10, (i2.j) r8, z2, str6, str5));
                            return;
                        }
                    } catch (Exception e8) {
                        e = e8;
                        jVar = jVar2;
                        r3 = handler2;
                        r7 = jVar;
                        message = e.getMessage();
                        if (message == null) {
                            message = e.getClass().getSimpleName();
                        }
                        string = mainActivity2.getString(R.string.k_connadaptor_error, message);
                        r4 = r3;
                        r8 = r7;
                        String str11 = string;
                        i2.g.b(str11);
                        r4.post(new s9(mainActivity2, str11, (i2.j) r8, z2, str6, str5));
                        return;
                    }
                } catch (Exception e9) {
                    e = e9;
                    z2 = z4;
                }
                break;
            default:
                MainActivity mainActivity3 = this.b;
                String str12 = this.f4221c;
                i2.j jVar4 = (i2.j) this.f4224g;
                boolean z5 = this.f;
                String str13 = this.f4222d;
                String str14 = this.f4223e;
                int i5 = MainActivity.f1002z1;
                mainActivity3.w("Update", MainActivity.v2(16000, "ConnAdaptor: ".concat(str12)));
                mainActivity3.S1(str12);
                mainActivity3.t2(str12, 1);
                mainActivity3.e1();
                if (jVar4.f2289a && z5 && str13.equals(mainActivity3.P()) && i2.g.a(str14, mainActivity3.R())) {
                    mainActivity3.C();
                    return;
                }
                if (jVar4.f2289a && mainActivity3.f1028m1) {
                    e.h hVar = new e.h(mainActivity3);
                    hVar.g(R.string.connadaptor_rebind_title);
                    e.d dVar = (e.d) hVar.b;
                    dVar.f = dVar.f1552a.getText(R.string.connadaptor_rebind_message);
                    hVar.e(android.R.string.ok, null);
                    hVar.h();
                    return;
                }
                return;
        }
    }

    public /* synthetic */ s9(MainActivity mainActivity, String str, i2.j jVar, boolean z2, String str2, String str3) {
        this.b = mainActivity;
        this.f4221c = str;
        this.f4224g = jVar;
        this.f = z2;
        this.f4222d = str2;
        this.f4223e = str3;
    }

    public /* synthetic */ s9(MainActivity mainActivity, String str, String str2, String str3, zb zbVar, boolean z2) {
        this.b = mainActivity;
        this.f4224g = zbVar;
        this.f4221c = str;
        this.f4222d = str2;
        this.f4223e = str3;
        this.f = z2;
    }
}
