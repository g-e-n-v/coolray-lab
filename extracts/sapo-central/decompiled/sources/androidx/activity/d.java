package androidx.activity;

import android.animation.ValueAnimator;
import android.appwidget.AppWidgetManager;
import android.car.hardware.property.CarPropertyManager;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.h0;
import androidx.lifecycle.a0;
import androidx.lifecycle.s;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import c0.p0;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.DriveModeVerticalWidgetProvider;
import com.ex.auto.DriveRegenWidgetProvider;
import com.ex.auto.FanSpeedVerticalWidgetProvider;
import com.ex.auto.FanSpeedWidgetProvider;
import com.ex.auto.HeatingTestWidgetProvider;
import com.ex.auto.HomeWidgetsPollService;
import com.ex.auto.HvacDirectionFanWidgetProvider;
import com.ex.auto.HvacDirectionVerticalWidgetProvider;
import com.ex.auto.HvacDirectionWidgetProvider;
import com.ex.auto.LyricsFloaterService;
import com.ex.auto.MainActivity;
import com.ex.auto.MediaBarFloaterService;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.RegenVerticalWidgetProvider;
import com.ex.auto.TemperatureVerticalWidgetProvider;
import com.ex.auto.TemperatureWidgetProvider;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import ecarx.xsf.mediacenter.session.PlaybackState;
import i.q1;
import java.util.ArrayList;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import q0.e0;
import q0.w0;
import w0.a8;
import w0.ah;
import w0.f1;
import w0.n3;
import w0.y2;
import w0.y7;

