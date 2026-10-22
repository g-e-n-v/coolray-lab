package androidx.fragment.app;

import android.app.Dialog;
import android.content.DialogInterface;

/* JADX INFO: loaded from: classes.dex */
public final class l implements DialogInterface.OnDismissListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ n f460a;

    public l(n nVar) {
        this.f460a = nVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        n nVar = this.f460a;
        Dialog dialog = nVar.f474a0;
        if (dialog != null) {
            nVar.onDismiss(dialog);
        }
    }
}
