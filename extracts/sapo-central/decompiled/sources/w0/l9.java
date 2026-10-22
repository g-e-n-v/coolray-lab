package w0;

import com.ex.auto.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l9 implements h2.p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3842a;
    public final /* synthetic */ MainActivity b;

    public /* synthetic */ l9(MainActivity mainActivity, int i3) {
        this.f3842a = i3;
        this.b = mainActivity;
    }

    @Override // h2.p
    public final Object b(Object obj, Object obj2) {
        int i3 = this.f3842a;
        MainActivity mainActivity = this.b;
        switch (i3) {
            case 0:
                Runnable runnable = (Runnable) obj;
                long jLongValue = ((Long) obj2).longValue();
                int i4 = MainActivity.f1002z1;
                i2.g.e(runnable, "task");
                mainActivity.f1045v.postDelayed(runnable, jLongValue);
                return x1.e.f4647c;
            case 1:
                String str = (String) obj;
                int iIntValue = ((Integer) obj2).intValue();
                int i5 = MainActivity.f1002z1;
                i2.g.e(str, "c");
                return mainActivity.H1(iIntValue, str);
            default:
                String str2 = (String) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                int i6 = MainActivity.f1002z1;
                i2.g.e(str2, "c");
                return mainActivity.H1(iIntValue2, str2);
        }
    }
}
