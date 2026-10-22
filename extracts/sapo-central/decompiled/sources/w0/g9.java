package w0;

import android.view.View;
import com.ex.auto.LyricsFloaterService;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import java.util.Arrays;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g9 implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3630a;
    public final /* synthetic */ Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f3631c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f3632d;

    public /* synthetic */ g9(int i3, Object obj, Object obj2, int i4) {
        this.f3630a = i4;
        this.b = obj;
        this.f3631c = i3;
        this.f3632d = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i3 = this.f3630a;
        Object obj = this.f3632d;
        int i4 = this.f3631c;
        Object obj2 = this.b;
        switch (i3) {
            case 0:
                MainActivity mainActivity = (MainActivity) obj2;
                int[] iArr = (int[]) obj;
                int i5 = MainActivity.f1002z1;
                mainActivity.M1(R.id.masterNetworkPageFlipper, i4, Arrays.copyOf(iArr, iArr.length));
                mainActivity.s1();
                break;
            case 1:
                MainActivity mainActivity2 = (MainActivity) obj2;
                int[] iArr2 = (int[]) obj;
                int i6 = MainActivity.f1002z1;
                mainActivity2.M1(R.id.masterShortcutsPageFlipper, i4, Arrays.copyOf(iArr2, iArr2.length));
                mainActivity2.u1();
                break;
            case 2:
                MainActivity mainActivity3 = (MainActivity) obj2;
                int i7 = MainActivity.f1002z1;
                mainActivity3.M1(R.id.masterAppsPageFlipper, i4, Arrays.copyOf((int[]) obj, 3));
                if (i4 == 1) {
                    mainActivity3.B.execute(new x8(mainActivity3, 18));
                }
                if (i4 == 2) {
                    View viewFindViewById = mainActivity3.findViewById(R.id.masterAppsPerfScroll);
                    if (viewFindViewById != null) {
                        viewFindViewById.post(new a1.r(8, viewFindViewById));
                    }
                    mainActivity3.S0();
                    mainActivity3.T0();
                    mainActivity3.W0();
                }
                mainActivity3.f1045v.postDelayed(new x8(mainActivity3, 8), 180L);
                break;
            default:
                LyricsFloaterService lyricsFloaterService = (LyricsFloaterService) obj;
                Set set = LyricsFloaterService.f982v;
                ((h2.l) obj2).c(Integer.valueOf(i4));
                lyricsFloaterService.b();
                lyricsFloaterService.l();
                break;
        }
    }
}
