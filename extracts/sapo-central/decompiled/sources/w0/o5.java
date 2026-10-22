package w0;

/* JADX INFO: loaded from: classes.dex */
public final class o5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3975a;
    public final long b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f3976c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f3977d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f3978e;
    public final String f;

    public o5(String str, long j3, long j4, long j5, long j6, String str2) {
        i2.g.e(str2, "linhaDexopt");
        this.f3975a = str;
        this.b = j3;
        this.f3976c = j4;
        this.f3977d = j5;
        this.f3978e = j6;
        this.f = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o5)) {
            return false;
        }
        o5 o5Var = (o5) obj;
        return i2.g.a(this.f3975a, o5Var.f3975a) && this.b == o5Var.b && this.f3976c == o5Var.f3976c && this.f3977d == o5Var.f3977d && this.f3978e == o5Var.f3978e && i2.g.a(this.f, o5Var.f);
    }

    public final int hashCode() {
        return this.f.hashCode() + ((Long.hashCode(this.f3978e) + ((Long.hashCode(this.f3977d) + ((Long.hashCode(this.f3976c) + ((Long.hashCode(this.b) + (this.f3975a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Pacote(pkg=");
        sb.append(this.f3975a);
        sb.append(", apkBytes=");
        sb.append(this.b);
        sb.append(", odexBytes=");
        sb.append(this.f3976c);
        sb.append(", profBytes=");
        sb.append(this.f3977d);
        sb.append(", curBytes=");
        sb.append(this.f3978e);
        sb.append(", linhaDexopt=");
        return androidx.activity.result.b.j(sb, this.f, ')');
    }
}
