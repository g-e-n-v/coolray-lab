package x1;

import i2.g;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f4641a;
    public final Object b;

    public a(Object obj, Object obj2) {
        this.f4641a = obj;
        this.b = obj2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return g.a(this.f4641a, aVar.f4641a) && g.a(this.b, aVar.b);
    }

    public final int hashCode() {
        Object obj = this.f4641a;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.b;
        return iHashCode + (obj2 != null ? obj2.hashCode() : 0);
    }

    public final String toString() {
        return "(" + this.f4641a + ", " + this.b + ')';
    }
}
