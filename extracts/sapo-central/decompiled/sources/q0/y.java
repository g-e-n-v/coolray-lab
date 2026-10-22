package q0;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public final class y extends androidx.emoji2.text.f {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f3070d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ y(i0 i0Var, int i3) {
        super(i0Var);
        this.f3070d = i3;
    }

    @Override // androidx.emoji2.text.f
    public final int b(View view) {
        int right;
        int i3;
        switch (this.f3070d) {
            case 0:
                j0 j0Var = (j0) view.getLayoutParams();
                ((i0) this.b).getClass();
                right = view.getRight() + ((j0) view.getLayoutParams()).b.right;
                i3 = ((ViewGroup.MarginLayoutParams) j0Var).rightMargin;
                break;
            default:
                j0 j0Var2 = (j0) view.getLayoutParams();
                ((i0) this.b).getClass();
                right = view.getBottom() + ((j0) view.getLayoutParams()).b.bottom;
                i3 = ((ViewGroup.MarginLayoutParams) j0Var2).bottomMargin;
                break;
        }
        return right + i3;
    }

    @Override // androidx.emoji2.text.f
    public final int c(View view) {
        int measuredWidth;
        int i3;
        switch (this.f3070d) {
            case 0:
                j0 j0Var = (j0) view.getLayoutParams();
                ((i0) this.b).getClass();
                Rect rect = ((j0) view.getLayoutParams()).b;
                measuredWidth = view.getMeasuredWidth() + rect.left + rect.right + ((ViewGroup.MarginLayoutParams) j0Var).leftMargin;
                i3 = ((ViewGroup.MarginLayoutParams) j0Var).rightMargin;
                break;
            default:
                j0 j0Var2 = (j0) view.getLayoutParams();
                ((i0) this.b).getClass();
                Rect rect2 = ((j0) view.getLayoutParams()).b;
                measuredWidth = view.getMeasuredHeight() + rect2.top + rect2.bottom + ((ViewGroup.MarginLayoutParams) j0Var2).topMargin;
                i3 = ((ViewGroup.MarginLayoutParams) j0Var2).bottomMargin;
                break;
        }
        return measuredWidth + i3;
    }

    @Override // androidx.emoji2.text.f
    public final int d(View view) {
        int measuredHeight;
        int i3;
        switch (this.f3070d) {
            case 0:
                j0 j0Var = (j0) view.getLayoutParams();
                ((i0) this.b).getClass();
                Rect rect = ((j0) view.getLayoutParams()).b;
                measuredHeight = view.getMeasuredHeight() + rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) j0Var).topMargin;
                i3 = ((ViewGroup.MarginLayoutParams) j0Var).bottomMargin;
                break;
            default:
                j0 j0Var2 = (j0) view.getLayoutParams();
                ((i0) this.b).getClass();
                Rect rect2 = ((j0) view.getLayoutParams()).b;
                measuredHeight = view.getMeasuredWidth() + rect2.left + rect2.right + ((ViewGroup.MarginLayoutParams) j0Var2).leftMargin;
                i3 = ((ViewGroup.MarginLayoutParams) j0Var2).rightMargin;
                break;
        }
        return measuredHeight + i3;
    }

    @Override // androidx.emoji2.text.f
    public final int e(View view) {
        int left;
        int i3;
        switch (this.f3070d) {
            case 0:
                j0 j0Var = (j0) view.getLayoutParams();
                ((i0) this.b).getClass();
                left = view.getLeft() - ((j0) view.getLayoutParams()).b.left;
                i3 = ((ViewGroup.MarginLayoutParams) j0Var).leftMargin;
                break;
            default:
                j0 j0Var2 = (j0) view.getLayoutParams();
                ((i0) this.b).getClass();
                left = view.getTop() - ((j0) view.getLayoutParams()).b.top;
                i3 = ((ViewGroup.MarginLayoutParams) j0Var2).topMargin;
                break;
        }
        return left - i3;
    }

    @Override // androidx.emoji2.text.f
    public final int f() {
        switch (this.f3070d) {
            case 0:
                return ((i0) this.b).f2918n;
            default:
                return ((i0) this.b).f2919o;
        }
    }

    @Override // androidx.emoji2.text.f
    public final int g() {
        int i3;
        int iB;
        switch (this.f3070d) {
            case 0:
                i0 i0Var = (i0) this.b;
                i3 = i0Var.f2918n;
                iB = i0Var.B();
                break;
            default:
                i0 i0Var2 = (i0) this.b;
                i3 = i0Var2.f2919o;
                iB = i0Var2.z();
                break;
        }
        return i3 - iB;
    }

    @Override // androidx.emoji2.text.f
    public final int h() {
        switch (this.f3070d) {
            case 0:
                return ((i0) this.b).B();
            default:
                return ((i0) this.b).z();
        }
    }

    @Override // androidx.emoji2.text.f
    public final int i() {
        switch (this.f3070d) {
            case 0:
                return ((i0) this.b).f2916l;
            default:
                return ((i0) this.b).f2917m;
        }
    }

    @Override // androidx.emoji2.text.f
    public final int j() {
        switch (this.f3070d) {
            case 0:
                return ((i0) this.b).f2917m;
            default:
                return ((i0) this.b).f2916l;
        }
    }

    @Override // androidx.emoji2.text.f
    public final int k() {
        switch (this.f3070d) {
            case 0:
                return ((i0) this.b).A();
            default:
                return ((i0) this.b).C();
        }
    }

    @Override // androidx.emoji2.text.f
    public final int l() {
        int iA;
        int iB;
        switch (this.f3070d) {
            case 0:
                i0 i0Var = (i0) this.b;
                iA = i0Var.f2918n - i0Var.A();
                iB = i0Var.B();
                break;
            default:
                i0 i0Var2 = (i0) this.b;
                iA = i0Var2.f2919o - i0Var2.C();
                iB = i0Var2.z();
                break;
        }
        return iA - iB;
    }

    @Override // androidx.emoji2.text.f
    public final int m(View view) {
        switch (this.f3070d) {
            case 0:
                i0 i0Var = (i0) this.b;
                Rect rect = (Rect) this.f331c;
                i0Var.G(view, rect);
                return rect.right;
            default:
                i0 i0Var2 = (i0) this.b;
                Rect rect2 = (Rect) this.f331c;
                i0Var2.G(view, rect2);
                return rect2.bottom;
        }
    }

    @Override // androidx.emoji2.text.f
    public final int n(View view) {
        switch (this.f3070d) {
            case 0:
                i0 i0Var = (i0) this.b;
                Rect rect = (Rect) this.f331c;
                i0Var.G(view, rect);
                return rect.left;
            default:
                i0 i0Var2 = (i0) this.b;
                Rect rect2 = (Rect) this.f331c;
                i0Var2.G(view, rect2);
                return rect2.top;
        }
    }

    @Override // androidx.emoji2.text.f
    public final void o(int i3) {
        switch (this.f3070d) {
            case 0:
                ((i0) this.b).K(i3);
                break;
            default:
                ((i0) this.b).L(i3);
                break;
        }
    }
}
