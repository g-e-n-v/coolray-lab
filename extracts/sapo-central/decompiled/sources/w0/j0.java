package w0;

/* JADX INFO: loaded from: classes.dex */
public final class j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3734a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f3735c;

    public j0(int i3, String str, boolean z2) {
        this.f3734a = i3;
        this.b = str;
        this.f3735c = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j0)) {
            return false;
        }
        j0 j0Var = (j0) obj;
        return this.f3734a == j0Var.f3734a && i2.g.a(this.b, j0Var.b) && this.f3735c == j0Var.f3735c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f3735c) + androidx.activity.result.b.e(this.b, Integer.hashCode(this.f3734a) * 31, 31);
    }

    public final String toString() {
        return "AppPip(indice=" + this.f3734a + ", pacote=" + this.b + ", ativo=" + this.f3735c + ')';
    }
}
