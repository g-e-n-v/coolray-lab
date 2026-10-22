package w0;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a1 implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3341a;
    public final /* synthetic */ Object b;

    public /* synthetic */ a1(int i3, Object obj) {
        this.f3341a = i3;
        this.b = obj;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        switch (this.f3341a) {
            case 0:
                f1 f1Var = (f1) this.b;
                if (i2.g.a(str, "camera_on_drive")) {
                    f1Var.f3567c.post(new b1(f1Var, 0));
                }
                break;
            default:
                SharedPreferences sharedPreferences2 = (SharedPreferences) this.b;
                if (str != null && ee.f3549c.containsKey(str) && !ee.f3550d.remove(str)) {
                    sharedPreferences2.edit().putLong(str, System.currentTimeMillis()).apply();
                    break;
                }
                break;
        }
    }
}
