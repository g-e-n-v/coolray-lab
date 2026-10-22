package com.geely.hvacstepperv2;

import a1.a;
import a1.b;
import a1.c;
import a1.d;
import a1.e;
import a1.f;
import a1.i;
import a1.j;
import a1.k;
import a1.l;
import a1.n;
import a1.o;
import a1.p;
import a1.q;
import a1.s;
import a1.u;
import android.R;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.car.Car;
import android.car.hardware.CarPropertyValue;
import android.car.hardware.property.CarPropertyManager;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import android.widget.Toast;
import com.geely.hvacstepperv2.TempStepperService;
import i2.g;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;
import w0.e8;
import w0.p1;
import w0.yd;

/* JADX INFO: loaded from: classes.dex */
public class TempStepperService extends Service {

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static final int[] f1285c0 = {1, 4, 0, 7};

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public static final int[] f1286d0 = {0, 1, 4, 7};

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static boolean f1287e0 = false;
    public boolean A;
    public boolean D;
    public int H;
    public int I;
    public float J;
    public float K;
    public float L;
    public float M;
    public boolean N;
    public int O;
    public View Q;
    public boolean S;
    public boolean U;
    public long W;
    public k X;
    public u Y;
    public u Z;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f1290b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WindowManager f1291c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public View f1292d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public TextView f1293e;
    public TextView f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public TextView f1294g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public TextView f1295h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public TextView f1296i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Car f1297j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public CarPropertyManager f1298k;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public HandlerThread f1302o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Handler f1303p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public long f1305r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public volatile boolean f1306s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f1307t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f1308u;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f1288a = 16.0f;
    public float b = 30.0f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f1299l = f1285c0[0];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f1300m = 22.0f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Handler f1301n = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final d f1304q = new d(0);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f1309v = -1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f1310w = -1;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f1311x = 7;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f1312y = -1;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public float f1313z = Float.NaN;
    public int B = -1;
    public float C = Float.NaN;
    public final q E = new q(this, 0);
    public boolean F = false;
    public final q G = new q(this, 1);
    public final q P = new q(this, 2);
    public final TextView[] R = new TextView[3];
    public final f T = new f(this, 3);
    public int V = -1;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final s f1289a0 = new s(0, this);

    public final void a() {
        k kVar = this.X;
        if (kVar != null) {
            this.f1303p.removeCallbacks(kVar);
            this.X = null;
        }
        this.U = false;
        this.V = -1;
        this.W = 0L;
    }

    public final void b() {
        this.f1301n.removeCallbacks(this.T);
        this.S = false;
        View view = this.Q;
        if (view != null) {
            view.setVisibility(8);
        }
        View view2 = this.f1292d;
        if (view2 == null || this.f1291c == null) {
            return;
        }
        try {
            this.f1291c.updateViewLayout(this.f1292d, (WindowManager.LayoutParams) view2.getLayoutParams());
        } catch (Exception unused) {
        }
    }

    public final boolean c() {
        return this.f1304q.a(this.f1305r);
    }

    public final void d() {
        if (this.f1298k == null || !c()) {
            return;
        }
        this.f1288a = 16.0f;
        this.b = 30.0f;
        try {
            Object objInvoke = CarPropertyManager.class.getMethod("getCarPropertyConfig", Integer.TYPE).invoke(this.f1298k, 358614275);
            if (objInvoke == null) {
                return;
            }
            Class<?> cls = objInvoke.getClass();
            Object objInvoke2 = cls.getMethod("getMinValue", null).invoke(objInvoke, null);
            Object objInvoke3 = cls.getMethod("getMaxValue", null).invoke(objInvoke, null);
            if ((objInvoke2 instanceof Float) && (objInvoke3 instanceof Float)) {
                Float f = (Float) objInvoke2;
                float fFloatValue = f.floatValue();
                float fFloatValue2 = ((Float) objInvoke3).floatValue();
                if (fFloatValue >= fFloatValue2 || fFloatValue2 - fFloatValue > 40.0f) {
                    return;
                }
                float fMax = Math.max(fFloatValue, 16.0f);
                this.f1288a = fMax;
                this.b = fFloatValue2;
                if (fFloatValue < fMax) {
                    Log.i("HvacStepperV2", String.format("HAL min %.1f ignorado — uso mínimo UI %.1f °C", f, Float.valueOf(fMax)));
                }
                Log.i("HvacStepperV2", String.format("Intervalo activo: %.1f°C – %.1f°C (invert HAL=%s)", Float.valueOf(this.f1288a), Float.valueOf(this.b), Boolean.FALSE));
            }
        } catch (Exception e3) {
            Log.d("HvacStepperV2", "getCarPropertyConfig indisponível ou falhou: " + e3.getMessage());
        }
    }

