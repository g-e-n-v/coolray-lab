package w0;

/* JADX INFO: loaded from: classes.dex */
public final class hc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f3676a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f3677c;

    public hc(long j3, String str, String str2) {
        this.f3676a = j3;
        this.b = str;
        this.f3677c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hc)) {
            return false;
        }
        hc hcVar = (hc) obj;
        return this.f3676a == hcVar.f3676a && this.b.equals(hcVar.b) && this.f3677c.equals(hcVar.f3677c);
    }

    public final int hashCode() {
        return androidx.activity.result.b.e(this.f3677c, androidx.activity.result.b.e(this.b, Long.hashCode(this.f3676a) * 31, 31), 31);
    }

    public final String toString() {
        return "UpdateInfo(versionCode=" + this.f3676a + ", versionName=" + this.b + ", apkUrl=" + this.f3677c + ", sha256=null)";
    }
}
