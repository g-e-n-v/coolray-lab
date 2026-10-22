package g1;

import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class c extends a1.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BottomSheetBehavior f1803a;

    public c(BottomSheetBehavior bottomSheetBehavior) {
        this.f1803a = bottomSheetBehavior;
    }

    @Override // a1.b
    public final int C() {
        BottomSheetBehavior bottomSheetBehavior = this.f1803a;
        return bottomSheetBehavior.f1342v ? bottomSheetBehavior.F : bottomSheetBehavior.f1340t;
    }

    @Override // a1.b
    public final void Q(int i3) {
        if (i3 == 1) {
            BottomSheetBehavior bottomSheetBehavior = this.f1803a;
            if (bottomSheetBehavior.f1344x) {
                bottomSheetBehavior.z(1);
            }
        }
    }

    @Override // a1.b
    public final void R(View view, int i3, int i4) {
        this.f1803a.u(i4);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x004b  */
    @Override // a1.b
    public final void S(View view, float f, float f3) {
        int i3;
        int i4 = 6;
        BottomSheetBehavior bottomSheetBehavior = this.f1803a;
        if (f3 < 0.0f) {
            if (bottomSheetBehavior.b) {
                i3 = bottomSheetBehavior.f1337q;
            } else {
                int top = view.getTop();
                int i5 = bottomSheetBehavior.f1338r;
                if (top > i5) {
                    i3 = i5;
                } else {
                    i3 = bottomSheetBehavior.f1336p;
                }
            }
            i4 = 3;
        } else if (bottomSheetBehavior.f1342v && bottomSheetBehavior.B(view, f3)) {
            if (Math.abs(f) >= Math.abs(f3) || f3 <= 500.0f) {
                if (view.getTop() > (bottomSheetBehavior.w() + bottomSheetBehavior.F) / 2) {
                    i3 = bottomSheetBehavior.F;
                    i4 = 5;
                } else {
                    if (bottomSheetBehavior.b) {
                        i3 = bottomSheetBehavior.f1337q;
                    } else if (Math.abs(view.getTop() - bottomSheetBehavior.f1336p) < Math.abs(view.getTop() - bottomSheetBehavior.f1338r)) {
                        i3 = bottomSheetBehavior.f1336p;
                    } else {
                        i3 = bottomSheetBehavior.f1338r;
                    }
                    i4 = 3;
                }
            } else {
                i3 = bottomSheetBehavior.F;
                i4 = 5;
            }
        } else if (f3 == 0.0f || Math.abs(f) > Math.abs(f3)) {
            int top2 = view.getTop();
            if (!bottomSheetBehavior.b) {
                int i6 = bottomSheetBehavior.f1338r;
                if (top2 < i6) {
                    if (top2 < Math.abs(top2 - bottomSheetBehavior.f1340t)) {
                        i3 = bottomSheetBehavior.f1336p;
                        i4 = 3;
                    } else {
                        i3 = bottomSheetBehavior.f1338r;
                    }
                } else if (Math.abs(top2 - i6) < Math.abs(top2 - bottomSheetBehavior.f1340t)) {
                    i3 = bottomSheetBehavior.f1338r;
                } else {
                    i3 = bottomSheetBehavior.f1340t;
                    i4 = 4;
                }
            } else if (Math.abs(top2 - bottomSheetBehavior.f1337q) < Math.abs(top2 - bottomSheetBehavior.f1340t)) {
                i3 = bottomSheetBehavior.f1337q;
                i4 = 3;
            } else {
                i3 = bottomSheetBehavior.f1340t;
                i4 = 4;
            }
        } else {
            if (bottomSheetBehavior.b) {
                i3 = bottomSheetBehavior.f1340t;
            } else {
                int top3 = view.getTop();
                if (Math.abs(top3 - bottomSheetBehavior.f1338r) < Math.abs(top3 - bottomSheetBehavior.f1340t)) {
                    i3 = bottomSheetBehavior.f1338r;
                } else {
                    i3 = bottomSheetBehavior.f1340t;
                }
            }
            i4 = 4;
        }
        bottomSheetBehavior.C(view, i4, i3, true);
    }

    @Override // a1.b
    public final boolean d0(View view, int i3) {
        BottomSheetBehavior bottomSheetBehavior = this.f1803a;
        int i4 = bottomSheetBehavior.f1345y;
        if (i4 == 1 || bottomSheetBehavior.M) {
            return false;
        }
        if (i4 == 3 && bottomSheetBehavior.K == i3) {
            WeakReference weakReference = bottomSheetBehavior.H;
            View view2 = weakReference != null ? (View) weakReference.get() : null;
            if (view2 != null && view2.canScrollVertically(-1)) {
                return false;
            }
        }
        WeakReference weakReference2 = bottomSheetBehavior.G;
        return weakReference2 != null && weakReference2.get() == view;
    }

    @Override // a1.b
    public final int n(View view, int i3) {
        return view.getLeft();
    }

    @Override // a1.b
    public final int o(View view, int i3) {
        BottomSheetBehavior bottomSheetBehavior = this.f1803a;
        int iW = bottomSheetBehavior.w();
        int i4 = bottomSheetBehavior.f1342v ? bottomSheetBehavior.F : bottomSheetBehavior.f1340t;
        if (i3 < iW) {
            return iW;
        }
        return i3 > i4 ? i4 : i3;
    }
}
