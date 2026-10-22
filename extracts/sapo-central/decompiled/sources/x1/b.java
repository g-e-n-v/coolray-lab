package x1;

import i2.g;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public final class b implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Throwable f4642a;

    public b(Throwable th) {
        this.f4642a = th;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof b) {
            return g.a(this.f4642a, ((b) obj).f4642a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f4642a.hashCode();
    }

    public final String toString() {
        return "Failure(" + this.f4642a + ')';
    }
}
