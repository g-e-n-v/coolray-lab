package w0;

import com.ex.auto.MainActivity;
import com.ex.auto.R;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class lb implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3847a;
    public final /* synthetic */ MainActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ hc f3848c;

    public /* synthetic */ lb(MainActivity mainActivity, hc hcVar, int i3) {
        this.f3847a = i3;
        this.b = mainActivity;
        this.f3848c = hcVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String strZ;
        int i3 = this.f3847a;
        hc hcVar = this.f3848c;
        MainActivity mainActivity = this.b;
        switch (i3) {
            case 0:
                int i4 = MainActivity.f1002z1;
                try {
                    try {
                        mainActivity.W(hcVar, new e9(mainActivity, 18));
                        String str = hcVar.b;
                        androidx.emoji2.text.m mVar = i0.f3693a;
                        i0.a("manual", "install:".concat(str));
                        mainActivity.f1045v.post(new lb(mainActivity, hcVar, 1));
                        androidx.emoji2.text.m mVar2 = zd.f4636a;
                        if (!zd.b("self-update:manual")) {
                            String string = mainActivity.getString(R.string.k_installer_already_running);
                            i2.g.d(string, "getString(...)");
                            throw new IllegalStateException(string.toString());
                        }
                        try {
                            String strT0 = mainActivity.t0();
                            zd.a("self-update:manual");
                            File file = new File("/data/local/tmp/CentralEXAuto-update.apk");
                            strZ = mainActivity.getString(R.string.k_update_result_summary, str, Long.valueOf(hcVar.f3676a), file.isFile() ? o2.k.C0(16, MainActivity.h0(file, "SHA-256")) : "?", Long.valueOf(file.length()), strT0);
                            i0.f3693a.r("manual");
                            i2.g.b(strZ);
                            mainActivity.f1045v.post(new c9(mainActivity, strZ, 12));
                            return;
                        } catch (Throwable th) {
                            androidx.emoji2.text.m mVar3 = zd.f4636a;
                            zd.a("self-update:manual");
                            throw th;
                        }
                    } catch (Throwable th2) {
                        i0.f3693a.r("manual");
                        throw th2;
                    }
                } catch (Exception e3) {
                    strZ = mainActivity.Z(e3);
                }
                break;
            default:
                int i5 = MainActivity.f1002z1;
                String string2 = mainActivity.getString(R.string.k_installing_version, hcVar.b);
                i2.g.d(string2, "getString(...)");
                mainActivity.Z1(string2);
                return;
        }
    }
}
