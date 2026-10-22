package w0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.provider.Settings;
import com.ex.auto.MainActivity;
import com.ex.auto.R;

/* JADX INFO: loaded from: classes.dex */
public final class jc extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3763a;
    public final /* synthetic */ MainActivity b;

    public /* synthetic */ jc(MainActivity mainActivity, int i3) {
        this.f3763a = i3;
        this.b = mainActivity;
    }

    /* JADX WARN: Code duplicated, block: B:57:0x0152 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:58:0x0154  */
    /* JADX WARN: Code duplicated, block: B:59:0x0159  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String string;
        String stringExtra;
        int i3 = this.f3763a;
        MainActivity mainActivity = this.b;
        switch (i3) {
            case 0:
                String action = intent != null ? intent.getAction() : null;
                if (action != null) {
                    switch (action.hashCode()) {
                        case -900680536:
                            if (action.equals("com.ex.auto.AUTO_ROUTE_APPLIED")) {
                                boolean booleanExtra = intent.getBooleanExtra("ok", false);
                                String stringExtra2 = intent.getStringExtra("veredito");
                                if (stringExtra2 != null) {
                                    int iHashCode = stringExtra2.hashCode();
                                    if (iHashCode != -678380999) {
                                        if (iHashCode != 2524) {
                                            if (iHashCode == 2066405277 && stringExtra2.equals("FALHOU")) {
                                                string = mainActivity.getString(R.string.k_autoroute_apply_error);
                                            } else if (booleanExtra) {
                                                string = mainActivity.getString(R.string.k_autoroute_applied_ok);
                                            } else {
                                                string = mainActivity.getString(R.string.k_autoroute_apply_error);
                                            }
                                        } else if (stringExtra2.equals("OK")) {
                                            string = mainActivity.getString(R.string.k_autoroute_applied_ok);
                                        } else if (booleanExtra) {
                                            string = mainActivity.getString(R.string.k_autoroute_applied_ok);
                                        } else {
                                            string = mainActivity.getString(R.string.k_autoroute_apply_error);
                                        }
                                    } else if (stringExtra2.equals("OK_SEM_REFERENCIA")) {
                                        string = mainActivity.getString(R.string.k_autoroute_applied_sem_referencia);
                                    } else if (booleanExtra) {
                                        string = mainActivity.getString(R.string.k_autoroute_applied_ok);
                                    } else {
                                        string = mainActivity.getString(R.string.k_autoroute_apply_error);
                                    }
                                } else if (booleanExtra) {
                                    string = mainActivity.getString(R.string.k_autoroute_applied_ok);
                                } else {
                                    string = mainActivity.getString(R.string.k_autoroute_apply_error);
                                }
                                i2.g.b(string);
                                int i4 = MainActivity.f1002z1;
                                mainActivity.w("AutoRota", string);
                                mainActivity.t2(string, !booleanExtra ? 1 : 0);
                                if (booleanExtra) {
                                    mainActivity.x0 = true;
                                    mainActivity.s1();
                                }
                                break;
                            }
                            break;
                        case -310257715:
                            if (action.equals("com.ex.auto.AUTO_PROXY_APPLIED") && (stringExtra = intent.getStringExtra("ip")) != null) {
                                String string2 = mainActivity.getString(R.string.k_auto_proxy_applied, stringExtra, Integer.valueOf(intent.getIntExtra("port", 8080)));
                                i2.g.d(string2, "getString(...)");
                                int i5 = MainActivity.f1002z1;
                                mainActivity.w("AutoProxy", string2);
                                mainActivity.t2(string2, 0);
                            }
                            break;
                        case 374877271:
                            if (action.equals("com.ex.auto.USB_WATCHDOG_APPLIED")) {
                                int i6 = MainActivity.f1002z1;
                                mainActivity.w("AutoUSB", "USB corrigido pelo watchdog");
                                String string3 = mainActivity.getString(R.string.k_usb_auto_fixed);
                                i2.g.d(string3, "getString(...)");
                                mainActivity.t2(string3, 0);
                                break;
                            }
                            break;
                        case 743076550:
                            if (action.equals("com.ex.auto.DRIVE_REGEN_RECUSADO")) {
                                String stringExtra3 = intent.getStringExtra("qual");
                                String string4 = mainActivity.getString(i2.g.a(stringExtra3, "drive") ? R.string.k_drive_recusado_pelo_carro : R.string.k_regen_recusado_pelo_carro);
                                i2.g.d(string4, "getString(...)");
                                int i7 = MainActivity.f1002z1;
                                mainActivity.t2(string4, 1);
                                mainActivity.x("Condução", "o carro NÃO aceitou " + stringExtra3 + '=' + intent.getIntExtra("querido", -1) + " (ficou em " + intent.getIntExtra("hal", -1) + ')');
                                mainActivity.i1(null, null);
                                break;
                            }
                            break;
                    }
                }
                break;
            case 1:
                int i8 = MainActivity.f1002z1;
                Settings.canDrawOverlays(mainActivity);
                mainActivity.v1();
                mainActivity.i1(null, null);
                mainActivity.A1();
                break;
            default:
                int i9 = MainActivity.f1002z1;
                mainActivity.A1();
                break;
        }
    }
}
