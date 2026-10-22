package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.emoji2.text.m;
import c0.a0;
import c0.p0;
import d0.d;
import e1.b;
import i0.e;
import java.util.WeakHashMap;
import s.a;

/* JADX INFO: loaded from: classes.dex */
public class SwipeDismissBehavior<V extends View> extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public e f1319a;
    public boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1320c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f1321d = 0.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f1322e = 0.5f;
    public final b f = new b(this);

    @Override // s.a
    public boolean f(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean zO = this.b;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            zO = coordinatorLayout.o(view, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.b = zO;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.b = false;
        }
        if (!zO) {
            return false;
        }
        if (this.f1319a == null) {
            this.f1319a = new e(coordinatorLayout.getContext(), coordinatorLayout, this.f);
        }
        return this.f1319a.p(motionEvent);
    }

    @Override // s.a
    public final boolean g(CoordinatorLayout coordinatorLayout, View view, int i3) {
        WeakHashMap weakHashMap = p0.f727a;
        if (a0.c(view) == 0) {
            a0.s(view, 1);
            p0.f(view, 1048576);
            p0.d(view, 0);
            if (r(view)) {
                p0.g(view, d.f1526j, new m(13, this));
            }
        }
        return false;
    }

    @Override // s.a
    public final boolean q(View view, MotionEvent motionEvent) {
        e eVar = this.f1319a;
        if (eVar == null) {
            return false;
        }
        eVar.j(motionEvent);
        return true;
    }

    public boolean r(View view) {
        return true;
    }
}
