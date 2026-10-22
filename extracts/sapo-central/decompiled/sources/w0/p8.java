package w0;

import android.view.View;
import com.ex.auto.LyricsFloaterService;
import com.ex.auto.QuickAccessFloaterService;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class p8 implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4058a;
    public final /* synthetic */ LyricsFloaterService b;

    public /* synthetic */ p8(LyricsFloaterService lyricsFloaterService, int i3) {
        this.f4058a = i3;
        this.b = lyricsFloaterService;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f4058a) {
            case 0:
                LyricsFloaterService lyricsFloaterService = this.b;
                Set set = LyricsFloaterService.f982v;
                lyricsFloaterService.getSharedPreferences("tela_preta_prefs", 0).edit().putBoolean("lyrics_floater_enabled", false).apply();
                try {
                    int i3 = QuickAccessFloaterService.t0;
                    QuickAccessFloaterService quickAccessFloaterService = QuickAccessFloaterService.x0;
                    if (quickAccessFloaterService != null) {
                        quickAccessFloaterService.J();
                    }
                    break;
                } catch (Throwable unused) {
                }
                lyricsFloaterService.stopSelf();
                break;
            case 1:
                LyricsFloaterService lyricsFloaterService2 = this.b;
                Set set2 = LyricsFloaterService.f982v;
                lyricsFloaterService2.c();
                break;
            case 2:
                LyricsFloaterService lyricsFloaterService3 = this.b;
                Set set3 = LyricsFloaterService.f982v;
                lyricsFloaterService3.l();
                break;
            case 3:
                LyricsFloaterService lyricsFloaterService4 = this.b;
                Set set4 = LyricsFloaterService.f982v;
                lyricsFloaterService4.b();
                break;
            default:
                LyricsFloaterService lyricsFloaterService5 = this.b;
                Set set5 = LyricsFloaterService.f982v;
                lyricsFloaterService5.b();
                break;
        }
    }
}
