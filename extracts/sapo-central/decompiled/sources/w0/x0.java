package w0;

/* JADX INFO: loaded from: classes.dex */
public final class x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4485a;
    public final long b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f4486c;

    public x0(int i3, long j3, boolean z2) {
        this.f4485a = i3;
        this.b = j3;
        this.f4486c = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x0)) {
            return false;
        }
        x0 x0Var = (x0) obj;
        return this.f4485a == x0Var.f4485a && this.b == x0Var.b && this.f4486c == x0Var.f4486c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f4486c) + ((Long.hashCode(this.b) + (Integer.hashCode(this.f4485a) * 31)) * 31);
    }

    public final String toString() {
        return "Reading(gear=" + this.f4485a + ", timestampNs=" + this.b + ", available=" + this.f4486c + ')';
    }
}
