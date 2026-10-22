package q0;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public final class a1 extends w {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final /* synthetic */ x f2842q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a1(x xVar, Context context) {
        super(context);
        this.f2842q = xVar;
    }

    @Override // q0.w
    public final float b(DisplayMetrics displayMetrics) {
        return 100.0f / displayMetrics.densityDpi;
    }

    @Override // q0.w
    public final void f(View view, r0 r0Var) {
        x xVar = this.f2842q;
        RecyclerView recyclerView = xVar.f3064a;
        if (recyclerView == null) {
            return;
        }
        int[] iArrA = xVar.a(recyclerView.getLayoutManager(), view);
        int i3 = iArrA[0];
        int i4 = iArrA[1];
        int iCeil = (int) Math.ceil(((double) c(Math.max(Math.abs(i3), Math.abs(i4)))) / 0.3356d);
        if (iCeil > 0) {
            r0Var.f2992a = i3;
            r0Var.b = i4;
            r0Var.f2993c = iCeil;
            r0Var.f2995e = this.f3040j;
            r0Var.f = true;
        }
    }
}
