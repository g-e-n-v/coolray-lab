package i;

import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ListAdapter;
import androidx.appcompat.app.AlertController$RecycleListView;

/* JADX INFO: loaded from: classes.dex */
public final class m0 implements s0, DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public e.i f2095a;
    public n0 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CharSequence f2096c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ t0 f2097d;

    public m0(t0 t0Var) {
        this.f2097d = t0Var;
    }

    @Override // i.s0
    public final boolean a() {
        e.i iVar = this.f2095a;
        if (iVar != null) {
            return iVar.isShowing();
        }
        return false;
    }

    @Override // i.s0
    public final int b() {
        return 0;
    }

    @Override // i.s0
    public final Drawable c() {
        return null;
    }

    @Override // i.s0
    public final void dismiss() {
        e.i iVar = this.f2095a;
        if (iVar != null) {
            iVar.dismiss();
            this.f2095a = null;
        }
    }

    @Override // i.s0
    public final void e(CharSequence charSequence) {
        this.f2096c = charSequence;
    }

    @Override // i.s0
    public final void g(Drawable drawable) {
        Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
    }

    @Override // i.s0
    public final void h(int i3) {
        Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
    }

    @Override // i.s0
    public final void i(int i3) {
        Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
    }

    @Override // i.s0
    public final void j(int i3) {
        Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
    }

    @Override // i.s0
    public final void k(int i3, int i4) {
        if (this.b == null) {
            return;
        }
        t0 t0Var = this.f2097d;
        e.h hVar = new e.h(t0Var.getPopupContext());
        e.d dVar = (e.d) hVar.b;
        CharSequence charSequence = this.f2096c;
        if (charSequence != null) {
            dVar.f1554d = charSequence;
        }
        n0 n0Var = this.b;
        int selectedItemPosition = t0Var.getSelectedItemPosition();
        dVar.f1566q = n0Var;
        dVar.f1567r = this;
        dVar.f1572w = selectedItemPosition;
        dVar.f1571v = true;
        e.i iVarA = hVar.a();
        this.f2095a = iVarA;
        AlertController$RecycleListView alertController$RecycleListView = iVarA.f1611e.f;
        k0.d(alertController$RecycleListView, i3);
        k0.c(alertController$RecycleListView, i4);
        this.f2095a.show();
    }

    @Override // i.s0
    public final int m() {
        return 0;
    }

    @Override // i.s0
    public final CharSequence o() {
        return this.f2096c;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i3) {
        t0 t0Var = this.f2097d;
        t0Var.setSelection(i3);
        if (t0Var.getOnItemClickListener() != null) {
            t0Var.performItemClick(null, i3, this.b.getItemId(i3));
        }
        dismiss();
    }

    @Override // i.s0
    public final void p(ListAdapter listAdapter) {
        this.b = (n0) listAdapter;
    }
}
