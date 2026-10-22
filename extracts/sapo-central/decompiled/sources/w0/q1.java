package w0;

import android.content.Context;
import android.content.pm.ActivityInfo;
import android.graphics.Bitmap;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.MainActivity;
import com.ex.auto.MediaBarFloaterService;
import com.ex.auto.TimerFloaterService;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Set;
import java.util.concurrent.ArrayBlockingQueue;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class q1 implements h2.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4081a;
    public final /* synthetic */ Object b;

    public /* synthetic */ q1(int i3, Object obj) {
        this.f4081a = i3;
        this.b = obj;
    }

    @Override // h2.l
    public final Object c(Object obj) {
        switch (this.f4081a) {
            case 0:
                ArrayBlockingQueue arrayBlockingQueue = (ArrayBlockingQueue) this.b;
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                arrayBlockingQueue.offer(bool);
                return x1.e.f4647c;
            case 1:
                CentralWatchdogService centralWatchdogService = (CentralWatchdogService) this.b;
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                int[] iArr = CentralWatchdogService.S2;
                ae aeVar = ae.f3361a;
                ae.b("CentralWatchdog", zBooleanValue ? "viagem zerada pelo toque no ícone da barra" : "toque no ícone da barra: NÃO zerou (odômetro ilegível)", false);
                centralWatchdogService.f811a.post(new k2(centralWatchdogService, zBooleanValue, 2));
                return x1.e.f4647c;
            case 2:
                LinkedHashMap linkedHashMap = (LinkedHashMap) this.b;
                String str = (String) obj;
                i2.g.e(str, "it");
                return String.format("%08x", Arrays.copyOf(new Object[]{Long.valueOf(((Number) y1.s.U(linkedHashMap, str)).longValue() & 4294967295L)}, 1));
            case 3:
                e.i iVar = (e.i) this.b;
                boolean zBooleanValue2 = ((Boolean) obj).booleanValue();
                int i3 = MainActivity.f1002z1;
                if (!zBooleanValue2 && iVar.isShowing()) {
                    iVar.dismiss();
                    ae aeVar2 = ae.f3361a;
                    ae.b("BanChecker", "bloqueio removido — este XDSN saiu da banlist", false);
                }
                return x1.e.f4647c;
            case 4:
                Set set = MediaBarFloaterService.f1060v;
                ((dd) this.b).c((Bitmap) obj);
                return x1.e.f4647c;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                return Boolean.valueOf(!i2.g.a(((ActivityInfo) obj).packageName, ((Context) this.b).getPackageName()));
            default:
                TimerFloaterService timerFloaterService = (TimerFloaterService) this.b;
                Runnable runnable = (Runnable) obj;
                boolean z2 = TimerFloaterService.f1220o;
                i2.g.e(runnable, "it");
                timerFloaterService.f1223d.removeCallbacks(runnable);
                return x1.e.f4647c;
        }
    }
}
