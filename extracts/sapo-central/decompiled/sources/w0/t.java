package w0;

/* JADX INFO: loaded from: classes.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4245a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f4246c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f4247d;

    public t(String str, String str2, int i3, String str3) {
        this.f4245a = str;
        this.b = str2;
        this.f4246c = i3;
        this.f4247d = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        return this.f4245a.equals(tVar.f4245a) && this.b.equals(tVar.b) && this.f4246c == tVar.f4246c && this.f4247d.equals(tVar.f4247d);
    }

    public final int hashCode() {
        return this.f4247d.hashCode() + ((Integer.hashCode(this.f4246c) + androidx.activity.result.b.e(this.b, this.f4245a.hashCode() * 31, 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MonitorBuild(rotulo=");
        sb.append(this.f4245a);
        sb.append(", md5Orig=");
        sb.append(this.b);
        sb.append(", seek=");
        sb.append(this.f4246c);
        sb.append(", md5Patched=");
        return androidx.activity.result.b.j(sb, this.f4247d, ')');
    }
}
