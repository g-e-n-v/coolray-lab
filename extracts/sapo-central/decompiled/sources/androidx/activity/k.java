package androidx.activity;

import android.window.OnBackInvokedCallback;
import e.y;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class k implements OnBackInvokedCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f93a;
    public final /* synthetic */ Object b;

    public /* synthetic */ k(int i3, Object obj) {
        this.f93a = i3;
        this.b = obj;
    }

    @Override // android.window.OnBackInvokedCallback
    public final void onBackInvoked() {
        switch (this.f93a) {
            case 0:
                ((Runnable) this.b).run();
                break;
            default:
                ((y) this.b).J();
                break;
        }
    }
}
