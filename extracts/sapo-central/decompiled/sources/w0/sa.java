package w0;

import android.car.hardware.property.CarPropertyManager;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class sa implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4225a;
    public final /* synthetic */ MainActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f4226c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f4227d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f4228e;

    public /* synthetic */ sa(MainActivity mainActivity, Object obj, boolean z2, boolean z3, int i3) {
        this.f4225a = i3;
        this.b = mainActivity;
        this.f4228e = obj;
        this.f4226c = z2;
        this.f4227d = z3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4225a) {
            case 0:
                boolean z2 = this.f4226c;
                CarPropertyManager carPropertyManager = (CarPropertyManager) this.f4228e;
                MainActivity mainActivity = this.b;
                boolean z3 = this.f4227d;
                int i3 = MainActivity.f1002z1;
                Boolean boolValueOf = null;
                if (z2) {
                    AtomicInteger atomicInteger = p1.f4042a;
                    Integer numC = p1.c(carPropertyManager, u.f4288a, 0);
                    if (numC != null) {
                        boolValueOf = Boolean.valueOf(numC.intValue() != 0);
                    }
                }
                Boolean bool = boolValueOf;
                if (bool != null) {
                    mainActivity.o0().edit().putBoolean("aeb_state_saved", bool.booleanValue()).apply();
                }
                if (!z2) {
                    mainActivity.o0().edit().putBoolean("aeb_desired", !z3).apply();
                }
                mainActivity.f1045v.post(new sa(mainActivity, bool, z3, z2, 2));
                break;
            case 1:
                MainActivity mainActivity2 = this.b;
                e.i iVar = (e.i) this.f4228e;
                boolean z4 = this.f4226c;
                boolean z5 = this.f4227d;
                mainActivity2.f1030n1 = false;
                try {
                    iVar.dismiss();
                    break;
                } catch (Throwable unused) {
                }
                StringBuilder sb = new StringBuilder();
                sb.append(z4 ? "apply" : "remove");
                sb.append(' ');
                sb.append(z5 ? "OK" : "FAIL");
                sb.append('\n');
                String str = ih.f3730a;
                sb.append(MainActivity.v2(12000, ih.f3731c));
                mainActivity2.w("Vídeo", sb.toString());
                if (z5) {
                    mainActivity2.o0().edit().putBoolean("vcodec_60fps", z4).apply();
                }
                String string = mainActivity2.getString(z5 ? z4 ? R.string.master_perf_video_done : R.string.master_perf_video_removed : R.string.master_perf_video_failed);
                i2.g.d(string, "getString(...)");
                mainActivity2.t2(string, 0);
                mainActivity2.T0();
                break;
            case 2:
                MainActivity mainActivity3 = this.b;
                Boolean bool2 = (Boolean) this.f4228e;
                boolean z6 = this.f4226c;
                boolean z7 = this.f4227d;
                int i4 = MainActivity.f1002z1;
                if (!mainActivity3.isFinishing() && !mainActivity3.isDestroyed()) {
                    mainActivity3.v1();
                    String string2 = i2.g.a(bool2, Boolean.valueOf(z6)) ? mainActivity3.getString(z6 ? R.string.k_aeb_turned_on : R.string.k_aeb_turned_off) : z7 ? mainActivity3.getString(R.string.k_aeb_sent_unconfirmed) : mainActivity3.getString(R.string.k_aeb_write_failed);
                    i2.g.b(string2);
                    mainActivity3.t2(string2, 0);
                    break;
                }
                break;
            default:
                boolean z8 = this.f4226c;
                boolean z9 = this.f4227d;
                MainActivity mainActivity4 = this.b;
                String str2 = (String) this.f4228e;
                int i5 = MainActivity.f1002z1;
                if (z8 || z9 || mainActivity4.q0()) {
                    boolean z10 = (z8 || z9) ? false : true;
                    String string3 = str2.equals("temp") ? mainActivity4.getString(R.string.k_hvac_digital_temp_title) : str2.equals("batt") ? mainActivity4.getString(R.string.k_hvac_digital_batt_title) : mainActivity4.getString(R.string.xml_hvac_exttemp_titulo);
                    i2.g.b(string3);
                    String string4 = str2.equals("temp") ? mainActivity4.getString(R.string.k_hvac_digital_temp_desc) : str2.equals("batt") ? mainActivity4.getString(R.string.xml_mostra_o_de_bateria_na_barra_do_carro) : mainActivity4.getString(R.string.xml_hvac_exttemp_desc);
                    i2.g.b(string4);
                    String str3 = " " + mainActivity4.getString(R.string.k_hvac_digital_common_desc);
                    String str4 = z10 ? string4 + str3 + "\n\n" + mainActivity4.getString(R.string.k_hvac_digital_needs_download) : string4 + str3 + ' ' + mainActivity4.getString(R.string.k_continue_question);
                    e.h hVar = new e.h(mainActivity4);
                    e.d dVar = (e.d) hVar.b;
                    dVar.f1554d = string3;
                    dVar.f = str4;
                    dVar.f1562m = false;
                    hVar.c(mainActivity4.getString(R.string.common_cancel), new z8(mainActivity4, 25));
                    hVar.f(mainActivity4.getString(R.string.common_apply), new m9(mainActivity4, str2, 3));
                    hVar.h();
                } else {
                    e.h hVar2 = new e.h(mainActivity4);
                    e.d dVar2 = (e.d) hVar2.b;
                    dVar2.f1554d = mainActivity4.getString(R.string.k_no_internet_title);
                    dVar2.f = mainActivity4.getString(R.string.k_no_internet_message);
                    dVar2.f1562m = false;
                    hVar2.f(mainActivity4.getString(R.string.common_ok), new z8(mainActivity4, 24));
                    hVar2.h();
                }
                break;
        }
    }

    public /* synthetic */ sa(MainActivity mainActivity, String str, boolean z2, boolean z3) {
        this.f4225a = 3;
        this.f4226c = z2;
        this.f4227d = z3;
        this.b = mainActivity;
        this.f4228e = str;
    }

    public /* synthetic */ sa(boolean z2, CarPropertyManager carPropertyManager, MainActivity mainActivity, boolean z3) {
        this.f4225a = 0;
        this.f4226c = z2;
        this.f4228e = carPropertyManager;
        this.b = mainActivity;
        this.f4227d = z3;
    }
}
