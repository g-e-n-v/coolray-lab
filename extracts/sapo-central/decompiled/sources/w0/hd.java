package w0;

/* JADX INFO: loaded from: classes.dex */
public final class hd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3678a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f3679c;

    public hd(String str, String str2, String str3) {
        i2.g.e(str3, "nome");
        this.f3678a = str;
        this.b = str2;
        this.f3679c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hd)) {
            return false;
        }
        hd hdVar = (hd) obj;
        return i2.g.a(this.f3678a, hdVar.f3678a) && i2.g.a(this.b, hdVar.b) && i2.g.a(this.f3679c, hdVar.f3679c);
    }

    public final int hashCode() {
        return this.f3679c.hashCode() + androidx.activity.result.b.e(this.b, this.f3678a.hashCode() * 31, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Fonte(pacote=");
        sb.append(this.f3678a);
        sb.append(", servico=");
        sb.append(this.b);
        sb.append(", nome=");
        return androidx.activity.result.b.j(sb, this.f3679c, ')');
    }
}
