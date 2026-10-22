package w0;

import com.ex.auto.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class la implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3843a = 0;
    public final /* synthetic */ xb b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f3844c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ MainActivity f3845d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f3846e;

    public /* synthetic */ la(MainActivity mainActivity, String str, xb xbVar, String str2) {
        this.f3845d = mainActivity;
        this.f3844c = str;
        this.b = xbVar;
        this.f3846e = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        x1.a aVar;
        int i3 = this.f3843a;
        String str = this.f3844c;
        switch (i3) {
            case 0:
                MainActivity mainActivity = this.f3845d;
                int i4 = MainActivity.f1002z1;
                try {
                    aVar = new x1.a(mainActivity.c0(str), null);
                } catch (Exception e3) {
                    aVar = new x1.a(null, e3);
                }
                x1.a aVar2 = aVar;
                mainActivity.f1045v.post(new z(this.b, aVar2, mainActivity, this.f3846e, 6));
                break;
            default:
                int i5 = MainActivity.f1002z1;
                xb xbVar = this.b;
                xbVar.getClass();
                xbVar.f4512e = str;
                xbVar.a();
                MainActivity mainActivity2 = this.f3845d;
                mainActivity2.t2(str, 1);
                mainActivity2.w("Apps", this.f3846e);
                xbVar.f = true;
                xbVar.f4513g = true;
                mainActivity2.B.execute(new x8(mainActivity2, 18));
                break;
        }
    }

    public /* synthetic */ la(xb xbVar, String str, MainActivity mainActivity, String str2) {
        this.b = xbVar;
        this.f3844c = str;
        this.f3845d = mainActivity;
        this.f3846e = str2;
    }
}
