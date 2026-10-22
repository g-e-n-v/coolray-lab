package w0;

/* JADX INFO: loaded from: classes.dex */
public final class re {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4181a;
    public final long b;

    public re(int i3, long j3) {
        this.f4181a = i3;
        this.b = j3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof re)) {
            return false;
        }
        re reVar = (re) obj;
        return this.f4181a == reVar.f4181a && this.b == reVar.b;
    }

    public final int hashCode() {
        return Long.hashCode(this.b) + (Integer.hashCode(this.f4181a) * 31);
    }

    public final String toString() {
        return "Passo(acao=" + this.f4181a + ", atrasoMs=" + this.b + ')';
    }
}
