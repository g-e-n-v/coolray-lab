package w0;

/* JADX INFO: loaded from: classes.dex */
public final class ge {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3640a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f3641c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f3642d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f3643e;

    public ge(int i3, int i4, String str, int i5, int i6) {
        this.f3640a = i3;
        this.b = i4;
        this.f3641c = str;
        this.f3642d = i5;
        this.f3643e = i6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ge)) {
            return false;
        }
        ge geVar = (ge) obj;
        return this.f3640a == geVar.f3640a && this.b == geVar.b && this.f3641c.equals(geVar.f3641c) && this.f3642d == geVar.f3642d && this.f3643e == geVar.f3643e;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f3643e) + ((Integer.hashCode(this.f3642d) + androidx.activity.result.b.e(this.f3641c, (Integer.hashCode(this.b) + (Integer.hashCode(this.f3640a) * 31)) * 31, 31)) * 31);
    }

    public final String toString() {
        return "PresenceFunc(prop=" + this.f3640a + ", area=" + this.b + ", label=" + this.f3641c + ", onVal=" + this.f3642d + ", offVal=" + this.f3643e + ')';
    }
}
