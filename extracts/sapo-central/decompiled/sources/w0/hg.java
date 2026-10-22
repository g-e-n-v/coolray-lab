package w0;

import com.ex.auto.R;
import com.ex.auto.SplitFloaterService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class hg implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3688a;
    public final /* synthetic */ mg b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SplitFloaterService f3689c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ mg f3690d;

    public /* synthetic */ hg(mg mgVar, SplitFloaterService splitFloaterService, mg mgVar2, int i3) {
        this.f3688a = i3;
        this.b = mgVar;
        this.f3689c = splitFloaterService;
        this.f3690d = mgVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3688a) {
            case 0:
                mg mgVar = this.b;
                SplitFloaterService splitFloaterService = this.f3689c;
                mg mgVar2 = this.f3690d;
                if (mgVar != null) {
                    SplitFloaterService splitFloaterService2 = SplitFloaterService.f1178v;
                    og.c(mgVar);
                }
                ng ngVarF = splitFloaterService.f1188l;
                if (ngVarF == null) {
                    ngVarF = og.f();
                }
                if (mgVar2 != null && ngVarF != null) {
                    o2.h hVar = og.f4025a;
                    og.l(mgVar2, new lg(0, splitFloaterService.f1197u, ngVarF.f3959a, ngVarF.b));
                }
                splitFloaterService.f1186j = null;
                splitFloaterService.f1187k = null;
                splitFloaterService.f1185i.post(new ig(splitFloaterService, 0));
                break;
            default:
                mg mgVar3 = this.b;
                SplitFloaterService splitFloaterService3 = this.f3689c;
                mg mgVar4 = this.f3690d;
                if (mgVar3 != null) {
                    SplitFloaterService splitFloaterService4 = SplitFloaterService.f1178v;
                    og.c(mgVar3);
                }
                ng ngVarF2 = splitFloaterService3.f1188l;
                if (ngVarF2 == null) {
                    ngVarF2 = og.f();
                }
                if (mgVar4 != null && ngVarF2 != null) {
                    o2.h hVar2 = og.f4025a;
                    og.l(mgVar4, new lg(0, splitFloaterService3.f1197u, ngVarF2.f3959a, ngVarF2.b));
                }
                splitFloaterService3.f1186j = null;
                splitFloaterService3.f1187k = null;
                splitFloaterService3.f1191o = false;
                splitFloaterService3.f1185i.post(new ig(splitFloaterService3, 3));
                String string = splitFloaterService3.getString(R.string.k_split_closed);
                i2.g.d(string, "getString(...)");
                splitFloaterService3.g(string);
                break;
        }
    }
}
