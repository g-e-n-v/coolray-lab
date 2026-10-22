package w0;

import android.car.hardware.property.CarPropertyManager;
import android.view.View;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.HomeFloatingWidgetsService;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class w6 implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4432a;
    public final /* synthetic */ HomeFloatingWidgetsService b;

    public /* synthetic */ w6(HomeFloatingWidgetsService homeFloatingWidgetsService, int i3) {
        this.f4432a = i3;
        this.b = homeFloatingWidgetsService;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        final int i3 = 2;
        final int i4 = 0;
        final int i5 = 6;
        final int i6 = 3;
        final int i7 = 4;
        final int i8 = 1;
        switch (this.f4432a) {
            case 0:
                HomeFloatingWidgetsService homeFloatingWidgetsService = this.b;
                List list = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService.B(3);
                break;
            case 1:
                HomeFloatingWidgetsService homeFloatingWidgetsService2 = this.b;
                List list2 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService2.B(4);
                break;
            case 2:
                HomeFloatingWidgetsService homeFloatingWidgetsService3 = this.b;
                List list3 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService3.B(6);
                break;
            case 3:
                final HomeFloatingWidgetsService homeFloatingWidgetsService4 = this.b;
                if (homeFloatingWidgetsService4.f != null) {
                    Boolean bool = homeFloatingWidgetsService4.f945t;
                    if (bool == null) {
                        homeFloatingWidgetsService4.x(new h2.l() { // from class: w0.a7
                            @Override // h2.l
                            public final Object c(Object obj) {
                                switch (i4) {
                                    case 0:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService5 = homeFloatingWidgetsService4;
                                        CarPropertyManager carPropertyManager = (CarPropertyManager) obj;
                                        List list4 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "manager");
                                        Boolean boolI = homeFloatingWidgetsService5.f945t;
                                        boolean z2 = !((boolI == null && (boolI = v7.i(carPropertyManager)) == null) ? false : boolI.booleanValue());
                                        v7.v(carPropertyManager, z2);
                                        homeFloatingWidgetsService5.f945t = Boolean.valueOf(z2);
                                        homeFloatingWidgetsService5.r(new x6(homeFloatingWidgetsService5, 8));
                                        break;
                                    case 1:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService6 = homeFloatingWidgetsService4;
                                        CarPropertyManager carPropertyManager2 = (CarPropertyManager) obj;
                                        List list5 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager2, "manager");
                                        Boolean boolF = homeFloatingWidgetsService6.f948w;
                                        boolean z3 = !((boolF == null && (boolF = v7.f(carPropertyManager2)) == null) ? false : boolF.booleanValue());
                                        v7.t(carPropertyManager2, z3);
                                        homeFloatingWidgetsService6.f948w = Boolean.valueOf(z3);
                                        homeFloatingWidgetsService6.r(new x6(homeFloatingWidgetsService6, 6));
                                        break;
                                    case 2:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService7 = homeFloatingWidgetsService4;
                                        CarPropertyManager carPropertyManager3 = (CarPropertyManager) obj;
                                        List list6 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager3, "manager");
                                        Boolean boolI2 = homeFloatingWidgetsService7.f945t;
                                        boolean z4 = !((boolI2 == null && (boolI2 = v7.i(carPropertyManager3)) == null) ? false : boolI2.booleanValue());
                                        v7.v(carPropertyManager3, z4);
                                        homeFloatingWidgetsService7.f945t = Boolean.valueOf(z4);
                                        homeFloatingWidgetsService7.r(new x6(homeFloatingWidgetsService7, 12));
                                        break;
                                    case 3:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService8 = homeFloatingWidgetsService4;
                                        CarPropertyManager carPropertyManager4 = (CarPropertyManager) obj;
                                        List list7 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager4, "manager");
                                        Boolean boolH = homeFloatingWidgetsService8.f946u;
                                        boolean z5 = !((boolH == null && (boolH = v7.h(carPropertyManager4)) == null) ? false : boolH.booleanValue());
                                        v7.u(carPropertyManager4, z5);
                                        homeFloatingWidgetsService8.f946u = Boolean.valueOf(z5);
                                        homeFloatingWidgetsService8.r(new x6(homeFloatingWidgetsService8, 3));
                                        break;
                                    case 4:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService9 = homeFloatingWidgetsService4;
                                        CarPropertyManager carPropertyManager5 = (CarPropertyManager) obj;
                                        List list8 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager5, "manager");
                                        Boolean boolN = homeFloatingWidgetsService9.f949x;
                                        boolean z6 = !((boolN == null && (boolN = v7.n(carPropertyManager5)) == null) ? false : boolN.booleanValue());
                                        v7.A(carPropertyManager5, z6);
                                        homeFloatingWidgetsService9.f949x = Boolean.valueOf(z6);
                                        homeFloatingWidgetsService9.r(new x6(homeFloatingWidgetsService9, 4));
                                        break;
                                    case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService10 = homeFloatingWidgetsService4;
                                        CarPropertyManager carPropertyManager6 = (CarPropertyManager) obj;
                                        List list9 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager6, "manager");
                                        Boolean boolM = homeFloatingWidgetsService10.f947v;
                                        boolean z7 = !((boolM == null && (boolM = v7.m(carPropertyManager6)) == null) ? false : boolM.booleanValue());
                                        v7.z(carPropertyManager6, z7);
                                        homeFloatingWidgetsService10.f947v = Boolean.valueOf(z7);
                                        homeFloatingWidgetsService10.r(new x6(homeFloatingWidgetsService10, 9));
                                        break;
                                    default:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService11 = homeFloatingWidgetsService4;
                                        CarPropertyManager carPropertyManager7 = (CarPropertyManager) obj;
                                        List list10 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager7, "manager");
                                        Boolean boolD = homeFloatingWidgetsService11.A;
                                        boolean z8 = !((boolD == null && (boolD = v7.d(carPropertyManager7)) == null) ? false : boolD.booleanValue());
                                        v7.q(carPropertyManager7, z8);
                                        homeFloatingWidgetsService11.A = Boolean.valueOf(z8);
                                        homeFloatingWidgetsService11.r(new x6(homeFloatingWidgetsService11, 10));
                                        break;
                                }
                                return x1.e.f4647c;
                            }
                        });
                    } else {
                        final boolean z2 = !bool.booleanValue();
                        homeFloatingWidgetsService4.f945t = Boolean.valueOf(z2);
                        homeFloatingWidgetsService4.N();
                        homeFloatingWidgetsService4.x(new h2.l() { // from class: w0.z6
                            @Override // h2.l
                            public final Object c(Object obj) {
                                int i9 = i4;
                                boolean z3 = z2;
                                CarPropertyManager carPropertyManager = (CarPropertyManager) obj;
                                switch (i9) {
                                    case 0:
                                        List list4 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.v(carPropertyManager, z3);
                                        break;
                                    case 1:
                                        List list5 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.t(carPropertyManager, z3);
                                        break;
                                    case 2:
                                        List list6 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.v(carPropertyManager, z3);
                                        break;
                                    case 3:
                                        List list7 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.u(carPropertyManager, z3);
                                        break;
                                    case 4:
                                        List list8 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.A(carPropertyManager, z3);
                                        break;
                                    case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                                        List list9 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.z(carPropertyManager, z3);
                                        break;
                                    default:
                                        List list10 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.q(carPropertyManager, z3);
                                        break;
                                }
                                return x1.e.f4647c;
                            }
                        });
                    }
                    break;
                }
                break;
            case 4:
                HomeFloatingWidgetsService homeFloatingWidgetsService5 = this.b;
                List list4 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService5.C(1);
                break;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                HomeFloatingWidgetsService homeFloatingWidgetsService6 = this.b;
                List list5 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService6.C(2);
                break;
            case MusicClient.TYPE_GESTURE /* 6 */:
                HomeFloatingWidgetsService homeFloatingWidgetsService7 = this.b;
                List list6 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService7.C(3);
                break;
            case PlaybackState.STATE_ERROR /* 7 */:
                HomeFloatingWidgetsService homeFloatingWidgetsService8 = this.b;
                List list7 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService8.C(4);
                break;
            case 8:
                HomeFloatingWidgetsService homeFloatingWidgetsService9 = this.b;
                List list8 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService9.C(6);
                break;
            case 9:
                final HomeFloatingWidgetsService homeFloatingWidgetsService10 = this.b;
                if (homeFloatingWidgetsService10.f != null) {
                    Boolean bool2 = homeFloatingWidgetsService10.f945t;
                    if (bool2 == null) {
                        homeFloatingWidgetsService10.x(new h2.l() { // from class: w0.a7
                            @Override // h2.l
                            public final Object c(Object obj) {
                                switch (i3) {
                                    case 0:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService11 = homeFloatingWidgetsService10;
                                        CarPropertyManager carPropertyManager = (CarPropertyManager) obj;
                                        List list9 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "manager");
                                        Boolean boolI = homeFloatingWidgetsService11.f945t;
                                        boolean z3 = !((boolI == null && (boolI = v7.i(carPropertyManager)) == null) ? false : boolI.booleanValue());
                                        v7.v(carPropertyManager, z3);
                                        homeFloatingWidgetsService11.f945t = Boolean.valueOf(z3);
                                        homeFloatingWidgetsService11.r(new x6(homeFloatingWidgetsService11, 8));
                                        break;
                                    case 1:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService12 = homeFloatingWidgetsService10;
                                        CarPropertyManager carPropertyManager2 = (CarPropertyManager) obj;
                                        List list10 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager2, "manager");
                                        Boolean boolF = homeFloatingWidgetsService12.f948w;
                                        boolean z4 = !((boolF == null && (boolF = v7.f(carPropertyManager2)) == null) ? false : boolF.booleanValue());
                                        v7.t(carPropertyManager2, z4);
                                        homeFloatingWidgetsService12.f948w = Boolean.valueOf(z4);
                                        homeFloatingWidgetsService12.r(new x6(homeFloatingWidgetsService12, 6));
                                        break;
                                    case 2:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService13 = homeFloatingWidgetsService10;
                                        CarPropertyManager carPropertyManager3 = (CarPropertyManager) obj;
                                        List list11 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager3, "manager");
                                        Boolean boolI2 = homeFloatingWidgetsService13.f945t;
                                        boolean z5 = !((boolI2 == null && (boolI2 = v7.i(carPropertyManager3)) == null) ? false : boolI2.booleanValue());
                                        v7.v(carPropertyManager3, z5);
                                        homeFloatingWidgetsService13.f945t = Boolean.valueOf(z5);
                                        homeFloatingWidgetsService13.r(new x6(homeFloatingWidgetsService13, 12));
                                        break;
                                    case 3:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService14 = homeFloatingWidgetsService10;
                                        CarPropertyManager carPropertyManager4 = (CarPropertyManager) obj;
                                        List list12 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager4, "manager");
                                        Boolean boolH = homeFloatingWidgetsService14.f946u;
                                        boolean z6 = !((boolH == null && (boolH = v7.h(carPropertyManager4)) == null) ? false : boolH.booleanValue());
                                        v7.u(carPropertyManager4, z6);
                                        homeFloatingWidgetsService14.f946u = Boolean.valueOf(z6);
                                        homeFloatingWidgetsService14.r(new x6(homeFloatingWidgetsService14, 3));
                                        break;
                                    case 4:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService15 = homeFloatingWidgetsService10;
                                        CarPropertyManager carPropertyManager5 = (CarPropertyManager) obj;
                                        List list13 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager5, "manager");
                                        Boolean boolN = homeFloatingWidgetsService15.f949x;
                                        boolean z7 = !((boolN == null && (boolN = v7.n(carPropertyManager5)) == null) ? false : boolN.booleanValue());
                                        v7.A(carPropertyManager5, z7);
                                        homeFloatingWidgetsService15.f949x = Boolean.valueOf(z7);
                                        homeFloatingWidgetsService15.r(new x6(homeFloatingWidgetsService15, 4));
                                        break;
                                    case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService16 = homeFloatingWidgetsService10;
                                        CarPropertyManager carPropertyManager6 = (CarPropertyManager) obj;
                                        List list14 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager6, "manager");
                                        Boolean boolM = homeFloatingWidgetsService16.f947v;
                                        boolean z8 = !((boolM == null && (boolM = v7.m(carPropertyManager6)) == null) ? false : boolM.booleanValue());
                                        v7.z(carPropertyManager6, z8);
                                        homeFloatingWidgetsService16.f947v = Boolean.valueOf(z8);
                                        homeFloatingWidgetsService16.r(new x6(homeFloatingWidgetsService16, 9));
                                        break;
                                    default:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService17 = homeFloatingWidgetsService10;
                                        CarPropertyManager carPropertyManager7 = (CarPropertyManager) obj;
                                        List list15 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager7, "manager");
                                        Boolean boolD = homeFloatingWidgetsService17.A;
                                        boolean z9 = !((boolD == null && (boolD = v7.d(carPropertyManager7)) == null) ? false : boolD.booleanValue());
                                        v7.q(carPropertyManager7, z9);
                                        homeFloatingWidgetsService17.A = Boolean.valueOf(z9);
                                        homeFloatingWidgetsService17.r(new x6(homeFloatingWidgetsService17, 10));
                                        break;
                                }
                                return x1.e.f4647c;
                            }
                        });
                    } else {
                        final boolean z3 = !bool2.booleanValue();
                        homeFloatingWidgetsService10.f945t = Boolean.valueOf(z3);
                        homeFloatingWidgetsService10.M();
                        homeFloatingWidgetsService10.N();
                        homeFloatingWidgetsService10.x(new h2.l() { // from class: w0.z6
                            @Override // h2.l
                            public final Object c(Object obj) {
                                int i9 = i3;
                                boolean z4 = z3;
                                CarPropertyManager carPropertyManager = (CarPropertyManager) obj;
                                switch (i9) {
                                    case 0:
                                        List list9 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.v(carPropertyManager, z4);
                                        break;
                                    case 1:
                                        List list10 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.t(carPropertyManager, z4);
                                        break;
                                    case 2:
                                        List list11 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.v(carPropertyManager, z4);
                                        break;
                                    case 3:
                                        List list12 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.u(carPropertyManager, z4);
                                        break;
                                    case 4:
                                        List list13 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.A(carPropertyManager, z4);
                                        break;
                                    case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                                        List list14 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.z(carPropertyManager, z4);
                                        break;
                                    default:
                                        List list15 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.q(carPropertyManager, z4);
                                        break;
                                }
                                return x1.e.f4647c;
                            }
                        });
                    }
                    break;
                }
                break;
            case 10:
                HomeFloatingWidgetsService homeFloatingWidgetsService11 = this.b;
                List list9 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService11.F(-1);
                break;
            case 11:
                HomeFloatingWidgetsService homeFloatingWidgetsService12 = this.b;
                List list10 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService12.F(1);
                break;
            case 12:
                final HomeFloatingWidgetsService homeFloatingWidgetsService13 = this.b;
                if (homeFloatingWidgetsService13.f != null) {
                    Boolean bool3 = homeFloatingWidgetsService13.A;
                    if (bool3 == null) {
                        homeFloatingWidgetsService13.x(new h2.l() { // from class: w0.a7
                            @Override // h2.l
                            public final Object c(Object obj) {
                                switch (i5) {
                                    case 0:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService14 = homeFloatingWidgetsService13;
                                        CarPropertyManager carPropertyManager = (CarPropertyManager) obj;
                                        List list11 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "manager");
                                        Boolean boolI = homeFloatingWidgetsService14.f945t;
                                        boolean z4 = !((boolI == null && (boolI = v7.i(carPropertyManager)) == null) ? false : boolI.booleanValue());
                                        v7.v(carPropertyManager, z4);
                                        homeFloatingWidgetsService14.f945t = Boolean.valueOf(z4);
                                        homeFloatingWidgetsService14.r(new x6(homeFloatingWidgetsService14, 8));
                                        break;
                                    case 1:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService15 = homeFloatingWidgetsService13;
                                        CarPropertyManager carPropertyManager2 = (CarPropertyManager) obj;
                                        List list12 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager2, "manager");
                                        Boolean boolF = homeFloatingWidgetsService15.f948w;
                                        boolean z5 = !((boolF == null && (boolF = v7.f(carPropertyManager2)) == null) ? false : boolF.booleanValue());
                                        v7.t(carPropertyManager2, z5);
                                        homeFloatingWidgetsService15.f948w = Boolean.valueOf(z5);
                                        homeFloatingWidgetsService15.r(new x6(homeFloatingWidgetsService15, 6));
                                        break;
                                    case 2:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService16 = homeFloatingWidgetsService13;
                                        CarPropertyManager carPropertyManager3 = (CarPropertyManager) obj;
                                        List list13 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager3, "manager");
                                        Boolean boolI2 = homeFloatingWidgetsService16.f945t;
                                        boolean z6 = !((boolI2 == null && (boolI2 = v7.i(carPropertyManager3)) == null) ? false : boolI2.booleanValue());
                                        v7.v(carPropertyManager3, z6);
                                        homeFloatingWidgetsService16.f945t = Boolean.valueOf(z6);
                                        homeFloatingWidgetsService16.r(new x6(homeFloatingWidgetsService16, 12));
                                        break;
                                    case 3:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService17 = homeFloatingWidgetsService13;
                                        CarPropertyManager carPropertyManager4 = (CarPropertyManager) obj;
                                        List list14 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager4, "manager");
                                        Boolean boolH = homeFloatingWidgetsService17.f946u;
                                        boolean z7 = !((boolH == null && (boolH = v7.h(carPropertyManager4)) == null) ? false : boolH.booleanValue());
                                        v7.u(carPropertyManager4, z7);
                                        homeFloatingWidgetsService17.f946u = Boolean.valueOf(z7);
                                        homeFloatingWidgetsService17.r(new x6(homeFloatingWidgetsService17, 3));
                                        break;
                                    case 4:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService18 = homeFloatingWidgetsService13;
                                        CarPropertyManager carPropertyManager5 = (CarPropertyManager) obj;
                                        List list15 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager5, "manager");
                                        Boolean boolN = homeFloatingWidgetsService18.f949x;
                                        boolean z8 = !((boolN == null && (boolN = v7.n(carPropertyManager5)) == null) ? false : boolN.booleanValue());
                                        v7.A(carPropertyManager5, z8);
                                        homeFloatingWidgetsService18.f949x = Boolean.valueOf(z8);
                                        homeFloatingWidgetsService18.r(new x6(homeFloatingWidgetsService18, 4));
                                        break;
                                    case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService19 = homeFloatingWidgetsService13;
                                        CarPropertyManager carPropertyManager6 = (CarPropertyManager) obj;
                                        List list16 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager6, "manager");
                                        Boolean boolM = homeFloatingWidgetsService19.f947v;
                                        boolean z9 = !((boolM == null && (boolM = v7.m(carPropertyManager6)) == null) ? false : boolM.booleanValue());
                                        v7.z(carPropertyManager6, z9);
                                        homeFloatingWidgetsService19.f947v = Boolean.valueOf(z9);
                                        homeFloatingWidgetsService19.r(new x6(homeFloatingWidgetsService19, 9));
                                        break;
                                    default:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService110 = homeFloatingWidgetsService13;
                                        CarPropertyManager carPropertyManager7 = (CarPropertyManager) obj;
                                        List list17 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager7, "manager");
                                        Boolean boolD = homeFloatingWidgetsService110.A;
                                        boolean z10 = !((boolD == null && (boolD = v7.d(carPropertyManager7)) == null) ? false : boolD.booleanValue());
                                        v7.q(carPropertyManager7, z10);
                                        homeFloatingWidgetsService110.A = Boolean.valueOf(z10);
                                        homeFloatingWidgetsService110.r(new x6(homeFloatingWidgetsService110, 10));
                                        break;
                                }
                                return x1.e.f4647c;
                            }
                        });
                    } else {
                        final boolean z4 = !bool3.booleanValue();
                        homeFloatingWidgetsService13.A = Boolean.valueOf(z4);
                        homeFloatingWidgetsService13.M();
                        homeFloatingWidgetsService13.x(new h2.l() { // from class: w0.z6
                            @Override // h2.l
                            public final Object c(Object obj) {
                                int i9 = i5;
                                boolean z5 = z4;
                                CarPropertyManager carPropertyManager = (CarPropertyManager) obj;
                                switch (i9) {
                                    case 0:
                                        List list11 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.v(carPropertyManager, z5);
                                        break;
                                    case 1:
                                        List list12 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.t(carPropertyManager, z5);
                                        break;
                                    case 2:
                                        List list13 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.v(carPropertyManager, z5);
                                        break;
                                    case 3:
                                        List list14 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.u(carPropertyManager, z5);
                                        break;
                                    case 4:
                                        List list15 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.A(carPropertyManager, z5);
                                        break;
                                    case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                                        List list16 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.z(carPropertyManager, z5);
                                        break;
                                    default:
                                        List list17 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.q(carPropertyManager, z5);
                                        break;
                                }
                                return x1.e.f4647c;
                            }
                        });
                    }
                    break;
                }
                break;
            case 13:
                HomeFloatingWidgetsService homeFloatingWidgetsService14 = this.b;
                List list11 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService14.E(-1);
                break;
            case 14:
                HomeFloatingWidgetsService homeFloatingWidgetsService15 = this.b;
                List list12 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService15.E(1);
                break;
            case 15:
                HomeFloatingWidgetsService homeFloatingWidgetsService16 = this.b;
                List list13 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService16.z(570491137);
                break;
            case 16:
                HomeFloatingWidgetsService homeFloatingWidgetsService17 = this.b;
                List list14 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService17.z(570491138);
                break;
            case 17:
                HomeFloatingWidgetsService homeFloatingWidgetsService18 = this.b;
                List list15 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService18.z(570491139);
                break;
            case 18:
                HomeFloatingWidgetsService homeFloatingWidgetsService19 = this.b;
                List list16 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService19.A(537003265);
                break;
            case 19:
                HomeFloatingWidgetsService homeFloatingWidgetsService20 = this.b;
                List list17 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService20.A(537003266);
                break;
            case 20:
                HomeFloatingWidgetsService homeFloatingWidgetsService21 = this.b;
                List list18 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService21.A(537003267);
                break;
            case 21:
                final HomeFloatingWidgetsService homeFloatingWidgetsService22 = this.b;
                if (homeFloatingWidgetsService22.f != null) {
                    Boolean bool4 = homeFloatingWidgetsService22.f947v;
                    final int i9 = 5;
                    if (bool4 == null) {
                        homeFloatingWidgetsService22.x(new h2.l() { // from class: w0.a7
                            @Override // h2.l
                            public final Object c(Object obj) {
                                switch (i9) {
                                    case 0:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService110 = homeFloatingWidgetsService22;
                                        CarPropertyManager carPropertyManager = (CarPropertyManager) obj;
                                        List list19 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "manager");
                                        Boolean boolI = homeFloatingWidgetsService110.f945t;
                                        boolean z5 = !((boolI == null && (boolI = v7.i(carPropertyManager)) == null) ? false : boolI.booleanValue());
                                        v7.v(carPropertyManager, z5);
                                        homeFloatingWidgetsService110.f945t = Boolean.valueOf(z5);
                                        homeFloatingWidgetsService110.r(new x6(homeFloatingWidgetsService110, 8));
                                        break;
                                    case 1:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService111 = homeFloatingWidgetsService22;
                                        CarPropertyManager carPropertyManager2 = (CarPropertyManager) obj;
                                        List list110 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager2, "manager");
                                        Boolean boolF = homeFloatingWidgetsService111.f948w;
                                        boolean z6 = !((boolF == null && (boolF = v7.f(carPropertyManager2)) == null) ? false : boolF.booleanValue());
                                        v7.t(carPropertyManager2, z6);
                                        homeFloatingWidgetsService111.f948w = Boolean.valueOf(z6);
                                        homeFloatingWidgetsService111.r(new x6(homeFloatingWidgetsService111, 6));
                                        break;
                                    case 2:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService112 = homeFloatingWidgetsService22;
                                        CarPropertyManager carPropertyManager3 = (CarPropertyManager) obj;
                                        List list111 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager3, "manager");
                                        Boolean boolI2 = homeFloatingWidgetsService112.f945t;
                                        boolean z7 = !((boolI2 == null && (boolI2 = v7.i(carPropertyManager3)) == null) ? false : boolI2.booleanValue());
                                        v7.v(carPropertyManager3, z7);
                                        homeFloatingWidgetsService112.f945t = Boolean.valueOf(z7);
                                        homeFloatingWidgetsService112.r(new x6(homeFloatingWidgetsService112, 12));
                                        break;
                                    case 3:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService113 = homeFloatingWidgetsService22;
                                        CarPropertyManager carPropertyManager4 = (CarPropertyManager) obj;
                                        List list112 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager4, "manager");
                                        Boolean boolH = homeFloatingWidgetsService113.f946u;
                                        boolean z8 = !((boolH == null && (boolH = v7.h(carPropertyManager4)) == null) ? false : boolH.booleanValue());
                                        v7.u(carPropertyManager4, z8);
                                        homeFloatingWidgetsService113.f946u = Boolean.valueOf(z8);
                                        homeFloatingWidgetsService113.r(new x6(homeFloatingWidgetsService113, 3));
                                        break;
                                    case 4:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService114 = homeFloatingWidgetsService22;
                                        CarPropertyManager carPropertyManager5 = (CarPropertyManager) obj;
                                        List list113 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager5, "manager");
                                        Boolean boolN = homeFloatingWidgetsService114.f949x;
                                        boolean z9 = !((boolN == null && (boolN = v7.n(carPropertyManager5)) == null) ? false : boolN.booleanValue());
                                        v7.A(carPropertyManager5, z9);
                                        homeFloatingWidgetsService114.f949x = Boolean.valueOf(z9);
                                        homeFloatingWidgetsService114.r(new x6(homeFloatingWidgetsService114, 4));
                                        break;
                                    case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService115 = homeFloatingWidgetsService22;
                                        CarPropertyManager carPropertyManager6 = (CarPropertyManager) obj;
                                        List list114 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager6, "manager");
                                        Boolean boolM = homeFloatingWidgetsService115.f947v;
                                        boolean z10 = !((boolM == null && (boolM = v7.m(carPropertyManager6)) == null) ? false : boolM.booleanValue());
                                        v7.z(carPropertyManager6, z10);
                                        homeFloatingWidgetsService115.f947v = Boolean.valueOf(z10);
                                        homeFloatingWidgetsService115.r(new x6(homeFloatingWidgetsService115, 9));
                                        break;
                                    default:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService116 = homeFloatingWidgetsService22;
                                        CarPropertyManager carPropertyManager7 = (CarPropertyManager) obj;
                                        List list115 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager7, "manager");
                                        Boolean boolD = homeFloatingWidgetsService116.A;
                                        boolean z11 = !((boolD == null && (boolD = v7.d(carPropertyManager7)) == null) ? false : boolD.booleanValue());
                                        v7.q(carPropertyManager7, z11);
                                        homeFloatingWidgetsService116.A = Boolean.valueOf(z11);
                                        homeFloatingWidgetsService116.r(new x6(homeFloatingWidgetsService116, 10));
                                        break;
                                }
                                return x1.e.f4647c;
                            }
                        });
                    } else {
                        final boolean z5 = !bool4.booleanValue();
                        homeFloatingWidgetsService22.f947v = Boolean.valueOf(z5);
                        homeFloatingWidgetsService22.K();
                        homeFloatingWidgetsService22.x(new h2.l() { // from class: w0.z6
                            @Override // h2.l
                            public final Object c(Object obj) {
                                int i10 = i9;
                                boolean z6 = z5;
                                CarPropertyManager carPropertyManager = (CarPropertyManager) obj;
                                switch (i10) {
                                    case 0:
                                        List list19 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.v(carPropertyManager, z6);
                                        break;
                                    case 1:
                                        List list110 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.t(carPropertyManager, z6);
                                        break;
                                    case 2:
                                        List list111 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.v(carPropertyManager, z6);
                                        break;
                                    case 3:
                                        List list112 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.u(carPropertyManager, z6);
                                        break;
                                    case 4:
                                        List list113 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.A(carPropertyManager, z6);
                                        break;
                                    case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                                        List list114 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.z(carPropertyManager, z6);
                                        break;
                                    default:
                                        List list115 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.q(carPropertyManager, z6);
                                        break;
                                }
                                return x1.e.f4647c;
                            }
                        });
                    }
                    break;
                }
                break;
            case 22:
                final HomeFloatingWidgetsService homeFloatingWidgetsService23 = this.b;
                if (homeFloatingWidgetsService23.f != null) {
                    Boolean bool5 = homeFloatingWidgetsService23.f946u;
                    if (bool5 == null) {
                        homeFloatingWidgetsService23.x(new h2.l() { // from class: w0.a7
                            @Override // h2.l
                            public final Object c(Object obj) {
                                switch (i6) {
                                    case 0:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService110 = homeFloatingWidgetsService23;
                                        CarPropertyManager carPropertyManager = (CarPropertyManager) obj;
                                        List list19 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "manager");
                                        Boolean boolI = homeFloatingWidgetsService110.f945t;
                                        boolean z6 = !((boolI == null && (boolI = v7.i(carPropertyManager)) == null) ? false : boolI.booleanValue());
                                        v7.v(carPropertyManager, z6);
                                        homeFloatingWidgetsService110.f945t = Boolean.valueOf(z6);
                                        homeFloatingWidgetsService110.r(new x6(homeFloatingWidgetsService110, 8));
                                        break;
                                    case 1:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService111 = homeFloatingWidgetsService23;
                                        CarPropertyManager carPropertyManager2 = (CarPropertyManager) obj;
                                        List list110 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager2, "manager");
                                        Boolean boolF = homeFloatingWidgetsService111.f948w;
                                        boolean z7 = !((boolF == null && (boolF = v7.f(carPropertyManager2)) == null) ? false : boolF.booleanValue());
                                        v7.t(carPropertyManager2, z7);
                                        homeFloatingWidgetsService111.f948w = Boolean.valueOf(z7);
                                        homeFloatingWidgetsService111.r(new x6(homeFloatingWidgetsService111, 6));
                                        break;
                                    case 2:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService112 = homeFloatingWidgetsService23;
                                        CarPropertyManager carPropertyManager3 = (CarPropertyManager) obj;
                                        List list111 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager3, "manager");
                                        Boolean boolI2 = homeFloatingWidgetsService112.f945t;
                                        boolean z8 = !((boolI2 == null && (boolI2 = v7.i(carPropertyManager3)) == null) ? false : boolI2.booleanValue());
                                        v7.v(carPropertyManager3, z8);
                                        homeFloatingWidgetsService112.f945t = Boolean.valueOf(z8);
                                        homeFloatingWidgetsService112.r(new x6(homeFloatingWidgetsService112, 12));
                                        break;
                                    case 3:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService113 = homeFloatingWidgetsService23;
                                        CarPropertyManager carPropertyManager4 = (CarPropertyManager) obj;
                                        List list112 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager4, "manager");
                                        Boolean boolH = homeFloatingWidgetsService113.f946u;
                                        boolean z9 = !((boolH == null && (boolH = v7.h(carPropertyManager4)) == null) ? false : boolH.booleanValue());
                                        v7.u(carPropertyManager4, z9);
                                        homeFloatingWidgetsService113.f946u = Boolean.valueOf(z9);
                                        homeFloatingWidgetsService113.r(new x6(homeFloatingWidgetsService113, 3));
                                        break;
                                    case 4:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService114 = homeFloatingWidgetsService23;
                                        CarPropertyManager carPropertyManager5 = (CarPropertyManager) obj;
                                        List list113 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager5, "manager");
                                        Boolean boolN = homeFloatingWidgetsService114.f949x;
                                        boolean z10 = !((boolN == null && (boolN = v7.n(carPropertyManager5)) == null) ? false : boolN.booleanValue());
                                        v7.A(carPropertyManager5, z10);
                                        homeFloatingWidgetsService114.f949x = Boolean.valueOf(z10);
                                        homeFloatingWidgetsService114.r(new x6(homeFloatingWidgetsService114, 4));
                                        break;
                                    case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService115 = homeFloatingWidgetsService23;
                                        CarPropertyManager carPropertyManager6 = (CarPropertyManager) obj;
                                        List list114 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager6, "manager");
                                        Boolean boolM = homeFloatingWidgetsService115.f947v;
                                        boolean z11 = !((boolM == null && (boolM = v7.m(carPropertyManager6)) == null) ? false : boolM.booleanValue());
                                        v7.z(carPropertyManager6, z11);
                                        homeFloatingWidgetsService115.f947v = Boolean.valueOf(z11);
                                        homeFloatingWidgetsService115.r(new x6(homeFloatingWidgetsService115, 9));
                                        break;
                                    default:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService116 = homeFloatingWidgetsService23;
                                        CarPropertyManager carPropertyManager7 = (CarPropertyManager) obj;
                                        List list115 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager7, "manager");
                                        Boolean boolD = homeFloatingWidgetsService116.A;
                                        boolean z12 = !((boolD == null && (boolD = v7.d(carPropertyManager7)) == null) ? false : boolD.booleanValue());
                                        v7.q(carPropertyManager7, z12);
                                        homeFloatingWidgetsService116.A = Boolean.valueOf(z12);
                                        homeFloatingWidgetsService116.r(new x6(homeFloatingWidgetsService116, 10));
                                        break;
                                }
                                return x1.e.f4647c;
                            }
                        });
                    } else {
                        final boolean z6 = !bool5.booleanValue();
                        homeFloatingWidgetsService23.f946u = Boolean.valueOf(z6);
                        homeFloatingWidgetsService23.K();
                        homeFloatingWidgetsService23.x(new h2.l() { // from class: w0.z6
                            @Override // h2.l
                            public final Object c(Object obj) {
                                int i10 = i6;
                                boolean z7 = z6;
                                CarPropertyManager carPropertyManager = (CarPropertyManager) obj;
                                switch (i10) {
                                    case 0:
                                        List list19 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.v(carPropertyManager, z7);
                                        break;
                                    case 1:
                                        List list110 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.t(carPropertyManager, z7);
                                        break;
                                    case 2:
                                        List list111 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.v(carPropertyManager, z7);
                                        break;
                                    case 3:
                                        List list112 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.u(carPropertyManager, z7);
                                        break;
                                    case 4:
                                        List list113 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.A(carPropertyManager, z7);
                                        break;
                                    case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                                        List list114 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.z(carPropertyManager, z7);
                                        break;
                                    default:
                                        List list115 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.q(carPropertyManager, z7);
                                        break;
                                }
                                return x1.e.f4647c;
                            }
                        });
                    }
                    break;
                }
                break;
            case 23:
                final HomeFloatingWidgetsService homeFloatingWidgetsService24 = this.b;
                if (homeFloatingWidgetsService24.f != null) {
                    Boolean bool6 = homeFloatingWidgetsService24.f948w;
                    if (bool6 == null) {
                        homeFloatingWidgetsService24.x(new h2.l() { // from class: w0.a7
                            @Override // h2.l
                            public final Object c(Object obj) {
                                switch (i8) {
                                    case 0:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService110 = homeFloatingWidgetsService24;
                                        CarPropertyManager carPropertyManager = (CarPropertyManager) obj;
                                        List list19 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "manager");
                                        Boolean boolI = homeFloatingWidgetsService110.f945t;
                                        boolean z7 = !((boolI == null && (boolI = v7.i(carPropertyManager)) == null) ? false : boolI.booleanValue());
                                        v7.v(carPropertyManager, z7);
                                        homeFloatingWidgetsService110.f945t = Boolean.valueOf(z7);
                                        homeFloatingWidgetsService110.r(new x6(homeFloatingWidgetsService110, 8));
                                        break;
                                    case 1:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService111 = homeFloatingWidgetsService24;
                                        CarPropertyManager carPropertyManager2 = (CarPropertyManager) obj;
                                        List list110 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager2, "manager");
                                        Boolean boolF = homeFloatingWidgetsService111.f948w;
                                        boolean z8 = !((boolF == null && (boolF = v7.f(carPropertyManager2)) == null) ? false : boolF.booleanValue());
                                        v7.t(carPropertyManager2, z8);
                                        homeFloatingWidgetsService111.f948w = Boolean.valueOf(z8);
                                        homeFloatingWidgetsService111.r(new x6(homeFloatingWidgetsService111, 6));
                                        break;
                                    case 2:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService112 = homeFloatingWidgetsService24;
                                        CarPropertyManager carPropertyManager3 = (CarPropertyManager) obj;
                                        List list111 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager3, "manager");
                                        Boolean boolI2 = homeFloatingWidgetsService112.f945t;
                                        boolean z9 = !((boolI2 == null && (boolI2 = v7.i(carPropertyManager3)) == null) ? false : boolI2.booleanValue());
                                        v7.v(carPropertyManager3, z9);
                                        homeFloatingWidgetsService112.f945t = Boolean.valueOf(z9);
                                        homeFloatingWidgetsService112.r(new x6(homeFloatingWidgetsService112, 12));
                                        break;
                                    case 3:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService113 = homeFloatingWidgetsService24;
                                        CarPropertyManager carPropertyManager4 = (CarPropertyManager) obj;
                                        List list112 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager4, "manager");
                                        Boolean boolH = homeFloatingWidgetsService113.f946u;
                                        boolean z10 = !((boolH == null && (boolH = v7.h(carPropertyManager4)) == null) ? false : boolH.booleanValue());
                                        v7.u(carPropertyManager4, z10);
                                        homeFloatingWidgetsService113.f946u = Boolean.valueOf(z10);
                                        homeFloatingWidgetsService113.r(new x6(homeFloatingWidgetsService113, 3));
                                        break;
                                    case 4:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService114 = homeFloatingWidgetsService24;
                                        CarPropertyManager carPropertyManager5 = (CarPropertyManager) obj;
                                        List list113 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager5, "manager");
                                        Boolean boolN = homeFloatingWidgetsService114.f949x;
                                        boolean z11 = !((boolN == null && (boolN = v7.n(carPropertyManager5)) == null) ? false : boolN.booleanValue());
                                        v7.A(carPropertyManager5, z11);
                                        homeFloatingWidgetsService114.f949x = Boolean.valueOf(z11);
                                        homeFloatingWidgetsService114.r(new x6(homeFloatingWidgetsService114, 4));
                                        break;
                                    case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService115 = homeFloatingWidgetsService24;
                                        CarPropertyManager carPropertyManager6 = (CarPropertyManager) obj;
                                        List list114 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager6, "manager");
                                        Boolean boolM = homeFloatingWidgetsService115.f947v;
                                        boolean z12 = !((boolM == null && (boolM = v7.m(carPropertyManager6)) == null) ? false : boolM.booleanValue());
                                        v7.z(carPropertyManager6, z12);
                                        homeFloatingWidgetsService115.f947v = Boolean.valueOf(z12);
                                        homeFloatingWidgetsService115.r(new x6(homeFloatingWidgetsService115, 9));
                                        break;
                                    default:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService116 = homeFloatingWidgetsService24;
                                        CarPropertyManager carPropertyManager7 = (CarPropertyManager) obj;
                                        List list115 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager7, "manager");
                                        Boolean boolD = homeFloatingWidgetsService116.A;
                                        boolean z13 = !((boolD == null && (boolD = v7.d(carPropertyManager7)) == null) ? false : boolD.booleanValue());
                                        v7.q(carPropertyManager7, z13);
                                        homeFloatingWidgetsService116.A = Boolean.valueOf(z13);
                                        homeFloatingWidgetsService116.r(new x6(homeFloatingWidgetsService116, 10));
                                        break;
                                }
                                return x1.e.f4647c;
                            }
                        });
                    } else {
                        final boolean z7 = !bool6.booleanValue();
                        homeFloatingWidgetsService24.f948w = Boolean.valueOf(z7);
                        homeFloatingWidgetsService24.K();
                        homeFloatingWidgetsService24.x(new h2.l() { // from class: w0.z6
                            @Override // h2.l
                            public final Object c(Object obj) {
                                int i10 = i8;
                                boolean z8 = z7;
                                CarPropertyManager carPropertyManager = (CarPropertyManager) obj;
                                switch (i10) {
                                    case 0:
                                        List list19 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.v(carPropertyManager, z8);
                                        break;
                                    case 1:
                                        List list110 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.t(carPropertyManager, z8);
                                        break;
                                    case 2:
                                        List list111 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.v(carPropertyManager, z8);
                                        break;
                                    case 3:
                                        List list112 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.u(carPropertyManager, z8);
                                        break;
                                    case 4:
                                        List list113 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.A(carPropertyManager, z8);
                                        break;
                                    case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                                        List list114 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.z(carPropertyManager, z8);
                                        break;
                                    default:
                                        List list115 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.q(carPropertyManager, z8);
                                        break;
                                }
                                return x1.e.f4647c;
                            }
                        });
                    }
                    break;
                }
                break;
            case 24:
                final HomeFloatingWidgetsService homeFloatingWidgetsService25 = this.b;
                if (homeFloatingWidgetsService25.f != null) {
                    Boolean bool7 = homeFloatingWidgetsService25.f949x;
                    if (bool7 == null) {
                        homeFloatingWidgetsService25.x(new h2.l() { // from class: w0.a7
                            @Override // h2.l
                            public final Object c(Object obj) {
                                switch (i7) {
                                    case 0:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService110 = homeFloatingWidgetsService25;
                                        CarPropertyManager carPropertyManager = (CarPropertyManager) obj;
                                        List list19 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "manager");
                                        Boolean boolI = homeFloatingWidgetsService110.f945t;
                                        boolean z8 = !((boolI == null && (boolI = v7.i(carPropertyManager)) == null) ? false : boolI.booleanValue());
                                        v7.v(carPropertyManager, z8);
                                        homeFloatingWidgetsService110.f945t = Boolean.valueOf(z8);
                                        homeFloatingWidgetsService110.r(new x6(homeFloatingWidgetsService110, 8));
                                        break;
                                    case 1:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService111 = homeFloatingWidgetsService25;
                                        CarPropertyManager carPropertyManager2 = (CarPropertyManager) obj;
                                        List list110 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager2, "manager");
                                        Boolean boolF = homeFloatingWidgetsService111.f948w;
                                        boolean z9 = !((boolF == null && (boolF = v7.f(carPropertyManager2)) == null) ? false : boolF.booleanValue());
                                        v7.t(carPropertyManager2, z9);
                                        homeFloatingWidgetsService111.f948w = Boolean.valueOf(z9);
                                        homeFloatingWidgetsService111.r(new x6(homeFloatingWidgetsService111, 6));
                                        break;
                                    case 2:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService112 = homeFloatingWidgetsService25;
                                        CarPropertyManager carPropertyManager3 = (CarPropertyManager) obj;
                                        List list111 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager3, "manager");
                                        Boolean boolI2 = homeFloatingWidgetsService112.f945t;
                                        boolean z10 = !((boolI2 == null && (boolI2 = v7.i(carPropertyManager3)) == null) ? false : boolI2.booleanValue());
                                        v7.v(carPropertyManager3, z10);
                                        homeFloatingWidgetsService112.f945t = Boolean.valueOf(z10);
                                        homeFloatingWidgetsService112.r(new x6(homeFloatingWidgetsService112, 12));
                                        break;
                                    case 3:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService113 = homeFloatingWidgetsService25;
                                        CarPropertyManager carPropertyManager4 = (CarPropertyManager) obj;
                                        List list112 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager4, "manager");
                                        Boolean boolH = homeFloatingWidgetsService113.f946u;
                                        boolean z11 = !((boolH == null && (boolH = v7.h(carPropertyManager4)) == null) ? false : boolH.booleanValue());
                                        v7.u(carPropertyManager4, z11);
                                        homeFloatingWidgetsService113.f946u = Boolean.valueOf(z11);
                                        homeFloatingWidgetsService113.r(new x6(homeFloatingWidgetsService113, 3));
                                        break;
                                    case 4:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService114 = homeFloatingWidgetsService25;
                                        CarPropertyManager carPropertyManager5 = (CarPropertyManager) obj;
                                        List list113 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager5, "manager");
                                        Boolean boolN = homeFloatingWidgetsService114.f949x;
                                        boolean z12 = !((boolN == null && (boolN = v7.n(carPropertyManager5)) == null) ? false : boolN.booleanValue());
                                        v7.A(carPropertyManager5, z12);
                                        homeFloatingWidgetsService114.f949x = Boolean.valueOf(z12);
                                        homeFloatingWidgetsService114.r(new x6(homeFloatingWidgetsService114, 4));
                                        break;
                                    case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService115 = homeFloatingWidgetsService25;
                                        CarPropertyManager carPropertyManager6 = (CarPropertyManager) obj;
                                        List list114 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager6, "manager");
                                        Boolean boolM = homeFloatingWidgetsService115.f947v;
                                        boolean z13 = !((boolM == null && (boolM = v7.m(carPropertyManager6)) == null) ? false : boolM.booleanValue());
                                        v7.z(carPropertyManager6, z13);
                                        homeFloatingWidgetsService115.f947v = Boolean.valueOf(z13);
                                        homeFloatingWidgetsService115.r(new x6(homeFloatingWidgetsService115, 9));
                                        break;
                                    default:
                                        HomeFloatingWidgetsService homeFloatingWidgetsService116 = homeFloatingWidgetsService25;
                                        CarPropertyManager carPropertyManager7 = (CarPropertyManager) obj;
                                        List list115 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager7, "manager");
                                        Boolean boolD = homeFloatingWidgetsService116.A;
                                        boolean z14 = !((boolD == null && (boolD = v7.d(carPropertyManager7)) == null) ? false : boolD.booleanValue());
                                        v7.q(carPropertyManager7, z14);
                                        homeFloatingWidgetsService116.A = Boolean.valueOf(z14);
                                        homeFloatingWidgetsService116.r(new x6(homeFloatingWidgetsService116, 10));
                                        break;
                                }
                                return x1.e.f4647c;
                            }
                        });
                    } else {
                        final boolean z8 = !bool7.booleanValue();
                        homeFloatingWidgetsService25.f949x = Boolean.valueOf(z8);
                        homeFloatingWidgetsService25.K();
                        homeFloatingWidgetsService25.x(new h2.l() { // from class: w0.z6
                            @Override // h2.l
                            public final Object c(Object obj) {
                                int i10 = i7;
                                boolean z9 = z8;
                                CarPropertyManager carPropertyManager = (CarPropertyManager) obj;
                                switch (i10) {
                                    case 0:
                                        List list19 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.v(carPropertyManager, z9);
                                        break;
                                    case 1:
                                        List list110 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.t(carPropertyManager, z9);
                                        break;
                                    case 2:
                                        List list111 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.v(carPropertyManager, z9);
                                        break;
                                    case 3:
                                        List list112 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.u(carPropertyManager, z9);
                                        break;
                                    case 4:
                                        List list113 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.A(carPropertyManager, z9);
                                        break;
                                    case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                                        List list114 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.z(carPropertyManager, z9);
                                        break;
                                    default:
                                        List list115 = HomeFloatingWidgetsService.f926a0;
                                        i2.g.e(carPropertyManager, "it");
                                        v7.q(carPropertyManager, z9);
                                        break;
                                }
                                return x1.e.f4647c;
                            }
                        });
                    }
                    break;
                }
                break;
            case 25:
                HomeFloatingWidgetsService homeFloatingWidgetsService26 = this.b;
                List list19 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService26.o(true);
                break;
            case 26:
                HomeFloatingWidgetsService homeFloatingWidgetsService27 = this.b;
                List list20 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService27.o(false);
                break;
            case 27:
                HomeFloatingWidgetsService homeFloatingWidgetsService28 = this.b;
                List list21 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService28.p();
                break;
            case 28:
                HomeFloatingWidgetsService homeFloatingWidgetsService29 = this.b;
                List list22 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService29.p();
                break;
            default:
                HomeFloatingWidgetsService homeFloatingWidgetsService30 = this.b;
                List list23 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService30.G(-1.0f);
                break;
        }
    }
}
