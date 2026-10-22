package w0;

import java.io.FileOutputStream;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a6 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3350a;
    public final /* synthetic */ CountDownLatch b;

    public /* synthetic */ a6(CountDownLatch countDownLatch, int i3) {
        this.f3350a = i3;
        this.b = countDownLatch;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i3 = this.f3350a;
        CountDownLatch countDownLatch = this.b;
        switch (i3) {
            case 0:
                countDownLatch.countDown();
                return;
            default:
                ae aeVar = ae.f3361a;
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(ae.a(), true);
                    try {
                        fileOutputStream.getFD().sync();
                        fileOutputStream.close();
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            a1.b.p(fileOutputStream, th);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    androidx.activity.result.b.s(th3, new StringBuilder("fsync do log falhou: "), "PersistLog");
                }
                countDownLatch.countDown();
                return;
        }
    }
}
