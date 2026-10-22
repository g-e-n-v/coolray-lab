package w0;

/* JADX INFO: loaded from: classes.dex */
public final class y7 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f4578a;
    public final boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f4579c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f4580d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f4581e;
    public final boolean f;

    public y7(boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        this.f4578a = z2;
        this.b = z3;
        this.f4579c = z4;
        this.f4580d = z5;
        this.f4581e = z6;
        this.f = z7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y7)) {
            return false;
        }
        y7 y7Var = (y7) obj;
        return this.f4578a == y7Var.f4578a && this.b == y7Var.b && this.f4579c == y7Var.f4579c && this.f4580d == y7Var.f4580d && this.f4581e == y7Var.f4581e && this.f == y7Var.f;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f) + ((Boolean.hashCode(this.f4581e) + ((Boolean.hashCode(this.f4580d) + ((Boolean.hashCode(this.f4579c) + ((Boolean.hashCode(this.b) + (Boolean.hashCode(this.f4578a) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "ActiveWidgets(driveRegen=" + this.f4578a + ", fan=" + this.b + ", temperature=" + this.f4579c + ", vent=" + this.f4580d + ", ventFan=" + this.f4581e + ", heating=" + this.f + ')';
    }
}
