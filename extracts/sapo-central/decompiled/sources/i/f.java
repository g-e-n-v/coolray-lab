package i;

import android.content.Context;
import android.view.View;
import com.ex.auto.R;

/* JADX INFO: loaded from: classes.dex */
public final class f extends h.x {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ int f2019l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final /* synthetic */ j f2020m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(j jVar, Context context, h.m mVar, View view) {
        super(context, mVar, view, true, R.attr.actionOverflowMenuStyle, 0);
        this.f2020m = jVar;
        this.f = 8388613;
        androidx.emoji2.text.m mVar2 = jVar.f2067w;
        this.f1947h = mVar2;
        h.u uVar = this.f1948i;
        if (uVar != null) {
            uVar.c(mVar2);
        }
    }

    @Override // h.x
    public final void c() {
        switch (this.f2019l) {
            case 0:
                j jVar = this.f2020m;
                jVar.f2064t = null;
                jVar.getClass();
                super.c();
                break;
            default:
                j jVar2 = this.f2020m;
                h.m mVar = jVar2.f2048c;
                if (mVar != null) {
                    mVar.c(true);
                }
                jVar2.f2063s = null;
                super.c();
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(j jVar, Context context, h.f0 f0Var, View view) {
        super(context, f0Var, view, false, R.attr.actionOverflowMenuStyle, 0);
        this.f2020m = jVar;
        if ((f0Var.A.f1931x & 32) != 32) {
            View view2 = jVar.f2053i;
            this.f1945e = view2 == null ? (View) jVar.f2052h : view2;
        }
        androidx.emoji2.text.m mVar = jVar.f2067w;
        this.f1947h = mVar;
        h.u uVar = this.f1948i;
        if (uVar != null) {
            uVar.c(mVar);
        }
    }
}
