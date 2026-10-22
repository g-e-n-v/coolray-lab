package w0;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class x4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f4492a;
    public final boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f4493c;

    public x4(List list, boolean z2, boolean z3) {
        this.f4492a = list;
        this.b = z2;
        this.f4493c = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x4)) {
            return false;
        }
        x4 x4Var = (x4) obj;
        return this.f4492a.equals(x4Var.f4492a) && this.b == x4Var.b && this.f4493c == x4Var.f4493c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f4493c) + ((Boolean.hashCode(this.b) + (this.f4492a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "Snapshot(pacotes=" + this.f4492a + ", connAdaptorCustom=" + this.b + ", existia=" + this.f4493c + ')';
    }
}
