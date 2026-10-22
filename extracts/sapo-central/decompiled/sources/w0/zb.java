package w0;

/* JADX INFO: loaded from: classes.dex */
public final class zb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4632a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f4633c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f4634d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f4635e;

    public zb(String str, String str2, long j3, String str3, long j4) {
        this.f4632a = str;
        this.b = str2;
        this.f4633c = j3;
        this.f4634d = str3;
        this.f4635e = j4;
    }

    public final boolean a() {
        return o2.k.m0(this.f4632a) && this.f4633c > 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zb)) {
            return false;
        }
        zb zbVar = (zb) obj;
        return i2.g.a(this.f4632a, zbVar.f4632a) && i2.g.a(this.b, zbVar.b) && this.f4633c == zbVar.f4633c && i2.g.a(this.f4634d, zbVar.f4634d) && this.f4635e == zbVar.f4635e;
    }

    public final int hashCode() {
        return Long.hashCode(this.f4635e) + androidx.activity.result.b.e(this.f4634d, (Long.hashCode(this.f4633c) + androidx.activity.result.b.e(this.b, this.f4632a.hashCode() * 31, 31)) * 31, 31);
    }

    public final String toString() {
        return "ConnadaptorManifestInfo(md5=" + this.f4632a + ", apkUrl=" + this.b + ", vcEsperado=" + this.f4633c + ", notas=" + this.f4634d + ", publicadoEm=" + this.f4635e + ')';
    }
}
