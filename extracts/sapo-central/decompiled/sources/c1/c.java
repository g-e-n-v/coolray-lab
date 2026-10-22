package c1;

import android.animation.TimeInterpolator;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f753a;
    public long b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TimeInterpolator f754c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f755d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f756e;

    public final TimeInterpolator a() {
        TimeInterpolator timeInterpolator = this.f754c;
        return timeInterpolator != null ? timeInterpolator : a.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f753a == cVar.f753a && this.b == cVar.b && this.f755d == cVar.f755d && this.f756e == cVar.f756e) {
            return a().getClass().equals(cVar.a().getClass());
        }
        return false;
    }

    public final int hashCode() {
        long j3 = this.f753a;
        long j4 = this.b;
        return ((((a().getClass().hashCode() + (((((int) (j3 ^ (j3 >>> 32))) * 31) + ((int) ((j4 >>> 32) ^ j4))) * 31)) * 31) + this.f755d) * 31) + this.f756e;
    }

    public final String toString() {
        return "\n" + c.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " delay: " + this.f753a + " duration: " + this.b + " interpolator: " + a().getClass() + " repeatCount: " + this.f755d + " repeatMode: " + this.f756e + "}\n";
    }
}
