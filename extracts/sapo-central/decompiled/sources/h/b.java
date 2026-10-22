package h;

import android.view.View;
import androidx.appcompat.view.menu.ActionMenuItemView;
import i.t1;

/* JADX INFO: loaded from: classes.dex */
public final class b extends t1 {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ int f1826j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ View f1827k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(ActionMenuItemView actionMenuItemView) {
        super(actionMenuItemView);
        this.f1827k = actionMenuItemView;
    }

    @Override // i.t1
    public final d0 b() {
        i.f fVar;
        switch (this.f1826j) {
            case 0:
                c cVar = ((ActionMenuItemView) this.f1827k).f108l;
                if (cVar == null || (fVar = ((i.g) cVar).f2027a.f2064t) == null) {
                    return null;
                }
                return fVar.a();
            default:
                i.f fVar2 = ((i.i) this.f1827k).f2044d.f2063s;
                if (fVar2 == null) {
                    return null;
                }
                return fVar2.a();
        }
    }

    @Override // i.t1
    public final boolean c() {
        d0 d0VarB;
        switch (this.f1826j) {
            case 0:
                ActionMenuItemView actionMenuItemView = (ActionMenuItemView) this.f1827k;
                l lVar = actionMenuItemView.f106j;
                return lVar != null && lVar.b(actionMenuItemView.f103g) && (d0VarB = b()) != null && d0VarB.a();
            default:
                ((i.i) this.f1827k).f2044d.l();
                return true;
        }
    }

    @Override // i.t1
    public boolean d() {
        switch (this.f1826j) {
            case 1:
                i.j jVar = ((i.i) this.f1827k).f2044d;
                if (jVar.f2065u != null) {
                    return false;
                }
                jVar.d();
                return true;
            default:
                return super.d();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(i.i iVar, i.i iVar2) {
        super(iVar2);
        this.f1827k = iVar;
    }
}
