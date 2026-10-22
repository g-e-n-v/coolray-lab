package w0;

/* JADX INFO: loaded from: classes.dex */
public final class q5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final n5 f4096a;
    public final m5 b;

    public q5(n5 n5Var, m5 m5Var) {
        this.f4096a = n5Var;
        this.b = m5Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q5)) {
            return false;
        }
        q5 q5Var = (q5) obj;
        return this.f4096a == q5Var.f4096a && this.b == q5Var.b;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.f4096a.hashCode() * 31);
    }

    public final String toString() {
        return "Veredito(estado=" + this.f4096a + ", detalhe=" + this.b + ')';
    }
}
