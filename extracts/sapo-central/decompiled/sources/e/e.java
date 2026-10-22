package e;

import android.content.DialogInterface;
import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class e extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WeakReference f1575a;

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i3 = message.what;
        if (i3 == -3 || i3 == -2 || i3 == -1) {
            ((DialogInterface.OnClickListener) message.obj).onClick((DialogInterface) this.f1575a.get(), message.what);
        } else {
            if (i3 != 1) {
                return;
            }
            ((DialogInterface) message.obj).dismiss();
        }
    }
}
