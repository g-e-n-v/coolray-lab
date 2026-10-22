package q0;

import android.view.View;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f3016a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3017c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3018d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3019e;
    public int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3020g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3021h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f3022i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3023j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public List f3024k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f3025l;

    public final void a(View view) {
        int iB;
        int size = this.f3024k.size();
        View view2 = null;
        int i3 = Integer.MAX_VALUE;
        for (int i4 = 0; i4 < size; i4++) {
            View view3 = ((w0) this.f3024k.get(i4)).f3048a;
            j0 j0Var = (j0) view3.getLayoutParams();
            if (view3 != view && !j0Var.f2933a.h() && (iB = (j0Var.f2933a.b() - this.f3018d) * this.f3019e) >= 0 && iB < i3) {
                view2 = view3;
                if (iB == 0) {
                    break;
                } else {
                    i3 = iB;
                }
            }
        }
        if (view2 == null) {
            this.f3018d = -1;
        } else {
            this.f3018d = ((j0) view2.getLayoutParams()).f2933a.b();
        }
    }

    public final View b(o0 o0Var) {
        List list = this.f3024k;
        if (list == null) {
            View view = o0Var.i(this.f3018d, Long.MAX_VALUE).f3048a;
            this.f3018d += this.f3019e;
            return view;
        }
        int size = list.size();
        for (int i3 = 0; i3 < size; i3++) {
            View view2 = ((w0) this.f3024k.get(i3)).f3048a;
            j0 j0Var = (j0) view2.getLayoutParams();
            if (!j0Var.f2933a.h() && this.f3018d == j0Var.f2933a.b()) {
                a(view2);
                return view2;
            }
        }
        return null;
    }
}
