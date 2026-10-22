package t1;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
public final class e implements Handler.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d0.e f3213a;

    public e(d0.e eVar) {
        this.f3213a = eVar;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what != 0) {
            return false;
        }
        d0.e eVar = this.f3213a;
        if (message.obj != null) {
            throw new ClassCastException();
        }
        synchronized (eVar.f1532a) {
            throw null;
        }
    }
}
