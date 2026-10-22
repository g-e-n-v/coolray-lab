package w0;

/* JADX INFO: loaded from: classes.dex */
public final class mg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3922a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f3923c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f3924d;

    public mg(int i3, int i4, String str, String str2) {
        i2.g.e(str, "packageName");
        i2.g.e(str2, "component");
        this.f3922a = i3;
        this.b = i4;
        this.f3923c = str;
        this.f3924d = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mg)) {
            return false;
        }
        mg mgVar = (mg) obj;
        return this.f3922a == mgVar.f3922a && this.b == mgVar.b && i2.g.a(this.f3923c, mgVar.f3923c) && i2.g.a(this.f3924d, mgVar.f3924d);
    }

    public final int hashCode() {
        return this.f3924d.hashCode() + androidx.activity.result.b.e(this.f3923c, (Integer.hashCode(this.b) + (Integer.hashCode(this.f3922a) * 31)) * 31, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FreeformWindow(stackId=");
        sb.append(this.f3922a);
        sb.append(", taskId=");
        sb.append(this.b);
        sb.append(", packageName=");
        sb.append(this.f3923c);
        sb.append(", component=");
        return androidx.activity.result.b.j(sb, this.f3924d, ')');
    }
}
