package w0;

/* JADX INFO: loaded from: classes.dex */
public final class lg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3855a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3856c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f3857d;

    public lg(int i3, int i4, int i5, int i6) {
        this.f3855a = i3;
        this.b = i4;
        this.f3856c = i5;
        this.f3857d = i6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof lg)) {
            return false;
        }
        lg lgVar = (lg) obj;
        return this.f3855a == lgVar.f3855a && this.b == lgVar.b && this.f3856c == lgVar.f3856c && this.f3857d == lgVar.f3857d;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f3857d) + ((Integer.hashCode(this.f3856c) + ((Integer.hashCode(this.b) + (Integer.hashCode(this.f3855a) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "Bounds(left=" + this.f3855a + ", top=" + this.b + ", right=" + this.f3856c + ", bottom=" + this.f3857d + ')';
    }
}
