package a1;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Typeface;
import android.os.Handler;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.TextView;
import com.ecarx.eas.sdk.mediacenter.MediaCenterAPI;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.MainActivity;
import com.ex.auto.MediaBarFloaterService;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import com.ex.auto.SplitFloaterService;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import com.geely.hvacstepperv2.TempStepperService;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.nio.MappedByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import w0.ae;
import w0.f2;
import w0.k0;
import w0.mg;
import w0.ng;
import w0.od;
import w0.og;
import w0.p3;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f52a;
    public final /* synthetic */ Object b;

    public /* synthetic */ r(int i3, Object obj) {
        this.f52a = i3;
        this.b = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v10, types: [y1.p] */
    /* JADX WARN: Type inference failed for: r5v11, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r5v12, types: [java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r5v33, types: [java.util.ArrayList] */
    @Override // java.lang.Runnable
    public final void run() {
        Window window;
        float f;
        ?? arrayList;
        String strN;
        String strN2;
        mg mgVarK;
        switch (this.f52a) {
            case 0:
                TempStepperService tempStepperService = (TempStepperService) ((s) this.b).b;
                int[] iArr = TempStepperService.f1285c0;
                tempStepperService.j();
                if (tempStepperService.S) {
                    int i3 = 0;
                    for (int i4 = 0; i4 < 3; i4++) {
                        if (b.G(tempStepperService, i4) != null) {
                            i3++;
                        }
                    }
                    if (i3 == 0) {
                        tempStepperService.b();
                        return;
                    }
                }
                if (tempStepperService.S) {
                    Handler handler = tempStepperService.f1301n;
                    f fVar = tempStepperService.T;
                    handler.removeCallbacks(fVar);
                    handler.postDelayed(fVar, 5000L);
                    return;
                }
                return;
            case 1:
                ((e.j) this.b).invalidateOptionsMenu();
                return;
            case 2:
                e.i.b((e.i) this.b);
                return;
            case 3:
                ((androidx.activity.n) this.b).b();
                return;
            case 4:
                androidx.emoji2.text.q qVar = (androidx.emoji2.text.q) this.b;
                synchronized (qVar.f353d) {
                    try {
                        if (qVar.f356h == null) {
                            return;
                        }
                        try {
                            z.h hVarB = qVar.b();
                            int i5 = hVarB.f4679e;
                            if (i5 == 2) {
                                synchronized (qVar.f353d) {
                                }
                            }
                            if (i5 != 0) {
                                throw new RuntimeException("fetchFonts result is not OK. (" + i5 + ")");
                            }
                            try {
                                int i6 = y.h.f4654a;
                                y.g.a("EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface");
                                s1.e eVar = qVar.f352c;
                                Context context = qVar.f351a;
                                eVar.getClass();
                                Typeface typefaceU = v.f.f3313a.u(context, new z.h[]{hVarB}, 0);
                                MappedByteBuffer mappedByteBufferJ = k1.a.J(qVar.f351a, hVarB.f4676a);
                                if (mappedByteBufferJ == null || typefaceU == null) {
                                    throw new RuntimeException("Unable to open file.");
                                }
                                try {
                                    y.g.a("EmojiCompat.MetadataRepo.create");
                                    androidx.emoji2.text.t tVar = new androidx.emoji2.text.t(typefaceU, b.V(mappedByteBufferJ));
                                    y.g.b();
                                    y.g.b();
                                    synchronized (qVar.f353d) {
                                        try {
                                            b bVar = qVar.f356h;
                                            if (bVar != null) {
                                                bVar.N(tVar);
                                            }
                                        } catch (Throwable th) {
                                            throw th;
                                        }
                                        break;
                                    }
                                    qVar.a();
                                    return;
                                } catch (Throwable th2) {
                                    int i7 = y.h.f4654a;
                                    y.g.b();
                                    throw th2;
                                }
                            } catch (Throwable th3) {
                                int i8 = y.h.f4654a;
                                y.g.b();
                                throw th3;
                            }
                            break;
                        } catch (Throwable th4) {
                            synchronized (qVar.f353d) {
                                try {
                                    b bVar2 = qVar.f356h;
                                    if (bVar2 != null) {
                                        bVar2.K(th4);
                                    }
                                    qVar.a();
                                    return;
                                } catch (Throwable th5) {
                                    throw th5;
                                }
                            }
                        }
                    } catch (Throwable th6) {
                        throw th6;
                    }
                }
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                ((h2.l) this.b).c(Boolean.FALSE);
                return;
            case MusicClient.TYPE_GESTURE /* 6 */:
                p3 p3Var = (p3) this.b;
                p3Var.f4049e = false;
                if (((Boolean) p3Var.f4047c.a()).booleanValue()) {
                    p3Var.f4048d.a();
                    return;
                }
                return;
            case PlaybackState.STATE_ERROR /* 7 */:
                f2 f2Var = (f2) this.b;
                int i9 = MainActivity.f1002z1;
                f2Var.a();
                return;
            case 8:
                View view = (View) this.b;
                int i10 = MainActivity.f1002z1;
                view.scrollTo(0, 0);
                return;
            case 9:
                Dialog dialog = (Dialog) this.b;
                if (!dialog.isShowing() || (window = dialog.getWindow()) == null) {
                    return;
                }
                Context context2 = dialog.getContext();
                i2.g.d(context2, "getContext(...)");
                float f3 = context2.getResources().getDisplayMetrics().density;
                int i11 = context2.getResources().getDisplayMetrics().widthPixels - ((int) (76 * f3));
                if (window.getAttributes().width <= 0) {
                    int i12 = (int) (760 * f3);
                    if (i12 <= i11) {
                        i11 = i12;
                    }
                    window.setLayout(i11, -2);
                }
                window.setBackgroundDrawableResource(R.drawable.bg_master_shell);
                window.setDimAmount(0.58f);
                ThreadLocal threadLocal = u.n.f3235a;
                Typeface typefaceA = null;
                if (context2.isRestricted()) {
                    f = f3;
                } else {
                    f = f3;
                    typefaceA = u.n.a(context2, R.font.inter, new TypedValue(), 0, null, false);
                }
                int color = context2.getColor(R.color.master_text);
                Typeface typeface = typefaceA;
                int color2 = context2.getColor(R.color.master_text_secondary);
                int color3 = context2.getColor(R.color.master_green);
                View decorView = window.getDecorView();
                i2.g.d(decorView, "getDecorView(...)");
                w0.m.e(typeface, context2, color2, color, color3, decorView);
                TextView textView = (TextView) window.getDecorView().findViewById(context2.getResources().getIdentifier("alertTitle", "id", context2.getPackageName()));
                if (textView == null) {
                    textView = (TextView) window.getDecorView().findViewById(context2.getResources().getIdentifier("alertTitle", "id", "android"));
                }
                if (textView != null) {
                    textView.setTextSize(34.0f);
                    textView.setTextColor(color);
                    textView.setTypeface(typeface, 1);
                }
                TextView textView2 = (TextView) window.getDecorView().findViewById(android.R.id.message);
                if (textView2 != null) {
                    textView2.setTextSize(20.0f);
                    textView2.setTextColor(color2);
                    textView2.setLineSpacing((int) (4 * f), 1.0f);
                }
                if (dialog instanceof e.i) {
                    List listU = y1.f.U(new Integer[]{-1, -2, -3});
                    arrayList = new ArrayList(y1.i.X(listU));
                    Iterator it = listU.iterator();
                    while (it.hasNext()) {
                        int iIntValue = ((Number) it.next()).intValue();
                        arrayList.add(new x1.a(Integer.valueOf(iIntValue), ((e.i) dialog).c(iIntValue)));
                    }
                } else if (dialog instanceof AlertDialog) {
                    List listU2 = y1.f.U(new Integer[]{-1, -2, -3});
                    arrayList = new ArrayList(y1.i.X(listU2));
                    Iterator it2 = listU2.iterator();
                    while (it2.hasNext()) {
                        int iIntValue2 = ((Number) it2.next()).intValue();
                        arrayList.add(new x1.a(Integer.valueOf(iIntValue2), ((AlertDialog) dialog).getButton(iIntValue2)));
                    }
                } else {
                    arrayList = y1.p.f4663a;
                }
                for (x1.a aVar : arrayList) {
                    int iIntValue3 = ((Number) aVar.f4641a).intValue();
                    Button button = (Button) aVar.b;
                    if (button != null) {
                        boolean z2 = iIntValue3 == -1;
                        Context context3 = button.getContext();
                        float f4 = context3.getResources().getDisplayMetrics().density;
                        button.setAllCaps(false);
                        button.setLetterSpacing(0.0f);
                        button.setTextSize(18.0f);
                        button.setBackgroundTintList(null);
                        button.setBackgroundResource(z2 ? R.drawable.bg_master_activate : R.drawable.bg_master_restart);
                        button.setTextColor(context3.getColor(z2 ? R.color.master_green : R.color.master_text_secondary));
                        int i13 = (int) (22 * f4);
                        button.setPadding(i13, 0, i13, 0);
                        int i14 = (int) (52 * f4);
                        button.setMinHeight(i14);
                        button.setMinimumHeight(i14);
                        button.setMinWidth((int) (120 * f4));
                        ViewGroup.LayoutParams layoutParams = button.getLayoutParams();
                        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
                        if (marginLayoutParams != null) {
                            marginLayoutParams.setMarginStart((int) (12 * f4));
                        }
                    }
                }
                return;
            case 10:
                MediaBarFloaterService mediaBarFloaterService = (MediaBarFloaterService) this.b;
                Set set = MediaBarFloaterService.f1060v;
                mediaBarFloaterService.b();
                mediaBarFloaterService.e();
                return;
            case 11:
                od odVar = (od) this.b;
                if (od.f3996g) {
                    return;
                }
                odVar.i();
                return;
            case 12:
                try {
                    ((MediaCenterAPI) this.b).reconnect();
                    return;
                } catch (Throwable unused) {
                    od.f3992a.i();
                    return;
                }
            case 13:
                k0 k0Var = (k0) this.b;
                int i15 = QuickAccessFloaterService.t0;
                try {
                    Thread.sleep(1200L);
                    break;
                } catch (InterruptedException unused2) {
                }
                SplitFloaterService splitFloaterService = SplitFloaterService.f1178v;
                if (splitFloaterService != null) {
                    String str = k0Var.b;
                    String str2 = k0Var.f3777c;
                    ng ngVarF = og.f();
                    if (ngVarF == null || (strN = og.n(splitFloaterService, str)) == null || (strN2 = og.n(splitFloaterService, str2)) == null || (mgVarK = og.k(strN, str, splitFloaterService.d(ngVarF))) == null) {
                        return;
                    }
                    try {
                        Thread.sleep(700L);
                        break;
                    } catch (InterruptedException unused3) {
                    }
                    o2.h hVar = og.f4025a;
                    mg mgVarK2 = og.k(strN2, str2, splitFloaterService.e(ngVarF));
                    ae aeVar = ae.f3361a;
                    androidx.activity.result.b.r(androidx.activity.result.b.m("par: ", str, " | ", str2, " → "), mgVarK2 != null ? "ok" : "direita falhou", "Split", false);
                    if (mgVarK2 != null) {
                        og.g(mgVarK);
                        return;
                    }
                    return;
                }
                return;
            case 14:
                Runnable runnable = (Runnable) this.b;
                if (DriveRegenFloaterService.M) {
                    runnable.run();
                    return;
                }
                return;
            case 15:
                DriveRegenFloaterService driveRegenFloaterService = (DriveRegenFloaterService) this.b;
                boolean z3 = DriveRegenFloaterService.M;
                driveRegenFloaterService.d();
                return;
            case 16:
                DriveRegenFloaterService driveRegenFloaterService2 = ((z0.e) this.b).b;
                boolean z4 = DriveRegenFloaterService.M;
                driveRegenFloaterService2.c("external_update");
                return;
            default:
                DriveRegenFloaterService driveRegenFloaterService3 = ((z0.e) this.b).b;
                boolean z5 = DriveRegenFloaterService.M;
                driveRegenFloaterService3.c("wake");
                return;
        }
    }
}
