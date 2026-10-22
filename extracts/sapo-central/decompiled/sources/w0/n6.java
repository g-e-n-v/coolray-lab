package w0;

/* JADX INFO: loaded from: classes.dex */
public final class n6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3935a;
    public final String b;

    public n6(String str, String str2) {
        i2.g.e(str, "owner");
        i2.g.e(str2, "phase");
        this.f3935a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n6)) {
            return false;
        }
        n6 n6Var = (n6) obj;
        return i2.g.a(this.f3935a, n6Var.f3935a) && i2.g.a(this.b, n6Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.f3935a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Snapshot(owner=");
        sb.append(this.f3935a);
        sb.append(", phase=");
        return androidx.activity.result.b.j(sb, this.b, ')');
    }
}
