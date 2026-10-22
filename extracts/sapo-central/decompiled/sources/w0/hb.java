package w0;

import android.widget.TextView;
import com.ex.auto.MainActivity;
import com.ex.auto.MasterToggleView;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class hb implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3673a;
    public final /* synthetic */ MainActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MasterToggleView f3674c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ TextView f3675d;

    public /* synthetic */ hb(MainActivity mainActivity, MasterToggleView masterToggleView, TextView textView, int i3) {
        this.f3673a = i3;
        this.b = mainActivity;
        this.f3674c = masterToggleView;
        this.f3675d = textView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Boolean boolD;
        switch (this.f3673a) {
            case 0:
                int i3 = MainActivity.f1002z1;
                boolean zF = ih.f();
                MainActivity mainActivity = this.b;
                mainActivity.f1045v.post(new lf(mainActivity, this.f3674c, zF, this.f3675d));
                return;
            default:
                int i4 = MainActivity.f1002z1;
                MainActivity mainActivity2 = this.b;
                String strH1 = mainActivity2.H1(8000, "getprop dalvik.vm.usejit");
                o2.h hVar = r5.f4148a;
                i2.g.e(strH1, "saidaDoGetprop");
                boolean zA = i2.g.a(o2.k.E0(strH1).toString(), "true");
                try {
                    File file = new File("/proc/self/maps");
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), o2.a.f2622a), 8192);
                    try {
                        boolD = r5.d(n2.g.V(new n2.d(a1.b.F(bufferedReader), true, new ya(3)), "\n"));
                        bufferedReader.close();
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            a1.b.p(bufferedReader, th);
                            throw th2;
                        }
                    }
                } catch (Throwable unused) {
                    boolD = null;
                }
                mainActivity2.f1045v.post(new x7(mainActivity2, this.f3674c, zA, this.f3675d, boolD));
                return;
        }
    }
}
