package w0;

import android.view.View;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.AppPipFloaterService;
import com.ex.auto.ExSapoCastActivity;
import com.ex.auto.ExSapoCastFloaterService;
import com.ex.auto.LyricsFloaterService;
import com.ex.auto.MediaBrowserHostActivity;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.TimerFloaterService;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class w implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4411a;
    public final /* synthetic */ h2.a b;

    public /* synthetic */ w(h2.a aVar, int i3) {
        this.f4411a = i3;
        this.b = aVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f4411a) {
            case 0:
                h2.a aVar = this.b;
                AppPipFloaterService appPipFloaterService = AppPipFloaterService.f769x;
                aVar.a();
                break;
            case 1:
                h2.a aVar2 = this.b;
                int i3 = ExSapoCastActivity.f910e;
                aVar2.a();
                break;
            case 2:
                h2.a aVar3 = this.b;
                int i4 = ExSapoCastFloaterService.f914j;
                aVar3.a();
                break;
            case 3:
                h2.a aVar4 = this.b;
                Set set = LyricsFloaterService.f982v;
                aVar4.a();
                break;
            case 4:
                h2.a aVar5 = this.b;
                int i5 = MediaBrowserHostActivity.f1080s;
                aVar5.a();
                break;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                h2.a aVar6 = this.b;
                int i6 = QuickAccessFloaterService.t0;
                aVar6.a();
                break;
            case MusicClient.TYPE_GESTURE /* 6 */:
                h2.a aVar7 = this.b;
                int i7 = QuickAccessFloaterService.t0;
                aVar7.a();
                break;
            default:
                h2.a aVar8 = this.b;
                boolean z2 = TimerFloaterService.f1220o;
                aVar8.a();
                break;
        }
    }
}
