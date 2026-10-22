package w0;

import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.R;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class x6 implements h2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4497a;
    public final /* synthetic */ HomeFloatingWidgetsService b;

    public /* synthetic */ x6(HomeFloatingWidgetsService homeFloatingWidgetsService, int i3) {
        this.f4497a = i3;
        this.b = homeFloatingWidgetsService;
    }

    @Override // h2.a
    public final Object a() {
        Double dA;
        int i3 = this.f4497a;
        Integer numB = null;
        int i4 = 0;
        HomeFloatingWidgetsService homeFloatingWidgetsService = this.b;
        switch (i3) {
            case 0:
                homeFloatingWidgetsService.f929c.post(new j7(homeFloatingWidgetsService, 0));
                break;
            case 1:
                Handler handler = homeFloatingWidgetsService.f929c;
                if (homeFloatingWidgetsService.K == null) {
                    FrameLayout frameLayout = new FrameLayout(homeFloatingWidgetsService);
                    frameLayout.setBackgroundColor(-1291845632);
                    LinearLayout linearLayout = new LinearLayout(homeFloatingWidgetsService);
                    linearLayout.setOrientation(1);
                    linearLayout.setPadding(homeFloatingWidgetsService.q(20), homeFloatingWidgetsService.q(18), homeFloatingWidgetsService.q(20), homeFloatingWidgetsService.q(20));
                    GradientDrawable gradientDrawable = new GradientDrawable();
                    gradientDrawable.setCornerRadius(homeFloatingWidgetsService.q(22));
                    gradientDrawable.setColor(homeFloatingWidgetsService.getColor(R.color.cx_surface));
                    gradientDrawable.setStroke(homeFloatingWidgetsService.q(1), 587202559);
                    linearLayout.setBackground(gradientDrawable);
                    linearLayout.setLayoutParams(new FrameLayout.LayoutParams(homeFloatingWidgetsService.q(460), -2, 17));
                    linearLayout.setOnClickListener(new f7(i4));
                    LinearLayout linearLayout2 = new LinearLayout(homeFloatingWidgetsService);
                    linearLayout2.setOrientation(0);
                    linearLayout2.setGravity(16);
                    linearLayout2.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
                    TextView textView = new TextView(homeFloatingWidgetsService);
                    textView.setText("Apps por uso de CPU");
                    textView.setTextColor(homeFloatingWidgetsService.getColor(R.color.cx_text_hi));
                    textView.setTextSize(19.0f);
                    textView.setTypeface(textView.getTypeface(), 1);
                    textView.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
                    linearLayout2.addView(textView);
                    TextView textView2 = new TextView(homeFloatingWidgetsService);
                    textView2.setText("✕");
                    textView2.setTextColor(homeFloatingWidgetsService.getColor(R.color.cx_text_hi));
                    textView2.setTextSize(18.0f);
                    textView2.setGravity(17);
                    int iQ = homeFloatingWidgetsService.q(34);
                    textView2.setLayoutParams(new LinearLayout.LayoutParams(iQ, iQ));
                    GradientDrawable gradientDrawable2 = new GradientDrawable();
                    gradientDrawable2.setShape(1);
                    gradientDrawable2.setColor(homeFloatingWidgetsService.getColor(R.color.cx_surface_alt));
                    textView2.setBackground(gradientDrawable2);
                    textView2.setOnClickListener(new w6(homeFloatingWidgetsService, 27));
                    linearLayout2.addView(textView2);
                    linearLayout.addView(linearLayout2);
                    LinearLayout linearLayout3 = new LinearLayout(homeFloatingWidgetsService);
                    linearLayout3.setOrientation(1);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams.topMargin = homeFloatingWidgetsService.q(14);
                    linearLayout3.setLayoutParams(layoutParams);
                    TextView textView3 = new TextView(homeFloatingWidgetsService);
                    textView3.setText("Lendo processos…");
                    textView3.setTextColor(homeFloatingWidgetsService.getColor(R.color.cx_text_muted));
                    textView3.setTextSize(15.0f);
                    textView3.setPadding(0, homeFloatingWidgetsService.q(10), 0, homeFloatingWidgetsService.q(10));
                    linearLayout3.addView(textView3);
                    linearLayout.addView(linearLayout3);
                    frameLayout.addView(linearLayout);
                    frameLayout.setOnClickListener(new w6(homeFloatingWidgetsService, 28));
                    ViewGroup.LayoutParams layoutParams2 = new WindowManager.LayoutParams(-1, -1, 2038, 264, -3);
                    homeFloatingWidgetsService.K = frameLayout;
                    try {
                        WindowManager windowManager = homeFloatingWidgetsService.f928a;
                        if (windowManager == null) {
                            i2.g.h("wm");
                            throw null;
                        }
                        windowManager.addView(frameLayout, layoutParams2);
                        u7 u7Var = homeFloatingWidgetsService.L;
                        if (u7Var != null) {
                            handler.removeCallbacks(u7Var);
                        }
                        u7 u7Var2 = new u7(homeFloatingWidgetsService, frameLayout, linearLayout3);
                        homeFloatingWidgetsService.L = u7Var2;
                        handler.post(u7Var2);
                    } catch (Throwable th) {
                        androidx.activity.result.b.s(th, new StringBuilder("cpuPanel: "), "HomeFloatingWidgets");
                        homeFloatingWidgetsService.K = null;
                    }
                }
                return x1.e.f4647c;
            case 2:
                List list = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService.K();
                break;
            case 3:
                List list2 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService.K();
                break;
            case 4:
                List list3 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService.K();
                break;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                List list4 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService.L();
                break;
            case MusicClient.TYPE_GESTURE /* 6 */:
                List list5 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService.K();
                break;
            case PlaybackState.STATE_ERROR /* 7 */:
                List list6 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService.M();
                homeFloatingWidgetsService.J();
                break;
            case 8:
                List list7 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService.N();
                break;
            case 9:
                List list8 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService.K();
                break;
            case 10:
                List list9 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService.M();
                break;
            case 11:
                List list10 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService.J();
                break;
            case 12:
                List list11 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService.M();
                homeFloatingWidgetsService.N();
                break;
            default:
                try {
                    dA = ug.a();
                } catch (Throwable unused) {
                    dA = null;
                }
                try {
                    numB = ug.b();
                    break;
                } catch (Throwable unused2) {
                }
                homeFloatingWidgetsService.f929c.post(new a1.g(homeFloatingWidgetsService, dA, numB, 9));
                break;
        }
        return x1.e.f4647c;
    }
}
