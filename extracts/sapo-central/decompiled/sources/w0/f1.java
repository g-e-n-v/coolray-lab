package w0;

import android.car.Car;
import android.car.hardware.property.CarPropertyManager;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import com.ex.auto.CentralWatchdogService;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class f1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CentralWatchdogService f3566a;
    public final SharedPreferences b;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Car f3570g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public CarPropertyManager f3571h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f3572i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f3573j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final a1 f3575l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final e1 f3576m;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Handler f3567c = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ExecutorService f3568d = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AtomicBoolean f3569e = new AtomicBoolean(false);
    public final y0 f = new y0();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int[] f3574k = {289408000, 289408001};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final androidx.activity.d f3577n = new androidx.activity.d(13, this);

    public f1(CentralWatchdogService centralWatchdogService) {
        this.f3566a = centralWatchdogService;
        this.b = centralWatchdogService.getSharedPreferences("tela_preta_prefs", 0);
        int i3 = 0;
        this.f3575l = new a1(i3, this);
        this.f3576m = new e1(i3, this);
    }

    public final void a() {
        this.f3573j = true;
        this.f3572i++;
        this.b.unregisterOnSharedPreferenceChangeListener(this.f3575l);
        this.f3567c.removeCallbacksAndMessages(null);
        try {
            CarPropertyManager carPropertyManager = this.f3571h;
            if (carPropertyManager != null) {
                carPropertyManager.unregisterCallback(this.f3576m);
            }
        } catch (Exception unused) {
        }
        this.f3571h = null;
        try {
            Car car = this.f3570g;
            if (car != null) {
                car.disconnect();
            }
        } catch (Exception unused2) {
        }
        this.f3570g = null;
        this.f3568d.shutdownNow();
    }

    public final void b() {
        try {
            this.f3570g = Car.createCar(this.f3566a, this.f3567c, 0L, new z0(this, this.f3572i, 0));
        } catch (Exception e3) {
            this.f3570g = null;
            ae.b("CameraOnDrive", "Conexão Car indisponível: " + e3.getMessage(), false);
        }
    }

    public final boolean c() {
        wd wdVar = wd.f4450a;
        return !wd.a(this.f3566a) && this.b.getBoolean("camera_on_drive", false);
    }

    public final void d() {
        if (this.f3573j) {
            return;
        }
        boolean zC = c();
        androidx.activity.d dVar = this.f3577n;
        Handler handler = this.f3567c;
        if (zC) {
            if (this.f3570g == null) {
                b();
            }
            handler.removeCallbacks(dVar);
            handler.post(dVar);
            return;
        }
        this.f3572i++;
        handler.removeCallbacks(dVar);
        try {
            CarPropertyManager carPropertyManager = this.f3571h;
            if (carPropertyManager != null) {
                carPropertyManager.unregisterCallback(this.f3576m);
            }
        } catch (Exception unused) {
        }
        this.f3571h = null;
        try {
            Car car = this.f3570g;
            if (car != null) {
                car.disconnect();
            }
        } catch (Exception unused2) {
        }
        this.f3570g = null;
        this.f.f4555a = false;
    }

    public final void e() {
        CarPropertyManager carPropertyManager = this.f3571h;
        if (carPropertyManager != null && !this.f3573j && c() && this.f3569e.compareAndSet(false, true)) {
            this.f3568d.execute(new v(this, carPropertyManager, this.f3572i, 1));
        }
    }
}
