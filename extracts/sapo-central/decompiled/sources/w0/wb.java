package w0;

/* JADX INFO: loaded from: classes.dex */
public final class wb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f4442a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f4443c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f4444d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f4445e;
    public final String f;

    public wb(long j3, String str, String str2, String str3, String str4, String str5) {
        i2.g.e(str, "versionName");
        this.f4442a = j3;
        this.b = str;
        this.f4443c = str2;
        this.f4444d = str3;
        this.f4445e = str4;
        this.f = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wb)) {
            return false;
        }
        wb wbVar = (wb) obj;
        return this.f4442a == wbVar.f4442a && i2.g.a(this.b, wbVar.b) && i2.g.a(this.f4443c, wbVar.f4443c) && i2.g.a(this.f4444d, wbVar.f4444d) && i2.g.a(this.f4445e, wbVar.f4445e) && i2.g.a(this.f, wbVar.f);
    }

    public final int hashCode() {
        int iE = androidx.activity.result.b.e(this.b, Long.hashCode(this.f4442a) * 31, 31);
        String str = this.f4443c;
        int iHashCode = (iE + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f4444d;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f4445e;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f;
        return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AppManifestInfo(versionCode=");
        sb.append(this.f4442a);
        sb.append(", versionName=");
        sb.append(this.b);
        sb.append(", apkUrl=");
        sb.append(this.f4443c);
        sb.append(", sha256=");
        sb.append(this.f4444d);
        sb.append(", pageUrl=");
        sb.append(this.f4445e);
        sb.append(", pacoteEsperado=");
        return androidx.activity.result.b.j(sb, this.f, ')');
    }
}
