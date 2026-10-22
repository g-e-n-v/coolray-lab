package w0;

import android.view.SurfaceView;
import android.widget.FrameLayout;
import com.ex.auto.ExSapoCastActivity;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e6 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3530a;
    public final /* synthetic */ ExSapoCastActivity b;

    public /* synthetic */ e6(ExSapoCastActivity exSapoCastActivity, int i3) {
        this.f3530a = i3;
        this.b = exSapoCastActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i3;
        int i4 = this.f3530a;
        ExSapoCastActivity exSapoCastActivity = this.b;
        switch (i4) {
            case 0:
                FrameLayout frameLayout = exSapoCastActivity.f911a;
                if (frameLayout == null) {
                    i2.g.h("root");
                    throw null;
                }
                int width = frameLayout.getWidth();
                if (width < 1) {
                    width = 1;
                }
                FrameLayout frameLayout2 = exSapoCastActivity.f911a;
                if (frameLayout2 == null) {
                    i2.g.h("root");
                    throw null;
                }
                int height = frameLayout2.getHeight();
                if (height < 1) {
                    height = 1;
                }
                int i5 = exSapoCastActivity.f912c;
                if (i5 <= 0 || (i3 = exSapoCastActivity.f913d) <= 0) {
                    return;
                }
                float fMin = Math.min(width / i5, height / i3);
                int i6 = (int) (exSapoCastActivity.f912c * fMin);
                if (i6 < 1) {
                    i6 = 1;
                }
                int i7 = (int) (exSapoCastActivity.f913d * fMin);
                int i8 = i7 >= 1 ? i7 : 1;
                SurfaceView surfaceView = exSapoCastActivity.b;
                if (surfaceView == null) {
                    i2.g.h("surfaceView");
                    throw null;
                }
                surfaceView.setLayoutParams(new FrameLayout.LayoutParams(i6, i8, 17));
                SurfaceView surfaceView2 = exSapoCastActivity.b;
                if (surfaceView2 != null) {
                    surfaceView2.requestLayout();
                    return;
                } else {
                    i2.g.h("surfaceView");
                    throw null;
                }
            default:
                int i9 = ExSapoCastActivity.f910e;
                exSapoCastActivity.finish();
                return;
        }
    }
}
