package w0;

import android.os.Handler;
import android.widget.ProgressBar;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.List;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a9 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3356a;
    public final /* synthetic */ MainActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f3357c;

    public /* synthetic */ a9(int i3, MainActivity mainActivity, int i4) {
        this.f3356a = i4;
        this.f3357c = i3;
        this.b = mainActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        List listC0;
        int i3;
        int i4 = 6;
        int i5 = 2;
        int i6 = 1;
        switch (this.f3356a) {
            case 0:
                MainActivity mainActivity = this.b;
                int i7 = this.f3357c;
                int i8 = MainActivity.f1002z1;
                if (!mainActivity.isFinishing() && !mainActivity.isDestroyed()) {
                    if (i7 == 2) {
                        mainActivity.s1();
                        break;
                    } else if (i7 == 3) {
                        mainActivity.q1();
                        break;
                    } else if (i7 == 4) {
                        mainActivity.o1();
                        break;
                    } else if (i7 == 5) {
                        mainActivity.u1();
                        break;
                    } else if (i7 == 6) {
                        mainActivity.r1();
                        break;
                    }
                }
                break;
            case 1:
                MainActivity mainActivity2 = this.b;
                int i9 = this.f3357c;
                int i10 = MainActivity.f1002z1;
                mainActivity2.f1045v.post(new c9(mainActivity2.H1(10000, o2.m.V("\n                mkdir -p /data/local/tmp/avas_preview\n                DIR=/system/etc/avas/sound_type_" + i9 + "\n                F=$(ls \"$DIR\"/*.wav 2>/dev/null | head -1)\n                if [ -z \"$F\" ]; then echo \"SEM_ARQUIVO\"; exit 0; fi\n                cp -f \"$F\" /data/local/tmp/avas_preview/preview.wav 2>&1\n                chmod 644 /data/local/tmp/avas_preview/preview.wav 2>/dev/null || true\n                echo \"OK\"\n            ")), mainActivity2, i4));
                break;
            case 2:
                MainActivity mainActivity3 = this.b;
                int i11 = this.f3357c;
                int i12 = MainActivity.f1002z1;
                if (!mainActivity3.isFinishing() && !mainActivity3.isDestroyed() && i11 == mainActivity3.f1044u1.get()) {
                    mainActivity3.z1();
                    break;
                }
                break;
            case 3:
                MainActivity mainActivity4 = this.b;
                int i13 = this.f3357c;
                ProgressBar progressBar = mainActivity4.f1004a1;
                if (progressBar != null) {
                    if (i13 >= 0) {
                        progressBar.setIndeterminate(false);
                        progressBar.setProgress(i13);
                    } else {
                        progressBar.setIndeterminate(true);
                    }
                    break;
                }
                break;
            case 4:
                int i14 = this.f3357c;
                MainActivity mainActivity5 = this.b;
                int i15 = mainActivity5.H;
                Handler handler = mainActivity5.f1045v;
                if (i14 != i15) {
                    try {
                        listC0 = i14 == mainActivity5.G ? mainActivity5.C0() : y1.g.g0(mainActivity5.B0(), mainActivity5.z0());
                    } catch (Exception unused) {
                        listC0 = y1.p.f4663a;
                    }
                    handler.post(new ua(mainActivity5, listC0, i5));
                } else {
                    handler.post(new ua(mainActivity5, mainActivity5.A0(), i6));
                }
                break;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                MainActivity mainActivity6 = this.b;
                int i16 = this.f3357c;
                int i17 = MainActivity.f1002z1;
                int iG = mainActivity6.G(new Object[0]);
                boolean z2 = mainActivity6.o0().getBoolean("avas_muted_saved", false);
                if (iG > 0) {
                    i3 = iG;
                } else {
                    i3 = mainActivity6.o0().getInt("avas_mode_ativo", -1);
                    int i18 = mainActivity6.o0().getInt("avas_sound_type_saved", -1);
                    if (1 > i3 || i3 >= 4) {
                        i3 = (1 > i18 || i18 >= 4) ? 1 : i18;
                    }
                }
                boolean z3 = iG < 0 ? mainActivity6.f1036r0 : z2;
                if (iG >= 0) {
                    if (z3 != (iG != 0 ? 0 : 1)) {
                        try {
                            mainActivity6.f1054z.execute(new xa(i16, mainActivity6, z3, i3));
                            break;
                        } catch (RejectedExecutionException unused2) {
                        }
                    }
                }
                mainActivity6.f1045v.post(new na(i16, mainActivity6, i3, iG));
                break;
            case MusicClient.TYPE_GESTURE /* 6 */:
                int i19 = this.f3357c;
                MainActivity mainActivity7 = this.b;
                if (i19 == mainActivity7.A.get() && !mainActivity7.isFinishing() && !mainActivity7.isDestroyed()) {
                    mainActivity7.x2(false);
                    break;
                }
                break;
            case PlaybackState.STATE_ERROR /* 7 */:
                MainActivity mainActivity8 = this.b;
                int i20 = this.f3357c;
                int i21 = MainActivity.f1002z1;
                if (!mainActivity8.isFinishing()) {
                    String string = i20 > 0 ? mainActivity8.getString(R.string.k_error_report_sent) : mainActivity8.getString(R.string.k_error_report_queued);
                    i2.g.b(string);
                    mainActivity8.t2(string, 1);
                    break;
                }
                break;
            default:
                m.f(this.b, this.f3357c, false);
                break;
        }
    }

    public /* synthetic */ a9(MainActivity mainActivity, int i3, int i4) {
        this.f3356a = i4;
        this.b = mainActivity;
        this.f3357c = i3;
    }
}
