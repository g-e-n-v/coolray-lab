package w0;

import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.CentralWatchdogService;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e2 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3520a;
    public final /* synthetic */ CentralWatchdogService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f3521c;

    public /* synthetic */ e2(CentralWatchdogService centralWatchdogService, int i3, int i4) {
        this.f3520a = i4;
        this.b = centralWatchdogService;
        this.f3521c = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean zB;
        b4 b4VarH;
        int i3 = 1;
        switch (this.f3520a) {
            case 0:
                CentralWatchdogService centralWatchdogService = this.b;
                int i4 = this.f3521c;
                int[] iArr = CentralWatchdogService.S2;
                m.f(centralWatchdogService, i4, false);
                return;
            case 1:
                CentralWatchdogService centralWatchdogService2 = this.b;
                int i5 = this.f3521c;
                int[] iArr2 = CentralWatchdogService.S2;
                try {
                    zB = centralWatchdogService2.B();
                    break;
                } catch (Throwable th) {
                    ae aeVar = ae.f3361a;
                    StringBuilder sbK = androidx.activity.result.b.k("patch do monitor: exceção na tentativa ", i5, " — ");
                    sbK.append(th.getClass().getSimpleName());
                    sbK.append(": ");
                    sbK.append(th.getMessage());
                    ae.b("CentralWatchdog", sbK.toString(), false);
                    zB = false;
                }
                if (zB || i5 >= centralWatchdogService2.H2) {
                    return;
                }
                ae aeVar2 = ae.f3361a;
                StringBuilder sbK2 = androidx.activity.result.b.k("patch do monitor: tentativa ", i5, " não confirmou — nova tentativa em ");
                sbK2.append(centralWatchdogService2.J2 / ((long) 1000));
                sbK2.append('s');
                ae.b("CentralWatchdog", sbK2.toString(), false);
                centralWatchdogService2.f811a.post(new e2(centralWatchdogService2, i5, 4));
                return;
            case 2:
                CentralWatchdogService centralWatchdogService3 = this.b;
                AtomicBoolean atomicBoolean = centralWatchdogService3.G2;
                int i6 = this.f3521c;
                int[] iArr3 = CentralWatchdogService.S2;
                try {
                    b4VarH = d8.f3494a.h(centralWatchdogService3, i6);
                    break;
                } catch (Exception e3) {
                    ae aeVar3 = ae.f3361a;
                    ae.b("CentralWatchdog", "Ar Digital [boot]: exceção — " + e3.getMessage(), true);
                    b4VarH = b4.f3379c;
                }
                i2.g.e(b4VarH, "t");
                if (b4VarH != b4.f3378a && b4VarH != b4.b) {
                    atomicBoolean.set(false);
                    return;
                }
                int i7 = 3;
                if (i6 < 3) {
                    centralWatchdogService3.f811a.post(new e2(centralWatchdogService3, i6, i7));
                    return;
                }
                atomicBoolean.set(false);
                ae aeVar4 = ae.f3361a;
                ae.b("CentralWatchdog", "Ar Digital [boot]: restauração pendente após " + i6 + " tentativas", true);
                return;
            case 3:
                CentralWatchdogService centralWatchdogService4 = this.b;
                int i8 = this.f3521c;
                int[] iArr4 = CentralWatchdogService.S2;
                centralWatchdogService4.T0(i8 + 1);
                return;
            case 4:
                CentralWatchdogService centralWatchdogService5 = this.b;
                int i9 = this.f3521c;
                int[] iArr5 = CentralWatchdogService.S2;
                centralWatchdogService5.o(i9 + 1);
                return;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                CentralWatchdogService centralWatchdogService6 = this.b;
                int i10 = this.f3521c;
                if (CentralWatchdogService.U2) {
                    new Thread(new e2(centralWatchdogService6, i10, i3)).start();
                    return;
                }
                return;
            case MusicClient.TYPE_GESTURE /* 6 */:
                CentralWatchdogService centralWatchdogService7 = this.b;
                int i11 = this.f3521c;
                int[] iArr6 = CentralWatchdogService.S2;
                try {
                    synchronized (t1.f4251e) {
                        try {
                            if (CentralWatchdogService.U2 && centralWatchdogService7.f827e0.get() == i11) {
                                new kotlinx.coroutines.scheduling.h(5555).b(10000, "for P in 12500 18500 21000; do\n  while ip rule del prio $P lookup 200 2>/dev/null; do :; done\ndone\nip route flush table 200 2>/dev/null\nif [ \"$(settings get global exsapo_route_dns_zero_owned)\" = 1 ]; then\n  ndc resolver clearnetdns 0\n  settings delete global exsapo_route_dns_zero_owned\nfi");
                                return;
                            }
                            return;
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                } catch (Exception e4) {
                    androidx.activity.result.b.o(e4, new StringBuilder("AutoRota: limpeza pendente: "), "CentralWatchdog");
                    return;
                }
            default:
                CentralWatchdogService centralWatchdogService8 = this.b;
                int i12 = this.f3521c;
                if (!CentralWatchdogService.U2 || centralWatchdogService8.F("Ar Digital")) {
                    centralWatchdogService8.G2.set(false);
                    return;
                } else {
                    new Thread(new e2(centralWatchdogService8, i12, 2)).start();
                    return;
                }
        }
    }
}
