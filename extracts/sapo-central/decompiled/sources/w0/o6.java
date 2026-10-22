package w0;

import android.util.Log;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes.dex */
public final class o6 implements RejectedExecutionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3979a;

    public o6(String str) {
        this.f3979a = str;
    }

    @Override // java.util.concurrent.RejectedExecutionHandler
    public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
        Log.i("Executores", this.f3979a + ' ' + ((threadPoolExecutor == null || !threadPoolExecutor.isShutdown()) ? "recusou" : "desligado") + " — tarefa descartada");
    }
}
