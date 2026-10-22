package w0;

/* JADX INFO: loaded from: classes.dex */
public final class ec {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3540a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f3541c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f3542d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f3543e;
    public final String f;

    public ec(String str, String str2, String str3, String str4, String str5, String str6) {
        this.f3540a = str;
        this.b = str2;
        this.f3541c = str3;
        this.f3542d = str4;
        this.f3543e = str5;
        this.f = str6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ec)) {
            return false;
        }
        ec ecVar = (ec) obj;
        return i2.g.a(this.f3540a, ecVar.f3540a) && i2.g.a(this.b, ecVar.b) && i2.g.a(this.f3541c, ecVar.f3541c) && i2.g.a(this.f3542d, ecVar.f3542d) && i2.g.a(this.f3543e, ecVar.f3543e) && i2.g.a(this.f, ecVar.f);
    }

    public final int hashCode() {
        return this.f.hashCode() + androidx.activity.result.b.e(this.f3543e, androidx.activity.result.b.e(this.f3542d, androidx.activity.result.b.e(this.f3541c, androidx.activity.result.b.e(this.b, this.f3540a.hashCode() * 31, 31), 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MasterWidgetSpec(title=");
        sb.append(this.f3540a);
        sb.append(", enabledKey=");
        sb.append(this.b);
        sb.append(", pinnedKey=");
        sb.append(this.f3541c);
        sb.append(", sizeKey=");
        sb.append(this.f3542d);
        sb.append(", alphaKey=");
        sb.append(this.f3543e);
        sb.append(", widgetKey=");
        return androidx.activity.result.b.j(sb, this.f, ')');
    }
}
