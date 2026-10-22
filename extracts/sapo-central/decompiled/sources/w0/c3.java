package w0;

import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.NetworkInfo;
import android.os.SystemClock;
import android.util.Log;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.BlackoutFloaterService;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.QuickAccessFloaterService;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class c3 extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3424a;
    public final /* synthetic */ CentralWatchdogService b;

    public /* synthetic */ c3(CentralWatchdogService centralWatchdogService, int i3) {
        this.f3424a = i3;
        this.b = centralWatchdogService;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        BluetoothDevice bluetoothDevice;
        BluetoothDevice bluetoothDevice2;
        BluetoothDevice bluetoothDevice3;
        String address;
        String address2;
        String address3;
        BluetoothDevice bluetoothDevice4;
        String stringExtra;
        String stringExtra2;
        int i3 = 2;
        boolean z2 = true;
        switch (this.f3424a) {
            case 0:
                g5 g5Var = g5.f3619a;
                if (i2.g.a(intent != null ? intent.getAction() : null, "android.net.wifi.WIFI_AP_STATE_CHANGED")) {
                    int intExtra = intent.getIntExtra("wifi_state", 11);
                    if (intExtra == 14) {
                        this.b.f889v1 = SystemClock.elapsedRealtime();
                    }
                    if (intExtra == 12 || intExtra == 13) {
                        this.b.M0 = SystemClock.elapsedRealtime();
                        return;
                    }
                    if (intExtra == 11 || intExtra == 14) {
                        CentralWatchdogService centralWatchdogService = this.b;
                        boolean zC0 = t1.c0(centralWatchdogService.L0, centralWatchdogService.M0);
                        if (((centralWatchdogService.c1() || !zC0) ? g5.b : g5Var) == g5Var) {
                            ae aeVar = ae.f3361a;
                            StringBuilder sbK = androidx.activity.result.b.k("AP caiu (estado=", intExtra, ") — o hotspot tinha tomado o Wi-Fi; devolvendo em ");
                            sbK.append(centralWatchdogService.E1 / ((long) 1000));
                            sbK.append('s');
                            ae.b("CentralWatchdog", sbK.toString(), false);
                            centralWatchdogService.f811a.postDelayed(new x1(centralWatchdogService, 4), centralWatchdogService.E1);
                            return;
                        }
                        Log.i("CentralWatchdog", "STA apos AP (estado=" + intExtra + "): nada a devolver (tomada=" + zC0 + " staLigada=" + centralWatchdogService.c1() + ')');
                        if (this.b.W().getBoolean("ap_sempre_aberto", false) && !this.b.W().getBoolean("wifi_auto_enable_on_wake", false)) {
                            if (this.b.c1()) {
                                ae aeVar2 = ae.f3361a;
                                ae.b("CentralWatchdog", "AP caiu (estado=" + intExtra + ") — não reabro: o WiFi cliente está ligado e a rádio é uma só", false);
                                return;
                            }
                            if (SystemClock.elapsedRealtime() - this.b.B1 > this.b.C1) {
                                ae aeVar3 = ae.f3361a;
                                StringBuilder sbK2 = androidx.activity.result.b.k("AP caiu (estado=", intExtra, ") — fora da janela de arranque (");
                                sbK2.append(this.b.C1 / ((long) 60000));
                                sbK2.append(" min); só reabro no boot, ao acordar ou quando o celular chegar");
                                ae.b("CentralWatchdog", sbK2.toString(), false);
                                return;
                            }
                            long jElapsedRealtime = SystemClock.elapsedRealtime();
                            long j3 = jElapsedRealtime - this.b.A1;
                            CentralWatchdogService centralWatchdogService2 = this.b;
                            if (j3 < centralWatchdogService2.D1) {
                                ae aeVar4 = ae.f3361a;
                                StringBuilder sbK3 = androidx.activity.result.b.k("AP caiu (estado=", intExtra, ") — não reabro: última reabertura há ");
                                sbK3.append((jElapsedRealtime - this.b.A1) / ((long) 1000));
                                sbK3.append('s');
                                ae.b("CentralWatchdog", sbK3.toString(), false);
                                return;
                            }
                            centralWatchdogService2.A1 = jElapsedRealtime;
                            ae aeVar5 = ae.f3361a;
                            ae.b("CentralWatchdog", "AP caiu (estado=" + intExtra + ") — reabrindo para o próximo telefone achar a rede pronta", false);
                            CentralWatchdogService centralWatchdogService3 = this.b;
                            centralWatchdogService3.f811a.postDelayed(new v2(centralWatchdogService3, 16), 3000L);
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            case 1:
                if (intent == null || intent.getIntExtra("android.bluetooth.profile.extra.STATE", -1) != 2) {
                    return;
                }
                try {
                    bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                    break;
                } catch (Throwable unused) {
                    bluetoothDevice = null;
                }
                String str = this.b.f847j2;
                if (str != null && bluetoothDevice != null && o2.t.a0(bluetoothDevice.getAddress(), str) && this.b.Z1) {
                    ae aeVar6 = ae.f3361a;
                    StringBuilder sb = new StringBuilder("BT: o iPhone do CarPlay conectou ");
                    String action = intent.getAction();
                    sb.append(action != null ? o2.k.z0(action, '.') : null);
                    sb.append(" por BT — desconecto (o áudio é do CarPlay)");
                    ae.b("CentralWatchdog", sb.toString(), false);
                    m.j(this.b, str);
                    return;
                }
                return;
            case 2:
                String action2 = intent != null ? intent.getAction() : null;
                if (action2 != null) {
                    switch (action2.hashCode()) {
                        case -377527494:
                            if (action2.equals("android.bluetooth.device.action.UUID")) {
                                try {
                                    bluetoothDevice2 = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                                } catch (Throwable unused2) {
                                    bluetoothDevice2 = null;
                                }
                                if (bluetoothDevice2 != null) {
                                    CentralWatchdogService centralWatchdogService4 = this.b;
                                    int[] iArr = CentralWatchdogService.S2;
                                    centralWatchdogService4.d0(bluetoothDevice2, "ACTION_UUID");
                                    return;
                                }
                                return;
                            }
                            return;
                        case -301431627:
                            if (action2.equals("android.bluetooth.device.action.ACL_CONNECTED")) {
                                try {
                                    bluetoothDevice3 = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                                    break;
                                } catch (Throwable unused3) {
                                    bluetoothDevice3 = null;
                                }
                                if (bluetoothDevice3 != null) {
                                    CentralWatchdogService centralWatchdogService5 = this.b;
                                    int[] iArr2 = CentralWatchdogService.S2;
                                    if (centralWatchdogService5.S0(bluetoothDevice3)) {
                                        CentralWatchdogService centralWatchdogService6 = this.b;
                                        try {
                                            address = bluetoothDevice3.getAddress();
                                            break;
                                        } catch (Throwable unused4) {
                                            address = null;
                                        }
                                        centralWatchdogService6.f820c1 = address;
                                        this.b.f823d0 = null;
                                        this.b.f827e0.incrementAndGet();
                                        CentralWatchdogService centralWatchdogService7 = this.b;
                                        centralWatchdogService7.f834g0 = 0L;
                                        if (centralWatchdogService7.t()) {
                                            CentralWatchdogService centralWatchdogService8 = this.b;
                                            centralWatchdogService8.f811a.removeCallbacks(centralWatchdogService8.M2);
                                            CentralWatchdogService centralWatchdogService9 = this.b;
                                            centralWatchdogService9.f811a.postDelayed(centralWatchdogService9.M2, 5000L);
                                        }
                                        String str2 = this.b.f847j2;
                                        if (str2 != null && this.b.Z1 && o2.t.a0(bluetoothDevice3.getAddress(), str2)) {
                                            ae aeVar7 = ae.f3361a;
                                            ae.b("CentralWatchdog", "BT: o iPhone do CarPlay voltou ao Bluetooth — desconecto só o áudio/telefone dele", false);
                                            CentralWatchdogService centralWatchdogService10 = this.b;
                                            centralWatchdogService10.f811a.postDelayed(new a2(centralWatchdogService10, str2, 11), 1500L);
                                            return;
                                        }
                                        this.b.d0(bluetoothDevice3, "ACL_CONNECTED");
                                        this.b.h0("conexão BT");
                                        this.b.G("conexão BT");
                                        boolean zL0 = this.b.l0(bluetoothDevice3);
                                        this.b.f839h2 = zL0;
                                        if (zL0 && this.b.K()) {
                                            try {
                                                address2 = bluetoothDevice3.getAddress();
                                            } catch (Throwable unused5) {
                                                address2 = null;
                                            }
                                            CentralWatchdogService centralWatchdogService11 = this.b;
                                            centralWatchdogService11.f811a.postDelayed(new a2(centralWatchdogService11, address2, 12), 4000L);
                                            break;
                                        }
                                        if (!zL0 && this.b.r()) {
                                            ExecutorService executorService = n3.f3929a;
                                            n3.a(new d2(this.b, 18));
                                        }
                                        if (zL0 || !this.b.r()) {
                                            return;
                                        }
                                        CentralWatchdogService centralWatchdogService12 = this.b;
                                        centralWatchdogService12.f811a.postDelayed(new v2(centralWatchdogService12, 19), 1500L);
                                        return;
                                    }
                                }
                                ae aeVar8 = ae.f3361a;
                                ae.b("CentralWatchdog", "BT: acessório conectado — não preparo AP nem disparo projeção", false);
                                return;
                            }
                            return;
                        case 1821585647:
                            if (action2.equals("android.bluetooth.device.action.ACL_DISCONNECTED")) {
                                CentralWatchdogService centralWatchdogService13 = this.b;
                                int[] iArr3 = CentralWatchdogService.S2;
                                centralWatchdogService13.f811a.removeCallbacks(centralWatchdogService13.f816b1);
                                centralWatchdogService13.W0 = false;
                                centralWatchdogService13.X0 = 0;
                                centralWatchdogService13.Y0 = 0;
                                centralWatchdogService13.Z0 = 0;
                                this.b.f839h2 = false;
                                try {
                                    BluetoothDevice bluetoothDevice5 = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                                    address3 = bluetoothDevice5 != null ? bluetoothDevice5.getAddress() : null;
                                    break;
                                } catch (Throwable unused6) {
                                }
                                long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                                CentralWatchdogService centralWatchdogService14 = this.b;
                                long j4 = jElapsedRealtime2 - (centralWatchdogService14.H1 - centralWatchdogService14.I1);
                                if (address3 != null) {
                                    this.b.G1.put(address3, Long.valueOf(j4));
                                    Log.i("CentralWatchdog", "CarPlay identity: " + address3 + " desconectou — próxima injeção liberada em " + (this.b.I1 / ((long) 1000)) + 's');
                                    return;
                                }
                                Set setKeySet = centralWatchdogService14.G1.keySet();
                                i2.g.d(setKeySet, "<get-keys>(...)");
                                List listM0 = y1.g.m0(setKeySet);
                                CentralWatchdogService centralWatchdogService15 = this.b;
                                Iterator it = listM0.iterator();
                                while (it.hasNext()) {
                                    centralWatchdogService15.G1.put((String) it.next(), Long.valueOf(j4));
                                }
                                return;
                            }
                            return;
                        case 2116862345:
                            if (action2.equals("android.bluetooth.device.action.BOND_STATE_CHANGED") && intent.getIntExtra("android.bluetooth.device.extra.BOND_STATE", -1) == 12) {
                                try {
                                    bluetoothDevice4 = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                                } catch (Throwable unused7) {
                                    bluetoothDevice4 = null;
                                }
                                if (bluetoothDevice4 != null) {
                                    CentralWatchdogService centralWatchdogService16 = this.b;
                                    int[] iArr4 = CentralWatchdogService.S2;
                                    centralWatchdogService16.d0(bluetoothDevice4, "pareamento");
                                    return;
                                }
                                return;
                            }
                            return;
                        default:
                            return;
                    }
                }
                return;
            case 3:
                if (intent == null || (stringExtra = intent.getStringExtra("notification")) == null) {
                    return;
                }
                Set setP = k1.a.P("connected", "foreground", "background", "disconnected");
                Locale locale = Locale.ROOT;
                i2.g.d(locale, "ROOT");
                String lowerCase = stringExtra.toLowerCase(locale);
                i2.g.d(lowerCase, "toLowerCase(...)");
                if (setP.contains(lowerCase)) {
                    this.b.f817b2 = true;
                    this.b.f825d2.incrementAndGet();
                }
                if (!stringExtra.equalsIgnoreCase("connected") && !stringExtra.equalsIgnoreCase("foreground") && !stringExtra.equalsIgnoreCase("background")) {
                    z2 = stringExtra.equalsIgnoreCase("disconnected") ? false : this.b.f814a2;
                }
                if (z2 != this.b.f814a2) {
                    this.b.f814a2 = z2;
                    ae aeVar9 = ae.f3361a;
                    ae.b("CentralWatchdog", "AA sessão: ".concat(stringExtra), false);
                    try {
                        u0 u0Var = u0.f4312a;
                        synchronized (u0Var) {
                            if (z2) {
                                try {
                                    u0.f4323n = SystemClock.elapsedRealtime();
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            u0Var.d(z2);
                        }
                        return;
                    } catch (Throwable unused8) {
                        return;
                    }
                }
                return;
            case 4:
                if (intent == null || (stringExtra2 = intent.getStringExtra("notification")) == null) {
                    return;
                }
                ae aeVar10 = ae.f3361a;
                ae.b("CentralWatchdog", "CarPlay broadcast: notification=".concat(stringExtra2), false);
                Set setP2 = k1.a.P("connected", "foreground", "background", "disconnected");
                Locale locale2 = Locale.ROOT;
                i2.g.d(locale2, "ROOT");
                String lowerCase2 = stringExtra2.toLowerCase(locale2);
                i2.g.d(lowerCase2, "toLowerCase(...)");
                if (setP2.contains(lowerCase2)) {
                    this.b.f821c2 = true;
                    this.b.f825d2.incrementAndGet();
                }
                if (stringExtra2.equalsIgnoreCase("disable_bluetooth")) {
                    this.b.f854l1 = true;
                    String stringExtra3 = intent.getStringExtra("device");
                    if (!this.b.W().getBoolean(this.b.f851k2, true) || stringExtra3 == null || o2.k.m0(stringExtra3)) {
                        ae.b("CentralWatchdog", "BT: o CarPlay desligou o Bluetooth de propósito — não vou religar", false);
                    } else {
                        CentralWatchdogService centralWatchdogService17 = this.b;
                        centralWatchdogService17.f847j2 = stringExtra3;
                        ae.b("CentralWatchdog", "BT: o CarPlay desligou o rádio inteiro — religo em " + (centralWatchdogService17.f855l2 / ((long) 1000)) + "s, sem o iPhone " + stringExtra3, false);
                        centralWatchdogService17.f811a.postDelayed(new a2(centralWatchdogService17, stringExtra3, 7), centralWatchdogService17.f855l2);
                    }
                }
                if (!stringExtra2.equalsIgnoreCase("connected") && !stringExtra2.equalsIgnoreCase("foreground") && !stringExtra2.equalsIgnoreCase("background")) {
                    z2 = stringExtra2.equalsIgnoreCase("disconnected") ? false : this.b.Z1;
                }
                if (stringExtra2.equalsIgnoreCase("disconnected")) {
                    this.b.f847j2 = null;
                }
                try {
                    od odVar = od.f3992a;
                    od.o(z2);
                    break;
                } catch (Throwable unused9) {
                }
                if (z2 != this.b.Z1) {
                    this.b.Z1 = z2;
                    ae aeVar11 = ae.f3361a;
                    ae.b("CentralWatchdog", "CarPlay sessão: ".concat(stringExtra2), false);
                    if (z2) {
                        CentralWatchdogService centralWatchdogService18 = this.b;
                        if (centralWatchdogService18.W0) {
                            centralWatchdogService18.R0("CarPlay conectado");
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                CentralWatchdogService centralWatchdogService19 = this.b;
                if (centralWatchdogService19.E0) {
                    Log.i("CentralWatchdog", "Volume (broadcast) alterado — restaurando brilho anterior");
                    centralWatchdogService19.x0();
                    return;
                }
                return;
            case MusicClient.TYPE_GESTURE /* 6 */:
                int intExtra2 = intent != null ? intent.getIntExtra("android.bluetooth.adapter.extra.STATE", -1) : -1;
                long jElapsedRealtime3 = SystemClock.elapsedRealtime();
                if (intExtra2 != 10) {
                    if (intExtra2 != 12) {
                        return;
                    }
                    if (this.b.f854l1) {
                        this.b.f854l1 = false;
                        ae aeVar12 = ae.f3361a;
                        ae.b("CentralWatchdog", "BT: ligado de novo — volto a poder religar quando fizer falta", false);
                    }
                    this.b.W().edit().putBoolean("bt_desligado_por_nos", false).apply();
                    return;
                }
                if (jElapsedRealtime3 < this.b.f858m1) {
                    ae aeVar13 = ae.f3361a;
                    ae.b("CentralWatchdog", "BT: desligou por pedido NOSSO", false);
                    return;
                } else {
                    this.b.f854l1 = true;
                    ae aeVar14 = ae.f3361a;
                    ae.b("CentralWatchdog", "BT: desligado por FORA (usuário ou CarPlay) — não vou religar", false);
                    return;
                }
            case PlaybackState.STATE_ERROR /* 7 */:
                final CentralWatchdogService centralWatchdogService20 = this.b;
                int[] iArr5 = CentralWatchdogService.S2;
                if (CentralWatchdogService.U2) {
                    int i4 = QuickAccessFloaterService.t0;
                    if (QuickAccessFloaterService.f1133z0 || BlackoutFloaterService.f796q) {
                        Log.w("CentralWatchdog", "applyStatusBrightnessFromSlider: tela já apagada por outro mecanismo — ignorando");
                        return;
                    }
                    boolean z3 = centralWatchdogService20.W().getBoolean("status_brightness2_enabled", false);
                    int i5 = centralWatchdogService20.F0;
                    if (i5 == 0) {
                        i3 = 1;
                    } else if (i5 != 1 || !z3) {
                        i3 = 0;
                    }
                    if (i3 == 0) {
                        centralWatchdogService20.x0();
                        return;
                    }
                    final int i6 = centralWatchdogService20.W().getInt(i3 == 1 ? "status_brightness_pct" : "status_brightness_pct2", 50);
                    final boolean z4 = i6 <= 0;
                    final int i7 = i3;
                    final int iK = z4 ? 0 : k1.a.k((k1.a.k(i6, 5, 100) * 255) / 100, 12, 255);
                    final boolean z5 = centralWatchdogService20.E0;
                    new Thread(new Runnable() { // from class: w0.r2
                        /* JADX WARN: Code duplicated, block: B:14:0x0032  */
                        @Override // java.lang.Runnable
                        public final void run() {
                            Integer numW;
                            int iIntValue;
                            int[] iArr6 = CentralWatchdogService.S2;
                            boolean z6 = z5;
                            CentralWatchdogService centralWatchdogService21 = centralWatchdogService20;
                            if (!z6) {
                                try {
                                    numW = o2.s.W(o2.k.E0(f2.d.h0(new File("/sys/class/leds/lcd-backlight/brightness"))).toString());
                                } catch (Throwable unused10) {
                                    numW = null;
                                }
                                if (numW == null) {
                                    iIntValue = 166;
                                } else {
                                    Integer num = numW.intValue() > 0 ? numW : null;
                                    if (num != null) {
                                        iIntValue = num.intValue();
                                    } else {
                                        iIntValue = 166;
                                    }
                                }
                                centralWatchdogService21.G0 = iIntValue;
                            }
                            m.f(centralWatchdogService21, iK, z4);
                            centralWatchdogService21.f811a.post(new a1.k(centralWatchdogService21, i7, i6, 1));
                        }
                    }).start();
                    return;
                }
                return;
            case 8:
                new Thread(new v2(this.b, 22)).start();
                return;
            case 9:
                i2.g.e(context, "context");
                i2.g.e(intent, "intent");
                if (i2.g.a(intent.getAction(), "android.intent.action.SCREEN_ON")) {
                    CentralWatchdogService centralWatchdogService21 = this.b;
                    int[] iArr6 = CentralWatchdogService.S2;
                    centralWatchdogService21.S("ACTION_SCREEN_ON");
                    return;
                }
                return;
            default:
                i2.g.e(context, "context");
                i2.g.e(intent, "intent");
                if (i2.g.a(intent.getAction(), "android.net.wifi.STATE_CHANGE")) {
                    NetworkInfo networkInfo = (NetworkInfo) intent.getParcelableExtra("networkInfo");
                    z2 = networkInfo != null && networkInfo.isConnected();
                    boolean z6 = this.b.Y;
                    this.b.Y = z2;
                    if (z2 || !CentralWatchdogService.v()) {
                        this.b.W().edit().putBoolean("wifi_cliente_ativo_antes", z2).apply();
                    }
                    if (!z2 || z6 || this.b.F("WiFi automático")) {
                        return;
                    }
                    Log.i("CentralWatchdog", "WiFi reconectado — reaplicando drive/regen");
                    if (this.b.f840i == null) {
                        this.b.Y();
                        return;
                    } else {
                        this.b.D("wifi_reconnected");
                        return;
                    }
                }
                return;
        }
    }
}
