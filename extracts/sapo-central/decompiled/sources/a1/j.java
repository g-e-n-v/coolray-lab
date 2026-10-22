package a1;

import android.widget.TextView;
import android.widget.Toast;
import com.geely.hvacstepperv2.TempStepperService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f36a;
    public final /* synthetic */ TempStepperService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f37c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f38d;

    public /* synthetic */ j(TempStepperService tempStepperService, String str, int i3, int i4) {
        this.f36a = i4;
        this.b = tempStepperService;
        this.f37c = str;
        this.f38d = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i3 = this.f36a;
        int i4 = this.f38d;
        String str = this.f37c;
        TempStepperService tempStepperService = this.b;
        switch (i3) {
            case 0:
                TextView textView = tempStepperService.f1294g;
                if (textView != null) {
                    textView.setText(str);
                    tempStepperService.f1294g.setTextColor(i4);
                    break;
                }
                break;
            default:
                int[] iArr = TempStepperService.f1285c0;
                Toast.makeText(tempStepperService, str, i4).show();
                break;
        }
    }
}
