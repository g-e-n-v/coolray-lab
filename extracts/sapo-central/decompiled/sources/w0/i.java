package w0;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListPopupWindow;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.AcProgramListActivity;
import com.ex.auto.BackgroundKeepAliveActivity;
import com.ex.auto.BlackoutFloaterService;
import com.ex.auto.CloseAppsWhitelistActivity;
import com.ex.auto.FavoriteAppsActivity;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import com.geely.hvacstepperv2.TempStepperService;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3692a;
    public final /* synthetic */ Object b;

    public /* synthetic */ i(int i3, Object obj) {
        this.f3692a = i3;
        this.b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i3 = this.f3692a;
        int i4 = 0;
        Object obj = this.b;
        switch (i3) {
            case 0:
                int i5 = AcProgramListActivity.f767u;
                ((AcProgramListActivity) obj).finish();
                return;
            case 1:
                int i6 = BackgroundKeepAliveActivity.f791v;
                ((BackgroundKeepAliveActivity) obj).finish();
                return;
            case 2:
                BlackoutFloaterService blackoutFloaterService = (BlackoutFloaterService) obj;
                if (blackoutFloaterService.f809o) {
                    return;
                }
                boolean z2 = blackoutFloaterService.f798c;
                if (z2) {
                    blackoutFloaterService.d();
                    return;
                }
                if (z2 || blackoutFloaterService.f799d) {
                    return;
                }
                blackoutFloaterService.f799d = true;
                boolean z3 = DriveRegenFloaterService.M;
                blackoutFloaterService.f = z3;
                blackoutFloaterService.f801g = TempStepperService.f1287e0;
                if (z3) {
                    blackoutFloaterService.stopService(new Intent(blackoutFloaterService, (Class<?>) DriveRegenFloaterService.class));
                }
                if (blackoutFloaterService.f801g) {
                    blackoutFloaterService.stopService(new Intent(blackoutFloaterService, (Class<?>) TempStepperService.class));
                }
                new Thread(new p0(blackoutFloaterService, i4)).start();
                return;
            case 3:
                int i7 = CloseAppsWhitelistActivity.f899c;
                ((CloseAppsWhitelistActivity) obj).finish();
                return;
            case 4:
                int i8 = FavoriteAppsActivity.f924t;
                ((FavoriteAppsActivity) obj).finish();
                return;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                int i9 = MainActivity.f1002z1;
                ((e.i) obj).dismiss();
                return;
            default:
                final i.s sVar = (i.s) obj;
                i2.g.b(view);
                MainActivity mainActivity = (MainActivity) sVar.f2144a;
                List listU = y1.f.U(new String[]{mainActivity.getString(R.string.master_car_color_green), mainActivity.getString(R.string.master_car_color_gray), mainActivity.getString(R.string.master_car_color_white), mainActivity.getString(R.string.master_car_color_silver)});
                final ListPopupWindow listPopupWindow = new ListPopupWindow(mainActivity);
                listPopupWindow.setAnchorView(view);
                listPopupWindow.setWidth(view.getWidth());
                listPopupWindow.setModal(true);
                listPopupWindow.setVerticalOffset((int) (mainActivity.getResources().getDisplayMetrics().density * 6.0f));
                listPopupWindow.setBackgroundDrawable(mainActivity.getDrawable(R.drawable.bg_master_help_dialog));
                ArrayList arrayList = new ArrayList(y1.i.X(listU));
                for (Object obj2 : listU) {
                    int i10 = i4 + 1;
                    if (i4 < 0) {
                        y1.h.W();
                        throw null;
                    }
                    String str = (String) obj2;
                    StringBuilder sb = i2.g.a(((List) sVar.f2147e).get(i4), (String) sVar.f2146d) ? new StringBuilder("✓   ") : new StringBuilder("     ");
                    sb.append(str);
                    arrayList.add(sb.toString());
                    i4 = i10;
                }
                listPopupWindow.setAdapter(new ArrayAdapter(mainActivity, R.layout.item_master_spinner, arrayList));
                listPopupWindow.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: w0.yc
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public final void onItemClick(AdapterView adapterView, View view2, int i11, long j3) {
                        listPopupWindow.dismiss();
                        i.s sVar2 = sVar;
                        sVar2.a((String) ((List) sVar2.f2147e).get(i11), true);
                    }
                });
                listPopupWindow.show();
                return;
        }
    }
}
