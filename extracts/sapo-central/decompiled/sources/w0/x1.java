package w0;

import android.car.hardware.property.CarPropertyManager;
import android.content.Intent;
import android.os.Handler;
import android.util.Log;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.QuickAccessFloaterService;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class x1 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4487a;
    public final /* synthetic */ CentralWatchdogService b;

    public /* synthetic */ x1(CentralWatchdogService centralWatchdogService, int i3) {
        this.f4487a = i3;
        this.b = centralWatchdogService;
    }

    /* JADX WARN: Type inference failed for: r1v18, types: [java.lang.Object, java.util.Map] */
    @Override // java.lang.Runnable
    public final void run() throws InterruptedException {
        boolean zV;
        Integer num;
        switch (this.f4487a) {
            case 0:
                CentralWatchdogService centralWatchdogService = this.b;
                if (CentralWatchdogService.U2) {
                    new Thread(new x1(centralWatchdogService, 12)).start();
                    break;
                }
                break;
            case 1:
                CentralWatchdogService centralWatchdogService2 = this.b;
                if (CentralWatchdogService.U2) {
                    new Thread(new x1(centralWatchdogService2, 7)).start();
                    break;
                }
                break;
            case 2:
                CentralWatchdogService centralWatchdogService3 = this.b;
                if (CentralWatchdogService.U2) {
                    new Thread(new r0(3, centralWatchdogService3)).start();
                }
                break;
            case 3:
                CentralWatchdogService centralWatchdogService4 = this.b;
                int[] iArr = CentralWatchdogService.S2;
                m.w(centralWatchdogService4, centralWatchdogService4.W());
                centralWatchdogService4.f812a0 = Boolean.valueOf(m.q(centralWatchdogService4));
                break;
            case 4:
                g5 g5Var = g5.f3619a;
                CentralWatchdogService centralWatchdogService5 = this.b;
                if (CentralWatchdogService.U2) {
                    if (((centralWatchdogService5.c1() || !t1.c0(centralWatchdogService5.L0, centralWatchdogService5.M0)) ? g5.b : g5Var) == g5Var) {
                        new Thread(new j2(centralWatchdogService5, 1)).start();
                    } else {
                        ae aeVar = ae.f3361a;
                        ae.b("CentralWatchdog", "STA apos AP: desisti — a situação mudou na espera", false);
                    }
                    break;
                }
                break;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                CentralWatchdogService centralWatchdogService6 = this.b;
                int[] iArr2 = CentralWatchdogService.S2;
                if (!centralWatchdogService6.F("gestos do volante (aplicar)") && centralWatchdogService6.W().getBoolean("gestures_enabled", false)) {
                    try {
                        centralWatchdogService6.startService(new Intent(centralWatchdogService6, (Class<?>) QuickAccessFloaterService.class));
                        break;
                    } catch (Throwable unused) {
                    }
                    try {
                        if (o2.k.e0(m.c(6000, "DST=$(pm path com.flyme.auto.launcher | sed 's/^package://'); grep -F \" $DST \" /proc/mounts >/dev/null 2>&1 && echo Y || echo N"), "Y", false)) {
                            Log.i("CentralWatchdog", "applyGesturesIfNeeded: já montado, nenhuma ação necessária");
                        } else {
                            Log.i("CentralWatchdog", "applyGesturesIfNeeded: reaplicado ao boot = " + m.d(centralWatchdogService6, new n2(18)));
                        }
                    } catch (Throwable th) {
                        androidx.activity.result.b.s(th, new StringBuilder("applyGesturesIfNeeded falhou: "), "CentralWatchdog");
                        return;
                    }
                }
                break;
            case MusicClient.TYPE_GESTURE /* 6 */:
                CentralWatchdogService centralWatchdogService7 = this.b;
                if (CentralWatchdogService.U2) {
                    centralWatchdogService7.Z();
                }
                break;
            case PlaybackState.STATE_ERROR /* 7 */:
                CentralWatchdogService centralWatchdogService8 = this.b;
                int[] iArr3 = CentralWatchdogService.S2;
                centralWatchdogService8.A();
                break;
            case 8:
                CentralWatchdogService centralWatchdogService9 = this.b;
                int[] iArr4 = CentralWatchdogService.S2;
                centralWatchdogService9.A();
                break;
            case 9:
                CentralWatchdogService centralWatchdogService10 = this.b;
                if (CentralWatchdogService.U2) {
                    centralWatchdogService10.L();
                }
                break;
            case 10:
                CentralWatchdogService centralWatchdogService11 = this.b;
                int[] iArr5 = CentralWatchdogService.S2;
                try {
                    Iterator it = u.A.keySet().iterator();
                    while (it.hasNext()) {
                        centralWatchdogService11.w((String) it.next());
                    }
                } catch (Throwable unused2) {
                    return;
                }
                break;
            case 11:
                CentralWatchdogService centralWatchdogService12 = this.b;
                try {
                    zV = CentralWatchdogService.v();
                } catch (Throwable unused3) {
                    zV = false;
                }
                centralWatchdogService12.f811a.post(new k2(centralWatchdogService12, zV, 0));
                break;
            case 12:
                CentralWatchdogService centralWatchdogService13 = this.b;
                int[] iArr6 = CentralWatchdogService.S2;
                z4 z4VarX = e8.x();
                if (z4VarX == z4.b) {
                    ae aeVar2 = ae.f3361a;
                    ae.b("CentralWatchdog", "PiP nativo [boot]: pedido mas nao valendo — reaplicando", true);
                    e8.c(centralWatchdogService13);
                } else if (z4VarX == z4.f4610a) {
                    ae aeVar3 = ae.f3361a;
                    ae.b("CentralWatchdog", "PiP nativo [boot]: pedido e ja valendo", true);
                }
                break;
            case 13:
                CentralWatchdogService centralWatchdogService14 = this.b;
                centralWatchdogService14.v2 = null;
                CarPropertyManager carPropertyManager = centralWatchdogService14.f856m;
                if (carPropertyManager != null && (num = centralWatchdogService14.f864o) != null) {
                    int iIntValue = num.intValue();
                    if (!centralWatchdogService14.q(carPropertyManager, 0)) {
                        ae aeVar4 = ae.f3361a;
                        ae.b("CentralWatchdog", "janela: reconferência achou todas as portas fechadas — fechando o filete que tinha ficado para trás", true);
                        centralWatchdogService14.T(carPropertyManager, iIntValue, 0);
                    } else {
                        Log.i("CentralWatchdog", "janela: reconferência — ainda há porta aberta, o filete fica");
                        Handler handler = centralWatchdogService14.f811a;
                        x1 x1Var = centralWatchdogService14.v2;
                        if (x1Var != null) {
                            handler.removeCallbacks(x1Var);
                        }
                        x1 x1Var2 = new x1(centralWatchdogService14, 13);
                        centralWatchdogService14.v2 = x1Var2;
                        handler.postDelayed(x1Var2, 5000L);
                    }
                }
                break;
            case 14:
                CentralWatchdogService centralWatchdogService15 = this.b;
                int[] iArr7 = CentralWatchdogService.S2;
                centralWatchdogService15.z();
                break;
            case 15:
                CentralWatchdogService centralWatchdogService16 = this.b;
                if (CentralWatchdogService.U2) {
                    centralWatchdogService16.L();
                }
                break;
            case 16:
                CentralWatchdogService centralWatchdogService17 = this.b;
                int[] iArr8 = CentralWatchdogService.S2;
                centralWatchdogService17.z();
                break;
            case 17:
                CentralWatchdogService centralWatchdogService18 = this.b;
                if (CentralWatchdogService.U2) {
                    centralWatchdogService18.O0();
                }
                break;
            case 18:
                CentralWatchdogService centralWatchdogService19 = this.b;
                if (CentralWatchdogService.U2) {
                    centralWatchdogService19.c0();
                }
                break;
            case 19:
                CentralWatchdogService centralWatchdogService20 = this.b;
                if (CentralWatchdogService.U2) {
                    centralWatchdogService20.a0();
                }
                break;
            case 20:
                CentralWatchdogService centralWatchdogService21 = this.b;
                int[] iArr9 = CentralWatchdogService.S2;
                centralWatchdogService21.y();
                break;
            case 21:
                CentralWatchdogService centralWatchdogService22 = this.b;
                if (CentralWatchdogService.U2) {
                    centralWatchdogService22.X();
                }
                break;
            case 22:
                CentralWatchdogService centralWatchdogService23 = this.b;
                if (CentralWatchdogService.U2) {
                    centralWatchdogService23.e0(0, centralWatchdogService23.f865o0);
                }
                break;
            case 23:
                CentralWatchdogService centralWatchdogService24 = this.b;
                int[] iArr10 = CentralWatchdogService.S2;
                centralWatchdogService24.y();
                break;
            case 24:
                CentralWatchdogService centralWatchdogService25 = this.b;
                if (CentralWatchdogService.U2 && centralWatchdogService25.f866o1 == 0) {
                    ae aeVar5 = ae.f3361a;
                    ae.b("CentralWatchdog", "CarplayMonitor não confirmou em " + (centralWatchdogService25.q1 / ((long) 1000)) + "s — libero BT e AP sem ele", false);
                    centralWatchdogService25.f0();
                    break;
                }
                break;
            case 25:
                CentralWatchdogService centralWatchdogService26 = this.b;
                if (CentralWatchdogService.U2) {
                    centralWatchdogService26.c0();
                }
                break;
            case 26:
                CentralWatchdogService centralWatchdogService27 = this.b;
                int[] iArr11 = CentralWatchdogService.S2;
                boolean zM0 = centralWatchdogService27.M0();
                Handler handler2 = centralWatchdogService27.f811a;
                if (zM0) {
                    handler2.post(new j2(centralWatchdogService27, 2));
                } else if (!centralWatchdogService27.p()) {
                    handler2.post(new j2(centralWatchdogService27, 3));
                } else if (!CentralWatchdogService.b()) {
                    centralWatchdogService27.a(true);
                    handler2.post(new j2(centralWatchdogService27, 6));
                } else {
                    handler2.post(new j2(centralWatchdogService27, 5));
                }
                break;
            case 27:
                CentralWatchdogService centralWatchdogService28 = this.b;
                if (CentralWatchdogService.U2) {
                    centralWatchdogService28.S("CarService voltou");
                }
                break;
            case 28:
                CentralWatchdogService centralWatchdogService29 = this.b;
                if (CentralWatchdogService.U2) {
                    centralWatchdogService29.b0();
                }
                break;
            default:
                CentralWatchdogService centralWatchdogService30 = this.b;
                int[] iArr12 = CentralWatchdogService.S2;
                try {
                    centralWatchdogService30.x();
                } catch (Throwable th2) {
                    ae aeVar6 = ae.f3361a;
                    ae.b("CentralWatchdog", "observação do ConnAdaptor falhou: " + th2.getMessage(), false);
                }
                break;
        }
    }
}
