package w0;

import com.ex.auto.CentralWatchdogService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class z1 implements h2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4602a;
    public final /* synthetic */ CentralWatchdogService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f4603c;

    public /* synthetic */ z1(CentralWatchdogService centralWatchdogService, String str, int i3) {
        this.f4602a = i3;
        this.b = centralWatchdogService;
        this.f4603c = str;
    }

    @Override // h2.a
    public final Object a() {
        String string;
        int i3 = this.f4602a;
        String str = this.f4603c;
        CentralWatchdogService centralWatchdogService = this.b;
        switch (i3) {
            case 0:
                int[] iArr = CentralWatchdogService.S2;
                centralWatchdogService.h0(str);
                break;
            case 1:
                int[] iArr2 = CentralWatchdogService.S2;
                centralWatchdogService.V(1, str);
                break;
            case 2:
                boolean zG = CentralWatchdogService.g(centralWatchdogService, str);
                centralWatchdogService.f811a.post(new h2(3, centralWatchdogService, str, zG));
                if (zG) {
                    centralWatchdogService.E(8080, str);
                }
                return x1.e.f4647c;
            case 3:
                try {
                    String strB = new kotlinx.coroutines.scheduling.h(5555).b(3000, "settings get global global_http_proxy_host 2>/dev/null");
                    i2.g.d(strB, "runShell(...)");
                    string = o2.k.E0(strB).toString();
                } catch (Exception unused) {
                    string = "";
                }
                centralWatchdogService.f811a.post(new g2(centralWatchdogService, str, string));
                break;
            default:
                centralWatchdogService.f811a.post(new h2(2, centralWatchdogService, str, CentralWatchdogService.g(centralWatchdogService, str)));
                break;
        }
        return x1.e.f4647c;
    }
}
