package w0;

/* JADX INFO: loaded from: classes.dex */
public final class u3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final q3 f4330a;
    public final String b;

    public u3(q3 q3Var, String str) {
        i2.g.e(str, "motivo");
        this.f4330a = q3Var;
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u3)) {
            return false;
        }
        u3 u3Var = (u3) obj;
        return this.f4330a == u3Var.f4330a && i2.g.a(this.b, u3Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.f4330a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Veredito(decisao=");
        sb.append(this.f4330a);
        sb.append(", motivo=");
        return androidx.activity.result.b.j(sb, this.b, ')');
    }
}
