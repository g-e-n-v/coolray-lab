package w0;

import android.view.MotionEvent;
import android.widget.LinearLayout;
import com.ex.auto.QuickAccessFloaterService;

/* JADX INFO: loaded from: classes.dex */
public final class eh extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public dh f3559a;
    public float b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3560c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f3561d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f3562e;

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 5 || motionEvent.getPointerCount() != 2) {
            return false;
        }
        this.f3560c = true;
        int iMin = Math.min(2, motionEvent.getPointerCount());
        float y2 = 0.0f;
        float x2 = 0.0f;
        for (int i3 = 0; i3 < iMin; i3++) {
            x2 += motionEvent.getX(i3);
        }
        this.f3561d = x2 / iMin;
        int iMin2 = Math.min(2, motionEvent.getPointerCount());
        for (int i4 = 0; i4 < iMin2; i4++) {
            y2 += motionEvent.getY(i4);
        }
        this.f3562e = y2 / iMin2;
        return true;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f3560c) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 1) {
            if (actionMasked != 2) {
                if (actionMasked != 3) {
                    if (actionMasked == 6 && motionEvent.getPointerCount() <= 2) {
                        this.f3560c = false;
                        return true;
                    }
                }
            } else if (motionEvent.getPointerCount() >= 2) {
                int iMin = Math.min(2, motionEvent.getPointerCount());
                float x2 = 0.0f;
                for (int i3 = 0; i3 < iMin; i3++) {
                    x2 += motionEvent.getX(i3);
                }
                float f = x2 / iMin;
                int iMin2 = Math.min(2, motionEvent.getPointerCount());
                float y2 = 0.0f;
                for (int i4 = 0; i4 < iMin2; i4++) {
                    y2 += motionEvent.getY(i4);
                }
                float f3 = y2 / iMin2;
                float f4 = f - this.f3561d;
                float f5 = f3 - this.f3562e;
                if (Math.abs(f4) >= this.b && Math.abs(f4) > Math.abs(f5)) {
                    dh dhVar = this.f3559a;
                    if (dhVar != null) {
                        int i5 = f4 > 0.0f ? 1 : -1;
                        QuickAccessFloaterService quickAccessFloaterService = (QuickAccessFloaterService) ((e0.b) dhVar).b;
                        int i6 = QuickAccessFloaterService.t0;
                        quickAccessFloaterService.c(i5);
                    }
                    this.f3561d = f;
                    this.f3562e = f3;
                }
            }
            return true;
        }
        this.f3560c = false;
        return true;
    }

    public void setOnTwoFingerHorizontalSwipeListener(dh dhVar) {
        this.f3559a = dhVar;
    }

    public void setStepPx(float f) {
        this.b = f;
    }
}
