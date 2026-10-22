package w0;

/* JADX INFO: loaded from: classes.dex */
public final class s3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Boolean f4196a;
    public final Boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Boolean f4197c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Boolean f4198d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f4199e;

    public s3(Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, boolean z2) {
        this.f4196a = bool;
        this.b = bool2;
        this.f4197c = bool3;
        this.f4198d = bool4;
        this.f4199e = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s3)) {
            return false;
        }
        s3 s3Var = (s3) obj;
        return i2.g.a(this.f4196a, s3Var.f4196a) && i2.g.a(this.b, s3Var.b) && i2.g.a(this.f4197c, s3Var.f4197c) && i2.g.a(this.f4198d, s3Var.f4198d) && this.f4199e == s3Var.f4199e;
    }

    public final int hashCode() {
        Boolean bool = this.f4196a;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Boolean bool2 = this.b;
        int iHashCode2 = (iHashCode + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.f4197c;
        int iHashCode3 = (iHashCode2 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        Boolean bool4 = this.f4198d;
        return Boolean.hashCode(this.f4199e) + ((iHashCode3 + (bool4 != null ? bool4.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "Observado(alvoPresente=" + this.f4196a + ", apPronto=" + this.b + ", transporteAa=" + this.f4197c + ", sessaoAtiva=" + this.f4198d + ", radioOcupadoPeloWifiCliente=" + this.f4199e + ')';
    }
}
