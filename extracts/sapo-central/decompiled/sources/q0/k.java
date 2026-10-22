package q0;

import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public final class k extends l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ m f2936a;

    public k(m mVar) {
        this.f2936a = mVar;
    }

    @Override // q0.l0
    public final void b(RecyclerView recyclerView, int i3, int i4) {
        int iComputeHorizontalScrollOffset = recyclerView.computeHorizontalScrollOffset();
        int iComputeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
        m mVar = this.f2936a;
        int i5 = mVar.f2938a;
        int iComputeVerticalScrollRange = mVar.f2954s.computeVerticalScrollRange();
        int i6 = mVar.f2953r;
        mVar.f2955t = iComputeVerticalScrollRange - i6 > 0 && i6 >= i5;
        int iComputeHorizontalScrollRange = mVar.f2954s.computeHorizontalScrollRange();
        int i7 = mVar.f2952q;
        boolean z2 = iComputeHorizontalScrollRange - i7 > 0 && i7 >= i5;
        mVar.f2956u = z2;
        boolean z3 = mVar.f2955t;
        if (!z3 && !z2) {
            if (mVar.f2957v != 0) {
                mVar.f(0);
                return;
            }
            return;
        }
        if (z3) {
            float f = i6;
            mVar.f2947l = (int) ((((f / 2.0f) + iComputeVerticalScrollOffset) * f) / iComputeVerticalScrollRange);
            mVar.f2946k = Math.min(i6, (i6 * i6) / iComputeVerticalScrollRange);
        }
        if (mVar.f2956u) {
            float f3 = iComputeHorizontalScrollOffset;
            float f4 = i7;
            mVar.f2950o = (int) ((((f4 / 2.0f) + f3) * f4) / iComputeHorizontalScrollRange);
            mVar.f2949n = Math.min(i7, (i7 * i7) / iComputeHorizontalScrollRange);
        }
        int i8 = mVar.f2957v;
        if (i8 == 0 || i8 == 1) {
            mVar.f(1);
        }
    }
}
