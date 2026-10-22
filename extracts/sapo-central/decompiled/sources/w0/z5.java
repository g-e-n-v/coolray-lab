package w0;

/* JADX INFO: loaded from: classes.dex */
public final class z5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4614a;
    public final boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f4615c;

    public z5(String str, boolean z2, boolean z3) {
        this.f4614a = str;
        this.b = z2;
        this.f4615c = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z5)) {
            return false;
        }
        z5 z5Var = (z5) obj;
        return i2.g.a(this.f4614a, z5Var.f4614a) && this.b == z5Var.b && this.f4615c == z5Var.f4615c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f4615c) + ((Boolean.hashCode(this.b) + (this.f4614a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "Sessao(pkg=" + this.f4614a + ", tocando=" + this.b + ", temMetadados=" + this.f4615c + ')';
    }
}
