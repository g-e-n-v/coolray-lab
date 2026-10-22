package w0;

import android.widget.ScrollView;
import com.ex.auto.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class z9 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4629a;
    public final /* synthetic */ ScrollView b;

    public /* synthetic */ z9(ScrollView scrollView, int i3) {
        this.f4629a = i3;
        this.b = scrollView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i3 = this.f4629a;
        ScrollView scrollView = this.b;
        switch (i3) {
            case 0:
                int i4 = MainActivity.f1002z1;
                scrollView.scrollTo(0, 0);
                break;
            default:
                int i5 = MainActivity.f1002z1;
                scrollView.fullScroll(130);
                break;
        }
    }
}
