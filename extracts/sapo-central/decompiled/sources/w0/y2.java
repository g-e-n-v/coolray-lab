package w0;

import android.app.ActivityManager;
import android.bluetooth.BluetoothSocket;
import android.car.hardware.property.CarPropertyManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.AppPipFloaterService;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.MainActivity;
import com.ex.auto.MediaBarFloaterService;
import com.ex.auto.PhoneSyncService;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.SplitFloaterService;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.Socket;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class y2 implements h2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4557a;
    public final /* synthetic */ Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f4558c;

    public /* synthetic */ y2(Object obj, int i3, Object obj2) {
        this.f4557a = i3;
        this.b = obj;
        this.f4558c = obj2;
    }

    private final Object b() {
        String strQ;
        JSONObject jSONObject;
        JSONObject jSONObjectH;
        BluetoothSocket bluetoothSocket = (BluetoothSocket) this.b;
        PhoneSyncService phoneSyncService = (PhoneSyncService) this.f4558c;
        boolean z2 = PhoneSyncService.f1102z;
        try {
            try {
                int[] iArr = CentralWatchdogService.S2;
                CentralWatchdogService centralWatchdogService = CentralWatchdogService.V2;
                if (centralWatchdogService != null) {
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    if (jElapsedRealtime - CentralWatchdogService.X2 >= 20000) {
                        CentralWatchdogService.X2 = jElapsedRealtime;
                        centralWatchdogService.f811a.post(new v2(centralWatchdogService, 6));
                    }
                }
                InputStream inputStream = bluetoothSocket.getInputStream();
                Charset charset = StandardCharsets.UTF_8;
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, charset));
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(bluetoothSocket.getOutputStream(), charset));
                while (phoneSyncService.f1103a && (strQ = PhoneSyncService.q(bufferedReader)) != null) {
                    if (!o2.k.m0(strQ)) {
                        try {
                            jSONObject = new JSONObject(strQ);
                        } catch (Exception unused) {
                            jSONObject = null;
                        }
                        if (jSONObject == null) {
                            jSONObjectH = new JSONObject().put("ok", false).put("error", "JSON inválido");
                        } else {
                            String strOptString = jSONObject.optString("op");
                            i2.g.d(strOptString, "optString(...)");
                            jSONObjectH = phoneSyncService.h(strOptString, jSONObject.optJSONObject("body"));
                        }
                        bufferedWriter.write(jSONObjectH.toString());
                        bufferedWriter.write("\n");
                        bufferedWriter.flush();
                    }
                }
                bluetoothSocket.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    a1.b.p(bluetoothSocket, th);
                    throw th2;
                }
            }
        } catch (Exception e3) {
            androidx.activity.result.b.o(e3, new StringBuilder("cliente BT: "), "PhoneSyncService");
        }
        return x1.e.f4647c;
    }

    private final Object c() throws Throwable {
        boolean z2;
        boolean z3;
        JSONObject jSONObject;
        JSONObject jSONObjectH;
        PhoneSyncService phoneSyncService = (PhoneSyncService) this.b;
        Socket socket = (Socket) this.f4558c;
        boolean z4 = PhoneSyncService.f1102z;
        String str = "GET";
        try {
            ScheduledFuture<?> scheduledFutureSchedule = phoneSyncService.f1108h.schedule(new i6(socket, 1), 2L, TimeUnit.MINUTES);
            boolean z5 = false;
            try {
                try {
                    try {
                        socket.setSoTimeout(20000);
                        BufferedInputStream bufferedInputStream = new BufferedInputStream(socket.getInputStream());
                        OutputStream outputStream = socket.getOutputStream();
                        List listV0 = o2.k.v0(PhoneSyncService.s(bufferedInputStream), new String[]{" "}, 0, 6);
                        try {
                            if (listV0.size() < 2) {
                                i2.g.b(outputStream);
                                PhoneSyncService.D(outputStream, 400, "{\"ok\":false,\"error\":\"linha HTTP inválida\"}");
                                socket.close();
                            } else {
                                String upperCase = ((String) listV0.get(0)).toUpperCase(Locale.ROOT);
                                i2.g.d(upperCase, "toUpperCase(...)");
                                String str2 = (String) listV0.get(1);
                                int i3 = 0;
                                int i4 = 0;
                                boolean z6 = false;
                                long jLongValue = 0;
                                while (true) {
                                    String strS = PhoneSyncService.s(bufferedInputStream);
                                    if (strS.length() != 0) {
                                        int length = i3 + strS.length();
                                        int i5 = i4 + 1;
                                        phoneSyncService = phoneSyncService;
                                        if (i5 > 64 || length > 32768) {
                                            throw new IOException("HTTP headers too large");
                                        }
                                        str = str;
                                        int iJ0 = o2.k.j0(strS, ':', 0, 6);
                                        if (iJ0 <= 0) {
                                            throw new IOException("Malformed HTTP header");
                                        }
                                        String strSubstring = strS.substring(0, iJ0);
                                        i2.g.d(strSubstring, "substring(...)");
                                        String string = o2.k.E0(strSubstring).toString();
                                        if (o2.t.a0(string, "transfer-encoding")) {
                                            throw new IOException("Unsupported transfer encoding");
                                        }
                                        if (o2.t.a0(string, "content-length")) {
                                            if (z6) {
                                                throw new IOException("Duplicate content length");
                                            }
                                            String strSubstring2 = strS.substring(iJ0 + 1);
                                            i2.g.d(strSubstring2, "substring(...)");
                                            Long lY = o2.s.Y(o2.k.E0(strSubstring2).toString());
                                            if (lY == null) {
                                                throw new IOException("Invalid content length");
                                            }
                                            jLongValue = lY.longValue();
                                            if (jLongValue < 0) {
                                                throw new IOException("Negative content length");
                                            }
                                            z6 = true;
                                        }
                                        i3 = length;
                                        i4 = i5;
                                        z5 = false;
                                    } else if (upperCase.equals("POST") && o2.t.d0(str2, "/sync/carlock")) {
                                        i2.g.b(outputStream);
                                        String string2 = phoneSyncService.k(bufferedInputStream, str2, jLongValue).toString();
                                        i2.g.d(string2, "toString(...)");
                                        PhoneSyncService.D(outputStream, 200, string2);
                                        socket.close();
                                    } else {
                                        if (!upperCase.equals("POST") || !o2.t.d0(str2, "/sync/avas_sound")) {
                                            JSONObject jSONObject2 = null;
                                            if (upperCase.equals("POST") && o2.t.d0(str2, "/sync/logs_zip")) {
                                                if (1 <= jLongValue && jLongValue < 65537) {
                                                    try {
                                                        byte[] bArrP = PhoneSyncService.p(bufferedInputStream, (int) jLongValue);
                                                        Charset charset = StandardCharsets.UTF_8;
                                                        i2.g.d(charset, "UTF_8");
                                                        jSONObject2 = new JSONObject(new String(bArrP, charset));
                                                    } catch (Exception unused) {
                                                    }
                                                }
                                                i2.g.b(outputStream);
                                                phoneSyncService.w(jSONObject2, outputStream);
                                                socket.close();
                                                z3 = false;
                                            } else if (jLongValue > 1048576) {
                                                i2.g.b(outputStream);
                                                PhoneSyncService.D(outputStream, 413, "{\"ok\":false,\"error\":\"payload too large\"}");
                                                socket.close();
                                                z3 = false;
                                            } else {
                                                if (!upperCase.equals("POST") || 1 > jLongValue || jLongValue > 1048576) {
                                                    jSONObject = null;
                                                } else {
                                                    byte[] bArrP2 = PhoneSyncService.p(bufferedInputStream, (int) jLongValue);
                                                    try {
                                                        Charset charset2 = StandardCharsets.UTF_8;
                                                        i2.g.d(charset2, "UTF_8");
                                                        jSONObject = new JSONObject(new String(bArrP2, charset2));
                                                    } catch (Exception unused2) {
                                                        jSONObject = null;
                                                    }
                                                }
                                                if (upperCase.equals(str) && o2.t.d0(str2, "/sync/ping")) {
                                                    jSONObjectH = phoneSyncService.h("ping", null);
                                                } else if (upperCase.equals(str) && o2.t.d0(str2, "/sync/state")) {
                                                    jSONObjectH = phoneSyncService.h("state", null);
                                                } else if (upperCase.equals(str) && o2.t.d0(str2, "/sync/telemetry")) {
                                                    jSONObjectH = phoneSyncService.h("telemetry", null);
                                                } else if (upperCase.equals("POST") && o2.t.d0(str2, "/sync/merge")) {
                                                    jSONObjectH = phoneSyncService.h("merge", jSONObject);
                                                } else {
                                                    jSONObjectH = (upperCase.equals("POST") && o2.t.d0(str2, "/sync/action")) ? phoneSyncService.h("action", jSONObject) : new JSONObject().put("ok", false).put("error", "endpoint não encontrado");
                                                }
                                                i2.g.b(outputStream);
                                                String string3 = jSONObjectH.toString();
                                                i2.g.d(string3, "toString(...)");
                                                PhoneSyncService.D(outputStream, 200, string3);
                                                socket.close();
                                                z3 = false;
                                            }
                                            scheduledFutureSchedule.cancel(z3);
                                            return x1.e.f4647c;
                                        }
                                        i2.g.b(outputStream);
                                        String string4 = PhoneSyncService.i(bufferedInputStream, str2, jLongValue).toString();
                                        i2.g.d(string4, "toString(...)");
                                        PhoneSyncService.D(outputStream, 200, string4);
                                        socket.close();
                                    }
                                }
                            }
                            scheduledFutureSchedule.cancel(z5);
                        } catch (Throwable th) {
                            th = th;
                            z2 = z5;
                            scheduledFutureSchedule.cancel(z2);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        z2 = false;
                    }
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        a1.b.p(socket, th3);
                        throw th4;
                    }
                }
            } catch (Exception e3) {
                Log.w("PhoneSyncService", "handleHttpClient: " + e3.getMessage());
                z3 = false;
            }
        } catch (RejectedExecutionException unused3) {
            socket.close();
        }
        return x1.e.f4647c;
    }

    /* JADX WARN: Code duplicated, block: B:109:0x02be  */
    /* JADX WARN: Type inference failed for: r2v50, types: [java.lang.Object, java.util.Map] */
    @Override // h2.a
    public final Object a() {
        a3 a3Var;
        String str;
        String str2;
        int iIntValue;
        p2 p2Var;
        Handler handler;
        o7 o7Var;
        String strX;
        int i3 = 8;
        Integer num = null;
        boolean zE0 = false;
        boolean z2 = true;
        char c3 = 1;
        char c4 = 1;
        switch (this.f4557a) {
            case 0:
                final CentralWatchdogService centralWatchdogService = (CentralWatchdogService) this.b;
                final a3 a3Var2 = (a3) this.f4558c;
                final boolean zB = CentralWatchdogService.b();
                final boolean z3 = centralWatchdogService.Z0 >= centralWatchdogService.U0;
                final boolean z4 = z3 && centralWatchdogService.M0();
                centralWatchdogService.f811a.post(new Runnable() { // from class: w0.z2
                    @Override // java.lang.Runnable
                    public final void run() {
                        CentralWatchdogService centralWatchdogService2 = centralWatchdogService;
                        boolean z5 = zB;
                        boolean z6 = z3;
                        a3 a3Var3 = a3Var2;
                        boolean z7 = z4;
                        int[] iArr = CentralWatchdogService.S2;
                        if (CentralWatchdogService.U2 && centralWatchdogService2.W0) {
                            if (z5) {
                                centralWatchdogService2.R0("projeção ativa");
                                return;
                            }
                            if (z6) {
                                if (centralWatchdogService2.X0 >= centralWatchdogService2.S0) {
                                    centralWatchdogService2.R0("limite de pedidos de saúde");
                                    return;
                                }
                                if (!centralWatchdogService2.W().getBoolean("boot_stable", false)) {
                                    Log.i("CentralWatchdog", "AA trigger: sem conexão, mas boot ainda não estabilizou — adiando");
                                    centralWatchdogService2.f811a.postDelayed(a3Var3, centralWatchdogService2.T0);
                                    return;
                                }
                                if (z7) {
                                    centralWatchdogService2.R0("CarPlay em sessão");
                                    return;
                                }
                                centralWatchdogService2.X0++;
                                centralWatchdogService2.Z0 = 0;
                                ae aeVar = ae.f3361a;
                                ae.b("CentralWatchdog", "AA trigger: sem conexão em ~" + ((((long) centralWatchdogService2.U0) * centralWatchdogService2.T0) / ((long) 1000)) + "s — pedindo avaliação de saúde (#" + centralWatchdogService2.X0 + "); não reinicio serviços por conta própria", false);
                                centralWatchdogService2.f831f1 = 0L;
                                StringBuilder sb = new StringBuilder("AA trigger #");
                                sb.append(centralWatchdogService2.X0);
                                centralWatchdogService2.G(sb.toString());
                                centralWatchdogService2.f811a.postDelayed(new v2(centralWatchdogService2, 15), 20000L);
                            }
                            if (centralWatchdogService2.Y0 >= centralWatchdogService2.V0) {
                                centralWatchdogService2.R0("timeout geral");
                            } else {
                                centralWatchdogService2.f811a.postDelayed(a3Var3, centralWatchdogService2.T0);
                            }
                        }
                    }
                });
                return x1.e.f4647c;
            case 1:
                CentralWatchdogService centralWatchdogService2 = (CentralWatchdogService) this.b;
                a3 a3Var3 = (a3) this.f4558c;
                try {
                    int[] iArr = CentralWatchdogService.S2;
                    boolean zC1 = centralWatchdogService2.c1();
                    if (zC1 || !CentralWatchdogService.v()) {
                        centralWatchdogService2.W().edit().putBoolean("wifi_cliente_ativo_antes", zC1).apply();
                    }
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    long j3 = centralWatchdogService2.W().getLong("update_check_next_at", 0L);
                    if (jCurrentTimeMillis >= j3 || j3 - jCurrentTimeMillis >= 43200000) {
                        centralWatchdogService2.W().edit().putLong("update_check_next_at", jCurrentTimeMillis + 1200000).apply();
                        AtomicReference atomicReference = CentralWatchdogService.W2;
                        atomicReference.set("verificando…");
                        x2 x2VarK = CentralWatchdogService.k(centralWatchdogService2);
                        a3Var = a3Var3;
                        try {
                            centralWatchdogService2.W().edit().putLong("update_check_next_at", jCurrentTimeMillis + 3600000).apply();
                            long longVersionCode = centralWatchdogService2.getPackageManager().getPackageInfo(centralWatchdogService2.getPackageName(), 0).getLongVersionCode();
                            long j4 = centralWatchdogService2.W().getLong("update_attempt_vc", -1L);
                            if (0 <= j4 && j4 <= longVersionCode) {
                                centralWatchdogService2.W().edit().remove("update_attempt_vc").remove("update_attempt_count").apply();
                            }
                            if (x2VarK.f4488a > longVersionCode) {
                                long j5 = centralWatchdogService2.W().getLong("update_attempt_vc", -1L);
                                int i4 = centralWatchdogService2.W().getInt("update_attempt_count", 0);
                                if (j5 != x2VarK.f4488a || i4 < centralWatchdogService2.N2) {
                                    androidx.emoji2.text.m mVar = i0.f3693a;
                                    String strConcat = "download:".concat(x2VarK.b);
                                    i2.g.e(strConcat, "phase");
                                    androidx.emoji2.text.m mVar2 = i0.f3693a;
                                    if (mVar2.u("auto", strConcat)) {
                                        Log.i("CentralWatchdog", "Auto-update: nova versão " + x2VarK.b + " (vc=" + x2VarK.f4488a + " > " + longVersionCode + ')');
                                        StringBuilder sb = new StringBuilder("baixando ");
                                        sb.append(x2VarK.b);
                                        sb.append((char) 8230);
                                        atomicReference.set(sb.toString());
                                        try {
                                            try {
                                                CentralWatchdogService.j(centralWatchdogService2, x2VarK);
                                                try {
                                                    x2 x2VarK2 = CentralWatchdogService.k(centralWatchdogService2);
                                                    if (x2VarK2.f4488a > x2VarK.f4488a) {
                                                        Log.i("CentralWatchdog", "Auto-update: versão ainda mais recente (" + x2VarK2.b + ") — re-baixando");
                                                        try {
                                                            atomicReference.set("baixando " + x2VarK2.b + " (re-check)…");
                                                            CentralWatchdogService.j(centralWatchdogService2, x2VarK2);
                                                            x2VarK = x2VarK2;
                                                        } catch (Exception e3) {
                                                            e = e3;
                                                            x2VarK = x2VarK2;
                                                            Log.w("CentralWatchdog", "Auto-update re-check falhou: " + e.getMessage());
                                                        }
                                                    }
                                                } catch (Exception e4) {
                                                    e = e4;
                                                }
                                                int i5 = (centralWatchdogService2.W().getLong("update_attempt_vc", -1L) == x2VarK.f4488a ? centralWatchdogService2.W().getInt("update_attempt_count", 0) : 0) + 1;
                                                centralWatchdogService2.W().edit().putLong("update_attempt_vc", x2VarK.f4488a).putInt("update_attempt_count", i5).commit();
                                                AtomicReference atomicReference2 = CentralWatchdogService.W2;
                                                atomicReference2.set("instalando " + x2VarK.b + " (a central pode reiniciar)…");
                                                androidx.emoji2.text.m mVar3 = i0.f3693a;
                                                i0.a("auto", "install:".concat(x2VarK.b));
                                                androidx.emoji2.text.m mVar4 = zd.f4636a;
                                                if (zd.b("self-update:auto")) {
                                                    try {
                                                        String strL = CentralWatchdogService.l(centralWatchdogService2);
                                                        zd.a("self-update:auto");
                                                        Log.i("CentralWatchdog", "Auto-update install " + x2VarK.b + " (destacado): " + o2.k.D0(300, strL));
                                                        ae aeVar = ae.f3361a;
                                                        ae.b("AutoUpdate", "install vc=" + x2VarK.f4488a + " (" + x2VarK.b + ") tentativa=" + i5 + " → " + o2.k.D0(300, strL), false);
                                                        i0.f3693a.r("auto");
                                                    } catch (Throwable th) {
                                                        androidx.emoji2.text.m mVar5 = zd.f4636a;
                                                        zd.a("self-update:auto");
                                                        throw th;
                                                    }
                                                } else {
                                                    n6 n6Var = (n6) ((AtomicReference) zd.f4636a.b).get();
                                                    if (n6Var == null || (str = n6Var.f3935a) == null) {
                                                        str = "?";
                                                    }
                                                    ae aeVar2 = ae.f3361a;
                                                    ae.b("AutoUpdate", "install vc=" + x2VarK.f4488a + " ADIADO: outra instalação em andamento (dono=" + str + ')', false);
                                                    StringBuilder sb2 = new StringBuilder("adiado: outra instalação em andamento (");
                                                    sb2.append(str);
                                                    sb2.append(')');
                                                    atomicReference2.set(sb2.toString());
                                                    i0.f3693a.r("auto");
                                                }
                                            } catch (Exception e5) {
                                                int[] iArr2 = CentralWatchdogService.S2;
                                                AtomicReference atomicReference3 = CentralWatchdogService.W2;
                                                StringBuilder sb3 = new StringBuilder("falha download ");
                                                sb3.append(x2VarK.b);
                                                sb3.append(": ");
                                                String message = e5.getMessage();
                                                sb3.append(message != null ? o2.k.C0(120, message) : e5.getClass().getSimpleName());
                                                atomicReference3.set(sb3.toString());
                                                throw e5;
                                            }
                                        } catch (Throwable th2) {
                                            i0.f3693a.r("auto");
                                            throw th2;
                                        }
                                    } else {
                                        n6 n6Var2 = (n6) ((AtomicReference) mVar2.b).get();
                                        StringBuilder sb4 = new StringBuilder("adiado: atualização ");
                                        if (n6Var2 == null || (str2 = n6Var2.f3935a) == null) {
                                            str2 = "desconhecida";
                                        }
                                        sb4.append(str2);
                                        sb4.append(" em andamento");
                                        atomicReference.set(sb4.toString());
                                        StringBuilder sb5 = new StringBuilder("Auto-update adiado: ");
                                        sb5.append(n6Var2 != null ? n6Var2.f3935a : null);
                                        sb5.append('/');
                                        sb5.append(n6Var2 != null ? n6Var2.b : null);
                                        Log.i("CentralWatchdog", sb5.toString());
                                    }
                                } else {
                                    atomicReference.set("instalação da " + x2VarK.b + " falhou " + i4 + "x — pausada (aguardando nova versão; ou instale manualmente)");
                                    Log.w("CentralWatchdog", "Auto-update: vc=" + x2VarK.f4488a + " pausada após " + i4 + " falhas (guard anti-loop)");
                                }
                            } else {
                                atomicReference.set("ok (vc=" + longVersionCode + ", latest=" + x2VarK.f4488a + ')');
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            AtomicReference atomicReference4 = CentralWatchdogService.W2;
                            String message2 = th.getMessage();
                            atomicReference4.set("erro: ".concat(message2 != null ? o2.k.C0(160, message2) : th.getClass().getSimpleName()));
                            androidx.activity.result.b.s(th, new StringBuilder("Auto-update erro: "), "CentralWatchdog");
                        }
                        if (CentralWatchdogService.U2) {
                            centralWatchdogService2.f811a.postDelayed(a3Var, 60000L);
                        }
                    } else {
                        CentralWatchdogService.W2.set("aguardando a próxima janela de consulta");
                        if (CentralWatchdogService.U2) {
                            centralWatchdogService2.f811a.postDelayed(a3Var3, 60000L);
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                    a3Var = a3Var3;
                }
                return x1.e.f4647c;
            case 2:
                CentralWatchdogService centralWatchdogService3 = (CentralWatchdogService) this.b;
                CarPropertyManager carPropertyManager = (CarPropertyManager) this.f4558c;
                int[] iArr3 = CentralWatchdogService.S2;
                int[] iArr4 = {289408000, 289408001};
                for (int i6 = 0; i6 < 2; i6++) {
                    Object objE = p1.e(carPropertyManager, iArr4[i6], 0);
                    Integer num2 = objE instanceof Integer ? (Integer) objE : null;
                    if (num2 != null && num2.intValue() != 0) {
                        num = num2;
                        if (num != null && (iIntValue = num.intValue()) != centralWatchdogService3.M) {
                            centralWatchdogService3.M = iIntValue;
                            Log.i("CentralWatchdog", "poll: troca de marcha (val=" + iIntValue + ") — reaplicar drive/regen");
                            p2Var = centralWatchdogService3.D2;
                            handler = centralWatchdogService3.f811a;
                            if (!DriveRegenFloaterService.M) {
                                handler.removeCallbacks(p2Var);
                                handler.postDelayed(p2Var, 600L);
                            }
                        }
                        return x1.e.f4647c;
                    }
                }
                if (num != null) {
                    centralWatchdogService3.M = iIntValue;
                    Log.i("CentralWatchdog", "poll: troca de marcha (val=" + iIntValue + ") — reaplicar drive/regen");
                    p2Var = centralWatchdogService3.D2;
                    handler = centralWatchdogService3.f811a;
                    if (!DriveRegenFloaterService.M) {
                        handler.removeCallbacks(p2Var);
                        handler.postDelayed(p2Var, 600L);
                    }
                }
                return x1.e.f4647c;
            case 3:
                HomeFloatingWidgetsService homeFloatingWidgetsService = (HomeFloatingWidgetsService) this.b;
                t7 t7Var = (t7) this.f4558c;
                List list = HomeFloatingWidgetsService.f926a0;
                try {
                    Object systemService = homeFloatingWidgetsService.getSystemService("activity");
                    i2.g.c(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
                    List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) systemService).getRunningTasks(1);
                    i2.g.d(runningTasks, "getRunningTasks(...)");
                    ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) y1.g.b0(runningTasks);
                    ComponentName componentName = runningTaskInfo != null ? runningTaskInfo.topActivity : null;
                    if (componentName != null) {
                        String strFlattenToShortString = componentName.flattenToShortString();
                        i2.g.d(strFlattenToShortString, "flattenToShortString(...)");
                        boolean zE1 = o2.k.e0(strFlattenToShortString, "AppListActivity", false);
                        o7Var = new o7(o2.k.e0(strFlattenToShortString, "com.flyme.auto.launcher", false) && !zE1, zE1);
                        break;
                    } else {
                        try {
                            String strB = new kotlinx.coroutines.scheduling.h(5555).b(3000, "dumpsys activity activities 2>/dev/null | grep mResumedActivity");
                            i2.g.b(strB);
                            boolean zE2 = o2.k.e0(strB, "AppListActivity", false);
                            if (!o2.k.e0(strB, "com.flyme.auto.launcher", false) || zE2) {
                                z2 = false;
                            }
                            o7Var = new o7(z2, zE2);
                        } catch (Throwable th5) {
                            Log.w("HomeFloatingWidgets", "checkForegroundState: " + th5.getMessage());
                            o7Var = new o7(false, false);
                        }
                    }
                } catch (Throwable unused) {
                }
                homeFloatingWidgetsService.f929c.post(new a1.g(homeFloatingWidgetsService, o7Var, t7Var, i3));
                return x1.e.f4647c;
            case 4:
                d8.b((Context) this.b, null, (String) this.f4558c, 2);
                return d8.b;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                MainActivity mainActivity = (MainActivity) this.b;
                ?? r3 = this.f4558c;
                int i7 = MainActivity.f1002z1;
                boolean zO = mainActivity.O();
                qe.e(mainActivity, "rede.ativarConnAdaptor", r3, 8);
                if (mainActivity.O() && !zO) {
                    zE0 = true;
                }
                mainActivity.f1027m0 = zE0;
                return (zE0 || mainActivity.O()) ? "ok" : "ERROR: a ativação não vingou — o ConnAdaptor não está em /data/app";
            case MusicClient.TYPE_GESTURE /* 6 */:
                i2.j jVar = (i2.j) this.b;
                MainActivity mainActivity2 = (MainActivity) this.f4558c;
                int i8 = MainActivity.f1002z1;
                qe qeVar = qe.f4124a;
                boolean zE = qe.e(mainActivity2, "audio.restaurarSomTravaPersistente", y1.s.W(new x1.a("fabrica", u.f4307v)), 8);
                jVar.f2289a = zE;
                return zE ? "exit_code=0" : "ERROR: sem playbook — sincronize a central uma vez";
            case PlaybackState.STATE_ERROR /* 7 */:
                kc kcVar = (kc) this.b;
                MainActivity mainActivity3 = (MainActivity) this.f4558c;
                int i9 = MainActivity.f1002z1;
                kcVar.a().f4513g = true;
                kcVar.a().f = true;
                mainActivity3.B.execute(new x8(mainActivity3, 18));
                return x1.e.f4647c;
            case 8:
                h0 h0Var = (h0) this.b;
                MainActivity mainActivity4 = (MainActivity) this.f4558c;
                int i10 = MainActivity.f1002z1;
                h0Var.a();
                mainActivity4.n1();
                return x1.e.f4647c;
            case 9:
                MainActivity mainActivity5 = (MainActivity) this.b;
                String str3 = (String) this.f4558c;
                int i11 = MainActivity.f1002z1;
                StringBuilder sb6 = new StringBuilder("criação manual: envio em partes bytes=");
                byte[] bytes = str3.getBytes(o2.a.f2622a);
                i2.g.d(bytes, "getBytes(...)");
                sb6.append(bytes.length);
                mainActivity5.w("RotasRoot", sb6.toString());
                synchronized (t1.f4251e) {
                    strX = m.x(str3, 30000, null, new l9(mainActivity5, c3 == true ? 1 : 0));
                }
                return strX;
            case 10:
                MainActivity mainActivity6 = (MainActivity) this.b;
                e.i iVar = (e.i) this.f4558c;
                mainActivity6.f1030n1 = false;
                try {
                    iVar.dismiss();
                    break;
                } catch (Throwable unused2) {
                }
                if (!mainActivity6.isFinishing() && !mainActivity6.isDestroyed()) {
                    mainActivity6.W0();
                }
                return x1.e.f4647c;
            case 11:
                MediaBarFloaterService mediaBarFloaterService = (MediaBarFloaterService) this.b;
                androidx.activity.d dVar = (androidx.activity.d) this.f4558c;
                try {
                    if (!mediaBarFloaterService.getSharedPreferences("tela_preta_prefs", 0).getBoolean("media_bar_floater_pinned", false)) {
                        if (mediaBarFloaterService.f1069k == null) {
                            zE0 = mediaBarFloaterService.f1078t;
                        } else {
                            String strB2 = new kotlinx.coroutines.scheduling.h(5555).b(3000, "dumpsys window windows 2>/dev/null | sed -n '/Window{.*CarNavigationBar}/,/mWindowRemovalAllowed/p' | grep -o 'isReadyForDisplay()=[a-z]*'");
                            i2.g.b(strB2);
                            zE0 = o2.k.m0(strB2) ? mediaBarFloaterService.f1078t : o2.k.e0(strB2, "=false", false);
                        }
                    }
                    break;
                } catch (Throwable unused3) {
                    zE0 = mediaBarFloaterService.f1078t;
                }
                mediaBarFloaterService.f1062c.post(new c0(zE0, mediaBarFloaterService, dVar, 4));
                return x1.e.f4647c;
            case 12:
                new Thread(new pd((Context) this.b, (q6) this.f4558c, c4 == true ? 1 : 0)).start();
                return x1.e.f4647c;
            case 13:
                return b();
            case 14:
                return c();
            case 15:
                QuickAccessFloaterService quickAccessFloaterService = (QuickAccessFloaterService) this.b;
                k0 k0Var = (k0) this.f4558c;
                int i12 = QuickAccessFloaterService.t0;
                quickAccessFloaterService.startForegroundService(new Intent(quickAccessFloaterService, (Class<?>) SplitFloaterService.class));
                quickAccessFloaterService.j();
                new Thread(new a1.r(13, k0Var)).start();
                return x1.e.f4647c;
            default:
                QuickAccessFloaterService quickAccessFloaterService2 = (QuickAccessFloaterService) this.b;
                j0 j0Var = (j0) this.f4558c;
                int i13 = QuickAccessFloaterService.t0;
                quickAccessFloaterService2.startForegroundService(new Intent(quickAccessFloaterService2, (Class<?>) AppPipFloaterService.class).putExtra("pacote", j0Var.b));
                quickAccessFloaterService2.j();
                return x1.e.f4647c;
        }
    }
}
