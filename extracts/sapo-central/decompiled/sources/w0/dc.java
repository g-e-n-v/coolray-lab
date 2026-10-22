package w0;

/* JADX INFO: loaded from: classes.dex */
public final class dc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3503a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f3504c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f3505d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f3506e;

    public dc(String str, String str2, boolean z2, boolean z3, boolean z4) {
        i2.g.e(str, "status");
        i2.g.e(str2, "action");
        this.f3503a = str;
        this.b = str2;
        this.f3504c = z2;
        this.f3505d = z3;
        this.f3506e = z4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dc)) {
            return false;
        }
        dc dcVar = (dc) obj;
        return i2.g.a(this.f3503a, dcVar.f3503a) && i2.g.a(this.b, dcVar.b) && this.f3504c == dcVar.f3504c && this.f3505d == dcVar.f3505d && this.f3506e == dcVar.f3506e;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f3506e) + ((Boolean.hashCode(this.f3505d) + ((Boolean.hashCode(this.f3504c) + androidx.activity.result.b.e(this.b, this.f3503a.hashCode() * 31, 31)) * 31)) * 31);
    }

    public final String toString() {
        return "MasterCatalogCardState(status=" + this.f3503a + ", action=" + this.b + ", installed=" + this.f3504c + ", installEnabled=" + this.f3505d + ", removeEnabled=" + this.f3506e + ')';
    }
}
