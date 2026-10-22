package w0;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class l6 extends MediaCodec.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ m6 f3836a;

    public l6(m6 m6Var) {
        this.f3836a = m6Var;
    }

    @Override // android.media.MediaCodec.Callback
    public final void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        i2.g.e(mediaCodec, "codec");
        i2.g.e(codecException, "e");
        Log.w("ExSapoCast", "codec erro: " + codecException.getMessage());
        m6 m6Var = this.f3836a;
        m6Var.getClass();
        m6Var.f();
    }

    @Override // android.media.MediaCodec.Callback
    public final void onInputBufferAvailable(MediaCodec mediaCodec, int i3) {
        i2.g.e(mediaCodec, "codec");
        this.f3836a.f3896k.offer(Integer.valueOf(i3));
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputBufferAvailable(MediaCodec mediaCodec, int i3, MediaCodec.BufferInfo bufferInfo) {
        i2.g.e(mediaCodec, "codec");
        i2.g.e(bufferInfo, "info");
        try {
            mediaCodec.releaseOutputBuffer(i3, true);
        } catch (Exception unused) {
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        i2.g.e(mediaCodec, "codec");
        i2.g.e(mediaFormat, "format");
    }
}
