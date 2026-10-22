package q0;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public final class g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2888a;
    public final /* synthetic */ i0 b;

    public /* synthetic */ g0(i0 i0Var, int i3) {
        this.f2888a = i3;
        this.b = i0Var;
    }

    public final int a(View view) {
        int right;
        int i3;
        switch (this.f2888a) {
            case 0:
                j0 j0Var = (j0) view.getLayoutParams();
                right = view.getRight() + ((j0) view.getLayoutParams()).b.right;
                i3 = ((ViewGroup.MarginLayoutParams) j0Var).rightMargin;
                break;
            default:
                j0 j0Var2 = (j0) view.getLayoutParams();
                right = view.getBottom() + ((j0) view.getLayoutParams()).b.bottom;
                i3 = ((ViewGroup.MarginLayoutParams) j0Var2).bottomMargin;
                break;
        }
        return right + i3;
    }

    public final int b(View view) {
        int left;
        int i3;
        switch (this.f2888a) {
            case 0:
                j0 j0Var = (j0) view.getLayoutParams();
                left = view.getLeft() - ((j0) view.getLayoutParams()).b.left;
                i3 = ((ViewGroup.MarginLayoutParams) j0Var).leftMargin;
                break;
            default:
                j0 j0Var2 = (j0) view.getLayoutParams();
                left = view.getTop() - ((j0) view.getLayoutParams()).b.top;
                i3 = ((ViewGroup.MarginLayoutParams) j0Var2).topMargin;
                break;
        }
        return left - i3;
    }

    public final int c() {
        int i3;
        int iB;
        switch (this.f2888a) {
            case 0:
                i0 i0Var = this.b;
                i3 = i0Var.f2918n;
                iB = i0Var.B();
                break;
            default:
                i0 i0Var2 = this.b;
                i3 = i0Var2.f2919o;
                iB = i0Var2.z();
                break;
        }
        return i3 - iB;
    }

    public final int d() {
        switch (this.f2888a) {
            case 0:
                return this.b.A();
            default:
                return this.b.C();
        }
    }
}
