package androidx.fragment.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.ex.auto.R;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public class n extends r implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {
    public final k R;
    public final l S;
    public int T;
    public int U;
    public boolean V;
    public boolean W;
    public int X;
    public boolean Y;
    public final androidx.emoji2.text.m Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public Dialog f474a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f475b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f476c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public boolean f477d0;

    public n() {
        new androidx.activity.d(2, this);
        this.R = new k(this);
        this.S = new l(this);
        this.T = 0;
        this.U = 0;
        this.V = true;
        this.W = true;
        this.X = -1;
        this.Z = new androidx.emoji2.text.m(2, this);
        this.f477d0 = false;
    }

    public Dialog A() {
        if (h0.D(3)) {
            Log.d("FragmentManager", "onCreateDialog called for DialogFragment " + this);
        }
        return new Dialog(w(), this.U);
    }

    @Override // androidx.fragment.app.r
    public final a1.b c() {
        return new m(this, new o(this));
    }

    @Override // androidx.fragment.app.r
    public final void l(Context context) {
        super.l(context);
        this.N.d(this.Z);
        this.f476c0 = false;
    }

    @Override // androidx.fragment.app.r
    public void m(Bundle bundle) {
        super.m(bundle);
        new Handler();
        this.W = this.f521w == 0;
        if (bundle != null) {
            this.T = bundle.getInt("android:style", 0);
            this.U = bundle.getInt("android:theme", 0);
            this.V = bundle.getBoolean("android:cancelable", true);
            this.W = bundle.getBoolean("android:showsDialog", this.W);
            this.X = bundle.getInt("android:backStackId", -1);
        }
    }

    @Override // androidx.fragment.app.r
    public final void o() {
        this.C = true;
        Dialog dialog = this.f474a0;
        if (dialog != null) {
            this.f475b0 = true;
            dialog.setOnDismissListener(null);
            this.f474a0.dismiss();
            if (!this.f476c0) {
                onDismiss(this.f474a0);
            }
            this.f474a0 = null;
            this.f477d0 = false;
        }
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (this.f475b0) {
            return;
        }
        if (h0.D(3)) {
            Log.d("FragmentManager", "onDismiss called for DialogFragment " + this);
        }
        if (this.f476c0) {
            return;
        }
        this.f476c0 = true;
        Dialog dialog = this.f474a0;
        if (dialog != null) {
            dialog.setOnDismissListener(null);
            this.f474a0.dismiss();
        }
        this.f475b0 = true;
        if (this.X >= 0) {
            h0 h0VarJ = j();
            int i3 = this.X;
            if (i3 >= 0) {
                h0VarJ.u(new g0(h0VarJ, i3), false);
                this.X = -1;
                return;
            } else {
                throw new IllegalArgumentException("Bad id: " + i3);
            }
        }
        a aVar = new a(j());
        h0 h0Var = this.f516r;
        if (h0Var != null && h0Var != aVar.f381p) {
            throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + toString() + " is already attached to a FragmentManager.");
        }
        aVar.b(new o0(3, this));
        if (aVar.f382q) {
            throw new IllegalStateException("commit already called");
        }
        if (h0.D(2)) {
            Log.v("FragmentManager", "Commit: " + aVar);
            PrintWriter printWriter = new PrintWriter(new q0());
            aVar.d("  ", printWriter, true);
            printWriter.close();
        }
        aVar.f382q = true;
        boolean z2 = aVar.f372g;
        h0 h0Var2 = aVar.f381p;
        if (z2) {
            aVar.f383r = h0Var2.f426i.getAndIncrement();
        } else {
            aVar.f383r = -1;
        }
        h0Var2.u(aVar, true);
    }

    @Override // androidx.fragment.app.r
    public final void p() {
        this.C = true;
        if (!this.f476c0) {
            this.f476c0 = true;
        }
        androidx.lifecycle.w wVar = this.N;
        wVar.getClass();
        androidx.lifecycle.w.a("removeObserver");
        androidx.lifecycle.v vVar = (androidx.lifecycle.v) wVar.b.b(this.Z);
        if (vVar == null) {
            return;
        }
        vVar.d();
        vVar.c(false);
    }

    @Override // androidx.fragment.app.r
    public final LayoutInflater q(Bundle bundle) {
        LayoutInflater layoutInflaterQ = super.q(bundle);
        boolean z2 = this.W;
        if (z2 && !this.Y) {
            if (z2 && !this.f477d0) {
                try {
                    this.Y = true;
                    Dialog dialogA = A();
                    this.f474a0 = dialogA;
                    if (this.W) {
                        int i3 = this.T;
                        if (i3 == 1 || i3 == 2) {
                            dialogA.requestWindowFeature(1);
                        } else if (i3 == 3) {
                            Window window = dialogA.getWindow();
                            if (window != null) {
                                window.addFlags(24);
                            }
                            dialogA.requestWindowFeature(1);
                        }
                        Context contextH = h();
                        if (contextH != null) {
                            this.f474a0.setOwnerActivity((Activity) contextH);
                        }
                        this.f474a0.setCancelable(this.V);
                        this.f474a0.setOnCancelListener(this.R);
                        this.f474a0.setOnDismissListener(this.S);
                        this.f477d0 = true;
                    } else {
                        this.f474a0 = null;
                    }
                    this.Y = false;
                } catch (Throwable th) {
                    this.Y = false;
                    throw th;
                }
            }
            if (h0.D(2)) {
                Log.d("FragmentManager", "get layout inflater for DialogFragment " + this + " from dialog context");
            }
            Dialog dialog = this.f474a0;
            if (dialog != null) {
                return layoutInflaterQ.cloneInContext(dialog.getContext());
            }
        } else if (h0.D(2)) {
            String str = "getting layout inflater for DialogFragment " + this;
            if (!this.W) {
                Log.d("FragmentManager", "mShowsDialog = false: " + str);
                return layoutInflaterQ;
            }
            Log.d("FragmentManager", "mCreatingDialog = true: " + str);
        }
        return layoutInflaterQ;
    }

    @Override // androidx.fragment.app.r
    public void r(Bundle bundle) {
        Dialog dialog = this.f474a0;
        if (dialog != null) {
            Bundle bundleOnSaveInstanceState = dialog.onSaveInstanceState();
            bundleOnSaveInstanceState.putBoolean("android:dialogShowing", false);
            bundle.putBundle("android:savedDialogState", bundleOnSaveInstanceState);
        }
        int i3 = this.T;
        if (i3 != 0) {
            bundle.putInt("android:style", i3);
        }
        int i4 = this.U;
        if (i4 != 0) {
            bundle.putInt("android:theme", i4);
        }
        boolean z2 = this.V;
        if (!z2) {
            bundle.putBoolean("android:cancelable", z2);
        }
        boolean z3 = this.W;
        if (!z3) {
            bundle.putBoolean("android:showsDialog", z3);
        }
        int i5 = this.X;
        if (i5 != -1) {
            bundle.putInt("android:backStackId", i5);
        }
    }

    @Override // androidx.fragment.app.r
    public void s() {
        this.C = true;
        Dialog dialog = this.f474a0;
        if (dialog != null) {
            this.f475b0 = false;
            dialog.show();
            View decorView = this.f474a0.getWindow().getDecorView();
            decorView.setTag(R.id.view_tree_lifecycle_owner, this);
            decorView.setTag(R.id.view_tree_view_model_store_owner, this);
            decorView.setTag(R.id.view_tree_saved_state_registry_owner, this);
        }
    }

    @Override // androidx.fragment.app.r
    public void t() {
        this.C = true;
        Dialog dialog = this.f474a0;
        if (dialog != null) {
            dialog.hide();
        }
    }

    @Override // androidx.fragment.app.r
    public final void u(Bundle bundle) {
        Bundle bundle2;
        this.C = true;
        if (this.f474a0 == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.f474a0.onRestoreInstanceState(bundle2);
    }

    @Override // androidx.fragment.app.r
    public final void v(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle bundle2;
        super.v(layoutInflater, viewGroup, bundle);
        if (this.E != null || this.f474a0 == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.f474a0.onRestoreInstanceState(bundle2);
    }
}
