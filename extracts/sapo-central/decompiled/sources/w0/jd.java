package w0;

import android.media.browse.MediaBrowser;
import android.media.session.MediaController;
import android.util.Log;
import com.ex.auto.MediaBrowserHostActivity;
import com.ex.auto.R;

/* JADX INFO: loaded from: classes.dex */
public final class jd extends MediaBrowser.ConnectionCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MediaBrowserHostActivity f3764a;
    public final /* synthetic */ hd b;

    public jd(MediaBrowserHostActivity mediaBrowserHostActivity, hd hdVar) {
        this.f3764a = mediaBrowserHostActivity;
        this.b = hdVar;
    }

    @Override // android.media.browse.MediaBrowser.ConnectionCallback
    public final void onConnected() {
        MediaBrowserHostActivity mediaBrowserHostActivity = this.f3764a;
        MediaBrowser mediaBrowser = mediaBrowserHostActivity.b;
        if (mediaBrowser == null) {
            return;
        }
        MediaController mediaController = new MediaController(mediaBrowserHostActivity, mediaBrowser.getSessionToken());
        mediaController.registerCallback(mediaBrowserHostActivity.f1096r);
        MediaBrowserHostActivity.b(mediaBrowserHostActivity, mediaController.getPlaybackState(), mediaController.getMetadata());
        mediaBrowserHostActivity.f1082c = mediaController;
        mediaBrowserHostActivity.f1084e.clear();
        mediaBrowserHostActivity.f1084e.add(new x1.a(mediaBrowser.getRoot(), this.b.f3679c));
        String root = mediaBrowser.getRoot();
        i2.g.d(root, "getRoot(...)");
        mediaBrowserHostActivity.a(root);
    }

    @Override // android.media.browse.MediaBrowser.ConnectionCallback
    public final void onConnectionFailed() {
        Log.w("MediaBrowserHost", "conexão recusada por " + this.b.f3678a);
        MediaBrowserHostActivity mediaBrowserHostActivity = this.f3764a;
        mediaBrowserHostActivity.g(mediaBrowserHostActivity.getString(R.string.k_mbh_refused), false);
    }

    @Override // android.media.browse.MediaBrowser.ConnectionCallback
    public final void onConnectionSuspended() {
        int i3 = MediaBrowserHostActivity.f1080s;
        this.f3764a.g(null, true);
    }
}
