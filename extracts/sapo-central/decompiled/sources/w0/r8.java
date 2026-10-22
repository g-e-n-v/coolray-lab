package w0;

import android.app.Service;
import android.media.session.MediaSessionManager;
import com.ex.auto.LyricsFloaterService;
import com.ex.auto.MediaBarFloaterService;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r8 implements MediaSessionManager.OnActiveSessionsChangedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4161a;
    public final /* synthetic */ Service b;

    public /* synthetic */ r8(Service service, int i3) {
        this.f4161a = i3;
        this.b = service;
    }

    @Override // android.media.session.MediaSessionManager.OnActiveSessionsChangedListener
    public final void onActiveSessionsChanged(List list) {
        int i3 = this.f4161a;
        Service service = this.b;
        switch (i3) {
            case 0:
                Set set = LyricsFloaterService.f982v;
                ((LyricsFloaterService) service).h();
                break;
            default:
                Set set2 = MediaBarFloaterService.f1060v;
                ((MediaBarFloaterService) service).d();
                break;
        }
    }
}
