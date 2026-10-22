package w0;

import android.view.View;
import com.ex.auto.HomeFloatingWidgetsService;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l7 implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3837a;
    public final /* synthetic */ HomeFloatingWidgetsService b;

    public /* synthetic */ l7(HomeFloatingWidgetsService homeFloatingWidgetsService, int i3) {
        this.f3837a = i3;
        this.b = homeFloatingWidgetsService;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i3 = this.f3837a;
        HomeFloatingWidgetsService homeFloatingWidgetsService = this.b;
        switch (i3) {
            case 0:
                List list = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService.G(1.0f);
                break;
            case 1:
                List list2 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService.B(1);
                break;
            default:
                List list3 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService.B(2);
                break;
        }
    }
}
