package w0;

/* JADX INFO: loaded from: classes.dex */
public final class v6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Boolean f4372a;
    public final Boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Boolean f4373c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Boolean f4374d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Integer f4375e;
    public final Integer f;

    public v6(Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, Integer num, Integer num2) {
        this.f4372a = bool;
        this.b = bool2;
        this.f4373c = bool3;
        this.f4374d = bool4;
        this.f4375e = num;
        this.f = num2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v6)) {
            return false;
        }
        v6 v6Var = (v6) obj;
        return i2.g.a(this.f4372a, v6Var.f4372a) && i2.g.a(this.b, v6Var.b) && i2.g.a(this.f4373c, v6Var.f4373c) && i2.g.a(this.f4374d, v6Var.f4374d) && i2.g.a(this.f4375e, v6Var.f4375e) && i2.g.a(this.f, v6Var.f);
    }

    public final int hashCode() {
        Boolean bool = this.f4372a;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Boolean bool2 = this.b;
        int iHashCode2 = (iHashCode + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.f4373c;
        int iHashCode3 = (iHashCode2 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        Boolean bool4 = this.f4374d;
        int iHashCode4 = (iHashCode3 + (bool4 == null ? 0 : bool4.hashCode())) * 31;
        Integer num = this.f4375e;
        int iHashCode5 = (iHashCode4 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.f;
        return iHashCode5 + (num2 != null ? num2.hashCode() : 0);
    }

    public final String toString() {
        return "State(wheelHeat=" + this.f4372a + ", rearDefrost=" + this.b + ", frontMaxDefrost=" + this.f4373c + ", windshieldHeat=" + this.f4374d + ", seatHeatDriver=" + this.f4375e + ", seatHeatPassenger=" + this.f + ')';
    }
}
