package com.google.android.material.datepicker;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import q0.t0;

/* JADX INFO: loaded from: classes.dex */
public final class g extends LinearLayoutManager {
    public final /* synthetic */ int E;
    public final /* synthetic */ m F;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(m mVar, int i3, int i4) {
        super(i3);
        this.F = mVar;
        this.E = i4;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, q0.i0
    public final void s0(RecyclerView recyclerView, int i3) {
        v vVar = new v(recyclerView.getContext());
        vVar.f3033a = i3;
        t0(vVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void v0(t0 t0Var, int[] iArr) {
        int i3 = this.E;
        m mVar = this.F;
        if (i3 == 0) {
            iArr[0] = mVar.Y.getWidth();
            iArr[1] = mVar.Y.getWidth();
        } else {
            iArr[0] = mVar.Y.getHeight();
            iArr[1] = mVar.Y.getHeight();
        }
    }
}
