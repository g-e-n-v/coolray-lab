package u1;

import android.widget.AutoCompleteTextView;

/* JADX INFO: loaded from: classes.dex */
public final class j implements AutoCompleteTextView.OnDismissListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k f3261a;

    public j(k kVar) {
        this.f3261a = kVar;
    }

    @Override // android.widget.AutoCompleteTextView.OnDismissListener
    public final void onDismiss() {
        k kVar = this.f3261a;
        kVar.f3266i = true;
        kVar.f3268k = System.currentTimeMillis();
        kVar.g(false);
    }
}
