package w0;

import android.content.ContextWrapper;
import android.content.IntentFilter;
import android.graphics.Color;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.format.DateFormat;
import android.util.Log;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ex.auto.MainActivity;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ta implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4274a;
    public final /* synthetic */ ContextWrapper b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f4275c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f4276d;

    public /* synthetic */ ta(int i3, MainActivity mainActivity, boolean z2, boolean z3) {
        this.f4274a = i3;
        this.f4275c = z2;
        this.f4276d = z3;
        this.b = mainActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i3 = 1;
        switch (this.f4274a) {
            case 0:
                boolean z2 = this.f4275c;
                boolean z3 = this.f4276d;
                MainActivity mainActivity = (MainActivity) this.b;
                int i4 = MainActivity.f1002z1;
                if (z2 || z3 || mainActivity.q0()) {
                    String string = (z2 || z3) ? mainActivity.getString(R.string.k_continue_question) : mainActivity.getString(R.string.xml_gestos_download_grande);
                    i2.g.b(string);
                    e.h hVar = new e.h(mainActivity);
                    String string2 = mainActivity.getString(R.string.xml_gestos_rapidos_titulo);
                    e.d dVar = (e.d) hVar.b;
                    dVar.f1554d = string2;
                    dVar.f = string;
                    dVar.f1562m = false;
                    hVar.c(mainActivity.getString(R.string.common_cancel), new z8(mainActivity, 21));
                    hVar.f(mainActivity.getString(R.string.common_confirm), new z8(mainActivity, 22));
                    hVar.h();
                } else {
                    e.h hVar2 = new e.h(mainActivity);
                    e.d dVar2 = (e.d) hVar2.b;
                    dVar2.f1554d = mainActivity.getString(R.string.k_no_internet_title);
                    dVar2.f = mainActivity.getString(R.string.k_no_internet_message);
                    dVar2.f1562m = false;
                    hVar2.f(mainActivity.getString(R.string.common_ok), new z8(mainActivity, 20));
                    dVar2.f1563n = new aa(i3, mainActivity);
                    hVar2.h();
                }
                break;
            case 1:
                MainActivity mainActivity2 = (MainActivity) this.b;
                boolean z4 = this.f4275c;
                boolean z5 = this.f4276d;
                mainActivity2.L0 = false;
                if (!mainActivity2.isFinishing() && !mainActivity2.isDestroyed()) {
                    if (!z4) {
                        z5 = !z5;
                    }
                    mainActivity2.K0 = Boolean.valueOf(z5);
                    if (!z4) {
                        androidx.activity.result.b.n(R.string.k_ttl65_falhou, 1, mainActivity2, "getString(...)");
                    }
                    mainActivity2.r1();
                    break;
                }
                break;
            case 2:
                MainActivity mainActivity3 = (MainActivity) this.b;
                boolean z6 = this.f4275c;
                boolean z7 = this.f4276d;
                int i5 = MainActivity.f1002z1;
                if (!mainActivity3.isFinishing() && !mainActivity3.isDestroyed() && z6 != z7) {
                    mainActivity3.o0().edit().putBoolean("gestures_ac_swipe_single_step", z6).apply();
                    mainActivity3.c1();
                    mainActivity3.v1();
                    androidx.activity.result.b.n(z7 ? R.string.k_error_activating : R.string.k_error_deactivating, 1, mainActivity3, "getString(...)");
                    break;
                }
                break;
            case 3:
                MainActivity mainActivity4 = (MainActivity) this.b;
                boolean z8 = this.f4275c;
                boolean z9 = this.f4276d;
                int i6 = MainActivity.f1002z1;
                if (!mainActivity4.isFinishing() && !mainActivity4.isDestroyed()) {
                    String string3 = z8 ? mainActivity4.getString(z9 ? R.string.k_speed_lock_on : R.string.k_speed_lock_off) : mainActivity4.getString(R.string.k_speed_lock_err);
                    i2.g.b(string3);
                    mainActivity4.t2(string3, 0);
                    mainActivity4.f1045v.postDelayed(new ma(mainActivity4, 24), 400L);
                    break;
                }
                break;
            case 4:
                boolean z10 = this.f4275c;
                boolean z11 = this.f4276d;
                MainActivity mainActivity5 = (MainActivity) this.b;
                int i7 = MainActivity.f1002z1;
                if (z10 || z11) {
                    mainActivity5.C.execute(new ma(mainActivity5, 29));
                } else {
                    mainActivity5.f1025l0 = false;
                    mainActivity5.D0("", false);
                    boolean zQ0 = mainActivity5.q0();
                    e.h hVar3 = new e.h(mainActivity5);
                    e.d dVar3 = (e.d) hVar3.b;
                    dVar3.f1554d = mainActivity5.getString(R.string.k_missing_connadaptor_title);
                    dVar3.f = mainActivity5.getString(zQ0 ? R.string.k_missing_connadaptor_online : R.string.k_missing_connadaptor_offline, mainActivity5.Q(mainActivity5.P()));
                    if (zQ0) {
                        hVar3.f(mainActivity5.getString(R.string.k_download_connadaptor_btn), new z8(mainActivity5, 23));
                        hVar3.c(mainActivity5.getString(R.string.common_cancel), null);
                    } else {
                        hVar3.f(mainActivity5.getString(R.string.common_ok), null);
                    }
                    hVar3.h();
                }
                break;
            default:
                QuickAccessFloaterService quickAccessFloaterService = (QuickAccessFloaterService) this.b;
                boolean z12 = this.f4275c;
                boolean z13 = this.f4276d;
                if (quickAccessFloaterService.Q) {
                    if (!z12) {
                        quickAccessFloaterService.Q = false;
                        break;
                    } else {
                        QuickAccessFloaterService.f1133z0 = true;
                        quickAccessFloaterService.U = SystemClock.elapsedRealtime();
                        g0.a aVar = new g0.a(quickAccessFloaterService, quickAccessFloaterService.f1134a, 2);
                        quickAccessFloaterService.V = aVar;
                        quickAccessFloaterService.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, aVar);
                        pf pfVar = new pf(5, quickAccessFloaterService);
                        quickAccessFloaterService.W = pfVar;
                        quickAccessFloaterService.registerReceiver(pfVar, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
                        if (z13 && quickAccessFloaterService.X == null) {
                            LinearLayout linearLayout = new LinearLayout(quickAccessFloaterService);
                            linearLayout.setOrientation(1);
                            linearLayout.setGravity(17);
                            linearLayout.setBackgroundColor(-16777216);
                            linearLayout.setClickable(true);
                            linearLayout.setFocusable(false);
                            linearLayout.setOnClickListener(new df(1, quickAccessFloaterService));
                            TextView textView = new TextView(quickAccessFloaterService);
                            textView.setText(DateFormat.format("HH:mm", System.currentTimeMillis()));
                            textView.setTextSize(88.0f);
                            textView.setTypeface(textView.getTypeface(), 1);
                            textView.setTextColor(Color.parseColor("#5A5A5A"));
                            textView.setGravity(17);
                            quickAccessFloaterService.Y = textView;
                            linearLayout.addView(textView);
                            quickAccessFloaterService.X = linearLayout;
                            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, 2038, 256, -1);
                            try {
                                WindowManager windowManager = quickAccessFloaterService.b;
                                if (windowManager != null) {
                                    windowManager.addView(linearLayout, layoutParams);
                                }
                                quickAccessFloaterService.f1134a.post(quickAccessFloaterService.Z);
                            } catch (Exception e3) {
                                Log.w("QuickAccessFloater", "showScreenOffClockOverlay: " + e3.getMessage() + " — desfazendo turnOffScreen");
                                quickAccessFloaterService.X = null;
                                quickAccessFloaterService.Y = null;
                                quickAccessFloaterService.b0();
                                return;
                            }
                            break;
                        }
                    }
                }
                break;
        }
    }

    public /* synthetic */ ta(ContextWrapper contextWrapper, boolean z2, boolean z3, int i3) {
        this.f4274a = i3;
        this.b = contextWrapper;
        this.f4275c = z2;
        this.f4276d = z3;
    }
}
