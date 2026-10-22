package w0;

import android.media.MediaCodec;
import android.view.Surface;
import android.view.SurfaceHolder;

/* JADX INFO: loaded from: classes.dex */
public final class f6 implements SurfaceHolder.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3585a;

    public /* synthetic */ f6(int i3) {
        this.f3585a = i3;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0002. Please report as an issue. */
    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i3, int i4, int i5) {
        switch (this.f3585a) {
        }
        i2.g.e(surfaceHolder, "holder");
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
        switch (this.f3585a) {
            case 0:
                i2.g.e(surfaceHolder, "holder");
                Surface surface = surfaceHolder.getSurface();
                i2.g.d(surface, "getSurface(...)");
                m6 m6Var = m.f3866i;
                if (m6Var != null) {
                    m6Var.f3891e = surface;
                    MediaCodec mediaCodec = m6Var.f3894i;
                    if (mediaCodec == null) {
                        m6Var.h();
                    } else {
                        try {
                            mediaCodec.setOutputSurface(surface);
                        } catch (Exception e3) {
                            androidx.activity.result.b.o(e3, new StringBuilder("setOutputSurface: "), "ExSapoCast");
                            return;
                        }
                    }
                }
                break;
            default:
                i2.g.e(surfaceHolder, "holder");
                Surface surface2 = surfaceHolder.getSurface();
                i2.g.d(surface2, "getSurface(...)");
                m6 m6Var2 = m.f3866i;
                if (m6Var2 != null) {
                    m6Var2.f3891e = surface2;
                    MediaCodec mediaCodec2 = m6Var2.f3894i;
                    if (mediaCodec2 == null) {
                        m6Var2.h();
                    } else {
                        try {
                            mediaCodec2.setOutputSurface(surface2);
                        } catch (Exception e4) {
                            androidx.activity.result.b.o(e4, new StringBuilder("setOutputSurface: "), "ExSapoCast");
                            return;
                        }
                    }
                }
                break;
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        switch (this.f3585a) {
            case 0:
                i2.g.e(surfaceHolder, "holder");
                m6 m6Var = m.f3866i;
                if (m6Var != null) {
                    synchronized (m6Var) {
                        m6Var.f3891e = null;
                        m6Var.e();
                    }
                    return;
                }
                return;
            default:
                i2.g.e(surfaceHolder, "holder");
                m6 m6Var2 = m.f3866i;
                if (m6Var2 != null) {
                    synchronized (m6Var2) {
                        m6Var2.f3891e = null;
                        m6Var2.e();
                    }
                    return;
                }
                return;
        }
    }
}
