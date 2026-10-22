package w0;

import android.car.hardware.property.CarPropertyManager;
import android.os.Handler;
import android.os.SystemClock;
import android.view.View;
import com.ex.auto.HomeFloatingWidgetsService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes.dex */
public final class t7 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4270a;
    public final /* synthetic */ HomeFloatingWidgetsService b;

    public /* synthetic */ t7(HomeFloatingWidgetsService homeFloatingWidgetsService, int i3) {
        this.f4270a = i3;
        this.b = homeFloatingWidgetsService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        switch (this.f4270a) {
            case 0:
                if (!this.b.f930d) {
                    long jElapsedRealtime = this.b.f936k - SystemClock.elapsedRealtime();
                    if (this.b.f934i.get() > 0 || jElapsedRealtime > 0) {
                        Handler handler = this.b.f929c;
                        if (jElapsedRealtime <= 0) {
                            jElapsedRealtime = 3000;
                        }
                        handler.postDelayed(this, jElapsedRealtime);
                    } else {
                        final long j3 = this.b.f935j.get();
                        final CarPropertyManager carPropertyManager = this.b.f;
                        HomeFloatingWidgetsService homeFloatingWidgetsService = this.b;
                        View view = homeFloatingWidgetsService.B;
                        if (view != null) {
                            z3 = true;
                            z2 = true;
                        } else {
                            z2 = false;
                            z3 = true;
                        }
                        View view2 = homeFloatingWidgetsService.C;
                        if (view2 == null && homeFloatingWidgetsService.F == null) {
                            z5 = false;
                            z4 = z3;
                        } else {
                            z4 = z3;
                            z5 = z4;
                        }
                        View view3 = homeFloatingWidgetsService.D;
                        if (view3 != null) {
                            z7 = z4;
                            z6 = z7;
                        } else {
                            z6 = false;
                            z7 = z4;
                        }
                        View view4 = homeFloatingWidgetsService.E;
                        if (view4 == null && homeFloatingWidgetsService.F == null) {
                            z9 = false;
                            z8 = z7;
                        } else {
                            z8 = z7;
                            z9 = z8;
                        }
                        View view5 = homeFloatingWidgetsService.F;
                        final boolean z10 = z2;
                        final boolean z11 = view5 != null ? z8 : false;
                        View view6 = homeFloatingWidgetsService.G;
                        boolean z12 = view6 != null ? z8 : false;
                        boolean z13 = (z9 || z12) ? z8 : false;
                        List listU = y1.f.U(new View[]{view, view2, view3, view4, view5, view6});
                        final boolean z14 = z5;
                        final ArrayList arrayList = new ArrayList(y1.i.X(listU));
                        Iterator it = listU.iterator();
                        while (it.hasNext()) {
                            arrayList.add(Integer.valueOf(System.identityHashCode((View) it.next())));
                        }
                        try {
                            final HomeFloatingWidgetsService homeFloatingWidgetsService2 = this.b;
                            final boolean z15 = z13;
                            final boolean z16 = z6;
                            final boolean z17 = z9;
                            final boolean z18 = z12;
                            homeFloatingWidgetsService2.X.execute(new Runnable() { // from class: w0.r7
                                @Override // java.lang.Runnable
                                public final void run() {
                                    i2.m mVar;
                                    HomeFloatingWidgetsService homeFloatingWidgetsService3 = homeFloatingWidgetsService2;
                                    CarPropertyManager carPropertyManager2 = carPropertyManager;
                                    boolean z19 = z10;
                                    boolean z20 = z14;
                                    boolean z21 = z16;
                                    boolean z22 = z17;
                                    boolean z23 = z15;
                                    boolean z24 = z18;
                                    boolean z25 = z11;
                                    final long j4 = j3;
                                    final ArrayList arrayList2 = arrayList;
                                    final t7 t7Var = this;
                                    final i2.m mVar2 = new i2.m();
                                    mVar2.f2292a = homeFloatingWidgetsService3.f940o;
                                    final i2.m mVar3 = new i2.m();
                                    mVar3.f2292a = homeFloatingWidgetsService3.f941p;
                                    final i2.m mVar4 = new i2.m();
                                    mVar4.f2292a = homeFloatingWidgetsService3.f942q;
                                    final i2.m mVar5 = new i2.m();
                                    mVar5.f2292a = homeFloatingWidgetsService3.f943r;
                                    final i2.m mVar6 = new i2.m();
                                    mVar6.f2292a = homeFloatingWidgetsService3.f944s;
                                    final i2.m mVar7 = new i2.m();
                                    mVar7.f2292a = homeFloatingWidgetsService3.f945t;
                                    final i2.m mVar8 = new i2.m();
                                    mVar8.f2292a = homeFloatingWidgetsService3.f946u;
                                    final i2.m mVar9 = new i2.m();
                                    mVar9.f2292a = homeFloatingWidgetsService3.f947v;
                                    final i2.m mVar10 = new i2.m();
                                    mVar10.f2292a = homeFloatingWidgetsService3.f948w;
                                    final i2.m mVar11 = new i2.m();
                                    mVar11.f2292a = homeFloatingWidgetsService3.f949x;
                                    final i2.m mVar12 = new i2.m();
                                    mVar12.f2292a = homeFloatingWidgetsService3.f950y;
                                    final i2.m mVar13 = new i2.m();
                                    mVar13.f2292a = homeFloatingWidgetsService3.f951z;
                                    i2.m mVar14 = new i2.m();
                                    mVar14.f2292a = homeFloatingWidgetsService3.A;
                                    if (carPropertyManager2 != null) {
                                        if (z19) {
                                            int[] iArr = v7.f4376a;
                                            mVar2.f2292a = v7.g(carPropertyManager2, 570491136, v7.f, v7.f4381h);
                                            mVar3.f2292a = v7.g(carPropertyManager2, 537003264, v7.f4379e, v7.f4382i);
                                        }
                                        if (z20) {
                                            mVar4.f2292a = v7.e(carPropertyManager2);
                                        }
                                        if (z21) {
                                            mVar5.f2292a = v7.k(carPropertyManager2);
                                        }
                                        if (z22) {
                                            mVar6.f2292a = v7.l(carPropertyManager2);
                                        }
                                        if (z23) {
                                            mVar7.f2292a = v7.i(carPropertyManager2);
                                        }
                                        if (z24) {
                                            mVar8.f2292a = v7.h(carPropertyManager2);
                                            mVar9.f2292a = v7.m(carPropertyManager2);
                                            mVar10.f2292a = v7.f(carPropertyManager2);
                                            mVar11.f2292a = v7.n(carPropertyManager2);
                                            mVar12.f2292a = v7.j(carPropertyManager2, 1);
                                            mVar13.f2292a = v7.j(carPropertyManager2, 4);
                                        }
                                        if (z25) {
                                            mVar = mVar14;
                                            mVar.f2292a = v7.d(carPropertyManager2);
                                        } else {
                                            mVar = mVar14;
                                        }
                                    } else {
                                        homeFloatingWidgetsService3 = homeFloatingWidgetsService3;
                                        mVar = mVar14;
                                    }
                                    final HomeFloatingWidgetsService homeFloatingWidgetsService4 = homeFloatingWidgetsService3;
                                    final i2.m mVar15 = mVar;
                                    homeFloatingWidgetsService4.f929c.post(new Runnable() { // from class: w0.s7
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            HomeFloatingWidgetsService homeFloatingWidgetsService5 = homeFloatingWidgetsService4;
                                            long j5 = j4;
                                            i2.m mVar16 = mVar2;
                                            i2.m mVar17 = mVar3;
                                            i2.m mVar18 = mVar4;
                                            i2.m mVar19 = mVar5;
                                            i2.m mVar20 = mVar6;
                                            i2.m mVar21 = mVar7;
                                            i2.m mVar22 = mVar8;
                                            i2.m mVar23 = mVar9;
                                            i2.m mVar24 = mVar10;
                                            i2.m mVar25 = mVar11;
                                            i2.m mVar26 = mVar12;
                                            i2.m mVar27 = mVar13;
                                            i2.m mVar28 = mVar15;
                                            ArrayList arrayList3 = arrayList2;
                                            t7 t7Var2 = t7Var;
                                            if (homeFloatingWidgetsService5.f930d) {
                                                return;
                                            }
                                            if (j5 == homeFloatingWidgetsService5.f935j.get()) {
                                                homeFloatingWidgetsService5.f940o = (Integer) mVar16.f2292a;
                                                homeFloatingWidgetsService5.f941p = (Integer) mVar17.f2292a;
                                                homeFloatingWidgetsService5.f942q = (Integer) mVar18.f2292a;
                                                homeFloatingWidgetsService5.f943r = (Float) mVar19.f2292a;
                                                homeFloatingWidgetsService5.f944s = (Integer) mVar20.f2292a;
                                                homeFloatingWidgetsService5.f945t = (Boolean) mVar21.f2292a;
                                                homeFloatingWidgetsService5.f946u = (Boolean) mVar22.f2292a;
                                                homeFloatingWidgetsService5.f947v = (Boolean) mVar23.f2292a;
                                                homeFloatingWidgetsService5.f948w = (Boolean) mVar24.f2292a;
                                                homeFloatingWidgetsService5.f949x = (Boolean) mVar25.f2292a;
                                                homeFloatingWidgetsService5.f950y = (Integer) mVar26.f2292a;
                                                homeFloatingWidgetsService5.f951z = (Integer) mVar27.f2292a;
                                                homeFloatingWidgetsService5.A = (Boolean) mVar28.f2292a;
                                                ArrayList arrayListG0 = y1.g.g0(y1.f.U(new Object[]{mVar16.f2292a, mVar17.f2292a, mVar18.f2292a, mVar19.f2292a, mVar20.f2292a, mVar21.f2292a, mVar22.f2292a, mVar23.f2292a, mVar24.f2292a, mVar25.f2292a, mVar26.f2292a, mVar27.f2292a, mVar28.f2292a}), arrayList3);
                                                if (!arrayListG0.equals(homeFloatingWidgetsService5.Y)) {
                                                    homeFloatingWidgetsService5.Y = arrayListG0;
                                                    homeFloatingWidgetsService5.I();
                                                    homeFloatingWidgetsService5.J();
                                                    homeFloatingWidgetsService5.L();
                                                    homeFloatingWidgetsService5.N();
                                                    homeFloatingWidgetsService5.M();
                                                    homeFloatingWidgetsService5.K();
                                                }
                                            }
                                            homeFloatingWidgetsService5.f929c.postDelayed(t7Var2, 3000L);
                                        }
                                    });
                                }
                            });
                        } catch (RejectedExecutionException unused) {
                            return;
                        }
                    }
                    break;
                }
                break;
            case 1:
                if (!this.b.f930d) {
                    ExecutorService executorService = n3.f3929a;
                    n3.a(new y2(this.b, 3, this));
                    break;
                }
                break;
            default:
                ExecutorService executorService2 = n3.f3929a;
                HomeFloatingWidgetsService homeFloatingWidgetsService3 = this.b;
                n3.b("widgets-sysinfo", new x6(homeFloatingWidgetsService3, 13));
                homeFloatingWidgetsService3.f929c.postDelayed(this, 2000L);
                break;
        }
    }
}
