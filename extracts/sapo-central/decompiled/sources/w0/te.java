package w0;

/* JADX INFO: loaded from: classes.dex */
public final class te {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f4283a;
    public final boolean b;

    public te(boolean z2, boolean z3) {
        this.f4283a = z2;
        this.b = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof te)) {
            return false;
        }
        te teVar = (te) obj;
        return this.f4283a == teVar.f4283a && this.b == teVar.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (Boolean.hashCode(this.f4283a) * 31);
    }

    public final String toString() {
        return "Restauro(wifi=" + this.f4283a + ", ap=" + this.b + ')';
    }
}
