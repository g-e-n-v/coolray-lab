package androidx.fragment.app;

import android.app.Dialog;
import android.content.DialogInterface;

/* JADX INFO: loaded from: classes.dex */
public final class k implements DialogInterface.OnCancelListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ n f459a;

    public k(n nVar) {
        this.f459a = nVar;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        n nVar = this.f459a;
        Dialog dialog = nVar.f474a0;
        if (dialog != null) {
            nVar.onCancel(dialog);
        }
    }
}
