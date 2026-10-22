package l2;

/* JADX INFO: loaded from: classes.dex */
public final class c extends a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final c f2430d = new c(1, 0, 1);

    public final boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        if (isEmpty() && ((c) obj).isEmpty()) {
            return true;
        }
        c cVar = (c) obj;
        return this.f2425a == cVar.f2425a && this.b == cVar.b;
    }

    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (this.f2425a * 31) + this.b;
    }

    public final boolean isEmpty() {
        return this.f2425a > this.b;
    }

    public final String toString() {
        return this.f2425a + ".." + this.b;
    }
}
