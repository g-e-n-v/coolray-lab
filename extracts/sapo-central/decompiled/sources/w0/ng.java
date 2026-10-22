package w0;

/* JADX INFO: loaded from: classes.dex */
public final class ng {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3959a;
    public final int b;

    public ng(int i3, int i4) {
        this.f3959a = i3;
        this.b = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ng)) {
            return false;
        }
        ng ngVar = (ng) obj;
        return this.f3959a == ngVar.f3959a && this.b == ngVar.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (Integer.hashCode(this.f3959a) * 31);
    }

    public final String toString() {
        return "ScreenSize(width=" + this.f3959a + ", height=" + this.b + ')';
    }
}
