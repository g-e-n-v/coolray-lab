package w0;

/* JADX INFO: loaded from: classes.dex */
public final class gc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3637a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f3638c;

    public gc(String str, String str2, String str3) {
        i2.g.e(str3, "remoteId");
        this.f3637a = str;
        this.b = str2;
        this.f3638c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gc)) {
            return false;
        }
        gc gcVar = (gc) obj;
        return i2.g.a(this.f3637a, gcVar.f3637a) && i2.g.a(this.b, gcVar.b) && i2.g.a(this.f3638c, gcVar.f3638c);
    }

    public final int hashCode() {
        return this.f3638c.hashCode() + androidx.activity.result.b.e(this.b, this.f3637a.hashCode() * 31, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OutdatedDep(key=");
        sb.append(this.f3637a);
        sb.append(", label=");
        sb.append(this.b);
        sb.append(", remoteId=");
        return androidx.activity.result.b.j(sb, this.f3638c, ')');
    }
}
