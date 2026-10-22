package g;

import android.view.View;
import android.view.animation.Interpolator;
import c0.w0;
import c0.x0;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Interpolator f1788c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public x0 f1789d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1790e;
    public long b = -1;
    public final j f = new j(this);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f1787a = new ArrayList();

    public final void a() {
        if (this.f1790e) {
            ArrayList arrayList = this.f1787a;
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList.get(i3);
                i3++;
                ((w0) obj).b();
            }
            this.f1790e = false;
        }
    }

    public final void b() {
        View view;
        if (this.f1790e) {
            return;
        }
        ArrayList arrayList = this.f1787a;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            w0 w0Var = (w0) obj;
            long j3 = this.b;
            if (j3 >= 0) {
                w0Var.c(j3);
            }
            Interpolator interpolator = this.f1788c;
            if (interpolator != null && (view = (View) w0Var.f737a.get()) != null) {
                view.animate().setInterpolator(interpolator);
            }
            if (this.f1789d != null) {
                w0Var.d(this.f);
            }
            View view2 = (View) w0Var.f737a.get();
            if (view2 != null) {
                view2.animate().start();
            }
        }
        this.f1790e = true;
    }
}
