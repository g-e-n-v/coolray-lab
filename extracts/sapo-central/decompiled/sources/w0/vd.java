package w0;

/* JADX INFO: loaded from: classes.dex */
public final class vd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f4403a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f4404c;

    public vd(String str, String str2, boolean z2) {
        i2.g.e(str, "mensagem");
        this.f4403a = z2;
        this.b = str;
        this.f4404c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vd)) {
            return false;
        }
        vd vdVar = (vd) obj;
        return this.f4403a == vdVar.f4403a && i2.g.a(this.b, vdVar.b) && i2.g.a(this.f4404c, vdVar.f4404c);
    }

    public final int hashCode() {
        return this.f4404c.hashCode() + androidx.activity.result.b.e(this.b, Boolean.hashCode(this.f4403a) * 31, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Resultado(ok=");
        sb.append(this.f4403a);
        sb.append(", mensagem=");
        sb.append(this.b);
        sb.append(", saida=");
        return androidx.activity.result.b.j(sb, this.f4404c, ')');
    }
}
