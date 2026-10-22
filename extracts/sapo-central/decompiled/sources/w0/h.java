package w0;

import android.content.DialogInterface;
import android.content.SharedPreferences;
import com.ex.auto.AcProgramEditActivity;
import com.ex.auto.InstallerActivity;
import com.ex.auto.MainActivity;
import com.ex.auto.QuickAccessFloaterService;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3647a;
    public final /* synthetic */ Object b;

    public /* synthetic */ h(int i3, Object obj) {
        this.f3647a = i3;
        this.b = obj;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i3) {
        int i4 = this.f3647a;
        Object obj = this.b;
        switch (i4) {
            case 0:
                AcProgramEditActivity acProgramEditActivity = (AcProgramEditActivity) obj;
                int i5 = acProgramEditActivity.f761t;
                acProgramEditActivity.getSharedPreferences("ac_programs_prefs", 0).edit().remove("program_" + i5).apply();
                acProgramEditActivity.finish();
                break;
            case 1:
                ((SharedPreferences) obj).edit().remove("modo_oficina_aviso_saida_pendente").commit();
                ae aeVar = ae.f3361a;
                ae.b("ModoOficina", "aviso de saída confirmado pelo usuário", false);
                break;
            case 2:
                int i6 = InstallerActivity.f979v;
                ((InstallerActivity) obj).finish();
                break;
            case 3:
                int i7 = InstallerActivity.f979v;
                ((CountDownLatch) obj).countDown();
                break;
            case 4:
                int i8 = MainActivity.f1002z1;
                ((h2.a) obj).a();
                break;
            default:
                QuickAccessFloaterService quickAccessFloaterService = (QuickAccessFloaterService) obj;
                int i9 = QuickAccessFloaterService.t0;
                quickAccessFloaterService.getClass();
                quickAccessFloaterService.O(new kf(1, quickAccessFloaterService));
                break;
        }
    }
}
