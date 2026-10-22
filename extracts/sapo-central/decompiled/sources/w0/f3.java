package w0;

import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import com.ex.auto.CentralWatchdogService;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class f3 extends ContentObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CentralWatchdogService f3579a;
    public final /* synthetic */ List b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f3(CentralWatchdogService centralWatchdogService, List list, Handler handler) {
        super(handler);
        this.f3579a = centralWatchdogService;
        this.b = list;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z2, Uri uri) {
        CentralWatchdogService centralWatchdogService = this.f3579a;
        if (centralWatchdogService.E0) {
            String string = uri != null ? uri.toString() : null;
            if (string != null) {
                List list = this.b;
                if (!list.isEmpty()) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        if (o2.k.e0(string, (String) it.next(), true)) {
                            Log.i("CentralWatchdog", "brilho: ignorando mudança nossa em ".concat(string));
                            return;
                        }
                    }
                }
            }
            ae aeVar = ae.f3361a;
            if (string == null) {
                string = "Settings (sem URI)";
            }
            ae.b("CentralWatchdog", "brilho: restaurando — mudança em ".concat(string), false);
            centralWatchdogService.x0();
        }
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z2) {
        onChange(z2, null);
    }
}
