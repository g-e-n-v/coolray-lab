package e;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import androidx.appcompat.widget.ActionBarContextView;
import c0.a1;
import c0.b1;
import c0.c1;
import c0.k1;
import c0.p0;
import c0.z0;
import com.ex.auto.R;
import i.h1;
import i.p3;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class q implements c0.r, h1, h.y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1656a;
    public final /* synthetic */ y b;

    public /* synthetic */ q(y yVar, int i3) {
        this.f1656a = i3;
        this.b = yVar;
    }

    @Override // h.y
    public void b(h.m mVar, boolean z2) {
        x xVar;
        switch (this.f1656a) {
            case 2:
                this.b.x(mVar);
                break;
            default:
                h.m mVarK = mVar.k();
                int i3 = 0;
                boolean z3 = mVarK != mVar;
                if (z3) {
                    mVar = mVarK;
                }
                y yVar = this.b;
                x[] xVarArr = yVar.L;
                int length = xVarArr != null ? xVarArr.length : 0;
                while (true) {
                    if (i3 >= length) {
                        xVar = null;
                    } else {
                        xVar = xVarArr[i3];
                        if (xVar == null || xVar.f1671h != mVar) {
                            i3++;
                        }
                    }
                }
                if (xVar != null) {
                    if (!z3) {
                        yVar.y(xVar, z2);
                    } else {
                        yVar.w(xVar.f1666a, xVar, mVarK);
                        yVar.y(xVar, true);
                    }
                }
                break;
        }
    }

    @Override // h.y
    public boolean g(h.m mVar) {
        Window.Callback callback;
        switch (this.f1656a) {
            case 2:
                Window.Callback callback2 = this.b.f1693l.getCallback();
                if (callback2 != null) {
                    callback2.onMenuOpened(108, mVar);
                }
                break;
            default:
                if (mVar == mVar.k()) {
                    y yVar = this.b;
                    if (yVar.F && (callback = yVar.f1693l.getCallback()) != null && !yVar.Q) {
                        callback.onMenuOpened(108, mVar);
                        break;
                    }
                }
                break;
        }
        return true;
    }

    @Override // c0.r
    public k1 o(View view, k1 k1Var) {
        boolean z2;
        k1 k1VarB;
        c1 a1Var;
        boolean z3;
        int iD = k1Var.d();
        y yVar = this.b;
        Context context = yVar.f1692k;
        int iD2 = k1Var.d();
        ActionBarContextView actionBarContextView = yVar.f1703v;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z2 = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) yVar.f1703v.getLayoutParams();
            if (yVar.f1703v.isShown()) {
                if (yVar.f1686c0 == null) {
                    yVar.f1686c0 = new Rect();
                    yVar.f1687d0 = new Rect();
                }
                Rect rect = yVar.f1686c0;
                Rect rect2 = yVar.f1687d0;
                rect.set(k1Var.b(), k1Var.d(), k1Var.c(), k1Var.a());
                ViewGroup viewGroup = yVar.A;
                Method method = p3.f2123a;
                if (method != null) {
                    try {
                        method.invoke(viewGroup, rect, rect2);
                    } catch (Exception e3) {
                        Log.d("ViewUtils", "Could not invoke computeFitSystemWindows", e3);
                    }
                }
                int i3 = rect.top;
                int i4 = rect.left;
                int i5 = rect.right;
                ViewGroup viewGroup2 = yVar.A;
                WeakHashMap weakHashMap = p0.f727a;
                k1 k1VarA = c0.g0.a(viewGroup2);
                int iB = k1VarA == null ? 0 : k1VarA.b();
                int iC = k1VarA == null ? 0 : k1VarA.c();
                if (marginLayoutParams.topMargin == i3 && marginLayoutParams.leftMargin == i4 && marginLayoutParams.rightMargin == i5) {
                    z3 = false;
                } else {
                    marginLayoutParams.topMargin = i3;
                    marginLayoutParams.leftMargin = i4;
                    marginLayoutParams.rightMargin = i5;
                    z3 = true;
                }
                if (i3 <= 0 || yVar.C != null) {
                    View view2 = yVar.C;
                    if (view2 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view2.getLayoutParams();
                        int i6 = marginLayoutParams2.height;
                        int i7 = marginLayoutParams.topMargin;
                        if (i6 != i7 || marginLayoutParams2.leftMargin != iB || marginLayoutParams2.rightMargin != iC) {
                            marginLayoutParams2.height = i7;
                            marginLayoutParams2.leftMargin = iB;
                            marginLayoutParams2.rightMargin = iC;
                            yVar.C.setLayoutParams(marginLayoutParams2);
                        }
                    }
                } else {
                    View view3 = new View(context);
                    yVar.C = view3;
                    view3.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = iB;
                    layoutParams.rightMargin = iC;
                    yVar.A.addView(yVar.C, -1, layoutParams);
                }
                View view4 = yVar.C;
                z2 = view4 != null;
                if (z2 && view4.getVisibility() != 0) {
                    View view5 = yVar.C;
                    view5.setBackgroundColor((c0.a0.g(view5) & 8192) != 0 ? androidx.core.content.c.a(context, R.color.abc_decor_view_status_guard_light) : androidx.core.content.c.a(context, R.color.abc_decor_view_status_guard));
                }
                if (!yVar.H && z2) {
                    iD2 = 0;
                }
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z2 = false;
                z3 = true;
            } else {
                z3 = false;
                z2 = false;
            }
            if (z3) {
                yVar.f1703v.setLayoutParams(marginLayoutParams);
            }
        }
        View view6 = yVar.C;
        if (view6 != null) {
            view6.setVisibility(z2 ? 0 : 8);
        }
        if (iD != iD2) {
            int iB2 = k1Var.b();
            int iC2 = k1Var.c();
            int iA = k1Var.a();
            int i8 = Build.VERSION.SDK_INT;
            if (i8 >= 30) {
                a1Var = new b1(k1Var);
            } else {
                a1Var = i8 >= 29 ? new a1(k1Var) : new z0(k1Var);
            }
            a1Var.d(v.c.a(iB2, iD2, iC2, iA));
            k1VarB = a1Var.b();
        } else {
            k1VarB = k1Var;
        }
        WeakHashMap weakHashMap2 = p0.f727a;
        WindowInsets windowInsetsF = k1VarB.f();
        if (windowInsetsF == null) {
            return k1VarB;
        }
        WindowInsets windowInsetsB = c0.d0.b(view, windowInsetsF);
        return !windowInsetsB.equals(windowInsetsF) ? k1.g(windowInsetsB, view) : k1VarB;
    }
}
