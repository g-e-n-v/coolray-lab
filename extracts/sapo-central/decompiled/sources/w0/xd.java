package w0;

import android.net.nsd.NsdManager;
import android.net.nsd.NsdServiceInfo;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class xd implements NsdManager.RegistrationListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f4519a;
    public final /* synthetic */ String b;

    public xd(String str, String str2) {
        this.f4519a = str;
        this.b = str2;
    }

    @Override // android.net.nsd.NsdManager.RegistrationListener
    public final void onRegistrationFailed(NsdServiceInfo nsdServiceInfo, int i3) {
        i2.g.e(nsdServiceInfo, "s");
        Log.w("NsdAnuncio", "falha ao anunciar (código " + i3 + ") — o celular segue podendo usar o endereço manual");
    }

    @Override // android.net.nsd.NsdManager.RegistrationListener
    public final void onServiceRegistered(NsdServiceInfo nsdServiceInfo) {
        i2.g.e(nsdServiceInfo, "s");
        Log.i("NsdAnuncio", "anunciado como '" + nsdServiceInfo.getServiceName() + "' _exsapo._tcp. porta 47800 (id=" + this.f4519a + " vc=" + this.b + ')');
    }

    @Override // android.net.nsd.NsdManager.RegistrationListener
    public final void onServiceUnregistered(NsdServiceInfo nsdServiceInfo) {
        i2.g.e(nsdServiceInfo, "s");
        Log.i("NsdAnuncio", "anúncio retirado");
    }

    @Override // android.net.nsd.NsdManager.RegistrationListener
    public final void onUnregistrationFailed(NsdServiceInfo nsdServiceInfo, int i3) {
        i2.g.e(nsdServiceInfo, "s");
        Log.w("NsdAnuncio", "falha ao retirar o anúncio (código " + i3 + ')');
    }
}
