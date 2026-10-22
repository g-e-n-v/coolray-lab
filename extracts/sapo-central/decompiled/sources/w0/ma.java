package w0;

import android.content.Context;
import android.content.Intent;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.PowerManager;
import android.os.SystemClock;
import android.util.Log;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ma implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3909a;
    public final /* synthetic */ MainActivity b;

    public /* synthetic */ ma(MainActivity mainActivity, int i3) {
        this.f3909a = i3;
        this.b = mainActivity;
    }

    private final void a() {
        boolean z2;
        y4 y4Var;
        y4 y4Var2 = y4.b;
        y4 y4Var3 = y4.f4564d;
        MainActivity mainActivity = this.b;
        int i3 = MainActivity.f1002z1;
        StringBuilder sb = new StringBuilder();
        String str = u.f4311z;
        sb.append("awk -v target=" + MainActivity.j2(str) + " '$2 == target { print; found=1 } END { exit found ? 0 : 1 }' /proc/mounts");
        sb.append(" || true");
        String strH1 = mainActivity.H1(5000, sb.toString());
        if (!o2.k.e0(strH1, "Falha no ADB local", false)) {
            n2.c cVarN0 = o2.k.n0(strH1);
            Iterator it = cVarN0.b.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z2 = false;
                    break;
                }
                List listD = new o2.h("\\s+").d(0, o2.k.E0((String) ((h2.l) cVarN0.f2529c).c(it.next())).toString());
                if (listD.size() >= 2) {
                    z2 = true;
                    if (i2.g.a(listD.get(1), str)) {
                        break;
                    }
                }
            }
        } else {
            z2 = false;
            break;
        }
        boolean zE0 = o2.k.e0(mainActivity.H1(5000, "[ -f " + e8.N("/data/local/tmp/fixes/keyserver_em_bind") + " ] && echo SIM"), "SIM", false);
        if (z2 && zE0) {
            y4Var = y4.f4562a;
        } else if (!z2 || zE0) {
            y4Var = (z2 || !zE0) ? y4.f4563c : y4Var2;
        } else {
            y4Var = y4Var3;
        }
        if (z2 != mainActivity.o0().getBoolean("keyserver_bind_enabled", false)) {
            mainActivity.o0().edit().putBoolean("keyserver_bind_enabled", z2).apply();
            if (z2) {
                mainActivity.startForegroundService(new Intent(mainActivity, (Class<?>) CentralWatchdogService.class));
            }
            int[] iArr = CentralWatchdogService.S2;
            CentralWatchdogService centralWatchdogService = CentralWatchdogService.V2;
            if (centralWatchdogService != null) {
                centralWatchdogService.f811a.post(new v2(centralWatchdogService, 10));
            }
        }
        if (y4Var == y4Var3) {
            mainActivity.H1(5000, "touch " + e8.N("/data/local/tmp/fixes/keyserver_em_bind") + " 2>/dev/null || true");
        }
        if (y4Var == y4Var2) {
            Log.i("KeyServerAtivador", "volante: o dono tinha ligado e o bind nao esta de pe — o BootScript remonta no proximo boot");
        }
        mainActivity.f1045v.post(new ma(mainActivity, 23));
    }

    private final void b() {
        boolean zD;
        MainActivity mainActivity = this.b;
        int i3 = MainActivity.f1002z1;
        try {
            zD = m.d(mainActivity, new n2(18));
        } catch (Throwable th) {
            mainActivity.w("Update", "dep gestos update: " + th.getMessage());
            zD = false;
        }
        mainActivity.f1045v.post(new f9(mainActivity, zD, 14));
    }

    private final void c() {
        String strX;
        MainActivity mainActivity = this.b;
        int i3 = MainActivity.f1002z1;
        ae aeVar = ae.f3361a;
        ae.b("Reiniciar", "garantindo o bind do CarplayMonitor", false);
        try {
            strX = m.x(t1.p(), 60000, null, new l9(mainActivity, 2));
        } catch (Exception e3) {
            strX = "erro: " + e3.getMessage();
        }
        ae aeVar2 = ae.f3361a;
        String strE0 = y1.g.e0(n2.g.W(new n2.d(new n2.c(o2.k.n0(strX), new ya(4), 2), true, new ya(5))), " | ", null, 62);
        if (strE0.length() == 0) {
            strE0 = o2.t.c0(o2.k.D0(120, o2.k.E0(strX).toString()), "\n", " ");
        }
        ae.b("Reiniciar", "bind do monitor: ".concat(strE0), false);
        mainActivity.f1045v.post(new c9(mainActivity, strX, 13));
    }

    private final void d() {
        int i3 = MainActivity.f1002z1;
        MainActivity mainActivity = this.b;
        if (mainActivity.isFinishing() || mainActivity.isDestroyed()) {
            return;
        }
        mainActivity.e1();
    }

    private final void e() {
        int i3 = MainActivity.f1002z1;
        MainActivity mainActivity = this.b;
        String string = mainActivity.getString(R.string.k_installing_cafix);
        i2.g.d(string, "getString(...)");
        mainActivity.S1(string);
    }

    /* JADX WARN: Code duplicated, block: B:206:0x05a0  */
    /* JADX WARN: Code duplicated, block: B:209:0x05b4  */
    /* JADX WARN: Code duplicated, block: B:210:0x05b7 A[Catch: Exception -> 0x0574, TryCatch #7 {Exception -> 0x0574, blocks: (B:177:0x054c, B:185:0x0563, B:187:0x0569, B:189:0x056f, B:195:0x057c, B:207:0x05a3, B:211:0x05bb, B:213:0x05c1, B:215:0x05c6, B:210:0x05b7, B:198:0x0587, B:200:0x058d, B:203:0x0597, B:180:0x0556, B:178:0x0551), top: B:385:0x054c, inners: #6 }] */
    /* JADX WARN: Code duplicated, block: B:213:0x05c1 A[Catch: Exception -> 0x0574, TryCatch #7 {Exception -> 0x0574, blocks: (B:177:0x054c, B:185:0x0563, B:187:0x0569, B:189:0x056f, B:195:0x057c, B:207:0x05a3, B:211:0x05bb, B:213:0x05c1, B:215:0x05c6, B:210:0x05b7, B:198:0x0587, B:200:0x058d, B:203:0x0597, B:180:0x0556, B:178:0x0551), top: B:385:0x054c, inners: #6 }] */
    /* JADX WARN: Code duplicated, block: B:214:0x05c4  */
    /* JADX WARN: Code duplicated, block: B:228:0x0637  */
    /* JADX WARN: Code duplicated, block: B:232:0x063f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:233:0x0641  */
    /* JADX WARN: Code duplicated, block: B:234:0x0644 A[Catch: Exception -> 0x063c, TryCatch #14 {Exception -> 0x063c, blocks: (B:226:0x05fe, B:235:0x0650, B:240:0x0660, B:242:0x066b, B:244:0x0697, B:259:0x06d8, B:260:0x06e4, B:234:0x0644, B:224:0x05fa, B:225:0x05fd, B:261:0x06e5, B:262:0x06f2, B:221:0x05f3), top: B:385:0x054c, inners: #16 }] */
    /* JADX WARN: Code duplicated, block: B:265:0x070e  */
    /* JADX WARN: Code duplicated, block: B:269:0x0741  */
    /* JADX WARN: Code duplicated, block: B:271:0x078c  */
    /* JADX WARN: Code duplicated, block: B:272:0x0799  */
    /* JADX WARN: Code duplicated, block: B:310:0x08ac  */
    /* JADX WARN: Code duplicated, block: B:316:0x0900 A[Catch: all -> 0x0907, TryCatch #3 {all -> 0x0907, blocks: (B:314:0x08cb, B:316:0x0900, B:320:0x090a), top: B:377:0x08cb }] */
    /* JADX WARN: Code duplicated, block: B:319:0x0909  */
    /* JADX WARN: Code duplicated, block: B:326:0x0948 A[Catch: all -> 0x0953, TRY_LEAVE, TryCatch #12 {all -> 0x0953, blocks: (B:324:0x0939, B:326:0x0948), top: B:395:0x0939 }] */
    /* JADX WARN: Code duplicated, block: B:328:0x0953  */
    /* JADX WARN: Code duplicated, block: B:346:0x09a8  */
    /* JADX WARN: Code duplicated, block: B:401:0x05f3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:269:0x0741, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v72, types: [w0.qe] */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v110 */
    /* JADX WARN: Type inference failed for: r2v111 */
    /* JADX WARN: Type inference failed for: r2v112 */
    /* JADX WARN: Type inference failed for: r2v113 */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* JADX WARN: Type inference failed for: r2v32, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r2v33, types: [android.content.Context, com.ex.auto.MainActivity] */
    /* JADX WARN: Type inference failed for: r2v35 */
    /* JADX WARN: Type inference failed for: r2v36, types: [android.content.Context, com.ex.auto.MainActivity] */
    /* JADX WARN: Type inference failed for: r2v38 */
    /* JADX WARN: Type inference failed for: r2v39, types: [android.content.Context, com.ex.auto.MainActivity] */
    /* JADX WARN: Type inference failed for: r8v16, types: [w0.qe] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        final boolean zE0;
        final boolean z2;
        boolean z3;
        int i3;
        String strC0;
        File file;
        File file2;
        String strG0;
        String strC1;
        boolean z4;
        ?? r3;
        boolean z5;
        ?? r4;
        String message;
        String string;
        int i4;
        CentralWatchdogService centralWatchdogService;
        bc bcVarF0;
        String str;
        long j3;
        File file3;
        ArrayList arrayList;
        boolean zD;
        String strConcat;
        String str2;
        boolean zE1;
        String str3;
        zb zbVarD0;
        long j4;
        String string2;
        String strH0;
        int i5 = 4;
        ?? r5 = 1;
        z = true;
        boolean z6 = true;
        switch (this.f3909a) {
            case 0:
                MainActivity mainActivity = this.b;
                int i6 = MainActivity.f1002z1;
                if (mainActivity.isFinishing() || mainActivity.isDestroyed()) {
                    return;
                }
                androidx.activity.result.b.n(R.string.k_reiniciar_ap0_em_uso, 1, mainActivity, "getString(...)");
                return;
            case 1:
                MainActivity mainActivity2 = this.b;
                int i7 = MainActivity.f1002z1;
                if (mainActivity2.isFinishing() || mainActivity2.isDestroyed()) {
                    return;
                }
                ae aeVar = ae.f3361a;
                ae.b("Reiniciar", "início — reiniciando AA/CarPlay", false);
                mainActivity2.f1025l0 = true;
                String string3 = mainActivity2.getString(R.string.k_restarting_aa_carplay);
                i2.g.d(string3, "getString(...)");
                MainActivity.J1(mainActivity2, null, string3, 15000L, 60000, "", mainActivity2.getString(R.string.k_restarting), new e9(mainActivity2, 15), new e9(mainActivity2, 16), true, null, new h9(mainActivity2, 14), 1024);
                return;
            case 2:
                MainActivity mainActivity3 = this.b;
                int i8 = MainActivity.f1002z1;
                if (mainActivity3.isFinishing() || mainActivity3.isDestroyed()) {
                    return;
                }
                mainActivity3.Y();
                return;
            case 3:
                final MainActivity mainActivity4 = this.b;
                int i9 = MainActivity.f1002z1;
                try {
                    String str4 = mainActivity4.getPackageManager().getApplicationInfo("com.njda.adapter", 0).sourceDir;
                    i2.g.d(str4, "sourceDir");
                    zE0 = o2.k.e0(str4, "/data/app/", false);
                } catch (Throwable unused) {
                    zE0 = false;
                }
                try {
                    ArrayList arrayListG0 = f2.d.g0(new File("/proc/mounts"));
                    if (arrayListG0.isEmpty()) {
                        z4 = false;
                    } else {
                        int size = arrayListG0.size();
                        int i10 = 0;
                        while (true) {
                            if (i10 < size) {
                                Object obj = arrayListG0.get(i10);
                                i10++;
                                if (o2.k.e0((String) obj, ' ' + u.f4308w + ' ', false)) {
                                    z4 = true;
                                }
                            } else {
                                z4 = false;
                            }
                        }
                    }
                    z2 = z4;
                } catch (Throwable unused2) {
                    z2 = false;
                }
                try {
                    try {
                        ArrayList arrayListG1 = f2.d.g0(new File("/proc/mounts"));
                        try {
                            if (!arrayListG1.isEmpty()) {
                                int size2 = arrayListG1.size();
                                int i11 = 0;
                                while (true) {
                                    if (i11 < size2) {
                                        Object obj2 = arrayListG1.get(i11);
                                        i11++;
                                        if (o2.k.e0((String) obj2, ' ' + u.f4310y + ' ', false)) {
                                            z3 = true;
                                        }
                                    }
                                }
                                if (zE0 || !z2) {
                                    i3 = 0;
                                } else {
                                    ae aeVar2 = ae.f3361a;
                                    ae.b("ConnAdaptor", "bind legado sobre instalação — desmontando sozinho", false);
                                    try {
                                        ae.b("ConnAdaptor", "limpeza do bind legado: " + o2.k.D0(120, o2.k.E0(mainActivity4.H1(30000, e8.F())).toString()), false);
                                        i3 = 0;
                                    } catch (Exception e3) {
                                        ae aeVar3 = ae.f3361a;
                                        i3 = 0;
                                        ae.b("ConnAdaptor", "limpeza do bind legado falhou: " + e3.getMessage(), false);
                                    }
                                }
                                String strU = mainActivity4.U();
                                String str5 = mainActivity4.getPackageManager().getApplicationInfo("com.njda.adapter", i3).sourceDir;
                                ae aeVar4 = ae.f3361a;
                                StringBuilder sb = new StringBuilder();
                                sb.append("status repintado: instalado=");
                                sb.append(zE0);
                                sb.append(" sourceDir=");
                                i2.g.b(str5);
                                sb.append(o2.k.D0(48, str5));
                                sb.append(" md5=");
                                strG0 = mainActivity4.G0();
                                if (strG0 != null) {
                                    strC1 = o2.k.C0(8, strG0);
                                } else {
                                    strC1 = null;
                                }
                                sb.append(strC1);
                                sb.append(" rotulo=");
                                sb.append(mainActivity4.E1());
                                ae.b("ConnAdaptor", sb.toString(), false);
                                mainActivity4.E1();
                                file2 = new File(mainActivity4.E());
                                if (file2.isFile()) {
                                    strC0 = o2.k.C0(8, MainActivity.h0(file2, "MD5"));
                                    break;
                                } else {
                                    strC0 = null;
                                }
                                if (strC0 != null && !o2.t.d0(strU, strC0)) {
                                    file = new File(mainActivity4.E());
                                    if (file.isFile() || file.length() <= 0) {
                                        i2.g.d(mainActivity4.getString(R.string.k_cafix_ausente), "getString(...)");
                                    } else {
                                        String strH1 = mainActivity4.H0(file);
                                        String strT = mainActivity4.t(strH1);
                                        if (strT == null && (strT = mainActivity4.u(strH1)) == null) {
                                            strT = mainActivity4.getString(R.string.k_connadaptor_build_desconhecida);
                                            i2.g.d(strT, "getString(...)");
                                        }
                                        i2.g.d(mainActivity4.getString(R.string.k_cafix_pronto, strH1 != null ? o2.k.C0(8, strH1) : "?", strT), "getString(...)");
                                    }
                                }
                                final boolean z7 = zE0;
                                final boolean z8 = z3;
                                mainActivity4.f1045v.post(new Runnable() { // from class: w0.ja
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        int i12;
                                        String string4;
                                        int i13 = MainActivity.f1002z1;
                                        boolean z9 = !zE0;
                                        MainActivity mainActivity5 = mainActivity4;
                                        mainActivity5.O1(z9);
                                        boolean z10 = z7;
                                        boolean z11 = z2;
                                        if (z10 && z11) {
                                            i12 = R.string.k_ca_estado_hibrido;
                                        } else if (z10) {
                                            i12 = R.string.k_ca_estado_instalado;
                                        } else {
                                            i12 = z11 ? R.string.k_ca_estado_bind : R.string.k_ca_estado_fabrica;
                                        }
                                        i2.g.d(mainActivity5.getString(i12), "getString(...)");
                                        if (z10) {
                                            string4 = u.h(mainActivity5.P(), mainActivity5.R());
                                        } else {
                                            string4 = mainActivity5.getString(R.string.k_ca_estado_fabrica);
                                            i2.g.d(string4, "getString(...)");
                                        }
                                        StringBuilder sb2 = new StringBuilder();
                                        sb2.append(mainActivity5.getString(R.string.k_linha_connadaptor, string4));
                                        sb2.append("\n");
                                        sb2.append(mainActivity5.getString(R.string.k_linha_carplaymonitor, mainActivity5.getString(z8 ? R.string.k_cm_montado : R.string.k_cm_nao_montado)));
                                        String string5 = sb2.toString();
                                        i2.g.d(string5, "toString(...)");
                                        mainActivity5.f1034p1 = string5;
                                        mainActivity5.Y0();
                                        mainActivity5.s1();
                                    }
                                });
                                return;
                            }
                            file2 = new File(mainActivity4.E());
                            if (file2.isFile()) {
                                strC0 = o2.k.C0(8, MainActivity.h0(file2, "MD5"));
                            } else {
                                strC0 = null;
                            }
                            break;
                        } catch (Throwable unused3) {
                        }
                    } catch (Throwable unused4) {
                    }
                    String str6 = mainActivity4.getPackageManager().getApplicationInfo("com.njda.adapter", i3).sourceDir;
                    ae aeVar5 = ae.f3361a;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("status repintado: instalado=");
                    sb2.append(zE0);
                    sb2.append(" sourceDir=");
                    i2.g.b(str6);
                    sb2.append(o2.k.D0(48, str6));
                    sb2.append(" md5=");
                    strG0 = mainActivity4.G0();
                    if (strG0 != null) {
                        strC1 = o2.k.C0(8, strG0);
                    } else {
                        strC1 = null;
                    }
                    sb2.append(strC1);
                    sb2.append(" rotulo=");
                    sb2.append(mainActivity4.E1());
                    ae.b("ConnAdaptor", sb2.toString(), false);
                    break;
                } catch (Throwable th) {
                    ae aeVar6 = ae.f3361a;
                    ae.b("ConnAdaptor", "status repintado: não consegui ler o ApplicationInfo — ".concat(th.getClass().getSimpleName()), false);
                }
                z3 = false;
                if (zE0) {
                    i3 = 0;
                } else {
                    i3 = 0;
                }
                String strU2 = mainActivity4.U();
                mainActivity4.E1();
                if (strC0 != null) {
                    file = new File(mainActivity4.E());
                    if (file.isFile()) {
                        i2.g.d(mainActivity4.getString(R.string.k_cafix_ausente), "getString(...)");
                    } else {
                        i2.g.d(mainActivity4.getString(R.string.k_cafix_ausente), "getString(...)");
                    }
                }
                final boolean z9 = zE0;
                final boolean z10 = z3;
                mainActivity4.f1045v.post(new Runnable() { // from class: w0.ja
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i12;
                        String string4;
                        int i13 = MainActivity.f1002z1;
                        boolean z11 = !zE0;
                        MainActivity mainActivity5 = mainActivity4;
                        mainActivity5.O1(z11);
                        boolean z12 = z9;
                        boolean z13 = z2;
                        if (z12 && z13) {
                            i12 = R.string.k_ca_estado_hibrido;
                        } else if (z12) {
                            i12 = R.string.k_ca_estado_instalado;
                        } else {
                            i12 = z13 ? R.string.k_ca_estado_bind : R.string.k_ca_estado_fabrica;
                        }
                        i2.g.d(mainActivity5.getString(i12), "getString(...)");
                        if (z12) {
                            string4 = u.h(mainActivity5.P(), mainActivity5.R());
                        } else {
                            string4 = mainActivity5.getString(R.string.k_ca_estado_fabrica);
                            i2.g.d(string4, "getString(...)");
                        }
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(mainActivity5.getString(R.string.k_linha_connadaptor, string4));
                        sb3.append("\n");
                        sb3.append(mainActivity5.getString(R.string.k_linha_carplaymonitor, mainActivity5.getString(z10 ? R.string.k_cm_montado : R.string.k_cm_nao_montado)));
                        String string5 = sb3.toString();
                        i2.g.d(string5, "toString(...)");
                        mainActivity5.f1034p1 = string5;
                        mainActivity5.Y0();
                        mainActivity5.s1();
                    }
                });
                return;
            case 4:
                MainActivity mainActivity5 = this.b;
                int i12 = MainActivity.f1002z1;
                String string4 = mainActivity5.getString(R.string.update_none_available);
                i2.g.d(string4, "getString(...)");
                mainActivity5.Z1(string4);
                mainActivity5.t2(string4, 1);
                mainActivity5.w("Update", string4);
                return;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                MainActivity mainActivity6 = this.b;
                if (mainActivity6.f1033p0) {
                    mainActivity6.f1033p0 = false;
                    mainActivity6.f1035q0 = null;
                    mainActivity6.v1();
                    return;
                }
                return;
            case MusicClient.TYPE_GESTURE /* 6 */:
                MainActivity mainActivity7 = this.b;
                int i13 = MainActivity.f1002z1;
                try {
                    try {
                        File file4 = new File("/data/local/tmp/fixes/GeelyAutoKeyServer-patched.apk");
                        try {
                            bcVarF0 = mainActivity7.f0();
                            break;
                        } catch (Exception unused5) {
                            if (!file4.isFile()) {
                                throw new IllegalStateException(mainActivity7.getString(R.string.k_keyserver_no_internet_first_download));
                            }
                            bcVarF0 = null;
                        }
                        if (bcVarF0 != null) {
                            if (!bcVarF0.a()) {
                                String strH2 = file4.isFile() ? MainActivity.h0(file4, "SHA-256") : null;
                                if (strH2 == null || !strH2.equalsIgnoreCase(bcVarF0.f3393c)) {
                                    mainActivity7.H1(8000, e8.v());
                                    String str7 = bcVarF0.b;
                                    if (bcVarF0.a()) {
                                        str = null;
                                    } else {
                                        str = bcVarF0.f3393c;
                                    }
                                    if (bcVarF0.a()) {
                                        j3 = bcVarF0.f3394d;
                                    } else {
                                        j3 = 0;
                                    }
                                    e9 e9Var = new e9(mainActivity7, 14);
                                    file3 = new File(mainActivity7.getCacheDir(), "GeelyAutoKeyServer-patched-update-staging.apk");
                                    MainActivity.X(mainActivity7, str7, file3, "KeyServer", str, null, null, e9Var, 112);
                                    r5 = mainActivity7;
                                    if (j3 > 0) {
                                        r5.z2(file3, "com.flyme.auto.keyserver", j3);
                                    }
                                    r5.q2(file3, "/data/local/tmp/GeelyAutoKeyServer-patched-update.apk", "keyserver_patch", false);
                                    r5.f1045v.post(new ma((MainActivity) r5, 16));
                                    arrayList = new ArrayList();
                                    zD = qe.f4124a.d(r5, "volante.aplicarPatchKeyServer", y1.s.X(new x1.a("fixApk", "/data/local/tmp/fixes/GeelyAutoKeyServer-patched.apk"), new x1.a("staging", "/data/local/tmp/GeelyAutoKeyServer-patched-update.apk")), arrayList);
                                    if (ne.f(arrayList)) {
                                        strConcat = "ok";
                                    } else if (zD) {
                                        strConcat = "ERRO: sem playbook — sincronize a central uma vez";
                                    } else {
                                        strConcat = "ERRO: o playbook parou em ".concat(y1.g.e0(arrayList, null, null, 63));
                                    }
                                    r5.w("KeyServer", MainActivity.v2(12000, strConcat));
                                    r4 = r5;
                                } else {
                                    r4 = mainActivity7;
                                }
                                break;
                            } else {
                                Long lY2 = file4.isFile() ? mainActivity7.y2(file4) : null;
                                if (lY2 != null) {
                                    if (lY2.longValue() == bcVarF0.f3394d) {
                                        r4 = mainActivity7;
                                    }
                                }
                                mainActivity7.H1(8000, e8.v());
                                String str8 = bcVarF0.b;
                                if (bcVarF0.a()) {
                                    str = null;
                                } else {
                                    str = bcVarF0.f3393c;
                                }
                                if (bcVarF0.a()) {
                                    j3 = bcVarF0.f3394d;
                                } else {
                                    j3 = 0;
                                }
                                e9 e9Var2 = new e9(mainActivity7, 14);
                                try {
                                    file3 = new File(mainActivity7.getCacheDir(), "GeelyAutoKeyServer-patched-update-staging.apk");
                                    try {
                                        MainActivity.X(mainActivity7, str8, file3, "KeyServer", str, null, null, e9Var2, 112);
                                        r5 = mainActivity7;
                                        if (j3 > 0) {
                                            try {
                                                r5.z2(file3, "com.flyme.auto.keyserver", j3);
                                            } catch (Exception e4) {
                                                file3.delete();
                                                throw e4;
                                            }
                                        }
                                        r5.q2(file3, "/data/local/tmp/GeelyAutoKeyServer-patched-update.apk", "keyserver_patch", false);
                                        r5.f1045v.post(new ma((MainActivity) r5, 16));
                                        arrayList = new ArrayList();
                                        zD = qe.f4124a.d(r5, "volante.aplicarPatchKeyServer", y1.s.X(new x1.a("fixApk", "/data/local/tmp/fixes/GeelyAutoKeyServer-patched.apk"), new x1.a("staging", "/data/local/tmp/GeelyAutoKeyServer-patched-update.apk")), arrayList);
                                        if (ne.f(arrayList)) {
                                            strConcat = "ok";
                                        } else if (zD) {
                                            strConcat = "ERRO: o playbook parou em ".concat(y1.g.e0(arrayList, null, null, 63));
                                        } else {
                                            strConcat = "ERRO: sem playbook — sincronize a central uma vez";
                                        }
                                        r5.w("KeyServer", MainActivity.v2(12000, strConcat));
                                        r4 = r5;
                                    } catch (Exception e5) {
                                        e = e5;
                                        r3 = mainActivity7;
                                        z5 = false;
                                        r4 = r3;
                                        Log.w("KeyServerAtivador", "runKeyServerApply: exceção — " + e.getMessage(), e);
                                        message = e.getMessage();
                                        if (message == null) {
                                            message = e.getClass().getSimpleName();
                                        }
                                        string = r4.getString(R.string.k_keyserver_download_failed, message);
                                        Log.i("KeyServerAtivador", "runKeyServerApply: resultado ok=" + z5 + " message=\"" + string + '\"');
                                        if (z5) {
                                            r4.o0().edit().putBoolean("keyserver_bind_enabled", true).apply();
                                            r4.H1(5000, "touch " + androidx.activity.result.b.i("/data/local/tmp/fixes/keyserver_em_bind", "'", "'\\''", new StringBuilder("'"), '\'') + " 2>/dev/null || true");
                                            r4.startForegroundService(new Intent((Context) r4, (Class<?>) CentralWatchdogService.class));
                                            int[] iArr = CentralWatchdogService.S2;
                                            centralWatchdogService = CentralWatchdogService.V2;
                                            if (centralWatchdogService != null) {
                                                i4 = 10;
                                                centralWatchdogService.f811a.post(new v2(centralWatchdogService, i4));
                                            } else {
                                                i4 = 10;
                                            }
                                        } else {
                                            i4 = 10;
                                        }
                                        r4.f1045v.post(new c9((MainActivity) r4, string, i4));
                                        return;
                                    }
                                } catch (Exception e6) {
                                    e = e6;
                                    r3 = mainActivity7;
                                    z5 = false;
                                    r4 = r3;
                                    Log.w("KeyServerAtivador", "runKeyServerApply: exceção — " + e.getMessage(), e);
                                    message = e.getMessage();
                                    if (message == null) {
                                        message = e.getClass().getSimpleName();
                                    }
                                    string = r4.getString(R.string.k_keyserver_download_failed, message);
                                    Log.i("KeyServerAtivador", "runKeyServerApply: resultado ok=" + z5 + " message=\"" + string + '\"');
                                    if (z5) {
                                        r4.o0().edit().putBoolean("keyserver_bind_enabled", true).apply();
                                        r4.H1(5000, "touch " + androidx.activity.result.b.i("/data/local/tmp/fixes/keyserver_em_bind", "'", "'\\''", new StringBuilder("'"), '\'') + " 2>/dev/null || true");
                                        r4.startForegroundService(new Intent((Context) r4, (Class<?>) CentralWatchdogService.class));
                                        int[] iArr2 = CentralWatchdogService.S2;
                                        centralWatchdogService = CentralWatchdogService.V2;
                                        if (centralWatchdogService != null) {
                                            i4 = 10;
                                            centralWatchdogService.f811a.post(new v2(centralWatchdogService, i4));
                                        } else {
                                            i4 = 10;
                                        }
                                    } else {
                                        i4 = 10;
                                    }
                                    r4.f1045v.post(new c9((MainActivity) r4, string, i4));
                                    return;
                                }
                                break;
                            }
                            Log.i("KeyServerAtivador", "runKeyServerApply: resultado ok=" + z5 + " message=\"" + string + '\"');
                            if (z5) {
                                r4.o0().edit().putBoolean("keyserver_bind_enabled", true).apply();
                                r4.H1(5000, "touch " + androidx.activity.result.b.i("/data/local/tmp/fixes/keyserver_em_bind", "'", "'\\''", new StringBuilder("'"), '\'') + " 2>/dev/null || true");
                                r4.startForegroundService(new Intent((Context) r4, (Class<?>) CentralWatchdogService.class));
                                int[] iArr3 = CentralWatchdogService.S2;
                                centralWatchdogService = CentralWatchdogService.V2;
                                if (centralWatchdogService != null) {
                                    i4 = 10;
                                    centralWatchdogService.f811a.post(new v2(centralWatchdogService, i4));
                                } else {
                                    i4 = 10;
                                }
                            } else {
                                i4 = 10;
                            }
                            r4.f1045v.post(new c9((MainActivity) r4, string, i4));
                            return;
                        }
                        r4 = mainActivity7;
                        if (!new File("/data/local/tmp/fixes/GeelyAutoKeyServer-patched.apk").isFile()) {
                            throw new IllegalStateException(r4.getString(R.string.k_keyserver_file_missing_after_download));
                        }
                        r4.f1045v.post(new ma((MainActivity) r4, 17));
                        boolean zA = qe.f4124a.a(r4, "volante.ativarPatch", y1.s.X(new x1.a("fixApk", "/data/local/tmp/fixes/GeelyAutoKeyServer-patched.apk"), new x1.a("svcKeyServer", "com.flyme.auto.keyserver.service.AutoKeyService")));
                        z5 = zA || r4.y0();
                        try {
                            r4.w("KeyServer", "bind=" + z5 + " servico=" + zA);
                            string = (z5 && zA) ? r4.getString(R.string.k_keyserver_activated) : z5 ? r4.getString(R.string.k_keyserver_activated_service_down) : r4.getString(R.string.k_keyserver_error_activating);
                            break;
                        } catch (Exception e7) {
                            e = e7;
                            r4 = r4;
                            Log.w("KeyServerAtivador", "runKeyServerApply: exceção — " + e.getMessage(), e);
                            message = e.getMessage();
                            if (message == null) {
                                message = e.getClass().getSimpleName();
                            }
                            string = r4.getString(R.string.k_keyserver_download_failed, message);
                        }
                        Log.i("KeyServerAtivador", "runKeyServerApply: resultado ok=" + z5 + " message=\"" + string + '\"');
                        if (z5) {
                            r4.o0().edit().putBoolean("keyserver_bind_enabled", true).apply();
                            r4.H1(5000, "touch " + androidx.activity.result.b.i("/data/local/tmp/fixes/keyserver_em_bind", "'", "'\\''", new StringBuilder("'"), '\'') + " 2>/dev/null || true");
                            r4.startForegroundService(new Intent((Context) r4, (Class<?>) CentralWatchdogService.class));
                            int[] iArr4 = CentralWatchdogService.S2;
                            centralWatchdogService = CentralWatchdogService.V2;
                            if (centralWatchdogService != null) {
                                i4 = 10;
                                centralWatchdogService.f811a.post(new v2(centralWatchdogService, i4));
                            } else {
                                i4 = 10;
                            }
                        } else {
                            i4 = 10;
                        }
                        r4.f1045v.post(new c9((MainActivity) r4, string, i4));
                        return;
                    } catch (Exception e8) {
                        e = e8;
                        r3 = mainActivity7;
                        z5 = false;
                        r4 = r3;
                        Log.w("KeyServerAtivador", "runKeyServerApply: exceção — " + e.getMessage(), e);
                        message = e.getMessage();
                        if (message == null) {
                            message = e.getClass().getSimpleName();
                        }
                        string = r4.getString(R.string.k_keyserver_download_failed, message);
                        Log.i("KeyServerAtivador", "runKeyServerApply: resultado ok=" + z5 + " message=\"" + string + '\"');
                        if (z5) {
                            r4.o0().edit().putBoolean("keyserver_bind_enabled", true).apply();
                            r4.H1(5000, "touch " + androidx.activity.result.b.i("/data/local/tmp/fixes/keyserver_em_bind", "'", "'\\''", new StringBuilder("'"), '\'') + " 2>/dev/null || true");
                            r4.startForegroundService(new Intent((Context) r4, (Class<?>) CentralWatchdogService.class));
                            int[] iArr5 = CentralWatchdogService.S2;
                            centralWatchdogService = CentralWatchdogService.V2;
                            if (centralWatchdogService != null) {
                                i4 = 10;
                                centralWatchdogService.f811a.post(new v2(centralWatchdogService, i4));
                            } else {
                                i4 = 10;
                            }
                        } else {
                            i4 = 10;
                        }
                        r4.f1045v.post(new c9((MainActivity) r4, string, i4));
                        return;
                    }
                } catch (Exception e9) {
                    e = e9;
                    r3 = r5;
                }
                break;
            case PlaybackState.STATE_ERROR /* 7 */:
                MainActivity mainActivity8 = this.b;
                int i14 = MainActivity.f1002z1;
                mainActivity8.s1();
                return;
            case 8:
                MainActivity mainActivity9 = this.b;
                int i15 = MainActivity.f1002z1;
                mainActivity9.n1();
                return;
            case 9:
                MainActivity mainActivity10 = this.b;
                if (mainActivity10.J0) {
                    mainActivity10.J0 = false;
                    return;
                }
                return;
            case 10:
                MainActivity mainActivity11 = this.b;
                int i16 = MainActivity.f1002z1;
                String strH3 = mainActivity11.H1(8000, "[ -f '" + mainActivity11.E() + "' ] && echo CAFIX_YES || echo CAFIX_NO");
                boolean zE2 = o2.k.e0(strH3, "CAFIX_YES", false);
                if (!o2.k.m0(strH3) && !o2.k.e0(strH3, "Falha no ADB local", false)) {
                    z6 = false;
                }
                mainActivity11.f1045v.post(new ta(i5, mainActivity11, zE2, z6));
                return;
            case 11:
                WifiManager wifiManager = this.b.K;
                if (wifiManager != null) {
                    wifiManager.setWifiEnabled(false);
                    return;
                } else {
                    i2.g.h("wifiManager");
                    throw null;
                }
            case 12:
                MainActivity mainActivity12 = this.b;
                int i17 = MainActivity.f1002z1;
                boolean zB = eg.b(mainActivity12);
                StringBuilder sb3 = new StringBuilder("apply ");
                sb3.append(zB ? "OK" : "FAIL");
                sb3.append('\n');
                sb3.append(MainActivity.v2(12000, eg.b));
                mainActivity12.w("RVC", sb3.toString());
                mainActivity12.f1045v.post(new f9(mainActivity12, zB, 13));
                return;
            case 13:
                MainActivity mainActivity13 = this.b;
                int i18 = MainActivity.f1002z1;
                try {
                    str2 = qe.e(mainActivity13, "carplay.desfazerBindMonitor", null, 12) ? "monitor desmontado" : "sem playbook — sincronize a central uma vez";
                } catch (Exception e10) {
                    str2 = "erro: " + e10.getMessage();
                }
                String string5 = o2.k.E0(o2.t.c0(o2.k.C0(160, str2), "\n", " ")).toString();
                try {
                    zE1 = o2.k.e0(mainActivity13.H1(8000, "grep -F ' " + u.f4310y + " ' /proc/mounts >/dev/null && echo SIM || echo NAO"), "SIM", false);
                    break;
                } catch (Exception unused6) {
                    zE1 = false;
                }
                ae aeVar7 = ae.f3361a;
                if (!zE1) {
                    str3 = "modo AA: patch do monitor desfeito";
                } else if (o2.k.m0(str2)) {
                    str3 = "modo AA: canal ADB indisponível — o patch do monitor sai só no próximo boot";
                } else {
                    str3 = "modo AA: o monitor CONTINUA montado — " + string5;
                }
                ae.b("Modo", str3, false);
                return;
            case 14:
                MainActivity mainActivity14 = this.b;
                int i19 = MainActivity.f1002z1;
                ae aeVar8 = ae.f3361a;
                if (!i2.g.a(Thread.currentThread().getName(), "central-persist-log")) {
                    CountDownLatch countDownLatch = new CountDownLatch(1);
                    try {
                        ae.f3363d.execute(new a6(countDownLatch, r5));
                        countDownLatch.await(1500L, TimeUnit.MILLISECONDS);
                        break;
                    } catch (Throwable unused7) {
                    }
                }
                n nVar = new n(4);
                try {
                    nVar.b("rm -f " + e8.O("/data/local/tmp/fixes/desligamento.log") + " 2>/dev/null; setsid sh -c \"logcat -v time -b all -f /data/local/tmp/fixes/desligamento.log ShutdownThread:V PowerManagerService:V ActivityManager:I SystemServer:V init:V vold:V healthd:V watchdog:V Watchdog:V ecarx_power:V *:F\" </dev/null >/dev/null 2>&1 &", 8000);
                    StringBuilder sb4 = new StringBuilder("[ -e ");
                    sb4.append(e8.O("/data/local/tmp/fixes/desligamento.log"));
                    sb4.append(" ] && echo SIM");
                    Log.i("ArmadilhaDeslig", "armar: ".concat(o2.k.e0((CharSequence) nVar.b(sb4.toString(), 6000), "SIM", false) ? "capturando" : "nao consegui criar o arquivo"));
                } catch (Throwable th2) {
                    androidx.activity.result.b.s(th2, new StringBuilder("armar: "), "ArmadilhaDeslig");
                }
                try {
                    Object systemService = mainActivity14.getSystemService("power");
                    i2.g.c(systemService, "null cannot be cast to non-null type android.os.PowerManager");
                    ((PowerManager) systemService).reboot(null);
                    return;
                } catch (Throwable th3) {
                    ae aeVar9 = ae.f3361a;
                    ae.b("Reiniciar", "PowerManager.reboot falhou (" + th3.getClass().getSimpleName() + ") — caindo pro shell", false);
                    new kotlinx.coroutines.scheduling.h(5555).b(60000, "reboot");
                    return;
                }
            case 15:
                a();
                return;
            case 16:
                MainActivity mainActivity15 = this.b;
                int i20 = MainActivity.f1002z1;
                androidx.activity.result.b.n(R.string.k_keyserver_swapping, 0, mainActivity15, "getString(...)");
                return;
            case 17:
                MainActivity mainActivity16 = this.b;
                int i21 = MainActivity.f1002z1;
                androidx.activity.result.b.n(R.string.k_keyserver_mounting, 0, mainActivity16, "getString(...)");
                return;
            case 18:
                MainActivity mainActivity17 = this.b;
                int i22 = MainActivity.f1002z1;
                mainActivity17.s1();
                return;
            case 19:
                MainActivity mainActivity18 = this.b;
                Handler handler = mainActivity18.f1045v;
                try {
                    zbVarD0 = mainActivity18.d0(mainActivity18.R(), mainActivity18.P());
                    break;
                } catch (Exception e11) {
                    mainActivity18.w("Update", "dep ConnAdaptor update: " + e11.getMessage());
                    handler.post(new oa(mainActivity18, e11, r5));
                    zbVarD0 = null;
                }
                handler.post(new a1.g(mainActivity18, (Object) zbVarD0, zbVarD0 != null ? MainActivity.K0(zbVarD0.f4632a) : null, 20));
                return;
            case 20:
                b();
                return;
            case 21:
                MainActivity mainActivity19 = this.b;
                int i23 = MainActivity.f1002z1;
                mainActivity19.f1();
                return;
            case 22:
                MainActivity mainActivity20 = this.b;
                int i24 = MainActivity.f1002z1;
                if (mainActivity20.isFinishing() || mainActivity20.isDestroyed()) {
                    return;
                }
                mainActivity20.Y();
                return;
            case 23:
                MainActivity mainActivity21 = this.b;
                int i25 = MainActivity.f1002z1;
                mainActivity21.v1();
                return;
            case 24:
                MainActivity mainActivity22 = this.b;
                int i26 = MainActivity.f1002z1;
                mainActivity22.x1(true);
                return;
            case 25:
                MainActivity mainActivity23 = this.b;
                int i27 = MainActivity.f1002z1;
                mainActivity23.isFinishing();
                return;
            case 26:
                c();
                return;
            case 27:
                d();
                return;
            case 28:
                e();
                return;
            default:
                MainActivity mainActivity24 = this.b;
                int i28 = MainActivity.f1002z1;
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                ae aeVar10 = ae.f3361a;
                ae.b("Ativar", "início", false);
                boolean zF = MainActivity.F();
                Handler handler2 = mainActivity24.f1045v;
                if (!zF) {
                    ae.b("Ativar", "ABORTADO: canal do ADB local fora do ar", false);
                    handler2.post(new nb(mainActivity24, 2));
                    return;
                }
                String strR = mainActivity24.R();
                String strP = mainActivity24.P();
                File file5 = new File(u.c(strP, strR));
                if (!file5.isFile() || file5.length() <= 0) {
                    j4 = jElapsedRealtime;
                    string2 = mainActivity24.getString(R.string.k_connadaptor_pm_missing);
                } else {
                    String strH4 = mainActivity24.H0(file5);
                    if (strH4 == null) {
                        string2 = mainActivity24.getString(R.string.k_connadaptor_pm_missing);
                        j4 = jElapsedRealtime;
                    } else {
                        if (strH4.equalsIgnoreCase(u.g(strP, strR))) {
                            mainActivity24.p0(strH4, strP, strR);
                            Log.i("CaFix", "validateCaFix: build reconhecida (" + strP + '/' + strR + ')');
                            j4 = jElapsedRealtime;
                        } else {
                            Iterator it = y1.f.U(new String[]{"aa", "carplay", "ambos"}).iterator();
                            while (true) {
                                it = it;
                                if (it.hasNext()) {
                                    String str9 = (String) it.next();
                                    if (!i2.g.a(str9, strP)) {
                                        j4 = jElapsedRealtime;
                                        if (strH4.equalsIgnoreCase(u.g(str9, strR))) {
                                            Log.w("CaFix", "validateCaFix: " + file5.getName() + " contém a build de " + str9 + " — recusado");
                                            string2 = mainActivity24.getString(R.string.k_connadaptor_arquivo_outro_modo, mainActivity24.Q(str9), mainActivity24.Q(strP));
                                        } else {
                                            jElapsedRealtime = j4;
                                        }
                                    }
                                } else {
                                    j4 = jElapsedRealtime;
                                    String str10 = strR.equals("1114") ? "1111" : "1114";
                                    int i29 = u.f4288a;
                                    if (strH4.equalsIgnoreCase(str10.equals("1114") ? "4b0e1de041032ee63ef0c223926d7889" : "260459e68360a4ff5c3720d84a2acddd")) {
                                        Log.w("CaFix", "validateCaFix: " + file5.getName() + " contém a build da " + str10 + " — recusado");
                                        string2 = mainActivity24.getString(R.string.k_connadaptor_arquivo_outra_versao, mainActivity24.S(str10), mainActivity24.S(strR));
                                    } else {
                                        String string6 = mainActivity24.o0().getString(u.i(strP, strR), null);
                                        if (string6 == null || o2.k.m0(string6)) {
                                            StringBuilder sb5 = new StringBuilder("grep -F ' ");
                                            String str11 = u.f4308w;
                                            sb5.append(str11);
                                            sb5.append(" ' /proc/mounts >/dev/null 2>&1 && echo Y || echo N");
                                            boolean zE3 = o2.k.e0(mainActivity24.H1(8000, sb5.toString()), "Y", false);
                                            if (!zE3) {
                                                File file6 = new File(str11);
                                                if (file6.isFile() && file6.length() == file5.length()) {
                                                    try {
                                                        strH0 = MainActivity.h0(file6, "MD5");
                                                    } catch (Exception unused8) {
                                                        strH0 = null;
                                                    }
                                                    if (strH0 != null && strH0.equalsIgnoreCase(strH4)) {
                                                        Log.w("CaFix", "validateCaFix: " + file5.getName() + " é IGUAL ao /system sem bind — é o stock, não o patch");
                                                        string2 = mainActivity24.getString(R.string.k_connadaptor_pm_is_stock);
                                                    }
                                                }
                                            }
                                            Log.i("CaFix", "validateCaFix: sem md5 de referência (bind=" + zE3 + ", md5=" + strH4 + ") — seguindo");
                                            break;
                                        } else if (strH4.equalsIgnoreCase(string6)) {
                                            Log.i("CaFix", "validateCaFix: md5 confere (" + strH4 + ')');
                                        } else {
                                            Log.w("CaFix", "validateCaFix: md5 DIVERGE — esperado=" + string6 + " achado=" + strH4);
                                            string2 = mainActivity24.getString(R.string.k_connadaptor_pm_md5_mismatch, o2.k.C0(8, string6), o2.k.C0(8, strH4));
                                        }
                                    }
                                }
                            }
                        }
                        string2 = null;
                    }
                }
                ae aeVar11 = ae.f3361a;
                ae.b("Ativar", "md5 do ca_fix conferido em " + ((SystemClock.elapsedRealtime() - j4) / ((long) 1000)) + 's', false);
                handler2.post(new c9(string2, mainActivity24, 14));
                return;
        }
    }

    public /* synthetic */ ma(MainActivity mainActivity, String str) {
        this.f3909a = 25;
        this.b = mainActivity;
    }
}
