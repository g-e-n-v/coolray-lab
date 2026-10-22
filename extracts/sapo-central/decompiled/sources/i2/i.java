package i2;

/* JADX INFO: loaded from: classes.dex */
public final class i implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f2288a;

    public i(Class cls) {
        this.f2288a = cls;
    }

    @Override // i2.c
    public final Class a() {
        return this.f2288a;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof i) {
            return g.a(this.f2288a, ((i) obj).f2288a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f2288a.hashCode();
    }

    public final String toString() {
        return this.f2288a.toString() + " (Kotlin reflection is not available)";
    }
}
