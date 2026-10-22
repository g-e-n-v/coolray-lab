package w0;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.ArrayBlockingQueue;

/* JADX INFO: loaded from: classes.dex */
public final class c implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3412a;
    public final /* synthetic */ ArrayBlockingQueue b;

    public /* synthetic */ c(ArrayBlockingQueue arrayBlockingQueue, int i3) {
        this.f3412a = i3;
        this.b = arrayBlockingQueue;
    }

    private final void a(ComponentName componentName) {
    }

    private final void b(ComponentName componentName) {
    }

    private final void c(ComponentName componentName) {
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        switch (this.f3412a) {
            case 0:
                if (iBinder != null) {
                    this.b.offer(iBinder);
                }
                break;
            case 1:
                if (iBinder != null) {
                    this.b.offer(iBinder);
                }
                break;
            default:
                if (iBinder != null) {
                    this.b.offer(iBinder);
                }
                break;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        int i3 = this.f3412a;
    }
}
