package androidx.emoji2.text;

import com.ex.auto.PhoneSyncService;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f325a;
    public final /* synthetic */ String b;

    public /* synthetic */ a(int i3, String str) {
        this.f325a = i3;
        this.b = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        switch (this.f325a) {
            case 0:
                Thread thread = new Thread(runnable, this.b);
                thread.setPriority(10);
                return thread;
            default:
                String str = this.b;
                boolean z2 = PhoneSyncService.f1102z;
                Thread thread2 = new Thread(runnable, str);
                thread2.setDaemon(true);
                return thread2;
        }
    }
}
