package w0;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3815a;
    public final double b;

    public l(String str, double d3) {
        this.f3815a = str;
        this.b = d3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return i2.g.a(this.f3815a, lVar.f3815a) && Double.compare(this.b, lVar.b) == 0;
    }

    public final int hashCode() {
        return Double.hashCode(this.b) + (this.f3815a.hashCode() * 31);
    }

    public final String toString() {
        return "Step(type=" + this.f3815a + ", value=" + this.b + ')';
    }
}
