package w0;

import android.view.View;
import com.ex.auto.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d9 implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3495a;
    public final /* synthetic */ h2.a b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MainActivity f3496c;

    public /* synthetic */ d9(h2.a aVar, MainActivity mainActivity, int i3) {
        this.f3495a = i3;
        this.b = aVar;
        this.f3496c = mainActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i3 = this.f3495a;
        MainActivity mainActivity = this.f3496c;
        h2.a aVar = this.b;
        switch (i3) {
            case 0:
                int i4 = MainActivity.f1002z1;
                aVar.a();
                mainActivity.f1045v.postDelayed(new x8(mainActivity, 10), 180L);
                break;
            case 1:
                int i5 = MainActivity.f1002z1;
                aVar.a();
                mainActivity.f1045v.postDelayed(new x8(mainActivity, 16), 180L);
                break;
            case 2:
                int i6 = MainActivity.f1002z1;
                aVar.a();
                mainActivity.f1045v.postDelayed(new x8(mainActivity, 15), 180L);
                break;
            default:
                int i7 = MainActivity.f1002z1;
                aVar.a();
                mainActivity.f1045v.postDelayed(new x8(mainActivity, 8), 220L);
                break;
        }
    }
}