    public final void e(Runnable runnable) {
        if (this.f1306s) {
            return;
        }
        Handler handler = this.f1303p;
        d dVar = this.f1304q;
        handler.post(new c(dVar, dVar.f24a.get(), runnable, 0));
    }

    public final void f(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            if (this.f1306s) {
                return;
            }
            runnable.run();
        } else {
            Handler handler = this.f1301n;
            d dVar = this.f1304q;
            long j3 = this.f1305r;
            dVar.getClass();
            handler.post(new c(dVar, j3, runnable, 0));
        }
    }

    public final void g() {
        int iIntValue;
        if (this.f1298k == null || !c()) {
            return;
        }
        int i3 = 0;
        this.f1308u = false;
        this.f1309v = -1;
        for (int i4 = 0; i4 < 4; i4++) {
            int i5 = f1285c0[i4];
            if (!c()) {
                return;
            }
            try {
                float floatProperty = this.f1298k.getFloatProperty(358614274, i5);
                if (!Float.isNaN(floatProperty) && floatProperty > -45.0f && floatProperty < 65.0f) {
                    this.f1309v = i5;
                    this.f1308u = true;
                    this.f1313z = floatProperty;
                    Log.i("HvacStepperV2", String.format("Sensor cabina OK (HVAC_TEMPERATURE_CURRENT) area=0x%x → %.1f°C", Integer.valueOf(i5), Float.valueOf(floatProperty)));
                    break;
                }
            } catch (Exception e3) {
                Log.d("HvacStepperV2", String.format("cabina area 0x%x: %s", Integer.valueOf(i5), e3.getMessage()));
            }
        }
        if (!this.f1308u) {
            Log.w("HvacStepperV2", "HVAC_TEMPERATURE_CURRENT indisponível — AUTO usará só modo sistema (OEM) se activar.");
        }
        if (this.f1298k != null && c()) {
            this.A = false;
            this.B = -1;
            while (true) {
                if (i3 >= 4) {
                    Log.w("HvacStepperV2", "ENV_OUTSIDE_TEMPERATURE indisponível em todas as zonas testadas.");
                    break;
                }
                int i6 = f1286d0[i3];
                if (!c()) {
                    break;
                }
                Float fI = i(i6);
                if (fI != null && !Float.isNaN(fI.floatValue()) && fI.floatValue() > -55.0f && fI.floatValue() < 70.0f) {
                    this.B = i6;
                    this.A = true;
                    this.C = fI.floatValue();
                    Log.i("HvacStepperV2", String.format("Exterior OK (ENV_OUTSIDE_TEMPERATURE) area=0x%x → %.1f°C", Integer.valueOf(i6), fI));
                    break;
                }
                i3++;
            }
        }
        int i7 = 7;
        if (this.f1298k != null && c()) {
            try {
                Object objInvoke = CarPropertyManager.class.getMethod("getCarPropertyConfig", Integer.TYPE).invoke(this.f1298k, 356517120);
                if (objInvoke != null) {
                    Object objInvoke2 = objInvoke.getClass().getMethod("getMaxValue", null).invoke(objInvoke, null);
                    if ((objInvoke2 instanceof Integer) && (iIntValue = ((Integer) objInvoke2).intValue()) >= 1 && iIntValue <= 16) {
                        i7 = iIntValue;
                    }
                }
            } catch (Exception unused) {
            }
        }
        this.f1311x = i7;
        this.f1310w = -1;
        r();
    }

    public final void h() {
        if (this.f1298k == null || !c()) {
            return;
        }
        for (int i3 = 0; i3 < 4; i3++) {
            int i4 = f1285c0[i3];
            if (!c()) {
                return;
            }
            try {
                CarPropertyValue property = this.f1298k.getProperty(358614275, i4);
                if (property != null && (property.getValue() instanceof Float)) {
                    Float f = (Float) property.getValue();
                    float fFloatValue = f.floatValue();
                    this.f1300m = fFloatValue;
                    this.f1299l = i4;
                    Log.i("HvacStepperV2", String.format("Temp HAL=%.1f → UI=%.1f°C (area=0x%x)", f, Float.valueOf(fFloatValue), Integer.valueOf(i4)));
                    q("init");
                    return;
                }
            } catch (Exception e3) {
                Log.d("HvacStepperV2", String.format("area 0x%x inválida: %s", Integer.valueOf(i4), e3.getMessage()));
            }
        }
        Log.w("HvacStepperV2", "Não foi possível ler temperatura — usando valor padrão 22.0");
        q("init");
    }

    public final Float i(int i3) {
        if (this.f1298k != null && c()) {
            try {
                float floatProperty = this.f1298k.getFloatProperty(291505923, i3);
                if (!Float.isNaN(floatProperty)) {
                    return Float.valueOf(floatProperty);
                }
            } catch (Exception e3) {
                Log.d("HvacStepperV2", String.format("exterior float area 0x%x: %s", Integer.valueOf(i3), e3.getMessage()));
            }
            if (!c()) {
                return null;
            }
            try {
                int intProperty = this.f1298k.getIntProperty(291505923, i3);
                if (intProperty > -550 && intProperty < 700) {
                    return Float.valueOf(intProperty / 10.0f);
                }
                if (intProperty >= -45 && intProperty <= 65) {
                    return Float.valueOf(intProperty);
                }
            } catch (Exception e4) {
                Log.d("HvacStepperV2", String.format("exterior int area 0x%x: %s", Integer.valueOf(i3), e4.getMessage()));
            }
        }
        return null;
    }

    public final void j() {
        TextView[] textViewArr = this.R;
        if (textViewArr[0] == null) {
            return;
        }
        for (int i3 = 0; i3 < 3; i3++) {
            a aVarG = b.G(this, i3);
            if (aVarG != null) {
                textViewArr[i3].setVisibility(0);
                textViewArr[i3].setText(aVarG.a());
            } else {
                textViewArr[i3].setVisibility(8);
            }
        }
    }

    public final int k() {
        int i3 = this.f1310w;
        if (i3 >= 0) {
            return i3;
        }
        int[] iArr = new int[5];
        iArr[0] = this.f1299l;
        int i4 = 1;
        for (int i5 = 0; i5 < 4; i5++) {
            int i6 = f1285c0[i5];
            int i7 = 0;
            while (true) {
                if (i7 >= i4) {
                    iArr[i4] = i6;
                    i4++;
                    break;
                }
                if (iArr[i7] == i6) {
                    break;
                }
                i7++;
            }
        }
        for (int i8 = 0; i8 < i4 && c(); i8++) {
            int i9 = iArr[i8];
            try {
                int intProperty = this.f1298k.getIntProperty(356517120, i9);
                if (intProperty >= 0 && intProperty <= this.f1311x + 2) {
                    this.f1310w = i9;
                    Log.i("HvacStepperV2", String.format("HVAC_FAN_SPEED legível area=0x%x → %d", Integer.valueOf(i9), Integer.valueOf(intProperty)));
                    return this.f1310w;
                }
            } catch (Exception unused) {
            }
        }
        return this.f1299l;
    }

    public final void l(float f) {
        float fMax = (Math.max(0, Math.min(Math.round(((this.f1300m + f) - this.f1288a) / 0.5f), Math.round((this.b - this.f1288a) / 0.5f))) * 0.5f) + this.f1288a;
        if (fMax == this.f1300m) {
            return;
        }
        this.f1300m = fMax;
        q("btn");
        if (this.f1298k == null) {
            m(0, "CarService não disponível");
            return;
        }
        if (c()) {
            CarPropertyManager carPropertyManager = this.f1298k;
            int i3 = this.f1299l;
            AtomicInteger atomicInteger = p1.f4042a;
            g.e(carPropertyManager, "cpm");
            if (!p1.j(carPropertyManager, 358614275, i3, fMax)) {
                Log.e("HvacStepperV2", "Erro ao definir temperatura: escrita falhou ou estourou o prazo");
                m(0, "Erro ao enviar temperatura");
                return;
            }
            Log.i("HvacStepperV2", String.format("Enviado HAL=%.1f UI=%.1f°C invert=%s (area=0x%x)", Float.valueOf(fMax), Float.valueOf(fMax), Boolean.FALSE, Integer.valueOf(this.f1299l)));
            if (this.f1298k == null || !c()) {
                return;
            }
            try {
                float floatProperty = this.f1298k.getFloatProperty(358614275, this.f1299l);
                float fAbs = Math.abs(floatProperty - fMax);
                if (fAbs < 0.2f) {
                    Log.i("HvacStepperV2", String.format("Readback OK: HAL raw=%.2f → UI %.1f°C (pedido %.1f°C)", Float.valueOf(floatProperty), Float.valueOf(floatProperty), Float.valueOf(fMax)));
                } else {
                    Log.w("HvacStepperV2", String.format("Readback DIVERGENTE: pedido UI=%.1f°C mas HAL devolve raw=%.2f → UI %.1f°C (Δ=%.1f). Possível escrita int (wheel/XSF) ou outra zona.", Float.valueOf(fMax), Float.valueOf(floatProperty), Float.valueOf(floatProperty), Float.valueOf(fAbs)));
                    m(1, String.format(Locale.getDefault(), "HAL leu %.1f°C (pediste %.1f) — ver logcat", Float.valueOf(floatProperty), Float.valueOf(fMax)));
                }
            } catch (Exception e3) {
                androidx.activity.result.b.o(e3, new StringBuilder("Readback pós-set indisponível: "), "HvacStepperV2");
            }
        }
    }

    public final void m(int i3, String str) {
        f(new j(this, str, i3, 1));
    }

    public final void n() {
        CarPropertyManager carPropertyManager;
        this.f1303p.removeCallbacks(this.E);
        if (this.f1307t || this.D) {
            this.f1307t = false;
            if (this.D && (carPropertyManager = this.f1298k) != null) {
                p1.h(carPropertyManager, this.f1299l, false);
                p1.h(this.f1298k, 0, false);
                this.D = false;
                Log.i("HvacStepperV2", "AUTO OEM desligado");
            }
            this.f1312y = -1;
        }
    }

    public final void o() {
        CarPropertyManager carPropertyManager = this.f1298k;
        if (carPropertyManager != null) {
            u uVar = this.Z;
            if (uVar != null) {
                try {
                    carPropertyManager.unregisterCallback(uVar);
                } catch (Exception unused) {
                }
            }
            u uVar2 = this.Y;
            if (uVar2 != null) {
                try {
                    this.f1298k.unregisterCallback(uVar2);
                } catch (Exception unused2) {
                }
            }
        }
        this.Y = null;
        this.Z = null;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        HandlerThread handlerThread = new HandlerThread("HvacStepperCar");
        this.f1302o = handlerThread;
        handlerThread.start();
        this.f1303p = new Handler(this.f1302o.getLooper());
        f1287e0 = true;
        NotificationChannel notificationChannel = new NotificationChannel("hvac_stepper_v2", "HVAC Stepper V2", 2);
        notificationChannel.setDescription("Controlo de temperatura HVAC (com polling)");
        ((NotificationManager) getSystemService(NotificationManager.class)).createNotificationChannel(notificationChannel);
        startForeground(2, new Notification.Builder(this, "hvac_stepper_v2").setContentTitle("HVAC Stepper V2 activo").setContentText("Stepper com polling de 3 s").setSmallIcon(R.drawable.ic_menu_compass).build());
        try {
            registerReceiver(this.f1289a0, new IntentFilter("com.geely.hvacstepperv2.PRESETS_CHANGED"));
            this.f1290b0 = true;
        } catch (Exception e3) {
            Log.e("HvacStepperV2", "registerReceiver PRESETS_CHANGED", e3);
            this.f1290b0 = false;
        }
        this.f1291c = (WindowManager) getSystemService("window");
        View viewInflate = LayoutInflater.from(this).inflate(com.ex.auto.R.layout.overlay_stepper, (ViewGroup) null);
        this.f1292d = viewInflate;
        this.f1293e = (TextView) viewInflate.findViewById(com.ex.auto.R.id.tv_temp);
        this.f = (TextView) this.f1292d.findViewById(com.ex.auto.R.id.tv_source);
        this.f1294g = (TextView) this.f1292d.findViewById(com.ex.auto.R.id.btn_auto);
        this.f1295h = (TextView) this.f1292d.findViewById(com.ex.auto.R.id.tv_sensor_inside);
        this.f1296i = (TextView) this.f1292d.findViewById(com.ex.auto.R.id.tv_sensor_outside);
        View viewFindViewById = this.f1292d.findViewById(com.ex.auto.R.id.btn_minus);
        View viewFindViewById2 = this.f1292d.findViewById(com.ex.auto.R.id.btn_plus);
        final int i3 = 0;
        viewFindViewById.setOnClickListener(new View.OnClickListener(this) { // from class: a1.m
            public final /* synthetic */ TempStepperService b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i4 = i3;
                TempStepperService tempStepperService = this.b;
                switch (i4) {
                    case 0:
                        int[] iArr = TempStepperService.f1285c0;
                        tempStepperService.e(new f(tempStepperService, 2));
                        break;
                    case 1:
                        int[] iArr2 = TempStepperService.f1285c0;
                        tempStepperService.e(new f(tempStepperService, 0));
                        break;
                    case 2:
                        int[] iArr3 = TempStepperService.f1285c0;
                        tempStepperService.e(new f(tempStepperService, 1));
                        break;
                    default:
                        if (tempStepperService.S) {
                            tempStepperService.b();
                            break;
                        } else if (tempStepperService.Q != null) {
                            tempStepperService.j();
                            int i5 = 0;
                            for (int i6 = 0; i6 < 3; i6++) {
                                if (b.G(tempStepperService, i6) != null) {
                                    i5++;
                                }
                            }
                            if (i5 == 0) {
                                Toast.makeText(tempStepperService, "Guarde modos de ventoinha na app principal", 0).show();
                                break;
                            } else {
                                tempStepperService.S = true;
                                tempStepperService.Q.setVisibility(0);
                                Handler handler = tempStepperService.f1301n;
                                f fVar = tempStepperService.T;
                                handler.removeCallbacks(fVar);
                                handler.postDelayed(fVar, 5000L);
                                View view2 = tempStepperService.f1292d;
                                if (view2 != null && tempStepperService.f1291c != null) {
                                    try {
                                        tempStepperService.f1291c.updateViewLayout(tempStepperService.f1292d, (WindowManager.LayoutParams) view2.getLayoutParams());
                                    } catch (Exception unused) {
                                        return;
                                    }
                                    break;
                                }
                            }
                        }
                        break;
                }
            }
        });
        final int i4 = 1;
        viewFindViewById2.setOnClickListener(new View.OnClickListener(this) { // from class: a1.m
            public final /* synthetic */ TempStepperService b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i5 = i4;
                TempStepperService tempStepperService = this.b;
                switch (i5) {
                    case 0:
                        int[] iArr = TempStepperService.f1285c0;
                        tempStepperService.e(new f(tempStepperService, 2));
                        break;
                    case 1:
                        int[] iArr2 = TempStepperService.f1285c0;
                        tempStepperService.e(new f(tempStepperService, 0));
                        break;
                    case 2:
                        int[] iArr3 = TempStepperService.f1285c0;
                        tempStepperService.e(new f(tempStepperService, 1));
                        break;
                    default:
                        if (tempStepperService.S) {
                            tempStepperService.b();
                            break;
                        } else if (tempStepperService.Q != null) {
                            tempStepperService.j();
                            int i6 = 0;
                            for (int i7 = 0; i7 < 3; i7++) {
                                if (b.G(tempStepperService, i7) != null) {
                                    i6++;
                                }
                            }
                            if (i6 == 0) {
                                Toast.makeText(tempStepperService, "Guarde modos de ventoinha na app principal", 0).show();
                                break;
                            } else {
                                tempStepperService.S = true;
                                tempStepperService.Q.setVisibility(0);
                                Handler handler = tempStepperService.f1301n;
                                f fVar = tempStepperService.T;
                                handler.removeCallbacks(fVar);
                                handler.postDelayed(fVar, 5000L);
                                View view2 = tempStepperService.f1292d;
                                if (view2 != null && tempStepperService.f1291c != null) {
                                    try {
                                        tempStepperService.f1291c.updateViewLayout(tempStepperService.f1292d, (WindowManager.LayoutParams) view2.getLayoutParams());
                                    } catch (Exception unused) {
                                        return;
                                    }
                                    break;
                                }
                            }
                        }
                        break;
                }
            }
        });
        TextView textView = this.f1294g;
        if (textView != null) {
            final int i5 = 2;
            textView.setOnClickListener(new View.OnClickListener(this) { // from class: a1.m
                public final /* synthetic */ TempStepperService b;

                {
                    this.b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i6 = i5;
                    TempStepperService tempStepperService = this.b;
                    switch (i6) {
                        case 0:
                            int[] iArr = TempStepperService.f1285c0;
                            tempStepperService.e(new f(tempStepperService, 2));
                            break;
                        case 1:
                            int[] iArr2 = TempStepperService.f1285c0;
                            tempStepperService.e(new f(tempStepperService, 0));
                            break;
                        case 2:
                            int[] iArr3 = TempStepperService.f1285c0;
                            tempStepperService.e(new f(tempStepperService, 1));
                            break;
                        default:
                            if (tempStepperService.S) {
                                tempStepperService.b();
                                break;
                            } else if (tempStepperService.Q != null) {
                                tempStepperService.j();
                                int i7 = 0;
                                for (int i8 = 0; i8 < 3; i8++) {
                                    if (b.G(tempStepperService, i8) != null) {
                                        i7++;
                                    }
                                }
                                if (i7 == 0) {
                                    Toast.makeText(tempStepperService, "Guarde modos de ventoinha na app principal", 0).show();
                                    break;
                                } else {
                                    tempStepperService.S = true;
                                    tempStepperService.Q.setVisibility(0);
                                    Handler handler = tempStepperService.f1301n;
                                    f fVar = tempStepperService.T;
                                    handler.removeCallbacks(fVar);
                                    handler.postDelayed(fVar, 5000L);
                                    View view2 = tempStepperService.f1292d;
                                    if (view2 != null && tempStepperService.f1291c != null) {
                                        try {
                                            tempStepperService.f1291c.updateViewLayout(tempStepperService.f1292d, (WindowManager.LayoutParams) view2.getLayoutParams());
                                        } catch (Exception unused) {
                                            return;
                                        }
                                        break;
                                    }
                                }
                            }
                            break;
                    }
                }
            });
        }
        this.Q = this.f1292d.findViewById(com.ex.auto.R.id.preset_panel);
        TextView textView2 = (TextView) this.f1292d.findViewById(com.ex.auto.R.id.preset_chip_0);
        TextView[] textViewArr = this.R;
        textViewArr[0] = textView2;
        textViewArr[1] = (TextView) this.f1292d.findViewById(com.ex.auto.R.id.preset_chip_1);
        textViewArr[2] = (TextView) this.f1292d.findViewById(com.ex.auto.R.id.preset_chip_2);
        for (int i6 = 0; i6 < 3; i6++) {
            TextView textView3 = textViewArr[i6];
            if (textView3 != null) {
                textView3.setOnClickListener(new n(this, i6, 0));
            }
        }
        final int i7 = 3;
        this.f1293e.setOnClickListener(new View.OnClickListener(this) { // from class: a1.m
            public final /* synthetic */ TempStepperService b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i8 = i7;
                TempStepperService tempStepperService = this.b;
                switch (i8) {
                    case 0:
                        int[] iArr = TempStepperService.f1285c0;
                        tempStepperService.e(new f(tempStepperService, 2));
                        break;
                    case 1:
                        int[] iArr2 = TempStepperService.f1285c0;
                        tempStepperService.e(new f(tempStepperService, 0));
                        break;
                    case 2:
                        int[] iArr3 = TempStepperService.f1285c0;
                        tempStepperService.e(new f(tempStepperService, 1));
                        break;
                    default:
                        if (tempStepperService.S) {
                            tempStepperService.b();
                            break;
                        } else if (tempStepperService.Q != null) {
                            tempStepperService.j();
                            int i9 = 0;
                            for (int i10 = 0; i10 < 3; i10++) {
                                if (b.G(tempStepperService, i10) != null) {
                                    i9++;
                                }
                            }
                            if (i9 == 0) {
                                Toast.makeText(tempStepperService, "Guarde modos de ventoinha na app principal", 0).show();
                                break;
                            } else {
                                tempStepperService.S = true;
                                tempStepperService.Q.setVisibility(0);
                                Handler handler = tempStepperService.f1301n;
                                f fVar = tempStepperService.T;
                                handler.removeCallbacks(fVar);
                                handler.postDelayed(fVar, 5000L);
                                View view2 = tempStepperService.f1292d;
                                if (view2 != null && tempStepperService.f1291c != null) {
                                    try {
                                        tempStepperService.f1291c.updateViewLayout(tempStepperService.f1292d, (WindowManager.LayoutParams) view2.getLayoutParams());
                                    } catch (Exception unused) {
                                        return;
                                    }
                                    break;
                                }
                            }
                        }
                        break;
                }
            }
        });
        j();
        this.O = ViewConfiguration.get(this).getScaledTouchSlop() * 3;
        View viewFindViewById3 = this.f1292d.findViewById(com.ex.auto.R.id.drag_handle_end);
        if (viewFindViewById3 != null) {
            viewFindViewById3.setOnTouchListener(new o(this, 0));
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(com.ex.auto.R.dimen.overlay_bottom_offset);
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 2038, 8, -3);
        yd ydVarG = e8.G(this, "hvac_stepper", 81, 0, dimensionPixelSize);
        layoutParams.gravity = ydVarG.f4590a;
        layoutParams.x = ydVarG.b;
        layoutParams.y = ydVarG.f4591c;
        try {
            this.f1291c.addView(this.f1292d, layoutParams);
            p();
            q("init");
        } catch (Exception e4) {
            Log.e("HvacStepperV2", "addView overlay falhou (permissão SYSTEM_ALERT_WINDOW?)", e4);
            Toast.makeText(this, "Overlay não exibido — conceda sobreposição e reinicie o serviço", 1).show();
        }
        try {
            this.f1297j = Car.createCar(this, null, 0L, new p(this, 0));
        } catch (Exception e5) {
            Log.e("HvacStepperV2", "Erro ao conectar ao CarService: " + e5.getMessage());
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        f1287e0 = false;
        this.f1306s = true;
        d dVar = this.f1304q;
        dVar.b = true;
        dVar.f24a.incrementAndGet();
        this.f1303p.removeCallbacksAndMessages(null);
        this.f1303p.post(new i(this, 1, this.f1297j));
        this.f1301n.removeCallbacks(this.T);
        this.f1301n.removeCallbacks(this.P);
        if (this.f1290b0) {
            try {
                unregisterReceiver(this.f1289a0);
            } catch (Exception unused) {
            }
            this.f1290b0 = false;
        }
        this.f1301n.removeCallbacksAndMessages(null);
        View view = this.f1292d;
        if (view != null) {
            try {
                this.f1291c.removeView(view);
            } catch (Exception unused2) {
            }
        }
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i3, int i4) {
        int intExtra;
        if (intent == null || !"com.geely.hvacstepperv2.RUN_PRESET".equals(intent.getAction()) || (intExtra = intent.getIntExtra("preset_slot", -1)) < 0 || intExtra >= 3) {
            return 2;
        }
        this.f1301n.postDelayed(new e(this, intExtra, 0), 300L);
        return 2;
    }

    public final void p() {
        String str;
        boolean z2 = this.f1307t;
        if (z2) {
            str = this.D ? "AUTO (sist.)" : "AUTO ●";
        } else {
            str = "AUTO";
        }
        f(new j(this, str, z2 ? -11870592 : -855638017, 0));
    }

    public final void q(String str) {
        r();
        float fRound = Math.round(this.f1300m * 2.0f) / 2.0f;
        String str2 = fRound % 1.0f == 0.0f ? String.format(Locale.US, "%.0f°", Float.valueOf(fRound)) : String.format(Locale.US, "%.1f°", Float.valueOf(fRound));
        StringBuilder sb = new StringBuilder(str);
        if (this.f1307t) {
            sb.append(this.D ? " ·AUTO-OEM" : " ·AUTO");
            if (!this.D && this.f1308u && !Float.isNaN(this.f1313z)) {
                sb.append(String.format(Locale.US, " ·cab %.0f°", Float.valueOf(this.f1313z)));
                int i3 = this.f1312y;
                if (i3 >= 0) {
                    sb.append(" ·vent " + i3);
                }
            }
        } else if (this.f1308u && !Float.isNaN(this.f1313z)) {
            sb.append(String.format(Locale.US, " ·cab %.0f°", Float.valueOf(this.f1313z)));
        }
        f(new a1.g(this, str2, sb.toString(), 0));
    }

    public final void r() {
        boolean z2 = this.f1308u && !Float.isNaN(this.f1313z);
        boolean z3 = this.A && !Float.isNaN(this.C);
        f(new l(this, z2 ? String.format(Locale.US, "%.1f °C", Float.valueOf(this.f1313z)) : "n/d", z2, z3 ? String.format(Locale.US, "%.1f °C", Float.valueOf(this.C)) : "n/d", z3));
    }
}
