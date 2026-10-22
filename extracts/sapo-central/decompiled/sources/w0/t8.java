package w0;

import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.PlaybackState;
import android.util.Log;
import android.widget.TextView;
import com.ecarx.eas.sdk.mediacenter.MediaCenterAPI;
import com.ex.auto.LyricsFloaterService;
import com.ex.auto.MediaBarFloaterService;
import com.ex.auto.MediaBrowserHostActivity;
import com.ex.auto.R;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class t8 extends MediaController.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4271a;
    public final /* synthetic */ Object b;

    public /* synthetic */ t8(int i3, Object obj) {
        this.f4271a = i3;
        this.b = obj;
    }

    @Override // android.media.session.MediaController.Callback
    public final void onMetadataChanged(MediaMetadata mediaMetadata) {
        int i3 = this.f4271a;
        Object obj = this.b;
        switch (i3) {
            case 0:
                Set set = LyricsFloaterService.f982v;
                ((LyricsFloaterService) obj).i();
                break;
            case 1:
                Set set2 = MediaBarFloaterService.f1060v;
                ((MediaBarFloaterService) obj).f(null);
                break;
            case 2:
                MediaBrowserHostActivity mediaBrowserHostActivity = (MediaBrowserHostActivity) obj;
                MediaController mediaController = mediaBrowserHostActivity.f1082c;
                MediaBrowserHostActivity.b(mediaBrowserHostActivity, mediaController != null ? mediaController.getPlaybackState() : null, mediaMetadata);
                break;
            default:
                od odVar = od.f3992a;
                od.k((MediaController) obj);
                break;
        }
    }

    @Override // android.media.session.MediaController.Callback
    public final void onPlaybackStateChanged(PlaybackState playbackState) {
        MediaCenterAPI mediaCenterAPI;
        Object obj;
        switch (this.f4271a) {
            case 0:
                LyricsFloaterService lyricsFloaterService = (LyricsFloaterService) this.b;
                Set set = LyricsFloaterService.f982v;
                lyricsFloaterService.i();
                break;
            case 1:
                MediaBarFloaterService mediaBarFloaterService = (MediaBarFloaterService) this.b;
                Set set2 = MediaBarFloaterService.f1060v;
                mediaBarFloaterService.f(null);
                break;
            case 2:
                MediaBrowserHostActivity mediaBrowserHostActivity = (MediaBrowserHostActivity) this.b;
                MediaController mediaController = mediaBrowserHostActivity.f1082c;
                MediaBrowserHostActivity.b(mediaBrowserHostActivity, playbackState, mediaController != null ? mediaController.getMetadata() : null);
                break;
            default:
                od odVar = od.f3992a;
                boolean z2 = false;
                if (playbackState != null && playbackState.getState() == 3) {
                    z2 = true;
                }
                if (z2 && !od.f4015z && (mediaCenterAPI = od.f3994d) != null && (obj = od.f3995e) != null && !od.C) {
                    try {
                        mediaCenterAPI.updateCurrentSourceType(obj, 6);
                        od.C = true;
                        Log.i("MediaCenterBridge", "fonte corrente declarada (mídia nossa tocando)");
                    } catch (Throwable th) {
                        androidx.activity.result.b.s(th, new StringBuilder("updateCurrentSourceType falhou: "), "MediaCenterBridge");
                    }
                }
                if (playbackState == null || playbackState.getState() != 3) {
                    MediaController mediaController2 = od.f4001l;
                    if (i2.g.a(mediaController2 != null ? mediaController2.getSessionToken() : null, ((MediaController) this.b).getSessionToken())) {
                        od.a();
                        MediaController mediaController3 = od.f4001l;
                        if (!i2.g.a(mediaController3 != null ? mediaController3.getSessionToken() : null, ((MediaController) this.b).getSessionToken())) {
                        }
                    }
                }
                od odVar2 = od.f3992a;
                od.k((MediaController) this.b);
                break;
        }
    }

    @Override // android.media.session.MediaController.Callback
    public final void onSessionDestroyed() {
        switch (this.f4271a) {
            case 0:
                LyricsFloaterService lyricsFloaterService = (LyricsFloaterService) this.b;
                Set set = LyricsFloaterService.f982v;
                lyricsFloaterService.h();
                return;
            case 1:
                MediaBarFloaterService mediaBarFloaterService = (MediaBarFloaterService) this.b;
                Set set2 = MediaBarFloaterService.f1060v;
                mediaBarFloaterService.d();
                return;
            case 2:
                MediaBrowserHostActivity mediaBrowserHostActivity = (MediaBrowserHostActivity) this.b;
                TextView textView = mediaBrowserHostActivity.f1091m;
                if (textView == null) {
                    i2.g.h("tituloAgora");
                    throw null;
                }
                textView.setText(mediaBrowserHostActivity.getString(R.string.k_mbh_nothing_playing));
                TextView textView2 = mediaBrowserHostActivity.f1092n;
                if (textView2 == null) {
                    i2.g.h("subAgora");
                    throw null;
                }
                textView2.setText("");
                TextView textView3 = mediaBrowserHostActivity.f1094p;
                if (textView3 != null) {
                    textView3.setVisibility(8);
                    return;
                } else {
                    i2.g.h("btnEntrar");
                    throw null;
                }
            default:
                MediaController mediaController = od.f4001l;
                if (i2.g.a(mediaController != null ? mediaController.getSessionToken() : null, ((MediaController) this.b).getSessionToken())) {
                    od odVar = od.f3992a;
                    od.d();
                    od.a();
                    return;
                }
                return;
        }
    }
}
