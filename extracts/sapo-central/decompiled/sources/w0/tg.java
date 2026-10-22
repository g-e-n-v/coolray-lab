package w0;

/* JADX INFO: loaded from: classes.dex */
public final class tg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4287a;
    public final double b;

    public tg(String str, double d3) {
        this.f4287a = str;
        this.b = d3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof tg)) {
            return false;
        }
        tg tgVar = (tg) obj;
        return i2.g.a(this.f4287a, tgVar.f4287a) && Double.compare(this.b, tgVar.b) == 0;
    }

    public final int hashCode() {
        return Double.hashCode(this.b) + (this.f4287a.hashCode() * 31);
    }

    public final String toString() {
        return "Zona(tipo=" + this.f4287a + ", celsius=" + this.b + ')';
    }
}
