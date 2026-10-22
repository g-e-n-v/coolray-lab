package w0;

/* JADX INFO: loaded from: classes.dex */
public final class yb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zb f4587a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final g4 f4588c;

    public yb(zb zbVar, String str, g4 g4Var) {
        this.f4587a = zbVar;
        this.b = str;
        this.f4588c = g4Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yb)) {
            return false;
        }
        yb ybVar = (yb) obj;
        return i2.g.a(this.f4587a, ybVar.f4587a) && i2.g.a(this.b, ybVar.b) && this.f4588c == ybVar.f4588c;
    }

    public final int hashCode() {
        return this.f4588c.hashCode() + androidx.activity.result.b.e(this.b, this.f4587a.hashCode() * 31, 31);
    }

    public final String toString() {
        return "ConnadaptorCheck(info=" + this.f4587a + ", md5Esperado=" + this.b + ", estado=" + this.f4588c + ')';
    }
}
