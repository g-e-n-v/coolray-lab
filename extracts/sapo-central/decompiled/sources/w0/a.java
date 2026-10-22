package w0;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3335a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f3336c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f3337d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f3338e;
    public final byte f;

    public a(int i3, String str, String str2, String str3, int i4, byte b) {
        this.f3335a = i3;
        this.b = str;
        this.f3336c = str2;
        this.f3337d = str3;
        this.f3338e = i4;
        this.f = b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f3335a == aVar.f3335a && i2.g.a(this.b, aVar.b) && i2.g.a(this.f3336c, aVar.f3336c) && i2.g.a(this.f3337d, aVar.f3337d) && this.f3338e == aVar.f3338e && this.f == aVar.f;
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.f3335a) * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f3336c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f3337d;
        return Byte.hashCode(this.f) + ((Integer.hashCode(this.f3338e) + ((iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31)) * 31);
    }

    public final String toString() {
        return "RawDevice(deviceType=" + this.f3335a + ", btMac=" + this.b + ", usbSerial=" + this.f3336c + ", btName=" + this.f3337d + ", connectState=" + this.f3338e + ", wireless=" + ((int) this.f) + ')';
    }
}
