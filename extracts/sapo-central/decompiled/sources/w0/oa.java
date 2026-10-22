package w0;

import com.ex.auto.MainActivity;
import com.ex.auto.R;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class oa implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3985a;
    public final /* synthetic */ MainActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Exception f3986c;

    public /* synthetic */ oa(MainActivity mainActivity, Exception exc, int i3) {
        this.f3985a = i3;
        this.b = mainActivity;
        this.f3986c = exc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i3 = this.f3985a;
        Exception exc = this.f3986c;
        MainActivity mainActivity = this.b;
        switch (i3) {
            case 0:
                int i4 = MainActivity.f1002z1;
                String strZ = mainActivity.Z(exc);
                mainActivity.Z1(strZ);
                mainActivity.t2(strZ, 1);
                mainActivity.w("Update", strZ);
                break;
            default:
                int i5 = MainActivity.f1002z1;
                if (!mainActivity.isFinishing() && !mainActivity.isDestroyed()) {
                    e.h hVar = new e.h(mainActivity);
                    hVar.g(R.string.k_dep_update_title);
                    ((e.d) hVar.b).f = mainActivity.getString(R.string.k_dep_falhou_msg, mainActivity.getString(R.string.k_dep_connadaptor_curto), mainActivity.Z(exc));
                    hVar.e(android.R.string.ok, null);
                    hVar.h();
                    break;
                }
                break;
        }
    }
}
