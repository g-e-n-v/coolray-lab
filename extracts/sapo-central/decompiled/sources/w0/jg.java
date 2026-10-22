package w0;

import android.widget.Toast;
import com.ex.auto.R;
import com.ex.auto.SplitFloaterService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class jg implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3771a;
    public final /* synthetic */ SplitFloaterService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f3772c;

    public /* synthetic */ jg(SplitFloaterService splitFloaterService, String str, int i3) {
        this.f3771a = i3;
        this.b = splitFloaterService;
        this.f3772c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3771a) {
            case 0:
                SplitFloaterService splitFloaterService = this.b;
                String str = this.f3772c;
                ng ngVarF = splitFloaterService.f1188l;
                if (ngVarF == null) {
                    ngVarF = og.f();
                }
                if (ngVarF != null) {
                    String strN = og.n(splitFloaterService, str);
                    if (strN != null) {
                        mg mgVarK = og.k(strN, str, splitFloaterService.e(ngVarF));
                        if (mgVarK != null) {
                            mg mgVar = splitFloaterService.f1186j;
                            if (mgVar == null || og.g(mgVar)) {
                                splitFloaterService.f1187k = mgVarK;
                                splitFloaterService.f1191o = false;
                                splitFloaterService.f1185i.post(new ig(splitFloaterService, 6));
                            } else {
                                og.c(mgVarK);
                                splitFloaterService.f1186j = null;
                                splitFloaterService.f1187k = null;
                                splitFloaterService.f1191o = false;
                                splitFloaterService.f1185i.post(new ig(splitFloaterService, 5));
                                String string = splitFloaterService.getString(R.string.k_split_app_crashed);
                                i2.g.d(string, "getString(...)");
                                splitFloaterService.g(string);
                            }
                        } else {
                            splitFloaterService.f1191o = false;
                            splitFloaterService.f1185i.post(new ig(splitFloaterService, 4));
                            String string2 = splitFloaterService.getString(R.string.k_error_split_with_app, og.f);
                            i2.g.d(string2, "getString(...)");
                            splitFloaterService.g(string2);
                        }
                    } else {
                        String string3 = splitFloaterService.getString(R.string.k_error_open_app);
                        i2.g.d(string3, "getString(...)");
                        splitFloaterService.c(string3);
                    }
                } else {
                    o2.h hVar = og.f4025a;
                    String string4 = splitFloaterService.getString(R.string.k_error_read_resolution, og.f);
                    i2.g.d(string4, "getString(...)");
                    splitFloaterService.c(string4);
                }
                break;
            default:
                SplitFloaterService splitFloaterService2 = this.b;
                String str2 = this.f3772c;
                SplitFloaterService splitFloaterService3 = SplitFloaterService.f1178v;
                Toast.makeText(splitFloaterService2, str2, 1).show();
                break;
        }
    }
}
