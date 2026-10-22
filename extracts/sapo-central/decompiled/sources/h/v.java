package h;

import android.widget.PopupWindow;

/* JADX INFO: loaded from: classes.dex */
public final class v implements PopupWindow.OnDismissListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x f1941a;

    public v(x xVar) {
        this.f1941a = xVar;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.f1941a.c();
    }
}
