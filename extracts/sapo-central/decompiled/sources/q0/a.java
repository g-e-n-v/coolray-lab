package q0;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2839a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2840c;

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            int i3 = this.f2839a;
            if (i3 != aVar.f2839a) {
                return false;
            }
            if (i3 != 8 || Math.abs(this.f2840c - this.b) != 1 || this.f2840c != aVar.b || this.b != aVar.f2840c) {
                return this.f2840c == aVar.f2840c && this.b == aVar.b;
            }
        }
        return true;
    }

    public final int hashCode() {
        return (((this.f2839a * 31) + this.b) * 31) + this.f2840c;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[");
        int i3 = this.f2839a;
        if (i3 == 1) {
            str = "add";
        } else if (i3 == 2) {
            str = "rm";
        } else if (i3 != 4) {
            str = i3 != 8 ? "??" : "mv";
        } else {
            str = "up";
        }
        sb.append(str);
        sb.append(",s:");
        sb.append(this.b);
        sb.append("c:");
        sb.append(this.f2840c);
        sb.append(",p:null]");
        return sb.toString();
    }
}
