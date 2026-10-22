package w0;

/* JADX INFO: loaded from: classes.dex */
public final class dg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3513a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f3514c;

    public dg(String str, String str2, String str3) {
        i2.g.e(str, "asset");
        i2.g.e(str2, "src");
        i2.g.e(str3, "target");
        this.f3513a = str;
        this.b = str2;
        this.f3514c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dg)) {
            return false;
        }
        dg dgVar = (dg) obj;
        return i2.g.a(this.f3513a, dgVar.f3513a) && i2.g.a(this.b, dgVar.b) && i2.g.a(this.f3514c, dgVar.f3514c);
    }

    public final int hashCode() {
        return this.f3514c.hashCode() + androidx.activity.result.b.e(this.b, this.f3513a.hashCode() * 31, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Overlay(asset=");
        sb.append(this.f3513a);
        sb.append(", src=");
        sb.append(this.b);
        sb.append(", target=");
        return androidx.activity.result.b.j(sb, this.f3514c, ')');
    }
}
