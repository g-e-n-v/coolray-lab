package w0;

import android.content.DialogInterface;
import com.ex.auto.MainActivity;
import com.ex.auto.R;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class kb implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3806a;
    public final /* synthetic */ MainActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f3807c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f3808d;

    public /* synthetic */ kb(int i3, MainActivity mainActivity, String str, String str2) {
        this.f3806a = i3;
        this.b = mainActivity;
        this.f3807c = str;
        this.f3808d = str2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i3) {
        switch (this.f3806a) {
            case 0:
                MainActivity mainActivity = this.b;
                String str = this.f3807c;
                String str2 = this.f3808d;
                if (!mainActivity.f1030n1) {
                    mainActivity.f1030n1 = true;
                    String string = mainActivity.getString(R.string.k_removing);
                    i2.g.d(string, "getString(...)");
                    mainActivity.C.execute(new a1.g(mainActivity, str2, new y2(mainActivity, 10, mainActivity.J0(string, str)), 18));
                } else {
                    androidx.activity.result.b.n(R.string.k_toast_wait_processing, 0, mainActivity, "getString(...)");
                }
                break;
            default:
                MainActivity mainActivity2 = this.b;
                String str3 = this.f3807c;
                String str4 = this.f3808d;
                int i4 = MainActivity.f1002z1;
                mainActivity2.V0(str3, str4, "speed");
                break;
        }
    }
}
