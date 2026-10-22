package w0;

/* JADX INFO: loaded from: classes.dex */
public final class n4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Integer f3930a;
    public final boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f3931c;

    public n4(Integer num, boolean z2, boolean z3) {
        this.f3930a = num;
        this.b = z2;
        this.f3931c = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n4)) {
            return false;
        }
        n4 n4Var = (n4) obj;
        return i2.g.a(this.f3930a, n4Var.f3930a) && this.b == n4Var.b && this.f3931c == n4Var.f3931c;
    }

    public final int hashCode() {
        Integer num = this.f3930a;
        return Boolean.hashCode(this.f3931c) + ((Boolean.hashCode(this.b) + ((num == null ? 0 : num.hashCode()) * 31)) * 31);
    }

    public final String toString() {
        return "Exibicao(destaque=" + this.f3930a + ", confirmadoPeloCarro=" + this.b + ", divergiu=" + this.f3931c + ')';
    }
}
