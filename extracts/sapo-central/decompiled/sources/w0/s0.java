package w0;

import android.bluetooth.le.AdvertiseCallback;
import android.bluetooth.le.AdvertiseSettings;
import com.ex.auto.PhoneSyncService;

/* JADX INFO: loaded from: classes.dex */
public final class s0 extends AdvertiseCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PhoneSyncService f4191a;

    public s0(PhoneSyncService phoneSyncService) {
        this.f4191a = phoneSyncService;
    }

    @Override // android.bluetooth.le.AdvertiseCallback
    public final void onStartFailure(int i3) {
        ae aeVar = ae.f3361a;
        ae.b("BleCarro", "farol falhou ao subir: código " + i3, false);
        u0 u0Var = u0.f4312a;
        u0.f4316g = null;
    }

    @Override // android.bluetooth.le.AdvertiseCallback
    public final void onStartSuccess(AdvertiseSettings advertiseSettings) {
        ae aeVar = ae.f3361a;
        StringBuilder sb = new StringBuilder("farol no ar (serviço ");
        u0 u0Var = u0.f4312a;
        sb.append(u0.b);
        sb.append(", token ");
        sb.append(y1.f.b0(m.B(u0.f(this.f4191a)), new o(13)));
        sb.append(')');
        ae.b("BleCarro", sb.toString(), false);
    }
}
