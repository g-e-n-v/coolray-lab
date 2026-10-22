package w0;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattServer;
import android.bluetooth.le.AdvertiseCallback;
import android.bluetooth.le.AdvertiseData;
import android.bluetooth.le.AdvertiseSettings;
import android.bluetooth.le.BluetoothLeAdvertiser;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelUuid;
import android.os.SystemClock;
import com.ex.auto.VhalProviderService;
import java.security.SecureRandom;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class u0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final u0 f4312a = new u0();
    public static final UUID b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final UUID f4313c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final UUID f4314d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Handler f4315e;
    public static volatile BluetoothLeAdvertiser f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static volatile s0 f4316g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static volatile BluetoothGattServer f4317h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static volatile BluetoothGattCharacteristic f4318i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Set f4319j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static volatile e.l f4320k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static volatile Context f4321l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static volatile boolean f4322m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static volatile long f4323n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static r0 f4324o;

    static {
        UUID uuidFromString = UUID.fromString("7ea9c1d4-3f62-4b18-9d5a-0c8e6f21ab70");
        i2.g.d(uuidFromString, "fromString(...)");
        b = uuidFromString;
        UUID uuidFromString2 = UUID.fromString("7ea9c1d4-3f62-4b18-9d5a-0c8e6f21ab71");
        i2.g.d(uuidFromString2, "fromString(...)");
        f4313c = uuidFromString2;
        UUID uuidFromString3 = UUID.fromString("00002902-0000-1000-8000-00805f9b34fb");
        i2.g.d(uuidFromString3, "fromString(...)");
        f4314d = uuidFromString3;
        f4315e = new Handler(Looper.getMainLooper());
        f4319j = Collections.synchronizedSet(new HashSet());
    }

    public static void a(Context context) {
        e.l lVar = f4320k;
        if (lVar != null) {
            f4315e.removeCallbacks(lVar);
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jFloorDiv = (((Math.floorDiv(jCurrentTimeMillis, 900000L) + 1) * 900000) - jCurrentTimeMillis) + 1000;
        e.l lVar2 = new e.l(context, 3);
        f4320k = lVar2;
        f4315e.postDelayed(lVar2, jFloorDiv >= 1000 ? jFloorDiv : 1000L);
    }

    public static void b(Context context, BluetoothLeAdvertiser bluetoothLeAdvertiser, AdvertiseCallback advertiseCallback) {
        try {
            bluetoothLeAdvertiser.startAdvertising(new AdvertiseSettings.Builder().setAdvertiseMode(1).setTxPowerLevel(2).setConnectable(true).setTimeout(0).build(), new AdvertiseData.Builder().setIncludeDeviceName(false).setIncludeTxPowerLevel(false).addServiceData(new ParcelUuid(b), m.B(f(context))).build(), advertiseCallback);
        } catch (Throwable th) {
            ae aeVar = ae.f3361a;
            ae.b("BleCarro", "startAdvertising: " + th.getMessage(), false);
        }
    }

    public static byte[] c() throws JSONException {
        wg wgVarB = VhalProviderService.b(3000L);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("ts", System.currentTimeMillis());
        if (wgVarB == null) {
            jSONObject.put("vivo", false);
            String string = jSONObject.toString();
            i2.g.d(string, "toString(...)");
            byte[] bytes = string.getBytes(o2.a.f2622a);
            i2.g.d(bytes, "getBytes(...)");
            return bytes;
        }
        jSONObject.put("vivo", true);
        Float f3 = wgVarB.f4459d;
        if (f3 != null) {
            jSONObject.put("soc", ((double) Math.round(f3.floatValue() * 10.0f)) / 10.0d);
        }
        Float f4 = wgVarB.f4457a;
        if (f4 != null) {
            jSONObject.put("kmh", Math.round(f4.floatValue()));
        }
        String str = wgVarB.f4458c;
        if (str != null) {
            jSONObject.put("g", str);
        }
        Float f5 = wgVarB.f4461g;
        if (f5 != null) {
            jSONObject.put("kw", ((double) Math.round(f5.floatValue() * 10.0f)) / 10.0d);
        }
        Float f6 = wgVarB.f;
        if (f6 != null) {
            jSONObject.put("odo", Math.round(f6.floatValue()));
        }
        Float f7 = wgVarB.f4460e;
        if (f7 != null) {
            jSONObject.put("rng", Math.round(f7.floatValue()));
        }
        String string2 = jSONObject.toString();
        i2.g.d(string2, "toString(...)");
        byte[] bytes2 = string2.getBytes(o2.a.f2622a);
        i2.g.d(bytes2, "getBytes(...)");
        return bytes2;
    }

    public static void e() {
        BluetoothGattCharacteristic bluetoothGattCharacteristic;
        BluetoothGattServer bluetoothGattServer;
        Set set = f4319j;
        if (set.isEmpty() || (bluetoothGattCharacteristic = f4318i) == null || (bluetoothGattServer = f4317h) == null) {
            return;
        }
        bluetoothGattCharacteristic.setValue(c());
        synchronized (set) {
            Iterator it = y1.g.m0(set).iterator();
            while (it.hasNext()) {
                bluetoothGattServer.notifyCharacteristicChanged((BluetoothDevice) it.next(), bluetoothGattCharacteristic, false);
            }
        }
    }

    public static byte[] f(Context context) {
        i2.g.e(context, "context");
        SharedPreferences sharedPreferences = context.getApplicationContext().createDeviceProtectedStorageContext().getSharedPreferences("ble_carro", 0);
        String string = sharedPreferences.getString("segredo_hex", null);
        if (string == null || string.length() != 32) {
            byte[] bArr = new byte[16];
            new SecureRandom().nextBytes(bArr);
            sharedPreferences.edit().putString("segredo_hex", y1.f.b0(bArr, new o(13))).apply();
            return bArr;
        }
        byte[] bArr2 = new byte[16];
        for (int i3 = 0; i3 < 16; i3++) {
            int i4 = i3 * 2;
            String strSubstring = string.substring(i4, i4 + 2);
            i2.g.d(strSubstring, "substring(...)");
            k1.a.f(16);
            bArr2[i3] = (byte) Integer.parseInt(strSubstring, 16);
        }
        return bArr2;
    }

    public final synchronized void d(boolean z2) {
        q4 q4Var;
        try {
            Context context = f4321l;
            if (context == null) {
                return;
            }
            long jElapsedRealtime = f4323n == 0 ? Long.MAX_VALUE : SystemClock.elapsedRealtime() - f4323n;
            if (z2) {
                r0 r0Var = f4324o;
                if (r0Var != null) {
                    f4315e.removeCallbacks(r0Var);
                    ae aeVar = ae.f3361a;
                    ae.b("BleCarro", "farol: retomada agendada cancelada — a projeção voltou", false);
                }
                f4324o = null;
            }
            boolean z3 = f4322m;
            if (!z2 || z3) {
                q4Var = (!z2 && z3 && jElapsedRealtime >= 15000) ? q4.b : q4.f4094c;
            } else {
                q4Var = q4.f4093a;
            }
            int iOrdinal = q4Var.ordinal();
            if (iOrdinal == 0) {
                f4322m = true;
                r0 r0Var2 = f4324o;
                if (r0Var2 != null) {
                    f4315e.removeCallbacks(r0Var2);
                }
                f4324o = null;
                BluetoothLeAdvertiser bluetoothLeAdvertiser = f;
                s0 s0Var = f4316g;
                e.l lVar = f4320k;
                if (lVar != null) {
                    f4315e.removeCallbacks(lVar);
                }
                f4320k = null;
                if (bluetoothLeAdvertiser != null && s0Var != null) {
                    try {
                        bluetoothLeAdvertiser.stopAdvertising(s0Var);
                    } catch (Throwable unused) {
                    }
                }
                ae aeVar2 = ae.f3361a;
                ae.b("BleCarro", "farol pausado: projeção ativa (há rede em comum, o anúncio não serve)", false);
            } else if (iOrdinal == 1) {
                f4322m = false;
                r0 r0Var3 = f4324o;
                if (r0Var3 != null) {
                    f4315e.removeCallbacks(r0Var3);
                }
                f4324o = null;
                BluetoothLeAdvertiser bluetoothLeAdvertiser2 = f;
                s0 s0Var2 = f4316g;
                if (bluetoothLeAdvertiser2 != null && s0Var2 != null) {
                    b(context, bluetoothLeAdvertiser2, s0Var2);
                    a(context);
                }
                ae aeVar3 = ae.f3361a;
                ae.b("BleCarro", "farol retomado: projeção encerrada há 15s", false);
            } else {
                if (iOrdinal != 2) {
                    throw new androidx.fragment.app.q();
                }
                if (!z2 && f4322m && f4324o == null) {
                    r0 r0Var4 = new r0(0);
                    f4324o = r0Var4;
                    f4315e.postDelayed(r0Var4, 15250 - jElapsedRealtime);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
