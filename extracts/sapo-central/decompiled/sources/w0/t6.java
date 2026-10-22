package w0;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class t6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f4262a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f4263c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f4264d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f4265e;
    public final String f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f4266g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f4267h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f4268i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f4269j;

    public t6(long j3, String str, String str2, String str3, long j4, String str4, boolean z2, int i3, long j5, z1.c cVar) {
        i2.g.e(cVar, "avisos");
        this.f4262a = j3;
        this.b = str;
        this.f4263c = str2;
        this.f4264d = str3;
        this.f4265e = j4;
        this.f = str4;
        this.f4266g = z2;
        this.f4267h = i3;
        this.f4268i = j5;
        this.f4269j = cVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t6)) {
            return false;
        }
        t6 t6Var = (t6) obj;
        return this.f4262a == t6Var.f4262a && i2.g.a(this.b, t6Var.b) && i2.g.a(this.f4263c, t6Var.f4263c) && i2.g.a(this.f4264d, t6Var.f4264d) && this.f4265e == t6Var.f4265e && i2.g.a(this.f, t6Var.f) && this.f4266g == t6Var.f4266g && this.f4267h == t6Var.f4267h && this.f4268i == t6Var.f4268i && i2.g.a(this.f4269j, t6Var.f4269j);
    }

    public final int hashCode() {
        return this.f4269j.hashCode() + ((Long.hashCode(this.f4268i) + ((Integer.hashCode(this.f4267h) + ((Boolean.hashCode(this.f4266g) + androidx.activity.result.b.e(this.f, (Long.hashCode(this.f4265e) + androidx.activity.result.b.e(this.f4264d, androidx.activity.result.b.e(this.f4263c, androidx.activity.result.b.e(this.b, Long.hashCode(this.f4262a) * 31, 31), 31), 31)) * 31, 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "Signed(versionCode=" + this.f4262a + ", versionName=" + this.b + ", apkUrl=" + this.f4263c + ", notes=" + this.f4264d + ", publishedAt=" + this.f4265e + ", channel=" + this.f + ", channelPinned=" + this.f4266g + ", configVersion=" + this.f4267h + ", blobValidoAte=" + this.f4268i + ", avisos=" + this.f4269j + ')';
    }
}
