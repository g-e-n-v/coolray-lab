package i;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes.dex */
public abstract class t1 implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f2158a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2159c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final View f2160d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public s1 f2161e;
    public s1 f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2162g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2163h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int[] f2164i = new int[2];

    public t1(View view) {
        this.f2160d = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f2158a = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.b = tapTimeout;
        this.f2159c = (ViewConfiguration.getLongPressTimeout() + tapTimeout) / 2;
    }

    public final void a() {
        s1 s1Var = this.f;
        View view = this.f2160d;
        if (s1Var != null) {
            view.removeCallbacks(s1Var);
        }
        s1 s1Var2 = this.f2161e;
        if (s1Var2 != null) {
            view.removeCallbacks(s1Var2);
        }
    }

    public abstract h.d0 b();

    public abstract boolean c();

    public boolean d() {
        h.d0 d0VarB = b();
        if (d0VarB == null || !d0VarB.a()) {
            return true;
        }
        d0VarB.dismiss();
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x005c  */
    /* JADX WARN: Code duplicated, block: B:24:0x0062  */
    /* JADX WARN: Code duplicated, block: B:25:0x0065  */
    /* JADX WARN: Code duplicated, block: B:50:0x00cb  */
    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z2;
        q1 q1VarF;
        boolean z3 = this.f2162g;
        View view2 = this.f2160d;
        if (z3) {
            h.d0 d0VarB = b();
            if (d0VarB != null && d0VarB.a() && (q1VarF = d0VarB.f()) != null && q1VarF.isShown()) {
                MotionEvent motionEventObtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
                int[] iArr = this.f2164i;
                view2.getLocationOnScreen(iArr);
                motionEventObtainNoHistory.offsetLocation(iArr[0], iArr[1]);
                q1VarF.getLocationOnScreen(iArr);
                motionEventObtainNoHistory.offsetLocation(-iArr[0], -iArr[1]);
                boolean zB = q1VarF.b(motionEventObtainNoHistory, this.f2163h);
                motionEventObtainNoHistory.recycle();
                int actionMasked = motionEvent.getActionMasked();
                boolean z4 = (actionMasked == 1 || actionMasked == 3) ? false : true;
                if (zB && z4) {
                    z2 = true;
                } else if (d()) {
                    z2 = false;
                } else {
                    z2 = true;
                }
            } else if (d()) {
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            if (view2.isEnabled()) {
                int actionMasked2 = motionEvent.getActionMasked();
                if (actionMasked2 == 0) {
                    this.f2163h = motionEvent.getPointerId(0);
                    if (this.f2161e == null) {
                        this.f2161e = new s1(this, 0);
                    }
                    view2.postDelayed(this.f2161e, this.b);
                    if (this.f == null) {
                        this.f = new s1(this, 1);
                    }
                    view2.postDelayed(this.f, this.f2159c);
                } else if (actionMasked2 == 1) {
                    a();
                } else if (actionMasked2 == 2) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(this.f2163h);
                    if (iFindPointerIndex >= 0) {
                        float x2 = motionEvent.getX(iFindPointerIndex);
                        float y2 = motionEvent.getY(iFindPointerIndex);
                        float f = this.f2158a;
                        float f3 = -f;
                        if (x2 < f3 || y2 < f3 || x2 >= (view2.getRight() - view2.getLeft()) + f || y2 >= (view2.getBottom() - view2.getTop()) + f) {
                            a();
                            view2.getParent().requestDisallowInterceptTouchEvent(true);
                            if (c()) {
                                z2 = true;
                            }
                        }
                    }
                } else if (actionMasked2 == 3) {
                    a();
                }
                z2 = false;
            } else {
                z2 = false;
            }
            if (z2) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                view2.onTouchEvent(motionEventObtain);
                motionEventObtain.recycle();
            }
        }
        this.f2162g = z2;
        return z2 || z3;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f2162g = false;
        this.f2163h = -1;
        s1 s1Var = this.f2161e;
        if (s1Var != null) {
            this.f2160d.removeCallbacks(s1Var);
        }
    }
}