/* JADX INFO: loaded from: classes.dex */
public final class d implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f73a;
    public final /* synthetic */ Object b;

    public /* synthetic */ d(int i3, Object obj) {
        this.f73a = i3;
        this.b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:146:0x02fb  */
    @Override // java.lang.Runnable
    public final void run() {
        boolean z2;
        i.j jVar;
        int i3;
        boolean z3;
        switch (this.f73a) {
            case 0:
                try {
                    super/*android.app.Activity*/.onBackPressed();
                    return;
                } catch (IllegalStateException e3) {
                    if (!TextUtils.equals(e3.getMessage(), "Can not perform this action after onSaveInstanceState")) {
                        throw e3;
                    }
                    return;
                }
            case 1:
                androidx.fragment.app.e eVar = (androidx.fragment.app.e) this.b;
                eVar.f408a.endViewTransition(eVar.b);
                eVar.f409c.d();
                return;
            case 2:
                androidx.fragment.app.n nVar = (androidx.fragment.app.n) this.b;
                nVar.S.onDismiss(nVar.f474a0);
                return;
            case 3:
                ((h0) this.b).w(true);
                return;
            case 4:
                a0 a0Var = (a0) this.b;
                s sVar = a0Var.f;
                if (a0Var.b == 0) {
                    z2 = true;
                    a0Var.f557c = true;
                    sVar.d(androidx.lifecycle.k.ON_PAUSE);
                } else {
                    z2 = true;
                }
                if (a0Var.f556a == 0 && a0Var.f557c) {
                    sVar.d(androidx.lifecycle.k.ON_STOP);
                    a0Var.f558d = z2;
                    return;
                }
                return;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                f0.g gVar = (f0.g) this.b;
                q1 q1Var = gVar.f1724c;
                f0.a aVar = gVar.f1723a;
                if (gVar.f1735o) {
                    if (gVar.f1733m) {
                        gVar.f1733m = false;
                        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                        aVar.f1718e = jCurrentAnimationTimeMillis;
                        aVar.f1719g = -1L;
                        aVar.f = jCurrentAnimationTimeMillis;
                        aVar.f1720h = 0.5f;
                    }
                    if ((aVar.f1719g > 0 && AnimationUtils.currentAnimationTimeMillis() > aVar.f1719g + ((long) aVar.f1721i)) || !gVar.e()) {
                        gVar.f1735o = false;
                        return;
                    }
                    if (gVar.f1734n) {
                        gVar.f1734n = false;
                        long jUptimeMillis = SystemClock.uptimeMillis();
                        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                        q1Var.onTouchEvent(motionEventObtain);
                        motionEventObtain.recycle();
                    }
                    if (aVar.f == 0) {
                        throw new RuntimeException("Cannot compute scroll delta before calling start()");
                    }
                    long jCurrentAnimationTimeMillis2 = AnimationUtils.currentAnimationTimeMillis();
                    float fA = aVar.a(jCurrentAnimationTimeMillis2);
                    long j3 = jCurrentAnimationTimeMillis2 - aVar.f;
                    aVar.f = jCurrentAnimationTimeMillis2;
                    f0.h.b(gVar.f1737q, (int) (j3 * ((fA * 4.0f) + ((-4.0f) * fA * fA)) * aVar.f1717d));
                    WeakHashMap weakHashMap = p0.f727a;
                    c0.a0.m(q1Var, this);
                    return;
                }
                return;
            case MusicClient.TYPE_GESTURE /* 6 */:
                q1 q1Var2 = (q1) this.b;
                q1Var2.f2136l = null;
                q1Var2.drawableStateChanged();
                return;
            case PlaybackState.STATE_ERROR /* 7 */:
                ActionMenuView actionMenuView = ((Toolbar) this.b).f220a;
                if (actionMenuView == null || (jVar = actionMenuView.f183t) == null) {
                    return;
                }
                jVar.l();
                return;
            case 8:
                ((i0.e) this.b).n(0);
                return;
            case 9:
                q0.m mVar = (q0.m) this.b;
                ValueAnimator valueAnimator = mVar.f2961z;
                int i4 = mVar.A;
                if (i4 != 1) {
                    i3 = 2;
                    if (i4 != 2) {
                        return;
                    }
                } else {
                    i3 = 2;
                    valueAnimator.cancel();
                }
                mVar.A = 3;
                float[] fArr = new float[i3];
                fArr[0] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                fArr[1] = 0.0f;
                valueAnimator.setFloatValues(fArr);
                valueAnimator.setDuration(500);
                valueAnimator.start();
                return;
            case 10:
                RecyclerView recyclerView = (RecyclerView) this.b;
                e0 e0Var = recyclerView.H;
                if (e0Var != null) {
                    q0.j jVar2 = (q0.j) e0Var;
                    long j4 = jVar2.f2866d;
                    ArrayList arrayList = jVar2.f2922h;
                    boolean zIsEmpty = arrayList.isEmpty();
                    ArrayList arrayList2 = jVar2.f2924j;
                    boolean zIsEmpty2 = arrayList2.isEmpty();
                    ArrayList arrayList3 = jVar2.f2925k;
                    boolean zIsEmpty3 = arrayList3.isEmpty();
                    ArrayList arrayList4 = jVar2.f2923i;
                    boolean zIsEmpty4 = arrayList4.isEmpty();
                    if (zIsEmpty && zIsEmpty2 && zIsEmpty4 && zIsEmpty3) {
                        z3 = false;
                    } else {
                        int size = arrayList.size();
                        int i5 = 0;
                        while (i5 < size) {
                            Object obj = arrayList.get(i5);
                            i5++;
                            w0 w0Var = (w0) obj;
                            View view = w0Var.f3048a;
                            int i6 = size;
                            ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
                            jVar2.f2931q.add(w0Var);
                            viewPropertyAnimatorAnimate.setDuration(j4).alpha(0.0f).setListener(new q0.e(jVar2, w0Var, viewPropertyAnimatorAnimate, view)).start();
                            size = i6;
                            zIsEmpty4 = zIsEmpty4;
                            arrayList = arrayList;
                        }
                        boolean z4 = zIsEmpty4;
                        arrayList.clear();
                        if (!zIsEmpty2) {
                            ArrayList arrayList5 = new ArrayList();
                            arrayList5.addAll(arrayList2);
                            jVar2.f2927m.add(arrayList5);
                            arrayList2.clear();
                            q0.d dVar = new q0.d(jVar2, arrayList5, 0);
                            if (zIsEmpty) {
                                dVar.run();
                            } else {
                                View view2 = ((q0.i) arrayList5.get(0)).f2903a.f3048a;
                                WeakHashMap weakHashMap2 = p0.f727a;
                                c0.a0.n(view2, dVar, j4);
                            }
                        }
                        if (!zIsEmpty3) {
                            ArrayList arrayList6 = new ArrayList();
                            arrayList6.addAll(arrayList3);
                            jVar2.f2928n.add(arrayList6);
                            arrayList3.clear();
                            q0.d dVar2 = new q0.d(jVar2, arrayList6, 1);
                            if (zIsEmpty) {
                                dVar2.run();
                            } else {
                                View view3 = ((q0.h) arrayList6.get(0)).f2893a.f3048a;
                                WeakHashMap weakHashMap3 = p0.f727a;
                                c0.a0.n(view3, dVar2, j4);
                            }
                        }
                        if (z4) {
                            z3 = false;
                        } else {
                            ArrayList arrayList7 = new ArrayList();
                            arrayList7.addAll(arrayList4);
                            jVar2.f2926l.add(arrayList7);
                            arrayList4.clear();
                            q0.d dVar3 = new q0.d(jVar2, arrayList7, 2);
                            if (zIsEmpty && zIsEmpty2 && zIsEmpty3) {
                                dVar3.run();
                                z3 = false;
                            } else {
                                if (zIsEmpty) {
                                    j4 = 0;
                                }
                                long jMax = Math.max(!zIsEmpty2 ? jVar2.f2867e : 0L, !zIsEmpty3 ? jVar2.f : 0L) + j4;
                                z3 = false;
                                View view4 = ((w0) arrayList7.get(0)).f3048a;
                                WeakHashMap weakHashMap4 = p0.f727a;
                                c0.a0.n(view4, dVar3, jMax);
                            }
                        }
                    }
                } else {
                    z3 = false;
                }
                recyclerView.f630i0 = z3;
                return;
            case 11:
                ((StaggeredGridLayoutManager) this.b).v0();
                return;
            case 12:
                q0.b bVar = (q0.b) this.b;
                if (((Boolean) ((ah) bVar.f2845d).a()).booleanValue()) {
                    bVar.j();
                    return;
                }
                return;
            case 13:
                f1 f1Var = (f1) this.b;
                if (f1Var.f3573j || !f1Var.c()) {
                    return;
                }
                if (f1Var.f3570g == null) {
                    f1Var.b();
                }
                f1Var.e();
                f1Var.f3567c.postDelayed(this, 1000L);
                return;
            case 14:
                if (((HomeWidgetsPollService) this.b).f955e) {
                    return;
                }
                AppWidgetManager appWidgetManager = AppWidgetManager.getInstance((HomeWidgetsPollService) this.b);
                HomeWidgetsPollService homeWidgetsPollService = (HomeWidgetsPollService) this.b;
                i2.g.b(appWidgetManager);
                boolean z5 = HomeWidgetsPollService.a(appWidgetManager, homeWidgetsPollService, DriveRegenWidgetProvider.class) || HomeWidgetsPollService.a(appWidgetManager, homeWidgetsPollService, DriveModeVerticalWidgetProvider.class) || HomeWidgetsPollService.a(appWidgetManager, homeWidgetsPollService, RegenVerticalWidgetProvider.class);
                boolean z6 = HomeWidgetsPollService.a(appWidgetManager, homeWidgetsPollService, FanSpeedWidgetProvider.class) || HomeWidgetsPollService.a(appWidgetManager, homeWidgetsPollService, FanSpeedVerticalWidgetProvider.class);
                boolean z7 = HomeWidgetsPollService.a(appWidgetManager, homeWidgetsPollService, TemperatureWidgetProvider.class) || HomeWidgetsPollService.a(appWidgetManager, homeWidgetsPollService, TemperatureVerticalWidgetProvider.class);
                boolean z8 = HomeWidgetsPollService.a(appWidgetManager, homeWidgetsPollService, HvacDirectionWidgetProvider.class) || HomeWidgetsPollService.a(appWidgetManager, homeWidgetsPollService, HvacDirectionVerticalWidgetProvider.class);
                boolean zA = HomeWidgetsPollService.a(appWidgetManager, homeWidgetsPollService, HvacDirectionFanWidgetProvider.class);
                boolean zA2 = HomeWidgetsPollService.a(appWidgetManager, homeWidgetsPollService, HeatingTestWidgetProvider.class);
                y7 y7Var = new y7(z5, z6, z7, z8, zA, zA2);
                if (!z5 && !z6 && !z7 && !z8 && !zA && !zA2) {
                    if (!((HomeWidgetsPollService) this.b).A.isEmpty() || ((HomeWidgetsPollService) this.b).f.get() > 0) {
                        ((HomeWidgetsPollService) this.b).f952a.postDelayed(this, 500L);
                        return;
                    } else {
                        ((HomeWidgetsPollService) this.b).stopSelf();
                        return;
                    }
                }
                if (((HomeWidgetsPollService) this.b).f954d) {
                    ((HomeWidgetsPollService) this.b).f952a.postDelayed(this, 3000L);
                    return;
                }
                if (((HomeWidgetsPollService) this.b).f.get() > 0) {
                    ((HomeWidgetsPollService) this.b).f952a.postDelayed(this, 3000L);
                    return;
                }
                ((HomeWidgetsPollService) this.b).f954d = true;
                long j5 = ((HomeWidgetsPollService) this.b).f956g.get();
                CarPropertyManager carPropertyManager = ((HomeWidgetsPollService) this.b).f959j;
                try {
                    HomeWidgetsPollService homeWidgetsPollService2 = (HomeWidgetsPollService) this.b;
                    homeWidgetsPollService2.b.execute(new a8(carPropertyManager, homeWidgetsPollService2, this, y7Var, appWidgetManager, j5));
                    return;
                } catch (RejectedExecutionException unused) {
                    ((HomeWidgetsPollService) this.b).f954d = false;
                    return;
                }
            case 15:
                LyricsFloaterService lyricsFloaterService = (LyricsFloaterService) this.b;
                Set set = LyricsFloaterService.f982v;
                lyricsFloaterService.q();
                lyricsFloaterService.f984c.postDelayed(this, 350L);
                return;
            case 16:
                MainActivity mainActivity = (MainActivity) this.b;
                if (mainActivity.O) {
                    mainActivity.z(true);
                    mainActivity.z1();
                    mainActivity.f1045v.postDelayed(this, 3000L);
                    return;
                }
                return;
            case 17:
                ExecutorService executorService = n3.f3929a;
                n3.a(new y2((MediaBarFloaterService) this.b, 11, this));
                return;
            case 18:
                QuickAccessFloaterService quickAccessFloaterService = (QuickAccessFloaterService) this.b;
                TextView textView = quickAccessFloaterService.Y;
                if (textView != null) {
                    textView.setText(DateFormat.format("HH:mm", System.currentTimeMillis()));
                }
                quickAccessFloaterService.f1134a.postDelayed(this, 1000L);
                return;
            default:
                if (!DriveRegenFloaterService.M || ((DriveRegenFloaterService) this.b).f1280v.b) {
                    return;
                }
                ((DriveRegenFloaterService) this.b).m();
                DriveRegenFloaterService driveRegenFloaterService = (DriveRegenFloaterService) this.b;
                Handler handler = driveRegenFloaterService.f1279u;
                if (handler == null || !DriveRegenFloaterService.M || driveRegenFloaterService.f1280v.b) {
                    return;
                }
                handler.postDelayed(this, 3000L);
                return;
        }
    }
}
