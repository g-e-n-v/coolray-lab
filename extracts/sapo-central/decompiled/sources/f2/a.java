package f2;

import i2.g;
import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes.dex */
public final class a extends ByteArrayOutputStream {
    public final byte[] a() {
        byte[] bArr = ((ByteArrayOutputStream) this).buf;
        g.d(bArr, "buf");
        return bArr;
    }
}
