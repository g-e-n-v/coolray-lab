package w0;

/* JADX INFO: loaded from: classes.dex */
public final class k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3776a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f3777c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f3778d;

    public k0(int i3, String str, String str2, boolean z2) {
        this.f3776a = i3;
        this.b = str;
        this.f3777c = str2;
        this.f3778d = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k0)) {
            return false;
        }
        k0 k0Var = (k0) obj;
        return this.f3776a == k0Var.f3776a && i2.g.a(this.b, k0Var.b) && i2.g.a(this.f3777c, k0Var.f3777c) && this.f3778d == k0Var.f3778d;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f3778d) + androidx.activity.result.b.e(this.f3777c, androidx.activity.result.b.e(this.b, Integer.hashCode(this.f3776a) * 31, 31), 31);
    }

    public final String toString() {
        return "Grupo(indice=" + this.f3776a + ", esquerda=" + this.b + ", direita=" + this.f3777c + ", ativo=" + this.f3778d + ')';
    }
}
