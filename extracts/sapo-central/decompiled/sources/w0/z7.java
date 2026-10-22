package w0;

/* JADX INFO: loaded from: classes.dex */
public final class z7 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Integer f4617a;
    public final Integer b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Integer f4618c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Float f4619d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Integer f4620e;
    public final Boolean f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Boolean f4621g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Boolean f4622h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Boolean f4623i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Boolean f4624j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Integer f4625k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Integer f4626l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Boolean f4627m;

    public z7(Integer num, Integer num2, Integer num3, Float f, Integer num4, Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, Boolean bool5, Integer num5, Integer num6, Boolean bool6) {
        this.f4617a = num;
        this.b = num2;
        this.f4618c = num3;
        this.f4619d = f;
        this.f4620e = num4;
        this.f = bool;
        this.f4621g = bool2;
        this.f4622h = bool3;
        this.f4623i = bool4;
        this.f4624j = bool5;
        this.f4625k = num5;
        this.f4626l = num6;
        this.f4627m = bool6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z7)) {
            return false;
        }
        z7 z7Var = (z7) obj;
        return i2.g.a(this.f4617a, z7Var.f4617a) && i2.g.a(this.b, z7Var.b) && i2.g.a(this.f4618c, z7Var.f4618c) && i2.g.a(this.f4619d, z7Var.f4619d) && i2.g.a(this.f4620e, z7Var.f4620e) && i2.g.a(this.f, z7Var.f) && i2.g.a(this.f4621g, z7Var.f4621g) && i2.g.a(this.f4622h, z7Var.f4622h) && i2.g.a(this.f4623i, z7Var.f4623i) && i2.g.a(this.f4624j, z7Var.f4624j) && i2.g.a(this.f4625k, z7Var.f4625k) && i2.g.a(this.f4626l, z7Var.f4626l) && i2.g.a(this.f4627m, z7Var.f4627m);
    }

    public final int hashCode() {
        Integer num = this.f4617a;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.b;
        int iHashCode2 = (iHashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.f4618c;
        int iHashCode3 = (iHashCode2 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Float f = this.f4619d;
        int iHashCode4 = (iHashCode3 + (f == null ? 0 : f.hashCode())) * 31;
        Integer num4 = this.f4620e;
        int iHashCode5 = (iHashCode4 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Boolean bool = this.f;
        int iHashCode6 = (iHashCode5 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.f4621g;
        int iHashCode7 = (iHashCode6 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.f4622h;
        int iHashCode8 = (iHashCode7 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        Boolean bool4 = this.f4623i;
        int iHashCode9 = (iHashCode8 + (bool4 == null ? 0 : bool4.hashCode())) * 31;
        Boolean bool5 = this.f4624j;
        int iHashCode10 = (iHashCode9 + (bool5 == null ? 0 : bool5.hashCode())) * 31;
        Integer num5 = this.f4625k;
        int iHashCode11 = (iHashCode10 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.f4626l;
        int iHashCode12 = (iHashCode11 + (num6 == null ? 0 : num6.hashCode())) * 31;
        Boolean bool6 = this.f4627m;
        return iHashCode12 + (bool6 != null ? bool6.hashCode() : 0);
    }

    public final String toString() {
        return "CarSnapshot(drive=" + this.f4617a + ", regen=" + this.b + ", fan=" + this.f4618c + ", temp=" + this.f4619d + ", vent=" + this.f4620e + ", rearDefrost=" + this.f + ", recirc=" + this.f4621g + ", wheelHeat=" + this.f4622h + ", frontMaxDefrost=" + this.f4623i + ", windshieldHeat=" + this.f4624j + ", seatHeatDriver=" + this.f4625k + ", seatHeatPassenger=" + this.f4626l + ", acOn=" + this.f4627m + ')';
    }
}
