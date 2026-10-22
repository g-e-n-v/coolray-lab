package w0;

/* JADX INFO: loaded from: classes.dex */
public final class x2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f4488a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f4489c;

    public x2(long j3, String str, String str2) {
        this.f4488a = j3;
        this.b = str;
        this.f4489c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x2)) {
            return false;
        }
        x2 x2Var = (x2) obj;
        return this.f4488a == x2Var.f4488a && this.b.equals(x2Var.b) && this.f4489c.equals(x2Var.f4489c);
    }

    public final int hashCode() {
        return androidx.activity.result.b.e(this.f4489c, androidx.activity.result.b.e(this.b, Long.hashCode(this.f4488a) * 31, 31), 31);
    }

    public final String toString() {
        return "WdUpdateInfo(versionCode=" + this.f4488a + ", versionName=" + this.b + ", apkUrl=" + this.f4489c + ", sha256=null)";
    }
}
