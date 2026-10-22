package w0;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Log;
import android.view.Surface;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.concurrent.LinkedBlockingQueue;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class m6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Socket f3888a;
    public final DataInputStream b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BufferedOutputStream f3889c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile Surface f3891e;
    public volatile byte[] f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile int f3892g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile int f3893h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public MediaCodec f3894i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public HandlerThread f3895j;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile boolean f3890d = true;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final LinkedBlockingQueue f3896k = new LinkedBlockingQueue();

    public m6(Socket socket, DataInputStream dataInputStream, OutputStream outputStream) {
        this.f3888a = socket;
        this.b = dataInputStream;
        this.f3889c = new BufferedOutputStream(outputStream);
    }

    public static void d(byte[] bArr, int i3, float f) {
        int iFloatToRawIntBits = Float.floatToRawIntBits(f);
        bArr[i3] = (byte) (iFloatToRawIntBits >>> 24);
        bArr[i3 + 1] = (byte) (iFloatToRawIntBits >>> 16);
        bArr[i3 + 2] = (byte) (iFloatToRawIntBits >>> 8);
        bArr[i3 + 3] = (byte) iFloatToRawIntBits;
    }

    public final void a(byte[] bArr) {
        MediaCodec mediaCodec = this.f3894i;
        if (mediaCodec != null && bArr.length >= 9) {
            long j3 = 0;
            for (int i3 = 0; i3 < 8; i3++) {
                j3 = (j3 << 8) | (((long) bArr[i3]) & 255);
            }
            int length = bArr.length - 9;
            Integer num = (Integer) this.f3896k.poll();
            if (num == null) {
                f();
                return;
            }
            int iIntValue = num.intValue();
            try {
                ByteBuffer inputBuffer = mediaCodec.getInputBuffer(iIntValue);
                if (inputBuffer == null) {
                    return;
                }
                inputBuffer.clear();
                inputBuffer.put(bArr, 9, length);
                mediaCodec.queueInputBuffer(iIntValue, 0, length, j3, 0);
            } catch (Exception e3) {
                androidx.activity.result.b.o(e3, new StringBuilder("feedFrame: "), "ExSapoCast");
            }
        }
    }

    public final void b(byte[] bArr) {
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr, o2.a.f2622a));
            this.f3892g = jSONObject.optInt("w", 0);
            this.f3893h = jSONObject.optInt("h", 0);
            new Handler(Looper.getMainLooper()).post(new k6(this, jSONObject.optInt("rot", 0)));
        } catch (Exception e3) {
            androidx.activity.result.b.o(e3, new StringBuilder("meta: "), "ExSapoCast");
        }
    }

    public final synchronized void c(byte[] bArr) {
        byte[] bArr2 = this.f;
        if (bArr2 == null || !Arrays.equals(bArr2, bArr)) {
            this.f = bArr;
            if (this.f3894i != null) {
                e();
            }
            h();
        }
    }

    public final void e() {
        try {
            MediaCodec mediaCodec = this.f3894i;
            if (mediaCodec != null) {
                mediaCodec.stop();
            }
        } catch (Exception unused) {
        }
        try {
            MediaCodec mediaCodec2 = this.f3894i;
            if (mediaCodec2 != null) {
                mediaCodec2.release();
            }
        } catch (Exception unused2) {
        }
        this.f3894i = null;
        try {
            HandlerThread handlerThread = this.f3895j;
            if (handlerThread != null) {
                handlerThread.quitSafely();
            }
        } catch (Exception unused3) {
        }
        this.f3895j = null;
        this.f3896k.clear();
    }

    public final void f() {
        byte[] bytes = "{\"cmd\":\"idr\"}".getBytes(o2.a.f2622a);
        i2.g.d(bytes, "getBytes(...)");
        i(32, bytes);
    }

    /* JADX WARN: Type inference failed for: r3v4, types: [android.content.ContextWrapper, w0.j6] */
    public final synchronized void g(String str) {
        if (this.f3890d) {
            this.f3890d = false;
            Log.i("ExSapoCast", "sessão encerrada: ".concat(str));
            try {
                BufferedOutputStream bufferedOutputStream = this.f3889c;
                byte[] bytes = "{\"cmd\":\"stop\"}".getBytes(o2.a.f2622a);
                i2.g.d(bytes, "getBytes(...)");
                m.E(bufferedOutputStream, 32, bytes);
            } catch (Exception unused) {
            }
            e();
            try {
                this.f3888a.close();
            } catch (Exception unused2) {
            }
            if (m.f3866i == this) {
                m.f3866i = null;
            }
            ?? r3 = m.f3861c;
            if (r3 != 0) {
                r3.b();
            }
        }
    }

    public final synchronized void h() {
        try {
            if (this.f3894i != null) {
                return;
            }
            Surface surface = this.f3891e;
            if (surface == null) {
                return;
            }
            byte[] bArr = this.f;
            if (bArr == null) {
                return;
            }
            try {
                int i3 = this.f3892g > 0 ? this.f3892g : 1280;
                int i4 = this.f3893h > 0 ? this.f3893h : 720;
                MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat("video/avc", i3, i4);
                i2.g.d(mediaFormatCreateVideoFormat, "createVideoFormat(...)");
                mediaFormatCreateVideoFormat.setByteBuffer("csd-0", ByteBuffer.wrap(bArr));
                MediaCodec mediaCodecCreateDecoderByType = MediaCodec.createDecoderByType("video/avc");
                i2.g.d(mediaCodecCreateDecoderByType, "createDecoderByType(...)");
                HandlerThread handlerThread = new HandlerThread("exsapocast-codec");
                handlerThread.start();
                mediaCodecCreateDecoderByType.setCallback(new l6(this), new Handler(handlerThread.getLooper()));
                mediaCodecCreateDecoderByType.configure(mediaFormatCreateVideoFormat, surface, (MediaCrypto) null, 0);
                mediaCodecCreateDecoderByType.start();
                this.f3894i = mediaCodecCreateDecoderByType;
                this.f3895j = handlerThread;
                f();
                Log.i("ExSapoCast", "decoder configurado " + i3 + 'x' + i4);
            } catch (Exception e3) {
                Log.e("ExSapoCast", "tryConfigure: " + e3.getMessage());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void i(int i3, byte[] bArr) {
        try {
            m.E(this.f3889c, i3, bArr);
        } catch (Exception e3) {
            if (this.f3890d) {
                androidx.activity.result.b.o(e3, new StringBuilder("write: "), "ExSapoCast");
            }
        }
    }
}
