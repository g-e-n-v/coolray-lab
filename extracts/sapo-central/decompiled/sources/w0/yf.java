package w0;

/* JADX INFO: loaded from: classes.dex */
public final class yf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4594a;
    public final String b;

    public yf(String str, String str2) {
        i2.g.e(str2, "nome");
        this.f4594a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yf)) {
            return false;
        }
        yf yfVar = (yf) obj;
        return i2.g.a(this.f4594a, yfVar.f4594a) && i2.g.a(this.b, yfVar.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.f4594a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Candidato(pacote=");
        sb.append(this.f4594a);
        sb.append(", nome=");
        return androidx.activity.result.b.j(sb, this.b, ')');
    }
}
