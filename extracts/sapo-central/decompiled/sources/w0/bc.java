package w0;

/* JADX INFO: loaded from: classes.dex */
public final class bc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3392a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f3393c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f3394d;

    public bc(long j3, String str, String str2, String str3) {
        this.f3392a = str;
        this.b = str2;
        this.f3393c = str3;
        this.f3394d = j3;
    }

    public final boolean a() {
        return o2.k.m0(this.f3393c) && this.f3394d > 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bc)) {
            return false;
        }
        bc bcVar = (bc) obj;
        return i2.g.a(this.f3392a, bcVar.f3392a) && i2.g.a(this.b, bcVar.b) && i2.g.a(this.f3393c, bcVar.f3393c) && this.f3394d == bcVar.f3394d;
    }

    public final int hashCode() {
        return Long.hashCode(this.f3394d) + androidx.activity.result.b.e(this.f3393c, androidx.activity.result.b.e(this.b, this.f3392a.hashCode() * 31, 31), 31);
    }

    public final String toString() {
        return "KeyServerManifestInfo(versionName=" + this.f3392a + ", apkUrl=" + this.b + ", sha256=" + this.f3393c + ", vcEsperado=" + this.f3394d + ')';
    }
}
