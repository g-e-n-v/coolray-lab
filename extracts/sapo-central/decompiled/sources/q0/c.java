package q0;

import w0.wg;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2852a = 0;
    public long b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f2853c;

    public c(wg wgVar) {
        this.f2853c = wgVar;
    }

    public void a(int i3) {
        if (i3 < 64) {
            this.b &= ~(1 << i3);
            return;
        }
        c cVar = (c) this.f2853c;
        if (cVar != null) {
            cVar.a(i3 - 64);
        }
    }

    public int b(int i3) {
        c cVar = (c) this.f2853c;
        if (cVar == null) {
            return i3 >= 64 ? Long.bitCount(this.b) : Long.bitCount(this.b & ((1 << i3) - 1));
        }
        if (i3 < 64) {
            return Long.bitCount(this.b & ((1 << i3) - 1));
        }
        return Long.bitCount(this.b) + cVar.b(i3 - 64);
    }

    public void c() {
        if (((c) this.f2853c) == null) {
            this.f2853c = new c();
        }
    }

    public boolean d(int i3) {
        if (i3 < 64) {
            return (this.b & (1 << i3)) != 0;
        }
        c();
        return ((c) this.f2853c).d(i3 - 64);
    }

    public void e(int i3, boolean z2) {
        if (i3 >= 64) {
            c();
            ((c) this.f2853c).e(i3 - 64, z2);
            return;
        }
        long j3 = this.b;
        boolean z3 = (Long.MIN_VALUE & j3) != 0;
        long j4 = (1 << i3) - 1;
        this.b = ((j3 & (~j4)) << 1) | (j3 & j4);
        if (z2) {
            h(i3);
        } else {
            a(i3);
        }
        if (z3 || ((c) this.f2853c) != null) {
            c();
            ((c) this.f2853c).e(0, z3);
        }
    }

    public boolean f(int i3) {
        if (i3 >= 64) {
            c();
            return ((c) this.f2853c).f(i3 - 64);
        }
        long j3 = 1 << i3;
        long j4 = this.b;
        boolean z2 = (j4 & j3) != 0;
        long j5 = j4 & (~j3);
        this.b = j5;
        long j6 = j3 - 1;
        this.b = (j5 & j6) | Long.rotateRight((~j6) & j5, 1);
        c cVar = (c) this.f2853c;
        if (cVar != null) {
            if (cVar.d(0)) {
                h(63);
            }
            ((c) this.f2853c).f(0);
        }
        return z2;
    }

    public void g() {
        this.b = 0L;
        c cVar = (c) this.f2853c;
        if (cVar != null) {
            cVar.g();
        }
    }

    public void h(int i3) {
        if (i3 < 64) {
            this.b |= 1 << i3;
        } else {
            c();
            ((c) this.f2853c).h(i3 - 64);
        }
    }

    public String toString() {
        switch (this.f2852a) {
            case 0:
                if (((c) this.f2853c) == null) {
                    return Long.toBinaryString(this.b);
                }
                return ((c) this.f2853c).toString() + "xx" + Long.toBinaryString(this.b);
            default:
                return super.toString();
        }
    }

    public c() {
    }
}
