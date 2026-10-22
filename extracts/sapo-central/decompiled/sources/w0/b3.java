package w0;

import android.car.hardware.CarPropertyValue;
import android.car.hardware.property.CarPropertyManager;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import com.ex.auto.CentralWatchdogService;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class b3 implements CarPropertyManager.CarPropertyEventCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3377a;
    public final /* synthetic */ CentralWatchdogService b;

    public /* synthetic */ b3(CentralWatchdogService centralWatchdogService, int i3) {
        this.f3377a = i3;
        this.b = centralWatchdogService;
    }

    private final void a(int i3, int i4) {
    }

    /* JADX WARN: Code duplicated, block: B:185:0x03e3 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:188:0x03e8  */
    /* JADX WARN: Code duplicated, block: B:190:0x03eb A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:196:0x03fe A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:290:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r13v5, types: [java.lang.Object, java.util.Map] */
    /* JADX WARN: Type inference failed for: r4v48, types: [java.lang.Object, java.util.Map] */
    @Override // android.car.hardware.property.CarPropertyManager.CarPropertyEventCallback
    public final void onChangeEvent(CarPropertyValue carPropertyValue) {
        boolean z2;
        int i3;
        int i4;
        int i5;
        boolean z3;
        boolean z4;
        Integer num;
        boolean z5;
        CarPropertyManager carPropertyManager;
        t4 t4Var;
        Integer num2;
        switch (this.f3377a) {
            case 0:
                i2.g.e(carPropertyValue, "value");
                if (carPropertyValue.getStatus() != 0) {
                    return;
                }
                Object value = carPropertyValue.getValue();
                Integer num3 = value instanceof Integer ? (Integer) value : null;
                if (num3 != null) {
                    int iIntValue = num3.intValue();
                    boolean z6 = iIntValue != 0;
                    Log.i("CentralWatchdog", "aebObserver: AEB int=" + iIntValue + " → on=" + z6);
                    CentralWatchdogService centralWatchdogService = this.b;
                    int[] iArr = CentralWatchdogService.S2;
                    centralWatchdogService.W().edit().putBoolean("aeb_state_saved", z6).apply();
                    CentralWatchdogService centralWatchdogService2 = this.b;
                    if (!centralWatchdogService2.E) {
                        centralWatchdogService2.E = true;
                        return;
                    }
                    if (SystemClock.elapsedRealtime() - this.b.F <= 30000 || this.b.W().getBoolean("aeb_desired", z6) == z6) {
                        return;
                    }
                    this.b.W().edit().putBoolean("aeb_desired", z6).apply();
                    Log.i("CentralWatchdog", "aebObserver: usuário mudou o AEB pelo carro → desejado=" + z6);
                    return;
                }
                return;
            case 1:
                CentralWatchdogService centralWatchdogService3 = this.b;
                i2.g.e(carPropertyValue, "value");
                if (carPropertyValue.getStatus() != 0) {
                    return;
                }
                Object value2 = carPropertyValue.getValue();
                Integer num4 = value2 instanceof Integer ? (Integer) value2 : null;
                if (num4 != null) {
                    int iIntValue2 = num4.intValue();
                    switch (carPropertyValue.getPropertyId()) {
                        case 289408000:
                            z2 = iIntValue2 != centralWatchdogService3.K;
                            centralWatchdogService3.K = iIntValue2;
                            break;
                        case 289408001:
                            z2 = iIntValue2 != centralWatchdogService3.L;
                            centralWatchdogService3.L = iIntValue2;
                            break;
                        default:
                            z2 = false;
                            break;
                    }
                    if (z2) {
                        Log.i("CentralWatchdog", "troca de marcha (prop=" + carPropertyValue.getPropertyId() + " val=" + iIntValue2 + ") — reaplicar drive/regen");
                        p2 p2Var = centralWatchdogService3.D2;
                        Handler handler = centralWatchdogService3.f811a;
                        if (DriveRegenFloaterService.M) {
                            return;
                        }
                        handler.removeCallbacks(p2Var);
                        handler.postDelayed(p2Var, 600L);
                        return;
                    }
                    return;
                }
                return;
            case 2:
                CentralWatchdogService centralWatchdogService4 = this.b;
                Handler handler2 = centralWatchdogService4.f811a;
                i2.g.e(carPropertyValue, "value");
                Log.i("CentralWatchdog", String.format("rearCamTurnSignal: onChangeEvent prop=0x%x status=" + carPropertyValue.getStatus() + " value=" + carPropertyValue.getValue(), Arrays.copyOf(new Object[]{Integer.valueOf(carPropertyValue.getPropertyId())}, 1)));
                Object value3 = carPropertyValue.getValue();
                Integer num5 = value3 instanceof Integer ? (Integer) value3 : null;
                if (num5 != null) {
                    int iIntValue3 = num5.intValue();
                    Integer num6 = centralWatchdogService4.J;
                    centralWatchdogService4.J = num5;
                    if (num6 != null) {
                        i3 = 1;
                        if (num6.intValue() == 1) {
                            i4 = 2;
                        }
                        if (iIntValue3 != i3 || iIntValue3 == i4) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (!z3 && i5 == 0) {
                            v2 v2Var = centralWatchdogService4.z2;
                            if (v2Var != null) {
                                handler2.removeCallbacks(v2Var);
                                centralWatchdogService4.z2 = null;
                            }
                            centralWatchdogService4.L0(true);
                            return;
                        }
                        if (!z3 || i5 == 0) {
                            return;
                        }
                        if (!centralWatchdogService4.W().getBoolean("rear_cam_hold_open_5s", false)) {
                            centralWatchdogService4.L0(false);
                            return;
                        }
                        v2 v2Var2 = new v2(centralWatchdogService4, 18);
                        centralWatchdogService4.z2 = v2Var2;
                        handler2.postDelayed(v2Var2, 5000L);
                        Log.i("CentralWatchdog", "rearCamTurnSignal: seta desligou, segurando o PiP aberto por 5000ms (ícone 5s)");
                        return;
                    }
                    i3 = 1;
                    if (num6 != null) {
                        i4 = 2;
                        i5 = num6.intValue() == 2 ? i3 : 0;
                        if (iIntValue3 != i3) {
                            z3 = true;
                        } else {
                            z3 = true;
                        }
                        if (!z3) {
                        }
                        if (z3) {
                            return;
                        } else {
                            return;
                        }
                    }
                    i4 = 2;
                    if (iIntValue3 != i3) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    if (!z3) {
                    }
                    if (z3) {
                        return;
                    } else {
                        return;
                    }
                }
                return;
            case 3:
                CentralWatchdogService centralWatchdogService5 = this.b;
                i2.g.e(carPropertyValue, "value");
                if (carPropertyValue.getStatus() != 0) {
                    return;
                }
                Object value4 = carPropertyValue.getValue();
                Boolean bool = value4 instanceof Boolean ? (Boolean) value4 : null;
                if (bool != null) {
                    boolean zBooleanValue = bool.booleanValue();
                    int propertyId = carPropertyValue.getPropertyId();
                    if (propertyId == 270535680) {
                        Boolean bool2 = centralWatchdogService5.f894y;
                        centralWatchdogService5.f894y = bool;
                        if (i2.g.a(bool2, Boolean.FALSE) && zBooleanValue) {
                            CentralWatchdogService.i(centralWatchdogService5, "windshieldHeat→true");
                            return;
                        }
                        return;
                    }
                    if (propertyId == 354419975) {
                        Boolean bool3 = centralWatchdogService5.f892x;
                        centralWatchdogService5.f892x = bool;
                        if (i2.g.a(bool3, Boolean.FALSE) && zBooleanValue) {
                            CentralWatchdogService.i(centralWatchdogService5, "frontMaxDefrost→true");
                            return;
                        }
                        return;
                    }
                    if (propertyId != 354419984) {
                        return;
                    }
                    Boolean bool4 = centralWatchdogService5.f890w;
                    centralWatchdogService5.f890w = bool;
                    if (!i2.g.a(bool4, Boolean.TRUE) || zBooleanValue) {
                        return;
                    }
                    CentralWatchdogService.i(centralWatchdogService5, "HVAC_POWER_ON→false");
                    return;
                }
                return;
            default:
                t4 t4Var2 = t4.b;
                i2.g.e(carPropertyValue, "value");
                Object value5 = carPropertyValue.getValue();
                Integer num7 = value5 instanceof Integer ? (Integer) value5 : null;
                if (num7 != null) {
                    int iIntValue4 = num7.intValue();
                    Log.i("CentralWatchdog", String.format("DOOR_POS área=0x%x val=%d status=%d", Arrays.copyOf(new Object[]{Integer.valueOf(carPropertyValue.getAreaId()), num7, Integer.valueOf(carPropertyValue.getStatus())}, 3)));
                    CentralWatchdogService centralWatchdogService6 = this.b;
                    int areaId = carPropertyValue.getAreaId();
                    int[] iArr2 = CentralWatchdogService.S2;
                    if (centralWatchdogService6.W().getBoolean("window_driver_on_door", false) && (num = (Integer) u.f4305t.get(Integer.valueOf(areaId))) != null) {
                        int iIntValue5 = num.intValue();
                        if (iIntValue4 == 1) {
                            z5 = true;
                        } else if (iIntValue4 == 2) {
                            z5 = false;
                        }
                        Boolean bool5 = (Boolean) centralWatchdogService6.f860n.get(Integer.valueOf(areaId));
                        centralWatchdogService6.f860n.put(Integer.valueOf(areaId), Boolean.valueOf(z5));
                        if (bool5 != null && !bool5.equals(Boolean.valueOf(z5)) && (carPropertyManager = centralWatchdogService6.f856m) != null) {
                            int iIntValue6 = (!centralWatchdogService6.W().getBoolean("window_opposite_on_door", false) || (num2 = (Integer) u.f4306u.get(num)) == null) ? iIntValue5 : num2.intValue();
                            if (z5) {
                                int[] iArr3 = u.f4304s;
                                int iV = y1.s.V(iArr3.length);
                                if (iV < 16) {
                                    iV = 16;
                                }
                                LinkedHashMap linkedHashMap = new LinkedHashMap(iV);
                                int length = iArr3.length;
                                int i6 = 0;
                                while (i6 < length) {
                                    int i7 = iArr3[i6];
                                    linkedHashMap.put(Integer.valueOf(i7), p1.c(carPropertyManager, 322964416, i7));
                                    i6++;
                                    iArr3 = iArr3;
                                }
                                if (centralWatchdogService6.f864o == null) {
                                    Collection collectionValues = linkedHashMap.values();
                                    if (collectionValues == null || !collectionValues.isEmpty()) {
                                        Iterator it = collectionValues.iterator();
                                        while (true) {
                                            if (it.hasNext()) {
                                                Integer num8 = (Integer) it.next();
                                                if (num8 != null && num8.intValue() > 7) {
                                                    t4Var = t4Var2;
                                                }
                                            }
                                        }
                                    }
                                    t4Var = t4.f4259a;
                                } else {
                                    t4Var = t4Var2;
                                }
                                if (t4Var == t4Var2) {
                                    LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                                    for (Map.Entry entry : linkedHashMap.entrySet()) {
                                        Integer num9 = (Integer) entry.getValue();
                                        if (num9 != null && num9.intValue() > 7) {
                                            linkedHashMap2.put(entry.getKey(), entry.getValue());
                                        }
                                    }
                                    ArrayList arrayList = new ArrayList(linkedHashMap2.size());
                                    for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
                                        arrayList.add(String.format("0x%x=%d", Arrays.copyOf(new Object[]{entry2.getKey(), entry2.getValue()}, 2)));
                                    }
                                    Log.i("CentralWatchdog", String.format("janela: porta 0x%x abriu, mas já há janela aberta (%s) — a pressão já sai por ela, não abro outra", Arrays.copyOf(new Object[]{Integer.valueOf(areaId), y1.g.e0(arrayList, " ", null, 62)}, 2)));
                                } else {
                                    LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                                    for (Map.Entry entry3 : linkedHashMap.entrySet()) {
                                        if (((Integer) entry3.getValue()) == null) {
                                            linkedHashMap3.put(entry3.getKey(), entry3.getValue());
                                        }
                                    }
                                    Set setKeySet = linkedHashMap3.keySet();
                                    if (!setKeySet.isEmpty()) {
                                        Log.i("CentralWatchdog", String.format("janela: %d leitura(s) falharam (%s) — não são prova de janela aberta, sigo com o filete", Arrays.copyOf(new Object[]{Integer.valueOf(setKeySet.size()), y1.g.e0(setKeySet, " ", new n2(1), 30)}, 2)));
                                    }
                                    if (CentralWatchdogService.k0(carPropertyManager, iIntValue6, true, areaId, iIntValue6 != iIntValue5)) {
                                        centralWatchdogService6.f864o = Integer.valueOf(iIntValue6);
                                        x1 x1Var = centralWatchdogService6.v2;
                                        if (x1Var != null) {
                                            centralWatchdogService6.f811a.removeCallbacks(x1Var);
                                        }
                                        centralWatchdogService6.v2 = null;
                                    }
                                }
                            } else {
                                boolean zQ = centralWatchdogService6.q(carPropertyManager, areaId);
                                Integer num10 = centralWatchdogService6.f864o;
                                int iOrdinal = (num10 != null ? zQ ? r4.b : r4.f4145a : r4.f4146c).ordinal();
                                if (iOrdinal == 0) {
                                    i2.g.b(num10);
                                    centralWatchdogService6.T(carPropertyManager, num10.intValue(), areaId);
                                } else if (iOrdinal == 1) {
                                    Log.i("CentralWatchdog", String.format("janela: porta 0x%x fechou, mas ainda há porta aberta — o filete em 0x%x fica até a última fechar", Arrays.copyOf(new Object[]{Integer.valueOf(areaId), num10}, 2)));
                                    Handler handler3 = centralWatchdogService6.f811a;
                                    x1 x1Var2 = centralWatchdogService6.v2;
                                    if (x1Var2 != null) {
                                        handler3.removeCallbacks(x1Var2);
                                    }
                                    x1 x1Var3 = new x1(centralWatchdogService6, 13);
                                    centralWatchdogService6.v2 = x1Var3;
                                    handler3.postDelayed(x1Var3, 5000L);
                                } else {
                                    if (iOrdinal != 2) {
                                        throw new androidx.fragment.app.q();
                                    }
                                    CentralWatchdogService.k0(carPropertyManager, iIntValue6, false, areaId, iIntValue6 != iIntValue5);
                                }
                            }
                        }
                    }
                    CentralWatchdogService centralWatchdogService7 = this.b;
                    int areaId2 = carPropertyValue.getAreaId();
                    HashMap map = centralWatchdogService7.f868p;
                    if (centralWatchdogService7.W().getBoolean("pause_audio_on_door", false) && areaId2 == 1) {
                        if (iIntValue4 == 1) {
                            z4 = true;
                        } else if (iIntValue4 != 2) {
                            return;
                        } else {
                            z4 = false;
                        }
                        Boolean bool6 = (Boolean) map.get(Integer.valueOf(areaId2));
                        map.put(Integer.valueOf(areaId2), Boolean.valueOf(z4));
                        if (bool6 == null || bool6.equals(Boolean.valueOf(z4)) || !z4) {
                            return;
                        }
                        Log.i("CentralWatchdog", String.format("doorAudioPause: porta 0x%x abriu — pausando mídia (keyevent 127)", Arrays.copyOf(new Object[]{Integer.valueOf(areaId2)}, 1)));
                        new Thread(new r0(5)).start();
                        return;
                    }
                    return;
                }
                return;
        }
    }

    @Override // android.car.hardware.property.CarPropertyManager.CarPropertyEventCallback
    public final void onErrorEvent(int i3, int i4) {
        switch (this.f3377a) {
            case 0:
                Log.w("CentralWatchdog", String.format("aebObserver: onErrorEvent prop=" + i3 + " área=0x%x", Arrays.copyOf(new Object[]{Integer.valueOf(i4)}, 1)));
                break;
            case 1:
                break;
            case 2:
                Log.w("CentralWatchdog", String.format("rearCamTurnSignal: onErrorEvent prop=" + i3 + " área=0x%x", Arrays.copyOf(new Object[]{Integer.valueOf(i4)}, 1)));
                break;
            case 3:
                Log.w("CentralWatchdog", String.format("recircGuard: onErrorEvent prop=" + i3 + " área=0x%x", Arrays.copyOf(new Object[]{Integer.valueOf(i4)}, 1)));
                break;
            default:
                Log.w("CentralWatchdog", String.format("windowDriver: onErrorEvent prop=" + i3 + " área=0x%x", Arrays.copyOf(new Object[]{Integer.valueOf(i4)}, 1)));
                break;
        }
    }
}
