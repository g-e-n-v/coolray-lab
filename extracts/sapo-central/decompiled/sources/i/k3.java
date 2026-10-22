package i;

import android.content.Context;
import android.view.View;
import android.view.Window;

/* JADX INFO: loaded from: classes.dex */
public final class k3 implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final h.a f2077a;
    public final /* synthetic */ l3 b;

    public k3(l3 l3Var) {
        this.b = l3Var;
        Context context = l3Var.f2082a.getContext();
        CharSequence charSequence = l3Var.f2087h;
        h.a aVar = new h.a();
        aVar.f1815e = 4096;
        aVar.f1816g = 4096;
        aVar.f1821l = null;
        aVar.f1822m = null;
        aVar.f1823n = false;
        aVar.f1824o = false;
        aVar.f1825p = 16;
        aVar.f1818i = context;
        aVar.f1812a = charSequence;
        this.f2077a = aVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        l3 l3Var = this.b;
        Window.Callback callback = l3Var.f2090k;
        if (callback == null || !l3Var.f2091l) {
            return;
        }
        callback.onMenuItemSelected(0, this.f2077a);
    }
}
