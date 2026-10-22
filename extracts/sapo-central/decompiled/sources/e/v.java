package e;

import android.content.Context;
import android.content.IntentFilter;
import android.location.Location;
import android.location.LocationManager;
import android.os.PowerManager;
import android.util.Log;
import java.util.Calendar;

/* JADX INFO: loaded from: classes.dex */
public final class v extends androidx.fragment.app.h {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f1662c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ y f1663d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f1664e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(y yVar, androidx.fragment.app.f fVar) {
        super(yVar);
        this.f1663d = yVar;
        this.f1664e = fVar;
    }

    @Override // androidx.fragment.app.h
    public final IntentFilter e() {
        switch (this.f1662c) {
            case 0:
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
                return intentFilter;
            default:
                IntentFilter intentFilter2 = new IntentFilter();
                intentFilter2.addAction("android.intent.action.TIME_SET");
                intentFilter2.addAction("android.intent.action.TIMEZONE_CHANGED");
                intentFilter2.addAction("android.intent.action.TIME_TICK");
                return intentFilter2;
        }
    }

    @Override // androidx.fragment.app.h
    public final int f() {
        Location location;
        boolean z2;
        long j3;
        Location lastKnownLocation;
        switch (this.f1662c) {
            case 0:
                return ((PowerManager) this.f1664e).isPowerSaveMode() ? 2 : 1;
            default:
                androidx.fragment.app.f fVar = (androidx.fragment.app.f) this.f1664e;
                h0 h0Var = (h0) fVar.f414d;
                LocationManager locationManager = (LocationManager) fVar.f413c;
                if (h0Var.b <= System.currentTimeMillis()) {
                    Context context = (Context) fVar.b;
                    Location lastKnownLocation2 = null;
                    if (a1.b.m(context, "android.permission.ACCESS_COARSE_LOCATION") == 0) {
                        try {
                            lastKnownLocation = locationManager.isProviderEnabled("network") ? locationManager.getLastKnownLocation("network") : null;
                        } catch (Exception e3) {
                            Log.d("TwilightManager", "Failed to get last known location", e3);
                        }
                        location = lastKnownLocation;
                    } else {
                        location = null;
                    }
                    if (a1.b.m(context, "android.permission.ACCESS_FINE_LOCATION") == 0) {
                        try {
                            if (locationManager.isProviderEnabled("gps")) {
                                lastKnownLocation2 = locationManager.getLastKnownLocation("gps");
                            }
                        } catch (Exception e4) {
                            Log.d("TwilightManager", "Failed to get last known location", e4);
                        }
                    }
                    if (lastKnownLocation2 == null || location == null ? lastKnownLocation2 != null : lastKnownLocation2.getTime() > location.getTime()) {
                        location = lastKnownLocation2;
                    }
                    z2 = false;
                    if (location != null) {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        if (g0.f1603d == null) {
                            g0.f1603d = new g0();
                        }
                        g0 g0Var = g0.f1603d;
                        g0Var.a(jCurrentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
                        g0Var.a(jCurrentTimeMillis, location.getLatitude(), location.getLongitude());
                        z2 = g0Var.f1605c == 1;
                        long j4 = g0Var.b;
                        long j5 = g0Var.f1604a;
                        g0Var.a(86400000 + jCurrentTimeMillis, location.getLatitude(), location.getLongitude());
                        long j6 = g0Var.b;
                        if (j4 == -1 || j5 == -1) {
                            j3 = jCurrentTimeMillis + 43200000;
                        } else {
                            if (jCurrentTimeMillis > j5) {
                                j4 = j6;
                            } else if (jCurrentTimeMillis > j4) {
                                j4 = j5;
                            }
                            j3 = j4 + 60000;
                        }
                        h0Var.f1607a = z2;
                        h0Var.b = j3;
                    } else {
                        Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
                        int i3 = Calendar.getInstance().get(11);
                        if (i3 < 6 || i3 >= 22) {
                            z2 = true;
                        }
                    }
                    break;
                } else {
                    z2 = h0Var.f1607a;
                }
                return z2 ? 2 : 1;
        }
    }

    @Override // androidx.fragment.app.h
    public final void h() {
        switch (this.f1662c) {
            case 0:
                this.f1663d.t(true, true);
                break;
            default:
                this.f1663d.t(true, true);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(y yVar, Context context) {
        super(yVar);
        this.f1663d = yVar;
        this.f1664e = (PowerManager) context.getApplicationContext().getSystemService("power");
    }
}
