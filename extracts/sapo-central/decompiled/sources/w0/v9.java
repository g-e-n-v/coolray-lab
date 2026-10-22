package w0;

import android.widget.ViewFlipper;
import com.ex.auto.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class v9 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4387a;
    public final /* synthetic */ ViewFlipper b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f4388c;

    public /* synthetic */ v9(MainActivity mainActivity, ViewFlipper viewFlipper, int i3, int i4) {
        this.f4387a = i4;
        this.b = viewFlipper;
        this.f4388c = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i3 = this.f4387a;
        int i4 = this.f4388c;
        ViewFlipper viewFlipper = this.b;
        switch (i3) {
            case 0:
                int i5 = MainActivity.f1002z1;
                MainActivity.D1(viewFlipper.getChildAt(i4));
                break;
            default:
                int i6 = MainActivity.f1002z1;
                MainActivity.D1(viewFlipper.getChildAt(i4));
                break;
        }
    }
}
