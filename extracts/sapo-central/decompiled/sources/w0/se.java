package w0;

/* JADX INFO: loaded from: classes.dex */
public final class se {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4236a;
    public final long b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f4237c;

    public se(int i3, long j3, long j4) {
        this.f4236a = i3;
        this.b = j3;
        this.f4237c = j4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof se)) {
            return false;
        }
        se seVar = (se) obj;
        return this.f4236a == seVar.f4236a && this.b == seVar.b && this.f4237c == seVar.f4237c;
    }

    public final int hashCode() {
        return Long.hashCode(this.f4237c) + ((Long.hashCode(this.b) + (Integer.hashCode(this.f4236a) * 31)) * 31);
    }

    public final String toString() {
        return "Saude(veredito=" + this.f4236a + ", esperaOutraMs=" + this.b + ", esperaBindMs=" + this.f4237c + ')';
    }
}
