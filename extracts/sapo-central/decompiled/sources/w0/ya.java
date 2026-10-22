package w0;

import android.media.session.MediaController;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.MainActivity;
import com.ex.auto.Politica;
import com.ex.auto.QuickAccessFloaterService;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.Arrays;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ya implements h2.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4586a;

    public /* synthetic */ ya(int i3) {
        this.f4586a = i3;
    }

    @Override // h2.l
    public final Object c(Object obj) {
        switch (this.f4586a) {
            case 0:
                gc gcVar = (gc) obj;
                int i3 = MainActivity.f1002z1;
                i2.g.e(gcVar, "it");
                return "• " + gcVar.b;
            case 1:
                ((Boolean) obj).getClass();
                int i4 = MainActivity.f1002z1;
                return x1.e.f4647c;
            case 2:
                Byte b = (Byte) obj;
                b.byteValue();
                int i5 = MainActivity.f1002z1;
                return String.format("%02x", Arrays.copyOf(new Object[]{b}, 1));
            case 3:
                String str = (String) obj;
                int i6 = MainActivity.f1002z1;
                i2.g.e(str, "it");
                return Boolean.valueOf(o2.k.e0(str, "jit-cache", false) || o2.k.e0(str, "dalvik-jit-code-cache", false));
            case 4:
                String str2 = (String) obj;
                int i7 = MainActivity.f1002z1;
                i2.g.e(str2, "it");
                return o2.k.E0(str2).toString();
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                String str3 = (String) obj;
                int i8 = MainActivity.f1002z1;
                i2.g.e(str3, "it");
                return Boolean.valueOf(o2.t.d0(str3, "MONITOR_") || o2.t.d0(str3, "SEM_") || o2.k.e0(str3, "FALHOU", false));
            case MusicClient.TYPE_GESTURE /* 6 */:
                String str4 = (String) obj;
                int i9 = MainActivity.f1002z1;
                i2.g.e(str4, "it");
                return o2.k.E0(str4).toString();
            case PlaybackState.STATE_ERROR /* 7 */:
                String str5 = (String) obj;
                int i10 = MainActivity.f1002z1;
                i2.g.e(str5, "it");
                return Boolean.valueOf(o2.t.d0(str5, "MONITOR_") || o2.k.e0(str5, "FALHOU", false) || o2.k.e0(str5, "ERRO", false));
            case 8:
                Byte b3 = (Byte) obj;
                b3.byteValue();
                int i11 = MainActivity.f1002z1;
                return String.format("%02x", Arrays.copyOf(new Object[]{b3}, 1));
            case 9:
                Byte b4 = (Byte) obj;
                b4.byteValue();
                return String.format("%02x", Arrays.copyOf(new Object[]{b4}, 1));
            case 10:
                MediaController.TransportControls transportControls = (MediaController.TransportControls) obj;
                i2.g.e(transportControls, "it");
                transportControls.play();
                return x1.e.f4647c;
            case 11:
                MediaController.TransportControls transportControls2 = (MediaController.TransportControls) obj;
                i2.g.e(transportControls2, "it");
                transportControls2.fastForward();
                return x1.e.f4647c;
            case 12:
                MediaController.TransportControls transportControls3 = (MediaController.TransportControls) obj;
                i2.g.e(transportControls3, "it");
                transportControls3.play();
                return x1.e.f4647c;
            case 13:
                MediaController.TransportControls transportControls4 = (MediaController.TransportControls) obj;
                i2.g.e(transportControls4, "it");
                transportControls4.play();
                return x1.e.f4647c;
            case 14:
                MediaController.TransportControls transportControls5 = (MediaController.TransportControls) obj;
                i2.g.e(transportControls5, "it");
                transportControls5.rewind();
                return x1.e.f4647c;
            case 15:
                MediaController.TransportControls transportControls6 = (MediaController.TransportControls) obj;
                i2.g.e(transportControls6, "it");
                transportControls6.fastForward();
                return x1.e.f4647c;
            case 16:
                MediaController.TransportControls transportControls7 = (MediaController.TransportControls) obj;
                i2.g.e(transportControls7, "it");
                transportControls7.skipToNext();
                return x1.e.f4647c;
            case 17:
                MediaController.TransportControls transportControls8 = (MediaController.TransportControls) obj;
                i2.g.e(transportControls8, "it");
                transportControls8.stop();
                return x1.e.f4647c;
            case 18:
                MediaController.TransportControls transportControls9 = (MediaController.TransportControls) obj;
                i2.g.e(transportControls9, "it");
                transportControls9.rewind();
                return x1.e.f4647c;
            case 19:
                MediaController.TransportControls transportControls10 = (MediaController.TransportControls) obj;
                i2.g.e(transportControls10, "it");
                transportControls10.skipToPrevious();
                return x1.e.f4647c;
            case 20:
                MediaController.TransportControls transportControls11 = (MediaController.TransportControls) obj;
                i2.g.e(transportControls11, "it");
                transportControls11.pause();
                return x1.e.f4647c;
            case 21:
                Map.Entry entry = (Map.Entry) obj;
                i2.g.e(entry, "it");
                return ((String) entry.getKey()) + '=' + ((Number) entry.getValue()).intValue();
            case 22:
                Byte b5 = (Byte) obj;
                b5.byteValue();
                return String.format("%02x", Arrays.copyOf(new Object[]{b5}, 1));
            case 23:
                Byte b6 = (Byte) obj;
                b6.byteValue();
                return String.format("%02x", Arrays.copyOf(new Object[]{b6}, 1));
            case 24:
                Byte b7 = (Byte) obj;
                b7.byteValue();
                Politica politica = Politica.f1126a;
                return String.format("%02x", Arrays.copyOf(new Object[]{b7}, 1));
            case 25:
                String str6 = (String) obj;
                int i12 = QuickAccessFloaterService.t0;
                i2.g.e(str6, "it");
                return o2.k.E0(str6).toString();
            case 26:
                String str7 = (String) obj;
                int i13 = QuickAccessFloaterService.t0;
                i2.g.e(str7, "it");
                return Boolean.valueOf(o2.t.d0(str7, "RUNNING:"));
            case 27:
                String str8 = (String) obj;
                int i14 = QuickAccessFloaterService.t0;
                i2.g.e(str8, "it");
                return o2.k.r0(str8, "RUNNING:");
            case 28:
                yf yfVar = (yf) obj;
                i2.g.e(yfVar, "it");
                String lowerCase = yfVar.b.toLowerCase(Locale.ROOT);
                i2.g.d(lowerCase, "toLowerCase(...)");
                return lowerCase;
            default:
                yf yfVar2 = (yf) obj;
                i2.g.e(yfVar2, "it");
                return yfVar2.f4594a;
        }
    }
}
