package androidx.emoji2.text;

import android.util.SparseArray;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f347a = 1;
    public final s b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public s f348c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public s f349d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f350e;
    public int f;

    public p(s sVar) {
        this.b = sVar;
        this.f348c = sVar;
    }

    public final int a(int i3) {
        SparseArray sparseArray = this.f348c.f358a;
        s sVar = sparseArray == null ? null : (s) sparseArray.get(i3);
        int i4 = 1;
        int i5 = 2;
        if (this.f347a == 2) {
            if (sVar != null) {
                this.f348c = sVar;
                this.f++;
            } else if (i3 == 65038) {
                b();
            } else if (i3 != 65039) {
                s sVar2 = this.f348c;
                if (sVar2.b != null) {
                    i5 = 3;
                    if (this.f != 1) {
                        this.f349d = sVar2;
                        b();
                    } else if (c()) {
                        this.f349d = this.f348c;
                        b();
                    } else {
                        b();
                    }
                } else {
                    b();
                }
            }
            i4 = i5;
        } else if (sVar == null) {
            b();
        } else {
            this.f347a = 2;
            this.f348c = sVar;
            this.f = 1;
            i4 = i5;
        }
        this.f350e = i3;
        return i4;
    }

    public final void b() {
        this.f347a = 1;
        this.f348c = this.b;
        this.f = 0;
    }

    public final boolean c() {
        j0.a aVarB = this.f348c.b.b();
        int iA = aVarB.a(6);
        return !(iA == 0 || ((ByteBuffer) aVarB.f741d).get(iA + aVarB.f739a) == 0) || this.f350e == 65039;
    }
}
