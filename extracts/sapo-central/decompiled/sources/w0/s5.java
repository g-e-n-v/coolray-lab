package w0;

/* JADX INFO: loaded from: classes.dex */
public final class s5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4201a;
    public final long b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f4202c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f4203d;

    public s5(long j3, String str, String str2, String str3) {
        i2.g.e(str3, "pacote");
        this.f4201a = str;
        this.b = j3;
        this.f4202c = str2;
        this.f4203d = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s5)) {
            return false;
        }
        s5 s5Var = (s5) obj;
        return i2.g.a(this.f4201a, s5Var.f4201a) && this.b == s5Var.b && i2.g.a(this.f4202c, s5Var.f4202c) && i2.g.a(this.f4203d, s5Var.f4203d);
    }

    public final int hashCode() {
        return this.f4203d.hashCode() + androidx.activity.result.b.e(this.f4202c, (Long.hashCode(this.b) + (this.f4201a.hashCode() * 31)) * 31, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Aux(apkUrl=");
        sb.append(this.f4201a);
        sb.append(", versionCode=");
        sb.append(this.b);
        sb.append(", versionName=");
        sb.append(this.f4202c);
        sb.append(", pacote=");
        return androidx.activity.result.b.j(sb, this.f4203d, ')');
    }
}
