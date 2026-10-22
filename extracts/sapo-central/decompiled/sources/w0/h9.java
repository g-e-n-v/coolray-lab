package w0;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.car.hardware.property.CarPropertyManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.wifi.WifiManager;
import android.view.View;
import android.widget.ViewFlipper;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.LyricsFloaterService;
import com.ex.auto.MainActivity;
import com.ex.auto.MasterToggleView;
import com.ex.auto.MediaBrowserHostActivity;
import com.ex.auto.R;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.net.NetworkInterface;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h9 implements h2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3669a;
    public final /* synthetic */ MainActivity b;

    public /* synthetic */ h9(MainActivity mainActivity, int i3) {
        this.f3669a = i3;
        this.b = mainActivity;
    }

    @Override // h2.a
    public final Object a() {
        BluetoothAdapter defaultAdapter;
        int i3;
        String address;
        ViewFlipper viewFlipper;
        ViewFlipper viewFlipper2;
        String string;
        int i4 = 6;
        final int i5 = 3;
        char c3 = 1;
        char c4 = 1;
        char c5 = 1;
        char c6 = 1;
        int i6 = 0;
        switch (this.f3669a) {
            case 0:
                MainActivity mainActivity = this.b;
                int i7 = MainActivity.f1002z1;
                mainActivity.k2();
                return x1.e.f4647c;
            case 1:
                MainActivity mainActivity2 = this.b;
                int i8 = MainActivity.f1002z1;
                List<BluetoothDevice> list = y1.p.f4663a;
                try {
                    defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                    break;
                } catch (Throwable unused) {
                    defaultAdapter = null;
                }
                if (defaultAdapter != null && defaultAdapter.isEnabled()) {
                    try {
                        Set<BluetoothDevice> bondedDevices = defaultAdapter.getBondedDevices();
                        List listM0 = bondedDevices != null ? y1.g.m0(bondedDevices) : null;
                        if (listM0 != null) {
                            list = listM0;
                        }
                        break;
                    } catch (Throwable unused2) {
                    }
                    if (list.isEmpty()) {
                        i3 = R.string.k_celular_preferido_sem_pareado;
                    } else {
                        List listI = k1.a.I(null);
                        ArrayList arrayList = new ArrayList(y1.i.X(list));
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            arrayList.add(((BluetoothDevice) it.next()).getAddress());
                        }
                        ArrayList arrayListG0 = y1.g.g0(listI, arrayList);
                        List listI2 = k1.a.I(mainActivity2.getString(R.string.k_celular_preferido_qualquer));
                        ArrayList arrayList2 = new ArrayList(y1.i.X(list));
                        for (BluetoothDevice bluetoothDevice : list) {
                            try {
                                address = bluetoothDevice.getName();
                            } catch (Throwable unused3) {
                                address = null;
                            }
                            if (address == null) {
                                address = bluetoothDevice.getAddress();
                            }
                            arrayList2.add(address);
                            break;
                        }
                        String[] strArr = (String[]) y1.g.g0(listI2, arrayList2).toArray(new String[0]);
                        String string2 = mainActivity2.o0().getString("auto_connect_preferred_bt", null);
                        if (string2 == null || o2.k.m0(string2)) {
                            string2 = null;
                        }
                        int size = arrayListG0.size();
                        int i9 = 0;
                        int i10 = 0;
                        while (true) {
                            if (i10 < size) {
                                Object obj = arrayListG0.get(i10);
                                i10++;
                                String str = (String) obj;
                                if (str == null || !str.equalsIgnoreCase(string2)) {
                                    i9++;
                                }
                            } else {
                                i9 = -1;
                            }
                        }
                        int i11 = i9 < 0 ? 0 : i9;
                        e.h hVar = new e.h(mainActivity2);
                        hVar.g(R.string.k_celular_preferido_titulo_dialogo);
                        da daVar = new da(mainActivity2, arrayListG0);
                        e.d dVar = (e.d) hVar.b;
                        dVar.f1565p = strArr;
                        dVar.f1567r = daVar;
                        dVar.f1572w = i11;
                        dVar.f1571v = true;
                        hVar.b(R.string.common_cancel, null);
                        hVar.h();
                    }
                    return x1.e.f4647c;
                }
                i3 = R.string.k_celular_preferido_bt_off;
                androidx.activity.result.b.n(i3, 1, mainActivity2, "getString(...)");
                return x1.e.f4647c;
            case 2:
                MainActivity mainActivity3 = this.b;
                if (mainActivity3.x0) {
                    String strV = o2.m.V("\n            for P in 12500 18500 21000; do\n  while ip rule del prio $P lookup 200 2>/dev/null; do :; done\ndone\nip route flush table 200 2>/dev/null\nif [ \"$(settings get global exsapo_route_dns_zero_owned)\" = 1 ]; then\n  ndc resolver clearnetdns 0\n  settings delete global exsapo_route_dns_zero_owned\nfi\n            echo \"routes_removed\"\n            REMAINING=$(ip rule show 2>/dev/null | grep -c \"12500:\" || echo 0)\n            echo \"remaining=${REMAINING}\"\n        ");
                    String string3 = mainActivity3.getString(R.string.k_removing_routes);
                    i2.g.d(string3, "getString(...)");
                    MainActivity.J1(mainActivity3, null, string3, 2000L, 15000, strV, null, null, new e9(mainActivity3, i5), false, null, null, 3776);
                } else {
                    e.h hVar2 = new e.h(mainActivity3);
                    String string4 = mainActivity3.getString(R.string.k_confirm_network_routes_title);
                    e.d dVar2 = (e.d) hVar2.b;
                    dVar2.f1554d = string4;
                    dVar2.f = mainActivity3.getString(R.string.k_confirm_network_routes_message);
                    hVar2.f(mainActivity3.getString(R.string.common_yes), new z8(mainActivity3, i4));
                    hVar2.c(mainActivity3.getString(R.string.common_no), null);
                    hVar2.h();
                }
                return x1.e.f4647c;
            case 3:
                MainActivity mainActivity4 = this.b;
                return Boolean.valueOf((!mainActivity4.O || mainActivity4.isFinishing() || mainActivity4.isDestroyed() || (viewFlipper = (ViewFlipper) mainActivity4.findViewById(R.id.masterContentFlipper)) == null || viewFlipper.getDisplayedChild() != 4 || (viewFlipper2 = (ViewFlipper) mainActivity4.findViewById(R.id.masterAppsPageFlipper)) == null || viewFlipper2.getDisplayedChild() != 1) ? false : true);
            case 4:
                MainActivity mainActivity5 = this.b;
                int i12 = MainActivity.f1002z1;
                mainActivity5.o1();
                return x1.e.f4647c;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                MainActivity mainActivity6 = this.b;
                int i13 = MainActivity.f1002z1;
                return wd.f4450a.f(mainActivity6, "botão restaurar");
            case MusicClient.TYPE_GESTURE /* 6 */:
                MainActivity mainActivity7 = this.b;
                int i14 = MainActivity.f1002z1;
                qe qeVar = qe.f4124a;
                boolean zE = qe.e(mainActivity7, "volante.desativarPatch", y1.s.W(new x1.a("svcKeyServer", "com.flyme.auto.keyserver.service.AutoKeyService")), 8);
                mainActivity7.f1031o0 = zE;
                return zE ? "ok" : "ERROR: sem playbook — sincronize a central uma vez";
            case PlaybackState.STATE_ERROR /* 7 */:
                MainActivity mainActivity8 = this.b;
                int i15 = MainActivity.f1002z1;
                boolean zE2 = qe.e(mainActivity8, "rede.reverterConnAdaptor", null, 12);
                mainActivity8.f1029n0 = zE2;
                return zE2 ? "ok" : "ERROR: sem playbook — sincronize a central uma vez";
            case 8:
                MainActivity mainActivity9 = this.b;
                int i16 = MainActivity.f1002z1;
                return wd.f4450a.c(mainActivity9, 0);
            case 9:
                MainActivity mainActivity10 = this.b;
                int i17 = MainActivity.f1002z1;
                mainActivity10.startActivity(new Intent(mainActivity10, (Class<?>) MediaBrowserHostActivity.class));
                return x1.e.f4647c;
            case 10:
                MainActivity mainActivity11 = this.b;
                if (mainActivity11.f1036r0) {
                    mainActivity11.R1(false);
                } else {
                    e.h hVar3 = new e.h(mainActivity11);
                    ((e.d) hVar3.b).f1554d = mainActivity11.getString(R.string.k_disable_avas_title);
                    ((e.d) hVar3.b).f = mainActivity11.getString(R.string.k_disable_avas_message);
                    hVar3.f(mainActivity11.getString(R.string.common_continue), new z8(mainActivity11, 13));
                    hVar3.c(mainActivity11.getString(R.string.common_cancel), null);
                    hVar3.h();
                }
                return x1.e.f4647c;
            case 11:
                MainActivity mainActivity12 = this.b;
                int i18 = MainActivity.f1002z1;
                if (!mainActivity12.o0().getBoolean("lyrics_floater_enabled", false)) {
                    mainActivity12.o0().edit().putBoolean("lyrics_floater_enabled", true).apply();
                    mainActivity12.q1();
                }
                mainActivity12.startForegroundService(new Intent(mainActivity12, (Class<?>) LyricsFloaterService.class).setAction("com.ex.auto.LYRICS_CONFIG"));
                return x1.e.f4647c;
            case 12:
                MainActivity mainActivity13 = this.b;
                String str2 = (String) y1.g.c0(mainActivity13.D, mainActivity13.f1007c0);
                if (str2 == null) {
                    androidx.activity.result.b.n(R.string.k_no_sound_selected, 0, mainActivity13, "getString(...)");
                } else {
                    mainActivity13.Z0(str2);
                }
                return x1.e.f4647c;
            case 13:
                MainActivity mainActivity14 = this.b;
                int i19 = MainActivity.f1002z1;
                e.h hVar4 = new e.h(mainActivity14);
                String string5 = mainActivity14.getString(R.string.k_copy_audios_title);
                e.d dVar3 = (e.d) hVar4.b;
                dVar3.f1554d = string5;
                dVar3.f = mainActivity14.getString(R.string.k_copy_audios_message);
                hVar4.c(mainActivity14.getString(R.string.common_cancel), null);
                hVar4.f(mainActivity14.getString(R.string.k_copy_btn), new z8(mainActivity14, 11));
                hVar4.h();
                return x1.e.f4647c;
            case 14:
                MainActivity mainActivity15 = this.b;
                int i20 = MainActivity.f1002z1;
                return qe.e(mainActivity15, "rede.reiniciarAa", null, 12) ? "restart_enviado" : "ERROR: sem playbook — sincronize a central uma vez";
            case 15:
                MainActivity mainActivity16 = this.b;
                int i21 = MainActivity.f1002z1;
                i2.j jVar = new i2.j();
                String string6 = mainActivity16.getString(R.string.k_removing_sound_bind);
                i2.g.d(string6, "getString(...)");
                MainActivity.J1(mainActivity16, mainActivity16.findViewById(R.id.masterAudioLockRestore), string6, 5000L, 15000, "", string6, null, null, false, null, new y2(jVar, i4, mainActivity16), 1920);
                return x1.e.f4647c;
            case 16:
                MainActivity mainActivity17 = this.b;
                String str3 = (String) y1.g.c0(mainActivity17.D, mainActivity17.f1007c0);
                if (str3 == null) {
                    androidx.activity.result.b.n(R.string.k_refresh_list_choose_audio, 0, mainActivity17, "getString(...)");
                } else {
                    String strZ0 = o2.k.z0(str3, '/');
                    e.h hVar5 = new e.h(mainActivity17);
                    e.d dVar4 = (e.d) hVar5.b;
                    dVar4.f1554d = mainActivity17.getString(R.string.k_delete_audio_title);
                    dVar4.f = mainActivity17.getString(R.string.k_delete_audio_message, strZ0);
                    hVar5.c(mainActivity17.getString(R.string.common_cancel), null);
                    hVar5.f(mainActivity17.getString(R.string.k_delete_btn), new z8(mainActivity17, 5));
                    hVar5.h();
                }
                return x1.e.f4647c;
            case 17:
                MainActivity mainActivity18 = this.b;
                mainActivity18.C.execute(new a9(mainActivity18, mainActivity18.f1011e0 + 1, c3 == true ? 1 : 0));
                return x1.e.f4647c;
            case 18:
                MainActivity mainActivity19 = this.b;
                mainActivity19.f1043u0.incrementAndGet();
                int iK = k1.a.k(mainActivity19.f1011e0 + 1, 1, 3);
                if (mainActivity19.M != null) {
                    androidx.activity.result.b.n(R.string.k_applying, 0, mainActivity19, "getString(...)");
                    i9 i9Var = new i9(mainActivity19.u2(15000L, R.id.masterAudioAvasApply), c4 == true ? 1 : 0, mainActivity19);
                    int iK2 = k1.a.k(iK, 1, 3);
                    CarPropertyManager carPropertyManager = mainActivity19.M;
                    if (carPropertyManager == null) {
                        i9Var.c(Boolean.FALSE);
                    } else {
                        try {
                            mainActivity19.f1054z.execute(new d1(carPropertyManager, iK2, mainActivity19, i9Var));
                        } catch (RejectedExecutionException unused4) {
                            i9Var.c(Boolean.FALSE);
                        }
                    }
                    break;
                } else {
                    androidx.activity.result.b.n(R.string.k_car_still_connecting, 0, mainActivity19, "getString(...)");
                }
                return x1.e.f4647c;
            case 19:
                MainActivity mainActivity20 = this.b;
                int i22 = MainActivity.f1002z1;
                mainActivity20.g0();
                return null;
            case 20:
                MainActivity mainActivity21 = this.b;
                int i23 = MainActivity.f1002z1;
                return mainActivity21.getSharedPreferences("tela_preta_prefs", 0);
            case 21:
                MainActivity mainActivity22 = this.b;
                int i24 = MainActivity.f1002z1;
                return Integer.valueOf(mainActivity22.o0().getInt("widget_bg_opacity_pct", 100));
            case 22:
                final MainActivity mainActivity23 = this.b;
                int i25 = MainActivity.f1002z1;
                MasterToggleView masterToggleView = (MasterToggleView) mainActivity23.findViewById(R.id.masterAppsPerfJitSwitch);
                if (masterToggleView != null) {
                    if (mainActivity23.f1030n1) {
                        androidx.activity.result.b.n(R.string.k_toast_wait_processing, 0, mainActivity23, "getString(...)");
                    } else {
                        boolean active = masterToggleView.getActive();
                        final boolean z2 = !active;
                        e.h hVar6 = new e.h(mainActivity23);
                        ((e.d) hVar6.b).f1554d = mainActivity23.getString(!active ? R.string.master_perf_jit_confirm_title : R.string.master_perf_jit_off_title);
                        String string7 = mainActivity23.getString(!active ? R.string.master_perf_jit_confirm_msg : R.string.master_perf_jit_off_msg);
                        e.d dVar5 = (e.d) hVar6.b;
                        dVar5.f = string7;
                        final int i26 = 0;
                        dVar5.f1562m = false;
                        hVar6.c(mainActivity23.getString(R.string.common_cancel), null);
                        hVar6.f(mainActivity23.getString(R.string.common_ok), new DialogInterface.OnClickListener() { // from class: w0.p9
                            /* JADX WARN: Multi-variable type inference failed */
                            /* JADX WARN: Type inference failed for: r3v0 */
                            /* JADX WARN: Type inference failed for: r3v1, types: [int] */
                            /* JADX WARN: Type inference failed for: r3v7 */
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i27) {
                                ?? IsWifiEnabled;
                                switch (i26) {
                                    case 0:
                                        MainActivity mainActivity24 = mainActivity23;
                                        boolean z3 = z2;
                                        int i28 = MainActivity.f1002z1;
                                        int i29 = 0;
                                        try {
                                            Object systemService = mainActivity24.getApplicationContext().getSystemService("wifi");
                                            i2.g.c(systemService, "null cannot be cast to non-null type android.net.wifi.WifiManager");
                                            IsWifiEnabled = ((WifiManager) systemService).isWifiEnabled();
                                        } catch (Throwable unused5) {
                                            IsWifiEnabled = 0;
                                        }
                                        try {
                                            NetworkInterface byName = NetworkInterface.getByName("ap0");
                                            if (byName != null) {
                                                i29 = (byName.isUp() && byName.getInetAddresses().hasMoreElements()) ? 1 : 0;
                                            }
                                        } catch (Throwable unused6) {
                                        }
                                        mainActivity24.o0().edit().putBoolean("jit_pedido", z3).putBoolean("perf_auto_otimizar", z3).putString("jit_restaurar", androidx.activity.result.b.f(IsWifiEnabled, i29, "wifi=", ",ap=")).commit();
                                        mainActivity24.w("Desempenho", "dalvik.vm.usejit -> " + z3 + "; reiniciando o framework");
                                        String string8 = mainActivity24.getString(R.string.master_perf_restarting);
                                        i2.g.d(string8, "getString(...)");
                                        mainActivity24.C.execute(new ra(mainActivity24, z3, mainActivity24.J0(string8, "")));
                                        break;
                                    default:
                                        MainActivity mainActivity25 = mainActivity23;
                                        boolean z4 = z2;
                                        mainActivity25.f1030n1 = true;
                                        String string9 = mainActivity25.getString(R.string.master_perf_video_applying);
                                        mainActivity25.C.execute(new ra(z4, mainActivity25, mainActivity25.J0(string9, androidx.activity.result.b.g(string9, "getString(...)", mainActivity25, R.string.master_perf_video_wait, "getString(...)"))));
                                        break;
                                }
                            }
                        });
                        hVar6.h();
                    }
                }
                return x1.e.f4647c;
            case 23:
                final MainActivity mainActivity24 = this.b;
                int i27 = MainActivity.f1002z1;
                MasterToggleView masterToggleView2 = (MasterToggleView) mainActivity24.findViewById(R.id.masterAppsPerfVideoSwitch);
                if (masterToggleView2 != null) {
                    if (mainActivity24.f1030n1) {
                        androidx.activity.result.b.n(R.string.k_toast_wait_processing, 0, mainActivity24, "getString(...)");
                    } else {
                        boolean active2 = masterToggleView2.getActive();
                        final boolean z3 = !active2;
                        e.h hVar7 = new e.h(mainActivity24);
                        ((e.d) hVar7.b).f1554d = mainActivity24.getString(!active2 ? R.string.master_perf_video_confirm_title : R.string.master_perf_video_off_title);
                        String string8 = mainActivity24.getString(!active2 ? R.string.master_perf_video_confirm_msg : R.string.master_perf_video_off_msg);
                        e.d dVar6 = (e.d) hVar7.b;
                        dVar6.f = string8;
                        dVar6.f1562m = false;
                        hVar7.c(mainActivity24.getString(R.string.common_cancel), null);
                        String string9 = mainActivity24.getString(R.string.common_ok);
                        final char c7 = c5 == true ? 1 : 0;
                        hVar7.f(string9, new DialogInterface.OnClickListener() { // from class: w0.p9
                            /* JADX WARN: Multi-variable type inference failed */
                            /* JADX WARN: Type inference failed for: r3v0 */
                            /* JADX WARN: Type inference failed for: r3v1, types: [int] */
                            /* JADX WARN: Type inference failed for: r3v7 */
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i28) {
                                ?? IsWifiEnabled;
                                switch (c7) {
                                    case 0:
                                        MainActivity mainActivity25 = mainActivity24;
                                        boolean z4 = z3;
                                        int i29 = MainActivity.f1002z1;
                                        int i210 = 0;
                                        try {
                                            Object systemService = mainActivity25.getApplicationContext().getSystemService("wifi");
                                            i2.g.c(systemService, "null cannot be cast to non-null type android.net.wifi.WifiManager");
                                            IsWifiEnabled = ((WifiManager) systemService).isWifiEnabled();
                                        } catch (Throwable unused5) {
                                            IsWifiEnabled = 0;
                                        }
                                        try {
                                            NetworkInterface byName = NetworkInterface.getByName("ap0");
                                            if (byName != null) {
                                                i210 = (byName.isUp() && byName.getInetAddresses().hasMoreElements()) ? 1 : 0;
                                            }
                                        } catch (Throwable unused6) {
                                        }
                                        mainActivity25.o0().edit().putBoolean("jit_pedido", z4).putBoolean("perf_auto_otimizar", z4).putString("jit_restaurar", androidx.activity.result.b.f(IsWifiEnabled, i210, "wifi=", ",ap=")).commit();
                                        mainActivity25.w("Desempenho", "dalvik.vm.usejit -> " + z4 + "; reiniciando o framework");
                                        String string10 = mainActivity25.getString(R.string.master_perf_restarting);
                                        i2.g.d(string10, "getString(...)");
                                        mainActivity25.C.execute(new ra(mainActivity25, z4, mainActivity25.J0(string10, "")));
                                        break;
                                    default:
                                        MainActivity mainActivity26 = mainActivity24;
                                        boolean z5 = z3;
                                        mainActivity26.f1030n1 = true;
                                        String string11 = mainActivity26.getString(R.string.master_perf_video_applying);
                                        mainActivity26.C.execute(new ra(z5, mainActivity26, mainActivity26.J0(string11, androidx.activity.result.b.g(string11, "getString(...)", mainActivity26, R.string.master_perf_video_wait, "getString(...)"))));
                                        break;
                                }
                            }
                        });
                        hVar7.h();
                    }
                }
                return x1.e.f4647c;
            case 24:
                MainActivity mainActivity25 = this.b;
                int i28 = MainActivity.f1002z1;
                mainActivity25.getClass();
                mainActivity25.P1(0);
                return x1.e.f4647c;
            case 25:
                MainActivity mainActivity26 = this.b;
                mainActivity26.P1(mainActivity26.G);
                return x1.e.f4647c;
            case 26:
                MainActivity mainActivity27 = this.b;
                mainActivity27.P1(mainActivity27.H);
                return x1.e.f4647c;
            case 27:
                MainActivity mainActivity28 = this.b;
                int i29 = MainActivity.f1002z1;
                mainActivity28.n1();
                return x1.e.f4647c;
            case 28:
                final MainActivity mainActivity29 = this.b;
                if (mainActivity29.I == mainActivity29.H) {
                    ArrayList arrayList3 = mainActivity29.F;
                    int i30 = mainActivity29.f1015g0;
                    if (i30 >= 0 && i30 < arrayList3.size()) {
                        String str4 = (String) arrayList3.get(i30);
                        try {
                            string = mainActivity29.getPackageManager().getApplicationLabel(mainActivity29.getPackageManager().getApplicationInfo(str4, 0)).toString();
                        } catch (Exception unused5) {
                            string = str4;
                        }
                        e.h hVar8 = new e.h(mainActivity29);
                        e.d dVar7 = (e.d) hVar8.b;
                        dVar7.f1554d = mainActivity29.getString(R.string.k_uninstall_app_title);
                        dVar7.f = mainActivity29.getString(R.string.k_uninstall_app_message, string, str4);
                        hVar8.c(mainActivity29.getString(R.string.common_cancel), null);
                        hVar8.f(mainActivity29.getString(R.string.k_uninstall_btn), new m9(mainActivity29, str4, i6));
                        hVar8.h();
                    }
                    break;
                } else {
                    ArrayList arrayList4 = mainActivity29.E;
                    int i31 = mainActivity29.f1015g0;
                    if (i31 >= 0 && i31 < arrayList4.size()) {
                        String str5 = (String) arrayList4.get(i31);
                        final int i32 = 2;
                        if (o2.t.d0(str5, "/data/data/com.aurora.store/cache/Downloads")) {
                            List listU0 = o2.k.u0(o2.k.G0(str5, '/'), new char[]{'/'});
                            final String str6 = (String) y1.g.c0(listU0, listU0.size() - 2);
                            if (str6 == null) {
                                str6 = "app";
                            }
                            String strJ2 = MainActivity.j2(str5);
                            String strJ3 = MainActivity.j2("/data/local/tmp/aurora_work");
                            StringBuilder sb = new StringBuilder("\n            ");
                            sb.append(e8.v());
                            sb.append("\n            echo \"== Aurora (");
                            sb.append(str6);
                            sb.append("): preparando ==\"\n            rm -rf ");
                            sb.append(strJ3);
                            androidx.activity.result.b.q(sb, "; mkdir -p ", strJ3, " || exit 10\n            ls -l ", strJ2);
                            androidx.activity.result.b.q(sb, "/*.apk 2>&1 || { echo \"ERRO: sem APKs na pasta da Aurora\"; exit 11; }\n            cp -f ", strJ2, "/*.apk ", strJ3);
                            androidx.activity.result.b.q(sb, "/ 2>&1 || exit 12\n            chown root:root ", strJ3, "/*.apk 2>/dev/null || true\n            chmod 644 ", strJ3);
                            androidx.activity.result.b.q(sb, "/*.apk 2>/dev/null || true\n            restorecon -v ", strJ3, "/*.apk 2>/dev/null || true\n            ls -1 ", strJ3);
                            androidx.activity.result.b.q(sb, "/*.apk > ", strJ3, "/filtered_apks.txt\n            N=$(wc -l < ", strJ3);
                            sb.append("/filtered_apks.txt)\n            echo \"== Aurora (");
                            sb.append(str6);
                            sb.append("): $N split(s), instalando ==\"\n            if [ \"$N\" -gt 1 ]; then\n              ");
                            sb.append(MainActivity.u0(strJ3));
                            androidx.activity.result.b.q(sb, "\n            else\n              pm install -r -g -d \"$(head -1 ", strJ3, "/filtered_apks.txt)\" 2>&1\n            fi\n            echo \"exit_code=$?\"\n            rm -rf ", strJ3);
                            sb.append("\n        ");
                            String strV2 = o2.m.V(sb.toString());
                            View viewFindViewById = mainActivity29.findViewById(R.id.masterAppsInstallFile);
                            String string10 = mainActivity29.getString(R.string.k_installing_xapk_named, str6);
                            i2.g.d(string10, "getString(...)");
                            String string11 = mainActivity29.getString(R.string.k_installing_xapk_named, str6);
                            final char c8 = c6 == true ? 1 : 0;
                            MainActivity.J1(mainActivity29, viewFindViewById, string10, 5000L, 180000, strV2, string11, null, new h2.l() { // from class: w0.ea
                                @Override // h2.l
                                public final Object c(Object obj2) {
                                    int i33 = c8;
                                    String str7 = str6;
                                    MainActivity mainActivity30 = mainActivity29;
                                    String str8 = (String) obj2;
                                    switch (i33) {
                                        case 0:
                                            int i34 = MainActivity.f1002z1;
                                            i2.g.e(str8, "result");
                                            mainActivity30.l2(str8, str7);
                                            break;
                                        case 1:
                                            int i35 = MainActivity.f1002z1;
                                            i2.g.e(str8, "result");
                                            mainActivity30.l2(str8, str7);
                                            break;
                                        case 2:
                                            int i36 = MainActivity.f1002z1;
                                            i2.g.e(str8, "result");
                                            mainActivity30.l2(str8, str7);
                                            break;
                                        default:
                                            int i37 = MainActivity.f1002z1;
                                            i2.g.e(str8, "result");
                                            mainActivity30.l2(str8, str7);
                                            break;
                                    }
                                    return x1.e.f4647c;
                                }
                            }, false, str6, null, 2560);
                        } else if (o2.t.Z(str5, ".xapk", true)) {
                            final String strZ1 = o2.k.z0(str5, '/');
                            String strJ4 = MainActivity.j2(str5);
                            String strJ5 = MainActivity.j2("/data/local/tmp/xapk_work");
                            StringBuilder sb2 = new StringBuilder("\n            ");
                            sb2.append(e8.v());
                            sb2.append("\n            echo \"== XAPK: preparando ==\"\n            rm -rf ");
                            sb2.append(strJ5);
                            sb2.append("\n            mkdir -p ");
                            sb2.append(strJ5);
                            androidx.activity.result.b.q(sb2, "/extracted || exit 10\n            ls -l ", strJ4, " 2>&1 || exit 11\n            cp -f ", strJ4);
                            sb2.append(' ');
                            sb2.append(strJ5);
                            sb2.append("/pkg.xapk 2>&1 || exit 12\n            echo \"== XAPK: descomprimindo ==\"\n            unzip -q ");
                            sb2.append(strJ5);
                            androidx.activity.result.b.q(sb2, "/pkg.xapk -d ", strJ5, "/extracted/ 2>&1\n            unzip_code=$?\n            if [ $unzip_code -ne 0 ]; then\n              echo \"ERRO: unzip falhou (code=$unzip_code)\"; rm -rf ", strJ5);
                            androidx.activity.result.b.q(sb2, "; exit 13\n            fi\n            echo \"== XAPK: identificando pacote ==\"\n            PKG=\"\"\n            if [ -f ", strJ5, "/extracted/manifest.json ]; then\n              PKG=$(grep -o '\"package_name\" *: *\"[^\"]*\"' ", strJ5);
                            androidx.activity.result.b.q(sb2, "/extracted/manifest.json | sed 's/.*\"\\([^\"]*\\)\"/\\1/' | head -1)\n            fi\n            echo \"Pacote: $PKG\"\n            echo \"== XAPK: APKs encontrados ==\"\n            find ", strJ5, "/extracted -maxdepth 2 -name \"*.apk\" | sort\n            APK_COUNT=$(find ", strJ5);
                            sb2.append("/extracted -maxdepth 2 -name \"*.apk\" | wc -l)\n            echo \"Total APKs: $APK_COUNT\"\n            if [ \"$APK_COUNT\" -eq 0 ]; then\n              echo \"ERRO: nenhum APK encontrado no XAPK\"; rm -rf ");
                            sb2.append(strJ5);
                            sb2.append("; exit 14\n            fi\n            echo \"== XAPK: filtrando por arquitetura/densidade ==\"\n            ");
                            sb2.append(MainActivity.p2(strJ5));
                            sb2.append("\n            FILTERED_COUNT=$(wc -l < ");
                            sb2.append(strJ5);
                            sb2.append("/filtered_apks.txt)\n            echo \"APKs apos filtro: $FILTERED_COUNT\"\n            echo \"== XAPK: instalando ==\"\n            if [ \"$FILTERED_COUNT\" -gt 1 ]; then\n              echo \"Modo: sessao pm (split APKs)\"\n              ");
                            sb2.append(MainActivity.u0(strJ5));
                            androidx.activity.result.b.q(sb2, "\n            else\n              BASE=$(head -1 ", strJ5, "/filtered_apks.txt)\n              echo \"Modo: pm install\"\n              pm install -r -g -d \"${BASE}\" 2>&1\n            fi\n            code=$?\n            echo \"exit_code=$code\"\n            if [ $code -eq 0 ] && [ -n \"$PKG\" ]; then\n              OBB_SRC=\"/data/local/tmp/xapk_work/extracted/Android/obb/$PKG\"\n              if [ -d \"$OBB_SRC\" ]; then\n                echo \"== XAPK: copiando OBBs ==\"\n                mkdir -p \"/sdcard/Android/obb/$PKG\"\n                cp -f \"$OBB_SRC/\"* \"/sdcard/Android/obb/$PKG/\" 2>&1\n                chmod 644 \"/sdcard/Android/obb/$PKG/\"* 2>/dev/null || true\n                echo \"OBBs copiados.\"\n              fi\n            fi\n            rm -rf ", strJ5);
                            sb2.append("\n        ");
                            String strV3 = o2.m.V(sb2.toString());
                            View viewFindViewById2 = mainActivity29.findViewById(R.id.masterAppsInstallFile);
                            String string12 = mainActivity29.getString(R.string.k_installing_xapk_named, strZ1);
                            i2.g.d(string12, "getString(...)");
                            MainActivity.J1(mainActivity29, viewFindViewById2, string12, 5000L, 180000, strV3, mainActivity29.getString(R.string.k_installing_xapk_named, strZ1), null, new h2.l() { // from class: w0.ea
                                @Override // h2.l
                                public final Object c(Object obj2) {
                                    int i33 = i5;
                                    String str7 = strZ1;
                                    MainActivity mainActivity30 = mainActivity29;
                                    String str8 = (String) obj2;
                                    switch (i33) {
                                        case 0:
                                            int i34 = MainActivity.f1002z1;
                                            i2.g.e(str8, "result");
                                            mainActivity30.l2(str8, str7);
                                            break;
                                        case 1:
                                            int i35 = MainActivity.f1002z1;
                                            i2.g.e(str8, "result");
                                            mainActivity30.l2(str8, str7);
                                            break;
                                        case 2:
                                            int i36 = MainActivity.f1002z1;
                                            i2.g.e(str8, "result");
                                            mainActivity30.l2(str8, str7);
                                            break;
                                        default:
                                            int i37 = MainActivity.f1002z1;
                                            i2.g.e(str8, "result");
                                            mainActivity30.l2(str8, str7);
                                            break;
                                    }
                                    return x1.e.f4647c;
                                }
                            }, false, strZ1, null, 2560);
                        } else if (o2.t.Z(str5, ".apkm", true)) {
                            final String strZ2 = o2.k.z0(str5, '/');
                            String strJ6 = MainActivity.j2(str5);
                            String strJ7 = MainActivity.j2("/data/local/tmp/apkm_work");
                            StringBuilder sb3 = new StringBuilder("\n            ");
                            sb3.append(e8.v());
                            sb3.append("\n            echo \"== instalando APKM ==\"\n            rm -rf ");
                            sb3.append(strJ7);
                            sb3.append(" 2>&1 || true\n            mkdir -p ");
                            sb3.append(strJ7);
                            sb3.append("/extracted 2>&1 || exit 10\n            cp -f ");
                            sb3.append(strJ6);
                            sb3.append(' ');
                            sb3.append(strJ7);
                            androidx.activity.result.b.q(sb3, "/pkg.apkm 2>&1 || exit 12\n            unzip -q ", strJ7, "/pkg.apkm -d ", strJ7);
                            androidx.activity.result.b.q(sb3, "/extracted/ 2>&1\n            UNZIP_EXIT=$?\n            if [ \"$UNZIP_EXIT\" -ne 0 ]; then\n              echo \"INSTALL_FAILURE: apkm_corrompido (unzip exit=$UNZIP_EXIT)\"\n              exit 15\n            fi\n            echo \"-- conteudo extraido --\"\n            find ", strJ7, "/extracted -maxdepth 2 -name \"*.apk\" | sort\n            APK_COUNT=$(find ", strJ7);
                            sb3.append("/extracted -maxdepth 2 -name \"*.apk\" | wc -l)\n            echo \"APKs encontrados: $APK_COUNT\"\n            if [ \"$APK_COUNT\" -eq 0 ]; then\n              echo \"INSTALL_FAILURE: nenhum APK encontrado no APKM\"\n              exit 1\n            fi\n            echo \"-- filtrando por arquitetura/densidade --\"\n            ");
                            sb3.append(MainActivity.p2(strJ7));
                            sb3.append("\n            FILTERED_COUNT=$(wc -l < ");
                            sb3.append(strJ7);
                            sb3.append("/filtered_apks.txt)\n            echo \"APKs apos filtro: $FILTERED_COUNT\"\n            if [ \"$FILTERED_COUNT\" -eq 1 ]; then\n              BASE=$(head -1 ");
                            sb3.append(strJ7);
                            sb3.append("/filtered_apks.txt)\n              pm install -r -g -d \"$BASE\" 2>&1\n            else\n              ");
                            sb3.append(MainActivity.u0(strJ7));
                            sb3.append("\n            fi\n            EXIT=$?\n            rm -rf ");
                            sb3.append(strJ7);
                            sb3.append(" 2>&1 || true\n            echo \"exit_code=$EXIT\"\n        ");
                            String strV4 = o2.m.V(sb3.toString());
                            View viewFindViewById3 = mainActivity29.findViewById(R.id.masterAppsInstallFile);
                            String string13 = mainActivity29.getString(R.string.k_installing_named, strZ2);
                            i2.g.d(string13, "getString(...)");
                            MainActivity.J1(mainActivity29, viewFindViewById3, string13, 3000L, 120000, strV4, mainActivity29.getString(R.string.k_installing_named, strZ2), null, new h2.l() { // from class: w0.ea
                                @Override // h2.l
                                public final Object c(Object obj2) {
                                    int i33 = i32;
                                    String str7 = strZ2;
                                    MainActivity mainActivity30 = mainActivity29;
                                    String str8 = (String) obj2;
                                    switch (i33) {
                                        case 0:
                                            int i34 = MainActivity.f1002z1;
                                            i2.g.e(str8, "result");
                                            mainActivity30.l2(str8, str7);
                                            break;
                                        case 1:
                                            int i35 = MainActivity.f1002z1;
                                            i2.g.e(str8, "result");
                                            mainActivity30.l2(str8, str7);
                                            break;
                                        case 2:
                                            int i36 = MainActivity.f1002z1;
                                            i2.g.e(str8, "result");
                                            mainActivity30.l2(str8, str7);
                                            break;
                                        default:
                                            int i37 = MainActivity.f1002z1;
                                            i2.g.e(str8, "result");
                                            mainActivity30.l2(str8, str7);
                                            break;
                                    }
                                    return x1.e.f4647c;
                                }
                            }, false, strZ2, null, 2560);
                        } else {
                            final String strZ3 = o2.k.z0(str5, '/');
                            String strConcat = "/data/local/tmp/".concat(strZ3);
                            String strJ8 = MainActivity.j2(str5);
                            String strJ9 = MainActivity.j2(strConcat);
                            StringBuilder sb4 = new StringBuilder("\n            ");
                            sb4.append(e8.v());
                            sb4.append("\n            echo \"== instalando APK ==\"\n            ls -l ");
                            sb4.append(strJ8);
                            sb4.append(" 2>&1 || exit 40\n            echo \"copiando para ");
                            sb4.append(strConcat);
                            sb4.append("\"\n            cp -f ");
                            sb4.append(strJ8);
                            sb4.append(' ');
                            sb4.append(strJ9);
                            androidx.activity.result.b.q(sb4, " 2>&1 || exit 41\n            chown root:root ", strJ9, " 2>&1 || true\n            chmod 644 ", strJ9);
                            androidx.activity.result.b.q(sb4, " 2>&1 || true\n            restorecon -v ", strJ9, " 2>/dev/null || true\n            echo \"== pm install ==\"\n            pm install -r -g -d ", strJ9);
                            sb4.append(" 2>&1\n            code=$?\n            rm -f ");
                            sb4.append(strJ9);
                            sb4.append(" 2>/dev/null || true\n            echo \"exit_code=$code\"\n        ");
                            String strV5 = o2.m.V(sb4.toString());
                            View viewFindViewById4 = mainActivity29.findViewById(R.id.masterAppsInstallFile);
                            String string14 = mainActivity29.getString(R.string.k_installing_named, strZ3);
                            i2.g.d(string14, "getString(...)");
                            final int i33 = 0;
                            MainActivity.J1(mainActivity29, viewFindViewById4, string14, 5000L, 60000, strV5, mainActivity29.getString(R.string.k_installing_named, strZ3), null, new h2.l() { // from class: w0.ea
                                @Override // h2.l
                                public final Object c(Object obj2) {
                                    int i34 = i33;
                                    String str7 = strZ3;
                                    MainActivity mainActivity30 = mainActivity29;
                                    String str8 = (String) obj2;
                                    switch (i34) {
                                        case 0:
                                            int i35 = MainActivity.f1002z1;
                                            i2.g.e(str8, "result");
                                            mainActivity30.l2(str8, str7);
                                            break;
                                        case 1:
                                            int i36 = MainActivity.f1002z1;
                                            i2.g.e(str8, "result");
                                            mainActivity30.l2(str8, str7);
                                            break;
                                        case 2:
                                            int i37 = MainActivity.f1002z1;
                                            i2.g.e(str8, "result");
                                            mainActivity30.l2(str8, str7);
                                            break;
                                        default:
                                            int i38 = MainActivity.f1002z1;
                                            i2.g.e(str8, "result");
                                            mainActivity30.l2(str8, str7);
                                            break;
                                    }
                                    return x1.e.f4647c;
                                }
                            }, false, strZ3, null, 2560);
                        }
                    }
                }
                return x1.e.f4647c;
            default:
                MainActivity mainActivity30 = this.b;
                ArrayList arrayList5 = mainActivity30.E;
                int i34 = mainActivity30.f1015g0;
                if (i34 >= 0 && i34 < arrayList5.size()) {
                    String str7 = (String) arrayList5.get(i34);
                    String strJ10 = MainActivity.j2(str7);
                    String strV6 = o2.m.V("\n            echo \"== apagando APK ==\"\n            ls -l " + strJ10 + " 2>&1 || exit 40\n            rm -f " + strJ10 + " 2>&1\n            code=$?\n            echo \"exit_code=$code\"\n            exit $code\n        ");
                    String string15 = mainActivity30.getString(R.string.k_deleting_named, o2.k.z0(str7, '/'));
                    i2.g.d(string15, "getString(...)");
                    MainActivity.J1(mainActivity30, mainActivity30.findViewById(R.id.masterAppsDeleteFile), string15, 2000L, 15000, strV6, string15, null, new e9(mainActivity30, 9), false, null, null, 3712);
                }
                return x1.e.f4647c;
        }
    }
}
