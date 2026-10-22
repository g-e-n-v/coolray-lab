package w0;

/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Float f3732a;
    public final Integer b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Boolean f3733c;

    public j(Float f, Integer num, Boolean bool) {
        this.f3732a = f;
        this.b = num;
        this.f3733c = bool;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return i2.g.a(this.f3732a, jVar.f3732a) && i2.g.a(this.b, jVar.b) && i2.g.a(this.f3733c, jVar.f3733c);
    }

    public final int hashCode() {
        Float f = this.f3732a;
        int iHashCode = (f == null ? 0 : f.hashCode()) * 31;
        Integer num = this.b;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        Boolean bool = this.f3733c;
        return iHashCode2 + (bool != null ? bool.hashCode() : 0);
    }

    public final String toString() {
        return "Clima(tempC=" + this.f3732a + ", fan=" + this.b + ", recirc=" + this.f3733c + ')';
    }
}
