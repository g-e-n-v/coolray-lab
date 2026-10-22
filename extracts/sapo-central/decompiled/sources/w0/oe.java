package w0;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class oe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4016a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final JSONObject f4017c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f4018d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f4019e;
    public final long f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f4020g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f4021h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f4022i;

    public oe(String str, String str2, JSONObject jSONObject, long j3, int i3, long j4, String str3, String str4, String str5) {
        this.f4016a = str;
        this.b = str2;
        this.f4017c = jSONObject;
        this.f4018d = j3;
        this.f4019e = i3;
        this.f = j4;
        this.f4020g = str3;
        this.f4021h = str4;
        this.f4022i = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof oe)) {
            return false;
        }
        oe oeVar = (oe) obj;
        return i2.g.a(this.f4016a, oeVar.f4016a) && i2.g.a(this.b, oeVar.b) && i2.g.a(this.f4017c, oeVar.f4017c) && this.f4018d == oeVar.f4018d && this.f4019e == oeVar.f4019e && this.f == oeVar.f && i2.g.a(this.f4020g, oeVar.f4020g) && i2.g.a(this.f4021h, oeVar.f4021h) && i2.g.a(this.f4022i, oeVar.f4022i);
    }

    public final int hashCode() {
        int iE = androidx.activity.result.b.e(this.f4021h, androidx.activity.result.b.e(this.f4020g, (Long.hashCode(this.f) + ((Integer.hashCode(this.f4019e) + ((Long.hashCode(this.f4018d) + ((this.f4017c.hashCode() + androidx.activity.result.b.e(this.b, this.f4016a.hashCode() * 31, 31)) * 31)) * 31)) * 31)) * 31, 31), 31);
        String str = this.f4022i;
        return iE + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PlaybookStep(id=");
        sb.append(this.f4016a);
        sb.append(", op=");
        sb.append(this.b);
        sb.append(", args=");
        sb.append(this.f4017c);
        sb.append(", timeoutMs=");
        sb.append(this.f4018d);
        sb.append(", retryMax=");
        sb.append(this.f4019e);
        sb.append(", retryBackoffMs=");
        sb.append(this.f);
        sb.append(", onOk=");
        sb.append(this.f4020g);
        sb.append(", onFail=");
        sb.append(this.f4021h);
        sb.append(", log=");
        return androidx.activity.result.b.j(sb, this.f4022i, ')');
    }
}
