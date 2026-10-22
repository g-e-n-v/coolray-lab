package i;

import android.graphics.Typeface;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class u0 extends u.b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f2166h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ int f2167i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ WeakReference f2168j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ z0 f2169k;

    public u0(z0 z0Var, int i3, int i4, WeakReference weakReference) {
        this.f2169k = z0Var;
        this.f2166h = i3;
        this.f2167i = i4;
        this.f2168j = weakReference;
    }

    @Override // u.b
    public final void d(int i3) {
    }

    @Override // u.b
    public final void e(Typeface typeface) {
        int i3 = this.f2166h;
        if (i3 != -1) {
            typeface = y0.a(typeface, i3, (this.f2167i & 2) != 0);
        }
        z0 z0Var = this.f2169k;
        if (z0Var.f2231m) {
            z0Var.f2230l = typeface;
            TextView textView = (TextView) this.f2168j.get();
            if (textView != null) {
                WeakHashMap weakHashMap = c0.p0.f727a;
                if (c0.c0.b(textView)) {
                    textView.post(new g1.a(textView, typeface, z0Var.f2228j));
                } else {
                    textView.setTypeface(typeface, z0Var.f2228j);
                }
            }
        }
    }
}
