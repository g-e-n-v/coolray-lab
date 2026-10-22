package com.google.android.material.snackbar;

import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.behavior.SwipeDismissBehavior;
import s1.e;
import t1.d;

/* JADX INFO: loaded from: classes.dex */
public class BaseTransientBottomBar$Behavior extends SwipeDismissBehavior<View> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final e f1444g;

    public BaseTransientBottomBar$Behavior() {
        e eVar = new e();
        this.f1321d = Math.min(Math.max(0.0f, 0.1f), 1.0f);
        this.f1322e = Math.min(Math.max(0.0f, 0.6f), 1.0f);
        this.f1320c = 0;
        this.f1444g = eVar;
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior, s.a
    public final boolean f(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        this.f1444g.getClass();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 3) {
                if (d0.e.b == null) {
                    d0.e.b = new d0.e();
                }
                synchronized (d0.e.b.f1532a) {
                }
            }
        } else if (coordinatorLayout.o(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
            if (d0.e.b == null) {
                d0.e.b = new d0.e();
            }
            synchronized (d0.e.b.f1532a) {
            }
        }
        return super.f(coordinatorLayout, view, motionEvent);
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior
    public final boolean r(View view) {
        this.f1444g.getClass();
        return view instanceof d;
    }
}
