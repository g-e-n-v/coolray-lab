package w0;

import android.app.AlertDialog;
import android.content.DialogInterface;
import com.ex.auto.InstallerActivity;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l0 implements DialogInterface.OnDismissListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3816a;
    public final /* synthetic */ Object b;

    public /* synthetic */ l0(int i3, Object obj) {
        this.f3816a = i3;
        this.b = obj;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        int i3 = this.f3816a;
        Object obj = this.b;
        switch (i3) {
            case 0:
                if (t1.f == ((AlertDialog) obj)) {
                    t1.f = null;
                }
                break;
            default:
                int i4 = InstallerActivity.f979v;
                ((CountDownLatch) obj).countDown();
                break;
        }
    }
}
