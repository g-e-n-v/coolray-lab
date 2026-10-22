package w0;

import android.os.SystemClock;
import com.ex.auto.CentralWatchdogService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class q2 implements h2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4082a;
    public final /* synthetic */ CentralWatchdogService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f4083c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f4084d;

    public /* synthetic */ q2(CentralWatchdogService centralWatchdogService, int i3, Runnable runnable, int i4) {
        this.f4082a = i4;
        this.b = centralWatchdogService;
        this.f4083c = i3;
        this.f4084d = runnable;
    }

    @Override // h2.a
    public final Object a() {
        String strA;
        switch (this.f4082a) {
            case 0:
                CentralWatchdogService centralWatchdogService = this.b;
                String str = (String) this.f4084d;
                int i3 = this.f4083c;
                int[] iArr = CentralWatchdogService.S2;
                centralWatchdogService.g0(i3, str);
                break;
            case 1:
                CentralWatchdogService centralWatchdogService2 = this.b;
                int i4 = this.f4083c;
                a3 a3Var = (a3) this.f4084d;
                int[] iArr2 = CentralWatchdogService.S2;
                try {
                    String strB = new kotlinx.coroutines.scheduling.h(5555).b(8000, "# O ARP STALE do telefone que saiu não pode durar para sempre sem sondagem.\nfor IP in $(ip neigh show dev ap0 2>/dev/null | awk '/lladdr/ && /STALE/ {print $1}' | head -n 3); do\n  ping -I ap0 -c 1 -W 1 \"$IP\" >/dev/null 2>&1 || true\ndone\nip neigh show dev ap0 2>/dev/null");
                    i2.g.b(strB);
                    strA = s4.a(strB, centralWatchdogService2.f823d0);
                } catch (Exception unused) {
                    strA = null;
                }
                centralWatchdogService2.f811a.post(new d1(centralWatchdogService2, i4, strA, a3Var, 1));
                break;
            default:
                final CentralWatchdogService centralWatchdogService3 = this.b;
                final int i5 = this.f4083c;
                final a3 a3Var2 = (a3) this.f4084d;
                int[] iArr3 = CentralWatchdogService.S2;
                String strC = CentralWatchdogService.c(3000, "grep " + centralWatchdogService3.f888v0 + " /proc/interrupts");
                o2.h hVar = centralWatchdogService3.C0;
                hVar.getClass();
                i2.g.e(strC, "input");
                if (strC.length() < 0) {
                    throw new IndexOutOfBoundsException("Start index out of bounds: 0, input length: " + strC.length());
                }
                o2.f fVar = new o2.f(hVar, strC);
                o2.g gVar = o2.g.f2633i;
                n2.e eVar = new n2.e(new f2.f(fVar));
                final long jLongValue = 0;
                while (eVar.hasNext()) {
                    String strGroup = ((o2.e) eVar.next()).f2630a.group();
                    i2.g.d(strGroup, "group(...)");
                    Long lY = o2.s.Y(strGroup);
                    jLongValue += lY != null ? lY.longValue() : 0L;
                }
                centralWatchdogService3.f811a.post(new Runnable() { // from class: w0.g3
                    @Override // java.lang.Runnable
                    public final void run() {
                        CentralWatchdogService centralWatchdogService4 = centralWatchdogService3;
                        long j3 = jLongValue;
                        int i6 = i5;
                        a3 a3Var3 = a3Var2;
                        int[] iArr4 = CentralWatchdogService.S2;
                        if (CentralWatchdogService.U2) {
                            long jElapsedRealtime = SystemClock.elapsedRealtime();
                            long j4 = centralWatchdogService4.f897z0;
                            if (j4 < 0 || j3 != j4) {
                                centralWatchdogService4.A0 = jElapsedRealtime;
                                centralWatchdogService4.B0 = false;
                            }
                            centralWatchdogService4.f897z0 = j3;
                            long j5 = jElapsedRealtime - centralWatchdogService4.A0;
                            if (!centralWatchdogService4.B0 && j5 >= ((long) i6) * 1000) {
                                n3.a(new k1(centralWatchdogService4, i6, 1));
                            }
                            centralWatchdogService4.f811a.postDelayed(a3Var3, centralWatchdogService4.f891w0);
                        }
                    }
                });
                break;
                break;
        }
        return x1.e.f4647c;
    }

    public /* synthetic */ q2(CentralWatchdogService centralWatchdogService, String str, int i3) {
        this.f4082a = 0;
        this.b = centralWatchdogService;
        this.f4084d = str;
        this.f4083c = i3;
    }
}
