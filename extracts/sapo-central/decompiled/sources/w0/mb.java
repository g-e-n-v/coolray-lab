package w0;

import com.ex.auto.MainActivity;
import com.ex.auto.R;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class mb implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3910a = 0;
    public final /* synthetic */ MainActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ o5 f3911c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f3912d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f3913e;

    public /* synthetic */ mb(MainActivity mainActivity, String str, o5 o5Var, String str2) {
        this.b = mainActivity;
        this.f3912d = str;
        this.f3911c = o5Var;
        this.f3913e = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        int i3 = this.f3910a;
        String str2 = this.f3913e;
        String str3 = this.f3912d;
        o5 o5Var = this.f3911c;
        MainActivity mainActivity = this.b;
        switch (i3) {
            case 0:
                int i4 = MainActivity.f1002z1;
                o2.h hVar = r5.f4148a;
                i2.g.e(str3, "pkg");
                if (r5.e(str3)) {
                    str = "echo \"REF=$(stat -c %s /data/misc/profiles/ref/" + str3 + "/primary.prof 2>/dev/null)\"; echo \"CUR=$(stat -c %s /data/misc/profiles/cur/0/" + str3 + "/primary.prof 2>/dev/null)\"";
                } else {
                    str = "";
                }
                String strH1 = mainActivity.H1(8000, str);
                Long lB = r5.b(strH1, "REF");
                long jLongValue = lB != null ? lB.longValue() : o5Var.f3977d;
                Long lB2 = r5.b(strH1, "CUR");
                long jLongValue2 = lB2 != null ? lB2.longValue() : o5Var.f3978e;
                String str4 = o5Var.f3975a;
                long j3 = o5Var.b;
                long j4 = o5Var.f3976c;
                String str5 = o5Var.f;
                i2.g.e(str5, "linhaDexopt");
                mainActivity.f1045v.post(new mb(mainActivity, new o5(str4, j3, j4, jLongValue, jLongValue2, str5), str2, str3));
                return;
            default:
                int i5 = MainActivity.f1002z1;
                if (mainActivity.isFinishing() || mainActivity.isDestroyed()) {
                    return;
                }
                int iOrdinal = r5.a(o5Var).ordinal();
                if (iOrdinal == 0) {
                    mainActivity.V0(str2, str3, "speed-profile");
                    return;
                }
                int i6 = 1;
                if (iOrdinal == 1) {
                    e.h hVar2 = new e.h(mainActivity);
                    e.d dVar = (e.d) hVar2.b;
                    dVar.f1554d = mainActivity.getString(R.string.master_perf_no_profile_title);
                    dVar.f = mainActivity.getString(R.string.master_perf_no_profile_msg, str3);
                    hVar2.c(mainActivity.getString(R.string.common_cancel), null);
                    hVar2.f(mainActivity.getString(R.string.common_ok), new kb(i6, mainActivity, str2, str3));
                    hVar2.h();
                    return;
                }
                if (iOrdinal != 2) {
                    if (iOrdinal != 3) {
                        throw new androidx.fragment.app.q();
                    }
                    String string = mainActivity.getString(R.string.master_perf_already, str3);
                    i2.g.d(string, "getString(...)");
                    mainActivity.t2(string, 0);
                    return;
                }
                e.h hVar3 = new e.h(mainActivity);
                e.d dVar2 = (e.d) hVar3.b;
                dVar2.f1554d = mainActivity.getString(R.string.master_perf_need_use_title);
                dVar2.f = mainActivity.getString(R.string.master_perf_need_use_msg, str3);
                hVar3.f(mainActivity.getString(R.string.common_ok), null);
                hVar3.h();
                return;
        }
    }

    public /* synthetic */ mb(MainActivity mainActivity, o5 o5Var, String str, String str2) {
        this.b = mainActivity;
        this.f3911c = o5Var;
        this.f3912d = str;
        this.f3913e = str2;
    }
}
