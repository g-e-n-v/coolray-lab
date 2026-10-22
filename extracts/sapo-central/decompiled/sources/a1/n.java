package a1;

import android.content.ContextWrapper;
import android.content.Intent;
import android.view.View;
import com.ex.auto.AcProgramEditActivity;
import com.ex.auto.AcProgramListActivity;
import com.ex.auto.DpadFloaterService;
import com.ex.auto.MainActivity;
import com.geely.hvacstepperv2.TempStepperService;
import w0.o0;
import w0.x8;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class n implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f47a;
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ContextWrapper f48c;

    public /* synthetic */ n(ContextWrapper contextWrapper, int i3, int i4) {
        this.f47a = i4;
        this.f48c = contextWrapper;
        this.b = i3;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i3 = this.f47a;
        int i4 = this.b;
        ContextWrapper contextWrapper = this.f48c;
        switch (i3) {
            case 0:
                TempStepperService tempStepperService = (TempStepperService) contextWrapper;
                int[] iArr = TempStepperService.f1285c0;
                a aVarG = b.G(tempStepperService, i4);
                if (aVarG != null) {
                    tempStepperService.e(new i(tempStepperService, 0, aVarG));
                    break;
                }
                break;
            case 1:
                AcProgramEditActivity acProgramEditActivity = (AcProgramEditActivity) contextWrapper;
                acProgramEditActivity.f762u.remove(i4);
                acProgramEditActivity.t();
                break;
            case 2:
                AcProgramListActivity acProgramListActivity = (AcProgramListActivity) contextWrapper;
                int i5 = AcProgramListActivity.f767u;
                acProgramListActivity.getClass();
                acProgramListActivity.startActivity(new Intent(acProgramListActivity, (Class<?>) AcProgramEditActivity.class).putExtra("slot", i4));
                break;
            case 3:
                if (!((DpadFloaterService) contextWrapper).f907h) {
                    new Thread(new o0(i4, 1)).start();
                }
                break;
            default:
                MainActivity mainActivity = (MainActivity) contextWrapper;
                int i6 = MainActivity.f1002z1;
                mainActivity.Y1(i4);
                mainActivity.f1045v.post(new x8(mainActivity, 23));
                break;
        }
    }
}
