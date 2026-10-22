package w0;

import android.content.Context;
import android.util.Log;
import android.view.View;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.ExSapoCastActivity;
import com.ex.auto.ExSapoCastFloaterService;
import com.ex.auto.HomeWidgetsPollService;
import com.ex.auto.MainActivity;
import com.ex.auto.WifiFloaterService;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f2 implements h2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3578a;
    public final /* synthetic */ Object b;

    public /* synthetic */ f2(int i3, Object obj) {
        this.f3578a = i3;
        this.b = obj;
    }

    /* JADX WARN: Type inference failed for: r0v31, types: [h2.a, i2.e] */
    @Override // h2.a
    public final Object a() {
        boolean zA;
        int i3 = 0;
        switch (this.f3578a) {
            case 0:
                re reVar = (re) this.b;
                int[] iArr = CentralWatchdogService.S2;
                ae aeVar = ae.f3361a;
                ae.b("CentralWatchdog", "despertar: ação " + reVar.f4181a + " desconhecida — ignorada", false);
                return x1.e.f4647c;
            case 1:
                ExSapoCastActivity exSapoCastActivity = (ExSapoCastActivity) this.b;
                int i4 = ExSapoCastActivity.f910e;
                m6 m6Var = m.f3866i;
                if (m6Var != null) {
                    m6Var.g("user");
                }
                exSapoCastActivity.finish();
                return x1.e.f4647c;
            case 2:
                ExSapoCastFloaterService exSapoCastFloaterService = (ExSapoCastFloaterService) this.b;
                int i5 = ExSapoCastFloaterService.f914j;
                m6 m6Var2 = m.f3866i;
                if (m6Var2 != null) {
                    m6Var2.g("pip-close");
                }
                exSapoCastFloaterService.stopSelf();
                return x1.e.f4647c;
            case 3:
                HomeWidgetsPollService homeWidgetsPollService = (HomeWidgetsPollService) this.b;
                int i6 = HomeWidgetsPollService.E;
                return homeWidgetsPollService.getApplicationContext().createDeviceProtectedStorageContext().getSharedPreferences("clima_ultimo", 0);
            case 4:
                Context context = (Context) this.b;
                synchronized (d8.f3494a) {
                    try {
                        zA = qe.f4124a.a(context, "visual.removerArDigital", y1.q.f4664a);
                        if (zA) {
                            d8.a(8000, "rm -f '/data/local/tmp/fixes/hvac_em_bind' 2>/dev/null || true");
                            d8.i(false, false, false);
                        }
                        Log.i("HvacDigital", "remove: ".concat(zA ? "OK" : "FAIL"));
                        e8.I(new n(3));
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return Boolean.valueOf(zA);
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                return Boolean.valueOf(d8.f3494a.g((String) this.b));
            case MusicClient.TYPE_GESTURE /* 6 */:
                ArrayList arrayList = (ArrayList) this.b;
                int i7 = MainActivity.f1002z1;
                int size = arrayList.size();
                while (i3 < size) {
                    Object obj = arrayList.get(i3);
                    i3++;
                    View view = (View) obj;
                    view.setEnabled(true);
                    view.setAlpha(1.0f);
                }
                return x1.e.f4647c;
            case PlaybackState.STATE_ERROR /* 7 */:
                ?? r3 = (i2.e) this.b;
                int i8 = MainActivity.f1002z1;
                r3.a();
                return x1.e.f4647c;
            default:
                WifiFloaterService wifiFloaterService = (WifiFloaterService) this.b;
                wifiFloaterService.f1253e.post(new kh(wifiFloaterService, 1));
                return x1.e.f4647c;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ f2(h2.a aVar) {
        this.f3578a = 7;
        this.b = (i2.e) aVar;
    }
}
