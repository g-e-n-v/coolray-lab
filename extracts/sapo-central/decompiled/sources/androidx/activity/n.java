package androidx.activity;

import a1.r;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.fragment.app.a0;
import androidx.fragment.app.h0;
import androidx.lifecycle.q;
import androidx.lifecycle.s;
import java.util.ArrayDeque;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Runnable f95a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final j f96c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final OnBackInvokedCallback f97d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public OnBackInvokedDispatcher f98e;
    public final ArrayDeque b = new ArrayDeque();
    public boolean f = false;

    public n(Runnable runnable) {
        this.f95a = runnable;
        if (k1.a.E()) {
            this.f96c = new j(this);
            this.f97d = l.a(new r(3, this));
        }
    }

    public final void a(q qVar, a0 a0Var) {
        s sVarF = qVar.f();
        if (sVarF.b == androidx.lifecycle.l.f578a) {
            return;
        }
        a0Var.b.add(new OnBackPressedDispatcher$LifecycleOnBackPressedCancellable(this, sVarF, a0Var));
        if (k1.a.E()) {
            c();
            a0Var.f385c = this.f96c;
        }
    }

    public final void b() {
        Iterator itDescendingIterator = this.b.descendingIterator();
        while (itDescendingIterator.hasNext()) {
            a0 a0Var = (a0) itDescendingIterator.next();
            if (a0Var.f384a) {
                h0 h0Var = a0Var.f386d;
                h0Var.w(true);
                if (h0Var.f425h.f384a) {
                    h0Var.J();
                    return;
                } else {
                    h0Var.f424g.b();
                    return;
                }
            }
        }
        Runnable runnable = this.f95a;
        if (runnable != null) {
            runnable.run();
        }
    }

    public final void c() {
        boolean z2;
        Iterator itDescendingIterator = this.b.descendingIterator();
        while (true) {
            if (!itDescendingIterator.hasNext()) {
                z2 = false;
                break;
            } else if (((a0) itDescendingIterator.next()).f384a) {
                z2 = true;
                break;
            }
        }
        OnBackInvokedDispatcher onBackInvokedDispatcher = this.f98e;
        if (onBackInvokedDispatcher != null) {
            if (z2 && !this.f) {
                l.b(onBackInvokedDispatcher, 0, this.f97d);
                this.f = true;
            } else {
                if (z2 || !this.f) {
                    return;
                }
                l.c(onBackInvokedDispatcher, this.f97d);
                this.f = false;
            }
        }
    }
}
