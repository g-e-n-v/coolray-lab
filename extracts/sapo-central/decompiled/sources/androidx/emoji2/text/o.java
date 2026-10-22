package androidx.emoji2.text;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final ThreadLocal f344d = new ThreadLocal();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f345a;
    public final t b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile int f346c = 0;

    public o(t tVar, int i3) {
        this.b = tVar;
        this.f345a = i3;
    }

    public final int a(int i3) {
        j0.a aVarB = b();
        int iA = aVarB.a(16);
        if (iA == 0) {
            return 0;
        }
        ByteBuffer byteBuffer = (ByteBuffer) aVarB.f741d;
        int i4 = iA + aVarB.f739a;
        return byteBuffer.getInt((i3 * 4) + byteBuffer.getInt(i4) + i4 + 4);
    }

    public final j0.a b() {
        ThreadLocal threadLocal = f344d;
        j0.a aVar = (j0.a) threadLocal.get();
        if (aVar == null) {
            aVar = new j0.a();
            threadLocal.set(aVar);
        }
        j0.b bVar = (j0.b) this.b.f359a;
        int iA = bVar.a(6);
        if (iA != 0) {
            int i3 = iA + bVar.f739a;
            int i4 = (this.f345a * 4) + ((ByteBuffer) bVar.f741d).getInt(i3) + i3 + 4;
            int i5 = ((ByteBuffer) bVar.f741d).getInt(i4) + i4;
            ByteBuffer byteBuffer = (ByteBuffer) bVar.f741d;
            aVar.f741d = byteBuffer;
            if (byteBuffer != null) {
                aVar.f739a = i5;
                int i6 = i5 - byteBuffer.getInt(i5);
                aVar.b = i6;
                aVar.f740c = ((ByteBuffer) aVar.f741d).getShort(i6);
                return aVar;
            }
            aVar.f739a = 0;
            aVar.b = 0;
            aVar.f740c = 0;
        }
        return aVar;
    }

    public final String toString() {
        int i3;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(", id:");
        j0.a aVarB = b();
        int iA = aVarB.a(4);
        sb.append(Integer.toHexString(iA != 0 ? ((ByteBuffer) aVarB.f741d).getInt(iA + aVarB.f739a) : 0));
        sb.append(", codepoints:");
        j0.a aVarB2 = b();
        int iA2 = aVarB2.a(16);
        if (iA2 != 0) {
            int i4 = iA2 + aVarB2.f739a;
            i3 = ((ByteBuffer) aVarB2.f741d).getInt(((ByteBuffer) aVarB2.f741d).getInt(i4) + i4);
        } else {
            i3 = 0;
        }
        for (int i5 = 0; i5 < i3; i5++) {
            sb.append(Integer.toHexString(a(i5)));
            sb.append(" ");
        }
        return sb.toString();
    }
}
