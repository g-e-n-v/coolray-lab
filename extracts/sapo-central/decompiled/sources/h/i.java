package h;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import androidx.appcompat.view.menu.ExpandedMenuView;

/* JADX INFO: loaded from: classes.dex */
public final class i implements z, AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f1877a;
    public LayoutInflater b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public m f1878c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ExpandedMenuView f1879d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public y f1880e;
    public h f;

    public i(ContextWrapper contextWrapper) {
        this.f1877a = contextWrapper;
        this.b = LayoutInflater.from(contextWrapper);
    }

    @Override // h.z
    public final void b(m mVar, boolean z2) {
        y yVar = this.f1880e;
        if (yVar != null) {
            yVar.b(mVar, z2);
        }
    }

    @Override // h.z
    public final void c(y yVar) {
        throw null;
    }

    @Override // h.z
    public final void e() {
        h hVar = this.f;
        if (hVar != null) {
            hVar.notifyDataSetChanged();
        }
    }

    @Override // h.z
    public final void g(Context context, m mVar) {
        if (this.f1877a != null) {
            this.f1877a = context;
            if (this.b == null) {
                this.b = LayoutInflater.from(context);
            }
        }
        this.f1878c = mVar;
        h hVar = this.f;
        if (hVar != null) {
            hVar.notifyDataSetChanged();
        }
    }

    @Override // h.z
    public final boolean h() {
        return false;
    }

    @Override // h.z
    public final boolean i(o oVar) {
        return false;
    }

    @Override // h.z
    public final boolean j(o oVar) {
        return false;
    }

    @Override // h.z
    public final boolean k(f0 f0Var) {
        boolean zHasVisibleItems = f0Var.hasVisibleItems();
        Context context = f0Var.f1886a;
        if (!zHasVisibleItems) {
            return false;
        }
        n nVar = new n();
        nVar.f1908a = f0Var;
        e.h hVar = new e.h(context);
        e.d dVar = (e.d) hVar.b;
        i iVar = new i(dVar.f1552a);
        nVar.f1909c = iVar;
        iVar.f1880e = nVar;
        f0Var.b(iVar, context);
        i iVar2 = nVar.f1909c;
        if (iVar2.f == null) {
            iVar2.f = new h(iVar2);
        }
        dVar.f1566q = iVar2.f;
        dVar.f1567r = nVar;
        View view = f0Var.f1898o;
        if (view != null) {
            dVar.f1555e = view;
        } else {
            dVar.f1553c = f0Var.f1897n;
            dVar.f1554d = f0Var.f1896m;
        }
        dVar.f1564o = nVar;
        e.i iVarA = hVar.a();
        nVar.b = iVarA;
        iVarA.setOnDismissListener(nVar);
        WindowManager.LayoutParams attributes = nVar.b.getWindow().getAttributes();
        attributes.type = 1003;
        attributes.flags |= 131072;
        nVar.b.show();
        y yVar = this.f1880e;
        if (yVar == null) {
            return true;
        }
        yVar.g(f0Var);
        return true;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i3, long j3) {
        this.f1878c.q(this.f.getItem(i3), this, 0);
    }
}
