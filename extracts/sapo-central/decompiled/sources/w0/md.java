package w0;

import android.media.session.MediaController;
import android.media.session.PlaybackState;
import android.os.Handler;
import android.util.Log;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ecarx.eas.sdk.mediacenter.MusicPlaybackInfo;

/* JADX INFO: loaded from: classes.dex */
public final class md extends MusicClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile MusicPlaybackInfo f3915a;

    public static void a(String str, h2.l lVar) {
        MediaController mediaController = od.f4001l;
        MediaController.TransportControls transportControls = mediaController != null ? mediaController.getTransportControls() : null;
        if (transportControls == null) {
            Log.i("MediaCenterBridge", "MC→" + str + " sem player espelhado");
            return;
        }
        try {
            lVar.c(transportControls);
            Log.i("MediaCenterBridge", "MC→" + str);
        } catch (Throwable th) {
            StringBuilder sbL = androidx.activity.result.b.l("MC→", str, " falhou (");
            sbL.append(th.getClass().getSimpleName());
            sbL.append(") — reavaliando o player");
            Log.w("MediaCenterBridge", sbL.toString());
            Handler handler = od.f4000k;
            if (handler != null) {
                handler.post(new r0(15));
            }
        }
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final int ctrlCollect(int i3, boolean z2) {
        od odVar = od.f3992a;
        od.r();
        return 0;
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final void ctrlCollectByUUID(int i3, String str, boolean z2) {
        od odVar = od.f3992a;
        od.r();
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final long getCurrentProgress() {
        PlaybackState playbackState;
        MediaController mediaController = od.f4001l;
        if (mediaController == null || (playbackState = mediaController.getPlaybackState()) == null) {
            return 0L;
        }
        return playbackState.getPosition();
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final int getCurrentSourceType() {
        return 6;
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final int[] getMediaSourceTypeList() {
        return new int[]{6};
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final MusicPlaybackInfo getMusicPlaybackInfo() {
        return this.f3915a;
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final boolean onCollect(int i3, boolean z2) {
        Log.i("MediaCenterBridge", "MC→onCollect " + z2);
        od odVar = od.f3992a;
        od.r();
        return true;
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final boolean onExit() {
        a("onExit", new ya(17));
        return true;
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final boolean onForward() {
        a("onForward", new ya(15));
        return true;
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final void onMediaCenterFocusChanged(String str) {
        Log.i("MediaCenterBridge", "MC→onMediaCenterFocusChanged foco=" + str);
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final boolean onMediaForward(boolean z2) {
        if (!z2) {
            return true;
        }
        a("onMediaForward", new ya(11));
        return true;
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final boolean onMediaRewind(boolean z2) {
        if (!z2) {
            return true;
        }
        a("onMediaRewind", new ya(18));
        return true;
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final boolean onNext() {
        a("onNext", new ya(16));
        return true;
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final boolean onPause() {
        a("onPause", new ya(20));
        return true;
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final boolean onPlay() {
        a("onPlay", new ya(12));
        return true;
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final boolean onPrevious() {
        a("onPrevious", new ya(19));
        return true;
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final boolean onReplay() {
        a("onReplay", new ya(13));
        return true;
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final boolean onRewind() {
        a("onRewind", new ya(14));
        return true;
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final void onSeek(final long j3) {
        a("onSeek " + j3, new h2.l() { // from class: w0.ld
            @Override // h2.l
            public final Object c(Object obj) {
                MediaController.TransportControls transportControls = (MediaController.TransportControls) obj;
                i2.g.e(transportControls, "it");
                transportControls.seekTo(j3);
                return x1.e.f4647c;
            }
        });
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final boolean onSourceChanged(int i3, String str) {
        Log.i("MediaCenterBridge", "MC→onSourceChanged type=" + i3 + " pkg=" + str);
        return true;
    }

    @Override // com.ecarx.eas.sdk.mediacenter.MusicClient
    public final boolean onSourceSelected(int i3) {
        if (i3 != 6) {
            return true;
        }
        a("onSourceSelected", new ya(10));
        return true;
    }
}
