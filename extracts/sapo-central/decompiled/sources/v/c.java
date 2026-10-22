package v;

import android.graphics.Insets;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final c f3308e = new c(0, 0, 0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3309a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3310c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f3311d;

    public c(int i3, int i4, int i5, int i6) {
        this.f3309a = i3;
        this.b = i4;
        this.f3310c = i5;
        this.f3311d = i6;
    }

    public static c a(int i3, int i4, int i5, int i6) {
        return (i3 == 0 && i4 == 0 && i5 == 0 && i6 == 0) ? f3308e : new c(i3, i4, i5, i6);
    }

    public final Insets b() {
        return b.a(this.f3309a, this.b, this.f3310c, this.f3311d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f3311d == cVar.f3311d && this.f3309a == cVar.f3309a && this.f3310c == cVar.f3310c && this.b == cVar.b;
    }

    public final int hashCode() {
        return (((((this.f3309a * 31) + this.b) * 31) + this.f3310c) * 31) + this.f3311d;
    }

    public final String toString() {
        return "Insets{left=" + this.f3309a + ", top=" + this.b + ", right=" + this.f3310c + ", bottom=" + this.f3311d + '}';
    }
}
