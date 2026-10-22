package w0;

import android.app.AlertDialog;
import android.content.Intent;
import android.view.View;
import com.ex.auto.CloseAppsWhitelistActivity;
import com.ex.auto.FavoriteAppsActivity;
import com.ex.auto.QuickAccessFloaterService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class af implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3364a;
    public final /* synthetic */ QuickAccessFloaterService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ i2.m f3365c;

    public /* synthetic */ af(QuickAccessFloaterService quickAccessFloaterService, i2.m mVar, int i3) {
        this.f3364a = i3;
        this.b = quickAccessFloaterService;
        this.f3365c = mVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i3 = this.f3364a;
        i2.m mVar = this.f3365c;
        QuickAccessFloaterService quickAccessFloaterService = this.b;
        switch (i3) {
            case 0:
                int i4 = QuickAccessFloaterService.t0;
                try {
                    quickAccessFloaterService.startActivity(new Intent(quickAccessFloaterService, (Class<?>) FavoriteAppsActivity.class).addFlags(268435456));
                } catch (Exception e3) {
                    androidx.activity.result.b.o(e3, new StringBuilder("showFavoriteAppsPicker: abrir FavoriteAppsActivity falhou: "), "QuickAccessFloater");
                }
                Object obj = mVar.f2292a;
                if (obj != null) {
                    ((AlertDialog) obj).dismiss();
                    return;
                } else {
                    i2.g.h("dlg");
                    throw null;
                }
            default:
                int i5 = QuickAccessFloaterService.t0;
                try {
                    quickAccessFloaterService.startActivity(new Intent(quickAccessFloaterService, (Class<?>) CloseAppsWhitelistActivity.class).addFlags(268435456));
                } catch (Exception e4) {
                    androidx.activity.result.b.o(e4, new StringBuilder("confirmCloseUserApps: abrir CloseAppsWhitelistActivity falhou: "), "QuickAccessFloater");
                }
                Object obj2 = mVar.f2292a;
                if (obj2 != null) {
                    ((AlertDialog) obj2).dismiss();
                    return;
                } else {
                    i2.g.h("dlg");
                    throw null;
                }
        }
    }
}
