package w0;

/* JADX INFO: loaded from: classes.dex */
public final class me {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final je f3916a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f3917c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f3918d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f3919e;

    public me(je jeVar, int i3, long j3, String str, String str2) {
        this.f3916a = jeVar;
        this.b = i3;
        this.f3917c = j3;
        this.f3918d = str;
        this.f3919e = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof me)) {
            return false;
        }
        me meVar = (me) obj;
        return this.f3916a == meVar.f3916a && this.b == meVar.b && this.f3917c == meVar.f3917c && i2.g.a(this.f3918d, meVar.f3918d) && i2.g.a(this.f3919e, meVar.f3919e);
    }

    public final int hashCode() {
        int iHashCode = (Long.hashCode(this.f3917c) + ((Integer.hashCode(this.b) + (this.f3916a.hashCode() * 31)) * 31)) * 31;
        String str = this.f3918d;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f3919e;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Resultado(fim=");
        sb.append(this.f3916a);
        sb.append(", passosExecutados=");
        sb.append(this.b);
        sb.append(", duracaoMs=");
        sb.append(this.f3917c);
        sb.append(", ultimoPasso=");
        sb.append(this.f3918d);
        sb.append(", motivo=");
        return androidx.activity.result.b.j(sb, this.f3919e, ')');
    }
}
