package g;

import android.view.View;
import c0.x0;
import i.l3;

/* JADX INFO: loaded from: classes.dex */
public final class j extends a1.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1784a;
    public boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1785c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f1786d;

    public j(k kVar) {
        this.f1784a = 0;
        this.f1786d = kVar;
        this.b = false;
        this.f1785c = 0;
    }

    @Override // c0.x0
    public final void b() {
        switch (this.f1784a) {
            case 0:
                int i3 = this.f1785c + 1;
                this.f1785c = i3;
                k kVar = (k) this.f1786d;
                if (i3 == kVar.f1787a.size()) {
                    x0 x0Var = kVar.f1789d;
                    if (x0Var != null) {
                        x0Var.b();
                    }
                    this.f1785c = 0;
                    this.b = false;
                    kVar.f1790e = false;
                }
                break;
            default:
                if (!this.b) {
                    ((l3) this.f1786d).f2082a.setVisibility(this.f1785c);
                }
                break;
        }
    }

    @Override // a1.b, c0.x0
    public void c(View view) {
        switch (this.f1784a) {
            case 1:
                this.b = true;
                break;
        }
    }

    @Override // a1.b, c0.x0
    public final void g() {
        switch (this.f1784a) {
            case 0:
                if (!this.b) {
                    this.b = true;
                    x0 x0Var = ((k) this.f1786d).f1789d;
                    if (x0Var != null) {
                        x0Var.g();
                    }
                    break;
                }
                break;
            default:
                ((l3) this.f1786d).f2082a.setVisibility(0);
                break;
        }
    }

    public j(l3 l3Var, int i3) {
        this.f1784a = 1;
        this.f1786d = l3Var;
        this.f1785c = i3;
        this.b = false;
    }
}
