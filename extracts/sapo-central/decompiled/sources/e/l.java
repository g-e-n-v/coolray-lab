package e;

import android.app.AlertDialog;
import android.bluetooth.le.BluetoothLeAdvertiser;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.view.ContextThemeWrapper;
import android.view.Window;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.R;
import java.util.List;
import org.json.JSONObject;
import w0.ad;
import w0.ae;
import w0.c6;
import w0.e8;
import w0.ee;
import w0.l0;
import w0.s0;
import w0.t1;
import w0.u0;
import w0.v7;
import w0.wd;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1647a;
    public final /* synthetic */ Context b;

    public /* synthetic */ l(Context context, int i3) {
        this.f1647a = i3;
        this.b = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i3 = 0;
        int i4 = 1;
        switch (this.f1647a) {
            case 0:
                Context context = this.b;
                if (Build.VERSION.SDK_INT >= 33) {
                    ComponentName componentName = new ComponentName(context, "androidx.appcompat.app.AppLocalesMetadataHolderService");
                    if (context.getPackageManager().getComponentEnabledSetting(componentName) != 1) {
                        if (o.c().b()) {
                            String strY = a1.b.Y(context);
                            Object systemService = context.getSystemService("locale");
                            if (systemService != null) {
                                n.b(systemService, m.a(strY));
                            }
                        }
                        context.getPackageManager().setComponentEnabledSetting(componentName, 1, 1);
                    }
                }
                o.f = true;
                return;
            case 1:
                o.s(this.b);
                return;
            case 2:
                Context context2 = this.b;
                ee eeVar = ee.f3548a;
                i2.g.b(context2);
                SharedPreferences sharedPreferencesC = ee.c(context2);
                if (sharedPreferencesC.getBoolean("modo_oficina_aviso_saida_pendente", false)) {
                    wd wdVar = wd.f4450a;
                    if (wd.a(context2)) {
                        return;
                    }
                    AlertDialog alertDialog = t1.f;
                    if (alertDialog == null || !alertDialog.isShowing()) {
                        try {
                            AlertDialog alertDialogCreate = new ad(new ContextThemeWrapper(e8.p(v7.o(context2)), R.style.Theme_TelaPretaCentral_MasterPlatformDialog), R.style.Theme_TelaPretaCentral_MasterPlatformDialog).setTitle(R.string.k_modo_oficina_encerrado_titulo).setMessage(R.string.k_modo_oficina_encerrado_msg).setCancelable(false).setPositiveButton(R.string.common_ok, new w0.h(i4, sharedPreferencesC)).create();
                            Window window = alertDialogCreate.getWindow();
                            if (window != null) {
                                window.setType(2038);
                            }
                            alertDialogCreate.setOnDismissListener(new l0(i3, alertDialogCreate));
                            alertDialogCreate.show();
                            t1.f = alertDialogCreate;
                            ae aeVar = ae.f3361a;
                            ae.b("ModoOficina", "aviso de saída exibido", true);
                            return;
                        } catch (Exception e3) {
                            ae aeVar2 = ae.f3361a;
                            ae.b("ModoOficina", "aviso de saída pendente: " + e3.getMessage(), false);
                            return;
                        }
                    }
                    return;
                }
                return;
            case 3:
                Context context3 = this.b;
                u0 u0Var = u0.f4312a;
                BluetoothLeAdvertiser bluetoothLeAdvertiser = u0.f;
                s0 s0Var = u0.f4316g;
                if (bluetoothLeAdvertiser != null && s0Var != null) {
                    try {
                        bluetoothLeAdvertiser.stopAdvertising(s0Var);
                        break;
                    } catch (Throwable unused) {
                    }
                    u0.b(context3, bluetoothLeAdvertiser, s0Var);
                }
                u0.a(context3);
                return;
            case 4:
                wd.f4450a.f(this.b, "retomada-boot");
                return;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                Context context4 = this.b;
                synchronized (wd.f4450a) {
                    try {
                        ee eeVar2 = ee.f3548a;
                        SharedPreferences sharedPreferencesC2 = ee.c(context4);
                        if (!sharedPreferencesC2.getBoolean("modo_oficina", false) || !sharedPreferencesC2.getBoolean("modo_oficina_entrada_pendente", false) || sharedPreferencesC2.getBoolean("modo_oficina_restaurando", false)) {
                            return;
                        }
                        try {
                            wd.i(context4);
                            List list = c6.f3430a;
                            c6.f(context4, new JSONObject(f2.d.h0(c6.a(context4))));
                            if (!sharedPreferencesC2.edit().putBoolean("modo_oficina_entrada_pendente", false).commit()) {
                                throw new IllegalStateException("Check failed.");
                            }
                            ae aeVar3 = ae.f3361a;
                            ae.b("ModoOficina", "ocultação retomada e confirmada", true);
                            return;
                        } catch (Exception e4) {
                            ae aeVar4 = ae.f3361a;
                            ae.b("ModoOficina", "ocultação pendente: " + e4.getMessage(), true);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                break;
            case MusicClient.TYPE_GESTURE /* 6 */:
                wd.f4450a.f(this.b, "prazo");
                return;
            default:
                this.b.startActivity(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME").addFlags(268435456));
                return;
        }
    }
}
