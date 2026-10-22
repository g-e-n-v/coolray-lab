package com.geely.driveregenfloater;

import a1.c;
import a1.d;
import a1.g;
import a1.o;
import a1.p;
import a1.r;
import android.R;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.car.Car;
import android.car.hardware.CarPropertyValue;
import android.car.hardware.property.CarPropertyManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import com.ex.auto.CentralWatchdogService;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import java.util.concurrent.atomic.AtomicInteger;
import w0.ab;
import w0.e1;
import w0.e8;
import w0.p1;
import w0.p2;
import w0.v2;
import w0.xa;
import w0.yd;
import z0.e;

/* JADX INFO: loaded from: classes.dex */
public class DriveRegenFloaterService extends Service {
    public static boolean M = false;
    public static final int[] N = {0, 1, 16777216};
    public static final int[] O = {0, 1};
    public int C;
    public int D;
    public float E;
    public float F;
    public boolean G;
    public final e K;
    public final e1 L;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WindowManager f1261a;
    public View b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public View f1262c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public View f1263d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public View f1264e;
    public View f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public TextView f1265g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public TextView f1266h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public TextView f1267i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public TextView f1268j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public TextView f1269k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public TextView f1270l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public TextView f1271m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public TextView f1272n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public TextView f1273o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public volatile Car f1274p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public volatile CarPropertyManager f1275q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public SharedPreferences f1276r;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public HandlerThread f1278t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Handler f1279u;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public WindowManager.LayoutParams f1281w;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final Handler f1277s = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final d f1280v = new d(1);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f1282x = 537003266;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f1283y = 570491138;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f1284z = false;
    public volatile int A = -1;
    public final AtomicInteger B = new AtomicInteger();
    public final r H = new r(15, this);
    public final androidx.activity.d I = new androidx.activity.d(19, this);
    public final e J = new e(this, 0);

    public DriveRegenFloaterService() {
        int i3 = 1;
        this.K = new e(this, i3);
        this.L = new e1(i3, this);
    }

    public static boolean f(int i3) {
        return i3 == 570491137 || i3 == 570491138 || i3 == 570491139;
    }

    public static boolean g(int i3) {
        return i3 == 537003265 || i3 == 537003266 || i3 == 537003267;
    }

    public static SharedPreferences h(Context context) {
        Context applicationContext = context.getApplicationContext();
        Context contextCreateDeviceProtectedStorageContext = applicationContext.createDeviceProtectedStorageContext();
        return contextCreateDeviceProtectedStorageContext != null ? contextCreateDeviceProtectedStorageContext.getSharedPreferences("drive_regen_prefs", 0) : applicationContext.getSharedPreferences("drive_regen_prefs", 0);
    }

    public static void r(TextView textView, boolean z2) {
        textView.setAlpha(z2 ? 1.0f : 0.6f);
        textView.setTextColor(z2 ? -1 : Color.parseColor("#CCFFFFFF"));
    }

    public final void a(int i3, String str) {
        if (this.f1275q == null) {
            q("Car nao pronto");
            return;
        }
        int[] iArr = N;
        for (int i4 = 0; i4 < 3; i4++) {
            int i5 = iArr[i4];
            if (p1.k(this.f1275q, 570491136, i5, i3)) {
                Log.i("DriveRegenFloater", "setDriveMode area=0x" + Integer.toHexString(i5) + " val=" + i3 + " ok (" + str + ")");
                StringBuilder sb = new StringBuilder("Aplicado ");
                sb.append(str);
                q(sb.toString());
                return;
            }
        }
        q("Erro drive: escrita falhou");
        Log.e("DriveRegenFloater", "setDriveMode failed all areas val=" + i3 + " (" + str + ")");
    }

    public final void b(int i3, String str) {
        if (this.f1275q == null) {
            q("Car nao pronto");
            return;
        }
        int[] iArr = O;
        for (int i4 = 0; i4 < 2; i4++) {
            int i5 = iArr[i4];
            if (p1.k(this.f1275q, 537003264, i5, i3)) {
                Log.i("DriveRegenFloater", "setRegen area=0x" + Integer.toHexString(i5) + " val=" + i3 + " ok (" + str + ")");
                StringBuilder sb = new StringBuilder("Aplicado ");
                sb.append(str);
                q(sb.toString());
                return;
            }
        }
        q("Erro regen: escrita falhou");
        Log.e("DriveRegenFloater", "setRegen failed all areas val=" + i3 + " (" + str + ")");
    }

