package w0;

import android.view.View;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.LyricsFloaterService;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f7 implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3586a;

    public /* synthetic */ f7(int i3) {
        this.f3586a = i3;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f3586a) {
            case 0:
                List list = HomeFloatingWidgetsService.f926a0;
                break;
            default:
                Set set = LyricsFloaterService.f982v;
                break;
        }
    }
}
