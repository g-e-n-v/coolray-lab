package w0;

import android.os.Handler;
import android.util.Log;
import com.ecarx.eas.sdk.ECarXApiClient;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.MainActivity;
import com.ex.auto.QuickAccessFloaterService;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class n implements h2.p, ECarXApiClient.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3925a;

    public /* synthetic */ n(int i3) {
        this.f3925a = i3;
    }

    @Override // h2.p
    public Object b(Object obj, Object obj2) throws IOException {
        int i3 = this.f3925a;
        String str = (String) obj;
        int iIntValue = ((Integer) obj2).intValue();
        switch (i3) {
            case 0:
                i2.g.e(str, "c");
                int i4 = m.f3860a;
                if (i4 != 0) {
                    try {
                        String strB = new kotlinx.coroutines.scheduling.h(i4).b(iIntValue, str);
                        i2.g.d(strB, "runShell(...)");
                        return strB;
                    } catch (IOException unused) {
                        m.f3860a = 0;
                    }
                }
                int[] iArr = {65010, 5555};
                IOException e3 = null;
                for (int i5 = 0; i5 < 2; i5++) {
                    int i6 = iArr[i5];
                    try {
                        String strB2 = new kotlinx.coroutines.scheduling.h(i6).b(iIntValue, str);
                        m.f3860a = i6;
                        i2.g.b(strB2);
                        return strB2;
                    } catch (IOException e4) {
                        e3 = e4;
                    }
                }
                if (e3 != null) {
                    throw e3;
                }
                throw new IOException("adbd local indisponível");
            case 1:
                int[] iArr2 = CentralWatchdogService.S2;
                i2.g.e(str, "c");
                String strB3 = new kotlinx.coroutines.scheduling.h(5555).b(iIntValue, str);
                i2.g.d(strB3, "runShell(...)");
                return strB3;
            case 2:
                int[] iArr3 = CentralWatchdogService.S2;
                i2.g.e(str, "c");
                return CentralWatchdogService.c(iIntValue, str);
            case 3:
                i2.g.e(str, "cmd");
                d8 d8Var = d8.f3494a;
                return d8.a(iIntValue, str);
            case 4:
                int i7 = MainActivity.f1002z1;
                i2.g.e(str, "c");
                try {
                    return new kotlinx.coroutines.scheduling.h(5555).b(iIntValue, str);
                } catch (Exception e5) {
                    return "ADB_FAIL: " + e5.getMessage();
                }
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
            default:
                i2.g.e(str, "c");
                return ih.a(iIntValue, str);
            case MusicClient.TYPE_GESTURE /* 6 */:
                i2.g.e(str, "c");
                try {
                    return m.y(iIntValue, str);
                } catch (Exception e6) {
                    return "ADB_FAIL: " + e6.getMessage();
                }
            case PlaybackState.STATE_ERROR /* 7 */:
                i2.g.e(str, "c");
                try {
                    return m.y(iIntValue, str);
                } catch (Exception e7) {
                    return "ADB_FAIL: " + e7.getMessage();
                }
            case 8:
                i2.g.e(str, "c");
                try {
                    return m.y(iIntValue, str);
                } catch (Exception e8) {
                    return "ADB_FAIL: " + e8.getMessage();
                }
            case 9:
                int i8 = QuickAccessFloaterService.t0;
                i2.g.e(str, "c");
                return QuickAccessFloaterService.I(iIntValue, str);
            case 10:
                i2.g.e(str, "c");
                return eg.a(iIntValue, str);
            case 11:
                i2.g.e(str, "c");
                return eg.a(iIntValue, str);
            case 12:
                i2.g.e(str, "c");
                return eg.a(iIntValue, str);
            case 13:
                i2.g.e(str, "c");
                try {
                    return new kotlinx.coroutines.scheduling.h(5555).b(iIntValue, str);
                } catch (Exception e9) {
                    return "ADB_FAIL: " + e9.getMessage();
                }
            case 14:
                i2.g.e(str, "c");
                return ih.a(iIntValue, str);
            case 15:
                i2.g.e(str, "c");
                return ih.a(iIntValue, str);
            case 16:
                i2.g.e(str, "c");
                return ih.a(iIntValue, str);
        }
    }

    @Override // com.ecarx.eas.sdk.ECarXApiClient.Callback
    public void onAPIReady(boolean z2) {
        Log.i("MediaCenterBridge", "onAPIReady: " + z2);
        if (od.f3996g) {
            return;
        }
        if (z2) {
            Handler handler = od.f4000k;
            if (handler != null) {
                handler.post(new r0(9));
                return;
            }
            return;
        }
        Handler handler2 = od.f4000k;
        if (handler2 != null) {
            handler2.postDelayed(new r0(10), 2000L);
        }
    }
}