    public final void c(final String str) {
        if (this.f1275q == null || this.f1280v.b) {
            return;
        }
        final int i3 = this.f1276r.getInt("saved_regen", 537003266);
        final int i4 = this.f1276r.getInt("saved_drive", 570491138);
        final int iIncrementAndGet = this.B.incrementAndGet();
        long j3 = this.f1280v.f24a.get();
        char c3 = 1;
        this.f1277s.post(new xa(this, i3, i4, true));
        a(i4, str.concat("_drive"));
        DriveRegenFloaterService driveRegenFloaterService = this;
        driveRegenFloaterService.i(new Runnable() { // from class: z0.b
            @Override // java.lang.Runnable
            public final void run() {
                DriveRegenFloaterService driveRegenFloaterService2 = this.f4682a;
                int i5 = iIncrementAndGet;
                int i6 = i3;
                String str2 = str;
                if (!DriveRegenFloaterService.M) {
                    driveRegenFloaterService2.getClass();
                    return;
                }
                if (i5 != driveRegenFloaterService2.B.get() || driveRegenFloaterService2.f1275q == null) {
                    return;
                }
                driveRegenFloaterService2.b(i6, str2 + "_regen");
            }
        }, 450L, j3);
        final int i5 = 0;
        if (f(i4)) {
            long[] jArr = {2000, 4500, 9000, 18000, 35000, 62000};
            for (int i6 = 0; i6 < 6; i6++) {
                long j4 = jArr[i6];
                final char c4 = c3 == true ? 1 : 0;
                driveRegenFloaterService.i(new Runnable(this) { // from class: z0.d
                    public final /* synthetic */ DriveRegenFloaterService b;

                    {
                        this.b = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (c4) {
                            case 0:
                                DriveRegenFloaterService driveRegenFloaterService2 = this.b;
                                int i7 = iIncrementAndGet;
                                int i8 = i4;
                                if (DriveRegenFloaterService.M && i7 == driveRegenFloaterService2.B.get() && driveRegenFloaterService2.f1275q != null) {
                                    try {
                                        int iL = driveRegenFloaterService2.l();
                                        if (!DriveRegenFloaterService.g(iL) || iL != i8) {
                                            Log.i("DriveRegenFloater", "Reassert regen: HAL=" + iL + " want=" + i8 + " (gen=" + i7 + ")");
                                            driveRegenFloaterService2.b(i8, "regen_reassert");
                                        }
                                    } catch (Exception e3) {
                                        Log.d("DriveRegenFloater", "regen readback: " + e3.getMessage());
                                        return;
                                    }
                                    break;
                                }
                                break;
                            default:
                                DriveRegenFloaterService driveRegenFloaterService3 = this.b;
                                int i9 = iIncrementAndGet;
                                int i10 = i4;
                                if (DriveRegenFloaterService.M && i9 == driveRegenFloaterService3.B.get() && driveRegenFloaterService3.f1275q != null) {
                                    try {
                                        int iK = driveRegenFloaterService3.k();
                                        if (!DriveRegenFloaterService.f(iK) || iK != i10) {
                                            Log.i("DriveRegenFloater", "Reassert drive: HAL=" + iK + " want=" + i10 + " (gen=" + i9 + ")");
                                            driveRegenFloaterService3.a(i10, "drive_reassert");
                                        }
                                    } catch (Exception e4) {
                                        Log.d("DriveRegenFloater", "drive readback: " + e4.getMessage());
                                    }
                                    break;
                                }
                                break;
                        }
                    }
                }, j4, j3);
            }
        }
        if (g(i3)) {
            long[] jArr2 = {1800, 4200, 8000, 16000, 32000};
            int i7 = 0;
            while (i7 < 5) {
                driveRegenFloaterService.i(new Runnable(this) { // from class: z0.d
                    public final /* synthetic */ DriveRegenFloaterService b;

                    {
                        this.b = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i5) {
                            case 0:
                                DriveRegenFloaterService driveRegenFloaterService2 = this.b;
                                int i8 = iIncrementAndGet;
                                int i9 = i3;
                                if (DriveRegenFloaterService.M && i8 == driveRegenFloaterService2.B.get() && driveRegenFloaterService2.f1275q != null) {
                                    try {
                                        int iL = driveRegenFloaterService2.l();
                                        if (!DriveRegenFloaterService.g(iL) || iL != i9) {
                                            Log.i("DriveRegenFloater", "Reassert regen: HAL=" + iL + " want=" + i9 + " (gen=" + i8 + ")");
                                            driveRegenFloaterService2.b(i9, "regen_reassert");
                                        }
                                    } catch (Exception e3) {
                                        Log.d("DriveRegenFloater", "regen readback: " + e3.getMessage());
                                        return;
                                    }
                                    break;
                                }
                                break;
                            default:
                                DriveRegenFloaterService driveRegenFloaterService3 = this.b;
                                int i10 = iIncrementAndGet;
                                int i11 = i3;
                                if (DriveRegenFloaterService.M && i10 == driveRegenFloaterService3.B.get() && driveRegenFloaterService3.f1275q != null) {
                                    try {
                                        int iK = driveRegenFloaterService3.k();
                                        if (!DriveRegenFloaterService.f(iK) || iK != i11) {
                                            Log.i("DriveRegenFloater", "Reassert drive: HAL=" + iK + " want=" + i11 + " (gen=" + i10 + ")");
                                            driveRegenFloaterService3.a(i11, "drive_reassert");
                                        }
                                    } catch (Exception e4) {
                                        Log.d("DriveRegenFloater", "drive readback: " + e4.getMessage());
                                    }
                                    break;
                                }
                                break;
                        }
                    }
                }, jArr2[i7], j3);
                i7++;
                driveRegenFloaterService = this;
            }
        }
    }

    public final void d() {
        this.f1284z = false;
        this.f1263d.setVisibility(8);
        this.f1262c.setVisibility(0);
        this.f1277s.removeCallbacks(this.H);
        n();
    }

    public final void e() {
        this.f1284z = true;
        this.f1262c.setVisibility(8);
        this.f1263d.setVisibility(0);
        Handler handler = this.f1277s;
        r rVar = this.H;
        handler.removeCallbacks(rVar);
        handler.postDelayed(rVar, 5000L);
        n();
    }

    public final void i(Runnable runnable, long j3, long j4) {
        Handler handler = this.f1279u;
        if (handler == null || this.f1280v.b) {
            return;
        }
        d dVar = this.f1280v;
        r rVar = new r(14, runnable);
        dVar.getClass();
        handler.postDelayed(new c(dVar, j4, rVar, 1), j3);
    }

    public final void j(Runnable runnable) {
        Handler handler = this.f1279u;
        if (handler == null || this.f1280v.b) {
            return;
        }
        long j3 = this.f1280v.f24a.get();
        d dVar = this.f1280v;
        ab abVar = new ab(this, 16, runnable);
        dVar.getClass();
        handler.post(new c(dVar, j3, abVar, 1));
    }

    public final int k() {
        if (this.f1275q == null) {
            return -1;
        }
        int[] iArr = N;
        for (int i3 = 0; i3 < 3; i3++) {
            try {
                CarPropertyValue property = this.f1275q.getProperty(Integer.class, 570491136, iArr[i3]);
                if (property != null && property.getStatus() == 0) {
                    int iIntValue = ((Integer) property.getValue()).intValue();
                    if (f(iIntValue)) {
                        return iIntValue;
                    }
                }
            } catch (Exception unused) {
            }
        }
        return -1;
    }

    public final int l() {
        if (this.f1275q == null) {
            return -1;
        }
        int[] iArr = O;
        for (int i3 = 0; i3 < 2; i3++) {
            try {
                CarPropertyValue property = this.f1275q.getProperty(Integer.class, 537003264, iArr[i3]);
                if (property != null && property.getStatus() == 0) {
                    int iIntValue = ((Integer) property.getValue()).intValue();
                    if (g(iIntValue)) {
                        return iIntValue;
                    }
                }
            } catch (Exception unused) {
            }
        }
        return -1;
    }

    public final void m() {
        if (this.f1275q == null) {
            return;
        }
        int i3 = this.A;
        boolean z2 = false;
        try {
            this.A = this.f1275q.getIntProperty(289408000, 0);
        } catch (Exception unused) {
        }
        if (this.A == i3) {
            this.f1277s.post(new xa(this, l(), k(), z2));
        } else {
            Log.i("DriveRegenFloater", "poll: troca de marcha -> " + this.A + ", reaplicando");
            c("poll_gear_change");
        }
    }

    public final void n() {
        int color;
        int color2;
        String str;
        int i3 = this.f1282x;
        if (i3 == 537003267) {
            color = Color.parseColor("#1FBF75");
        } else if (i3 == 537003266) {
            color = Color.parseColor("#2E7DFF");
        } else {
            color = i3 == 537003265 ? Color.parseColor("#D64545") : Color.parseColor("#666666");
        }
        int i4 = this.f1283y;
        if (i4 == 570491137) {
            color2 = Color.parseColor("#1FBF75");
        } else if (i4 == 570491138) {
            color2 = Color.parseColor("#2E7DFF");
        } else {
            color2 = i4 == 570491139 ? Color.parseColor("#D64545") : Color.parseColor("#666666");
        }
        this.f1264e.setBackgroundColor(color);
        this.f.setBackgroundColor(color2);
        TextView textView = this.f1265g;
        int i5 = this.f1282x;
        String str2 = "N/D";
        if (i5 == 537003267) {
            str = "FORTE";
        } else if (i5 == 537003266) {
            str = "MEDIA";
        } else {
            str = i5 == 537003265 ? "FRACA" : "N/D";
        }
        textView.setText("REGEN: ".concat(str));
        TextView textView2 = this.f1266h;
        int i6 = this.f1283y;
        if (i6 == 570491137) {
            str2 = "ECO";
        } else if (i6 == 570491138) {
            str2 = "CONFORT";
        } else if (i6 == 570491139) {
            str2 = "SPORT";
        }
        textView2.setText("DRIVE: ".concat(str2));
        r(this.f1268j, this.f1282x == 537003265);
        r(this.f1269k, this.f1282x == 537003266);
        r(this.f1270l, this.f1282x == 537003267);
        r(this.f1271m, this.f1283y == 570491137);
        r(this.f1272n, this.f1283y == 570491138);
        r(this.f1273o, this.f1283y == 570491139);
    }

    public final void o(int i3) {
        this.B.incrementAndGet();
        this.f1283y = i3;
        this.f1276r.edit().putInt("saved_drive", i3).apply();
        j(new z0.c(this, i3, 1));
        e();
        n();
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        M = true;
        CentralWatchdogService centralWatchdogService = CentralWatchdogService.V2;
        if (centralWatchdogService != null) {
            centralWatchdogService.f811a.post(new p2(centralWatchdogService, 29));
        }
        SharedPreferences sharedPreferencesH = h(this);
        this.f1276r = sharedPreferencesH;
        this.f1282x = sharedPreferencesH.getInt("saved_regen", 537003266);
        this.f1283y = this.f1276r.getInt("saved_drive", 570491138);
        HandlerThread handlerThread = new HandlerThread("DriveRegenCar");
        this.f1278t = handlerThread;
        handlerThread.start();
        this.f1279u = new Handler(this.f1278t.getLooper());
        ((NotificationManager) getSystemService("notification")).createNotificationChannel(new NotificationChannel("drive_regen_floater", "Drive/Regen Floater", 2));
        startForeground(9, new Notification.Builder(this, "drive_regen_floater").setContentTitle("Drive/Regen Floater").setContentText("Controle rapido de modo e regeneracao").setSmallIcon(R.drawable.ic_menu_compass).build());
        this.f1261a = (WindowManager) getSystemService("window");
        View viewInflate = LayoutInflater.from(this).inflate(com.ex.auto.R.layout.overlay_drive_regen, (ViewGroup) null);
        this.b = viewInflate;
        this.f1262c = viewInflate.findViewById(com.ex.auto.R.id.collapsed_circle);
        this.f1263d = this.b.findViewById(com.ex.auto.R.id.expanded_panel);
        this.f1264e = this.b.findViewById(com.ex.auto.R.id.top_half);
        this.f = this.b.findViewById(com.ex.auto.R.id.bottom_half);
        this.f1265g = (TextView) this.b.findViewById(com.ex.auto.R.id.tv_regen_current);
        this.f1266h = (TextView) this.b.findViewById(com.ex.auto.R.id.tv_drive_current);
        this.f1267i = (TextView) this.b.findViewById(com.ex.auto.R.id.tv_status);
        this.f1268j = (TextView) this.b.findViewById(com.ex.auto.R.id.btn_regen_low);
        this.f1269k = (TextView) this.b.findViewById(com.ex.auto.R.id.btn_regen_mid);
        this.f1270l = (TextView) this.b.findViewById(com.ex.auto.R.id.btn_regen_high);
        this.f1271m = (TextView) this.b.findViewById(com.ex.auto.R.id.btn_drive_eco);
        this.f1272n = (TextView) this.b.findViewById(com.ex.auto.R.id.btn_drive_comfort);
        this.f1273o = (TextView) this.b.findViewById(com.ex.auto.R.id.btn_drive_sport);
        final int i3 = 0;
        this.f1268j.setOnClickListener(new View.OnClickListener(this) { // from class: z0.a
            public final /* synthetic */ DriveRegenFloaterService b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i4 = i3;
                DriveRegenFloaterService driveRegenFloaterService = this.b;
                switch (i4) {
                    case 0:
                        boolean z2 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.p(537003265);
                        break;
                    case 1:
                        boolean z3 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.p(537003266);
                        break;
                    case 2:
                        boolean z4 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.p(537003267);
                        break;
                    case 3:
                        boolean z5 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.o(570491137);
                        break;
                    case 4:
                        boolean z6 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.o(570491138);
                        break;
                    default:
                        boolean z7 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.o(570491139);
                        break;
                }
            }
        });
        final int i4 = 1;
        this.f1269k.setOnClickListener(new View.OnClickListener(this) { // from class: z0.a
            public final /* synthetic */ DriveRegenFloaterService b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i5 = i4;
                DriveRegenFloaterService driveRegenFloaterService = this.b;
                switch (i5) {
                    case 0:
                        boolean z2 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.p(537003265);
                        break;
                    case 1:
                        boolean z3 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.p(537003266);
                        break;
                    case 2:
                        boolean z4 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.p(537003267);
                        break;
                    case 3:
                        boolean z5 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.o(570491137);
                        break;
                    case 4:
                        boolean z6 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.o(570491138);
                        break;
                    default:
                        boolean z7 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.o(570491139);
                        break;
                }
            }
        });
        final int i5 = 2;
        this.f1270l.setOnClickListener(new View.OnClickListener(this) { // from class: z0.a
            public final /* synthetic */ DriveRegenFloaterService b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i6 = i5;
                DriveRegenFloaterService driveRegenFloaterService = this.b;
                switch (i6) {
                    case 0:
                        boolean z2 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.p(537003265);
                        break;
                    case 1:
                        boolean z3 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.p(537003266);
                        break;
                    case 2:
                        boolean z4 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.p(537003267);
                        break;
                    case 3:
                        boolean z5 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.o(570491137);
                        break;
                    case 4:
                        boolean z6 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.o(570491138);
                        break;
                    default:
                        boolean z7 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.o(570491139);
                        break;
                }
            }
        });
        final int i6 = 3;
        this.f1271m.setOnClickListener(new View.OnClickListener(this) { // from class: z0.a
            public final /* synthetic */ DriveRegenFloaterService b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i7 = i6;
                DriveRegenFloaterService driveRegenFloaterService = this.b;
                switch (i7) {
                    case 0:
                        boolean z2 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.p(537003265);
                        break;
                    case 1:
                        boolean z3 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.p(537003266);
                        break;
                    case 2:
                        boolean z4 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.p(537003267);
                        break;
                    case 3:
                        boolean z5 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.o(570491137);
                        break;
                    case 4:
                        boolean z6 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.o(570491138);
                        break;
                    default:
                        boolean z7 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.o(570491139);
                        break;
                }
            }
        });
        final int i7 = 4;
        this.f1272n.setOnClickListener(new View.OnClickListener(this) { // from class: z0.a
            public final /* synthetic */ DriveRegenFloaterService b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i8 = i7;
                DriveRegenFloaterService driveRegenFloaterService = this.b;
                switch (i8) {
                    case 0:
                        boolean z2 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.p(537003265);
                        break;
                    case 1:
                        boolean z3 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.p(537003266);
                        break;
                    case 2:
                        boolean z4 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.p(537003267);
                        break;
                    case 3:
                        boolean z5 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.o(570491137);
                        break;
                    case 4:
                        boolean z6 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.o(570491138);
                        break;
                    default:
                        boolean z7 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.o(570491139);
                        break;
                }
            }
        });
        final int i8 = 5;
        this.f1273o.setOnClickListener(new View.OnClickListener(this) { // from class: z0.a
            public final /* synthetic */ DriveRegenFloaterService b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i9 = i8;
                DriveRegenFloaterService driveRegenFloaterService = this.b;
                switch (i9) {
                    case 0:
                        boolean z2 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.p(537003265);
                        break;
                    case 1:
                        boolean z3 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.p(537003266);
                        break;
                    case 2:
                        boolean z4 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.p(537003267);
                        break;
                    case 3:
                        boolean z5 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.o(570491137);
                        break;
                    case 4:
                        boolean z6 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.o(570491138);
                        break;
                    default:
                        boolean z7 = DriveRegenFloaterService.M;
                        driveRegenFloaterService.o(570491139);
                        break;
                }
            }
        });
        int i9 = 8;
        this.f1262c.setOnTouchListener(new o(this, i9));
        this.f1263d.setOnTouchListener(new o(this, i9));
        this.f1281w = new WindowManager.LayoutParams(-2, -2, 2038, 264, -3);
        yd ydVarG = e8.G(this, "drive_regen", 8388659, 80, 260);
        WindowManager.LayoutParams layoutParams = this.f1281w;
        layoutParams.gravity = ydVarG.f4590a;
        layoutParams.x = ydVarG.b;
        layoutParams.y = ydVarG.f4591c;
        this.f1261a.addView(this.b, layoutParams);
        View view = this.f1262c;
        view.post(new ab(this, 14, view));
        d();
        n();
        try {
            this.f1274p = Car.createCar(this, null, 0L, new p(this, 6));
        } catch (Exception e3) {
            Log.e("DriveRegenFloater", "connectCar", e3);
            q("Erro Car: " + e3.getMessage());
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        registerReceiver(this.K, intentFilter);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("UPDATE_FLOATER_ALPHA");
        intentFilter2.addAction("UPDATE_DRIVE_REGEN_MODES");
        registerReceiver(this.J, intentFilter2);
        int i10 = this.f1276r.getInt("floater_alpha", 100);
        View view2 = this.b;
        if (view2 != null) {
            view2.setAlpha(i10 / 100.0f);
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        WindowManager windowManager;
        super.onDestroy();
        M = false;
        d dVar = this.f1280v;
        dVar.b = true;
        dVar.f24a.incrementAndGet();
        CentralWatchdogService centralWatchdogService = CentralWatchdogService.V2;
        if (centralWatchdogService != null) {
            centralWatchdogService.f811a.post(new v2(centralWatchdogService, 11));
        }
        this.f1277s.removeCallbacksAndMessages(null);
        try {
            unregisterReceiver(this.K);
            unregisterReceiver(this.J);
        } catch (Exception unused) {
        }
        View view = this.b;
        if (view != null && (windowManager = this.f1261a) != null) {
            try {
                windowManager.removeView(view);
            } catch (Exception unused2) {
            }
        }
        Handler handler = this.f1279u;
        HandlerThread handlerThread = this.f1278t;
        CarPropertyManager carPropertyManager = this.f1275q;
        Car car = this.f1274p;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            handler.post(new g(this, carPropertyManager, car, 26));
        } else {
            if (carPropertyManager != null) {
                try {
                    carPropertyManager.unregisterCallback(this.L);
                } catch (Exception unused3) {
                }
            }
            if (car != null) {
                try {
                    car.disconnect();
                } catch (Exception unused4) {
                }
            }
        }
        if (handlerThread != null) {
            handlerThread.quitSafely();
        }
        this.f1279u = null;
        this.f1278t = null;
        this.f1275q = null;
        this.f1274p = null;
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i3, int i4) {
        return 2;
    }

    public final void p(int i3) {
        this.B.incrementAndGet();
        this.f1282x = i3;
        this.f1276r.edit().putInt("saved_regen", i3).apply();
        j(new z0.c(this, i3, 0));
        e();
        n();
    }

    public final void q(String str) {
        this.f1277s.post(new ab(this, 13, str));
    }
}
