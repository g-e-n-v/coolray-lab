package w0;

import android.widget.TextView;
import com.ex.auto.LyricsFloaterService;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class o8 implements h2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3981a;
    public final /* synthetic */ LyricsFloaterService b;

    public /* synthetic */ o8(LyricsFloaterService lyricsFloaterService, int i3) {
        this.f3981a = i3;
        this.b = lyricsFloaterService;
    }

    @Override // h2.a
    public final Object a() {
        int i3 = this.f3981a;
        LyricsFloaterService lyricsFloaterService = this.b;
        switch (i3) {
            case 0:
                lyricsFloaterService.f984c.post(new n8(lyricsFloaterService, 1));
                break;
            case 1:
                lyricsFloaterService.a(-lyricsFloaterService.f1001u);
                break;
            case 2:
                if (!o2.k.m0(lyricsFloaterService.f)) {
                    ExecutorService executorService = m8.f3899a;
                    String str = lyricsFloaterService.f;
                    String str2 = lyricsFloaterService.f987g;
                    i2.g.e(str, "title");
                    i2.g.e(str2, "artist");
                    try {
                        lyricsFloaterService.getSharedPreferences("lyrics_sync_offsets", 0).edit().remove(k8.a(str, str2)).apply();
                        break;
                    } catch (Throwable unused) {
                    }
                    lyricsFloaterService.f989i = Integer.MIN_VALUE;
                    TextView textView = lyricsFloaterService.f991k;
                    if (textView != null) {
                        textView.setText("⏱ 0 ms");
                    }
                    lyricsFloaterService.f984c.postDelayed(new n8(lyricsFloaterService, 3), 500L);
                }
                return x1.e.f4647c;
            case 3:
                lyricsFloaterService.a(lyricsFloaterService.f1001u);
                break;
            default:
                lyricsFloaterService.f984c.post(new n8(lyricsFloaterService, 4));
                break;
        }
        return x1.e.f4647c;
    }
}
