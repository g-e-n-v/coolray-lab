package x1;

import i2.g;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public final class d implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f4645a;
    public final Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f4646c;

    public d(String str, Object obj, Object obj2) {
        this.f4645a = str;
        this.b = obj;
        this.f4646c = obj2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return g.a(this.f4645a, dVar.f4645a) && g.a(this.b, dVar.b) && g.a(this.f4646c, dVar.f4646c);
    }

    public final int hashCode() {
        Object obj = this.f4645a;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.b;
        int iHashCode2 = (iHashCode + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Object obj3 = this.f4646c;
        return iHashCode2 + (obj3 != null ? obj3.hashCode() : 0);
    }

    public final String toString() {
        return "(" + this.f4645a + ", " + this.b + ", " + this.f4646c + ')';
    }
}
