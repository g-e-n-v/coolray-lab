package w0;

/* JADX INFO: loaded from: classes.dex */
public final class r1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4136a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f4137c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final byte f4138d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte f4139e;
    public final byte f;

    public r1(String str, String str2, String str3, byte b, byte b3, byte b4) {
        this.f4136a = str;
        this.b = str2;
        this.f4137c = str3;
        this.f4138d = b;
        this.f4139e = b3;
        this.f = b4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r1)) {
            return false;
        }
        r1 r1Var = (r1) obj;
        return i2.g.a(this.f4136a, r1Var.f4136a) && i2.g.a(this.b, r1Var.b) && i2.g.a(this.f4137c, r1Var.f4137c) && this.f4138d == r1Var.f4138d && this.f4139e == r1Var.f4139e && this.f == r1Var.f;
    }

    public final int hashCode() {
        String str = this.f4136a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f4137c;
        return Byte.hashCode(this.f) + ((Byte.hashCode(this.f4139e) + ((Byte.hashCode(this.f4138d) + ((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "RawDevice(deviceName=" + this.f4136a + ", btAddress=" + this.b + ", usbSerial=" + this.f4137c + ", connectState=" + ((int) this.f4138d) + ", wirelessLink=" + ((int) this.f4139e) + ", autoConnection=" + ((int) this.f) + ')';
    }
}
