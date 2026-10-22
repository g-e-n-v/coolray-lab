package w0;

import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.HomeWidgetsPollService;
import com.ex.auto.MainActivity;
import com.ex.auto.PhoneSyncService;
import com.ex.auto.QuickAccessFloaterService;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.List;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l1 implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3817a;

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        switch (this.f3817a) {
            case 0:
                Thread thread = new Thread(runnable, "CarPropsRead-" + p1.f4042a.incrementAndGet());
                thread.setDaemon(true);
                return thread;
            case 1:
                Thread thread2 = new Thread(runnable, "CarPropsWrite-" + p1.f4042a.incrementAndGet());
                thread2.setDaemon(true);
                return thread2;
            case 2:
                int[] iArr = CentralWatchdogService.S2;
                Thread thread3 = new Thread(runnable, "central-tbox");
                thread3.setDaemon(true);
                return thread3;
            case 3:
                int[] iArr2 = CentralWatchdogService.S2;
                Thread thread4 = new Thread(runnable, "central-drive-regen");
                thread4.setDaemon(true);
                return thread4;
            case 4:
                int[] iArr3 = CentralWatchdogService.S2;
                Thread thread5 = new Thread(runnable, "central-rotas-root");
                thread5.setDaemon(true);
                return thread5;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                Thread thread6 = new Thread(runnable, "ciclo");
                thread6.setDaemon(true);
                return thread6;
            case MusicClient.TYPE_GESTURE /* 6 */:
                List list = HomeFloatingWidgetsService.f926a0;
                return new Thread(runnable, "widgets-car-command");
            case PlaybackState.STATE_ERROR /* 7 */:
                List list2 = HomeFloatingWidgetsService.f926a0;
                Thread thread7 = new Thread(runnable, "widgets-poll");
                thread7.setDaemon(true);
                return thread7;
            case 8:
                int i3 = HomeWidgetsPollService.E;
                Thread thread8 = new Thread(runnable, "home-widget-vhal");
                thread8.setPriority(4);
                return thread8;
            case 9:
                int i4 = HomeWidgetsPollService.E;
                return new Thread(runnable, "home-widget-command");
            case 10:
                int i5 = MainActivity.f1002z1;
                Thread thread9 = new Thread(runnable, "vehicle-panel");
                thread9.setPriority(4);
                return thread9;
            case 11:
                int i6 = MainActivity.f1002z1;
                return new Thread(runnable, "car-command");
            case 12:
                int i7 = MainActivity.f1002z1;
                Thread thread10 = new Thread(runnable, "state-reader");
                thread10.setPriority(4);
                return thread10;
            case 13:
                Thread thread11 = new Thread(runnable, "central-persist-log");
                thread11.setDaemon(true);
                return thread11;
            case 14:
                boolean z2 = PhoneSyncService.f1102z;
                Thread thread12 = new Thread(runnable, "phone-sync-deadline");
                thread12.setDaemon(true);
                return thread12;
            default:
                int i8 = QuickAccessFloaterService.t0;
                return new Thread(runnable, "quick-access-car");
        }
    }
}
