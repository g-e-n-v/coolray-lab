package h;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import c0.p0;
import com.ex.auto.R;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f1942a;
    public final m b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f1943c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1944d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public View f1945e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1946g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public y f1947h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public u f1948i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public PopupWindow.OnDismissListener f1949j;
    public int f = 8388611;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final v f1950k = new v(this);

    public x(Context context, m mVar, View view, boolean z2, int i3, int i4) {
        this.f1942a = context;
        this.b = mVar;
        this.f1945e = view;
        this.f1943c = z2;
        this.f1944d = i3;
    }

    public final u a() {
        u e0Var;
        if (this.f1948i == null) {
            Context context = this.f1942a;
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            w.a(defaultDisplay, point);
            if (Math.min(point.x, point.y) >= context.getResources().getDimensionPixelSize(R.dimen.abc_cascading_menus_min_smallest_width)) {
                e0Var = new g(context, this.f1945e, this.f1944d, this.f1943c);
            } else {
                e0Var = new e0(this.f1942a, this.b, this.f1945e, this.f1944d, this.f1943c);
            }
            e0Var.l(this.b);
            e0Var.r(this.f1950k);
            e0Var.n(this.f1945e);
            e0Var.c(this.f1947h);
            e0Var.o(this.f1946g);
            e0Var.p(this.f);
            this.f1948i = e0Var;
        }
        return this.f1948i;
    }

    public final boolean b() {
        u uVar = this.f1948i;
        return uVar != null && uVar.a();
    }

    public void c() {
        this.f1948i = null;
        PopupWindow.OnDismissListener onDismissListener = this.f1949j;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public final void d(int i3, int i4, boolean z2, boolean z3) {
        u uVarA = a();
        uVarA.s(z3);
        if (z2) {
            int i5 = this.f;
            View view = this.f1945e;
            WeakHashMap weakHashMap = p0.f727a;
            if ((Gravity.getAbsoluteGravity(i5, c0.b0.d(view)) & 7) == 5) {
                i3 -= this.f1945e.getWidth();
            }
            uVarA.q(i3);
            uVarA.t(i4);
            int i6 = (int) ((this.f1942a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            uVarA.f1940a = new Rect(i3 - i6, i4 - i6, i3 + i6, i4 + i6);
        }
        uVarA.d();
    }
}
