package w0;

import com.ex.auto.LyricsFloaterService;
import java.util.Set;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class n8 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3940a;
    public final /* synthetic */ LyricsFloaterService b;

    public /* synthetic */ n8(LyricsFloaterService lyricsFloaterService, int i3) {
        this.f3940a = i3;
        this.b = lyricsFloaterService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i3 = this.f3940a;
        LyricsFloaterService lyricsFloaterService = this.b;
        switch (i3) {
            case 0:
                Set set = LyricsFloaterService.f982v;
                lyricsFloaterService.l();
                break;
            case 1:
                Set set2 = LyricsFloaterService.f982v;
                ExecutorService executorService = m8.f3899a;
                lyricsFloaterService.f988h = m8.c(lyricsFloaterService.f, lyricsFloaterService.f987g);
                lyricsFloaterService.g();
                break;
            case 2:
                lyricsFloaterService.f989i = Integer.MIN_VALUE;
                lyricsFloaterService.q();
                break;
            case 3:
                lyricsFloaterService.f989i = Integer.MIN_VALUE;
                lyricsFloaterService.q();
                break;
            default:
                Set set3 = LyricsFloaterService.f982v;
                ExecutorService executorService2 = m8.f3899a;
                lyricsFloaterService.f988h = m8.c(lyricsFloaterService.f, lyricsFloaterService.f987g);
                lyricsFloaterService.f989i = Integer.MIN_VALUE;
                lyricsFloaterService.g();
                break;
        }
    }
}
