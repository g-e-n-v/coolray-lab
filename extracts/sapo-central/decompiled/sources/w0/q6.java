package w0;

/* JADX INFO: loaded from: classes.dex */
public final class q6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f4097a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f4098c;

    public q6(long j3, String str, String str2) {
        this.f4097a = j3;
        this.b = str;
        this.f4098c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q6)) {
            return false;
        }
        q6 q6Var = (q6) obj;
        return this.f4097a == q6Var.f4097a && i2.g.a(this.b, q6Var.b) && i2.g.a(this.f4098c, q6Var.f4098c);
    }

    public final int hashCode() {
        return this.f4098c.hashCode() + androidx.activity.result.b.e(this.b, Long.hashCode(this.f4097a) * 31, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Aviso(id=");
        sb.append(this.f4097a);
        sb.append(", titulo=");
        sb.append(this.b);
        sb.append(", corpo=");
        return androidx.activity.result.b.j(sb, this.f4098c, ')');
    }
}
