package w0;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Handler;
import android.util.Log;
import android.widget.ProgressBar;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class m9 implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3907a;
    public final /* synthetic */ MainActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f3908c;

    public /* synthetic */ m9(MainActivity mainActivity, String str, int i3) {
        this.f3907a = i3;
        this.b = mainActivity;
        this.f3908c = str;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i3) {
        int i4 = this.f3907a;
        MainActivity mainActivity = this.b;
        int i5 = 1;
        String str = this.f3908c;
        switch (i4) {
            case 0:
                int i6 = MainActivity.f1002z1;
                androidx.activity.result.b.n(R.string.k_removing, 0, mainActivity, "getString(...)");
                mainActivity.C.execute(new a1.g(mainActivity, str, new y2(mainActivity.u2(35000L, R.id.masterAppsInstallFile), 8, mainActivity), 18));
                break;
            case 1:
                int i7 = MainActivity.f1002z1;
                mainActivity.v(str);
                break;
            case 2:
                int i8 = MainActivity.f1002z1;
                k5 k5Var = k5.f3786a;
                SharedPreferences sharedPreferencesO0 = mainActivity.o0();
                i2.g.d(sharedPreferencesO0, "<get-prefs>(...)");
                i2.g.e(str, "details");
                k5.h(mainActivity);
                try {
                    JSONArray jSONArray = new JSONArray(sharedPreferencesO0.getString("error_report_queue", "[]"));
                    jSONArray.put(new JSONObject().put("s", "[CentralEXAuto] Erro — ".concat("Falha ao aplicar o fundo preto na ré")).put("b", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(new Date()) + '\n' + k5.b(mainActivity, sharedPreferencesO0) + "\n\nFalha ao aplicar o fundo preto na ré\n\n" + o2.k.E0(str).toString()));
                    while (jSONArray.length() > 50) {
                        jSONArray.remove(0);
                    }
                    sharedPreferencesO0.edit().putString("error_report_queue", jSONArray.toString()).apply();
                    Log.d("DR", "erro enfileirado (" + jSONArray.length() + " na fila)");
                } catch (Throwable th) {
                    androidx.activity.result.b.s(th, new StringBuilder("queueErrorReport: "), "DR");
                }
                if (!mainActivity.q0()) {
                    androidx.activity.result.b.n(R.string.k_error_report_no_internet, 1, mainActivity, "getString(...)");
                } else {
                    androidx.activity.result.b.n(R.string.k_sending_error_report, 0, mainActivity, "getString(...)");
                    mainActivity.C.execute(new nb(mainActivity, i5));
                }
                break;
            default:
                int i9 = MainActivity.f1002z1;
                final String str2 = str.equals("temp") ? "hvac_digital_temp" : str.equals("batt") ? "hvac_digital_batt" : "hvac_digital_ext_temp";
                boolean zEquals = str.equals("exttemp");
                final MainActivity mainActivity2 = this.b;
                final boolean z2 = zEquals && !mainActivity2.o0().getBoolean("hvac_digital_batt", false);
                SharedPreferences.Editor editorEdit = mainActivity2.o0().edit();
                editorEdit.putBoolean(str2, true);
                if (z2) {
                    editorEdit.putBoolean("hvac_digital_batt", true);
                }
                editorEdit.apply();
                mainActivity2.v1();
                mainActivity2.startForegroundService(new Intent(mainActivity2, (Class<?>) CentralWatchdogService.class));
                String string = mainActivity2.getString(R.string.k_applying);
                i2.g.d(string, "getString(...)");
                mainActivity2.t2(string, 0);
                final boolean z3 = mainActivity2.o0().getBoolean("hvac_digital_temp", false);
                final boolean z4 = mainActivity2.o0().getBoolean("hvac_digital_batt", false);
                final boolean z5 = mainActivity2.o0().getBoolean("hvac_digital_ext_temp", false);
                if (d8.f3494a.e() != fg.f3601c) {
                    ProgressBar progressBar = new ProgressBar(mainActivity2, null, android.R.attr.progressBarStyleHorizontal);
                    progressBar.setIndeterminate(true);
                    progressBar.setMax(100);
                    int i10 = (int) (20 * progressBar.getResources().getDisplayMetrics().density);
                    progressBar.setPadding(i10, i10, i10, i10);
                    mainActivity2.f1004a1 = progressBar;
                    e.h hVar = new e.h(mainActivity2);
                    e.d dVar = (e.d) hVar.b;
                    dVar.f1554d = mainActivity2.getString(R.string.k_hvac_baixando_titulo);
                    dVar.f = mainActivity2.getString(R.string.k_hvac_baixando_msg);
                    dVar.f1568s = progressBar;
                    dVar.f1562m = false;
                    mainActivity2.f1006b1 = hVar.h();
                }
                mainActivity2.C.execute(new Runnable() { // from class: w0.ob
                    /* JADX WARN: Type inference fix 'apply assigned field type' failed
                    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
                    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                     */
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i11 = MainActivity.f1002z1;
                        d8 d8Var = d8.f3494a;
                        MainActivity mainActivity3 = mainActivity2;
                        boolean zJ = d8Var.j(mainActivity3, z3, z4, z5, new e9(mainActivity3, 0));
                        Handler handler = mainActivity3.f1045v;
                        handler.post(new x8(mainActivity3, 19));
                        handler.post(new f9(mainActivity3, str2, zJ, z2));
                    }
                });
                break;
        }
    }
}
