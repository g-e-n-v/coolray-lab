package i2;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public abstract class e implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public transient e f2281a;
    public final Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Class f2282c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f2283d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f2284e;
    public final boolean f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f2285g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f2286h;

    public e(int i3, Class cls, String str, String str2) {
        this(i3, b.f2279a, cls, str, str2);
    }

    public final c d() {
        boolean z2 = this.f;
        Class cls = this.f2282c;
        if (z2) {
            n.f2293a.getClass();
            return new i(cls);
        }
        n.f2293a.getClass();
        return new d(cls);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof e) {
            e eVar = (e) obj;
            return this.f2283d.equals(eVar.f2283d) && this.f2284e.equals(eVar.f2284e) && this.f2286h == eVar.f2286h && this.f2285g == eVar.f2285g && g.a(this.b, eVar.b) && d().equals(eVar.d());
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar2 = this.f2281a;
        if (eVar2 == null) {
            n.f2293a.getClass();
            this.f2281a = this;
            eVar2 = this;
        }
        return obj.equals(eVar2);
    }

    public final int hashCode() {
        d();
        return this.f2284e.hashCode() + androidx.activity.result.b.e(this.f2283d, d().hashCode() * 31, 31);
    }

    public final String toString() {
        e eVar = this.f2281a;
        if (eVar == null) {
            n.f2293a.getClass();
            this.f2281a = this;
            eVar = this;
        }
        if (eVar != this) {
            return eVar.toString();
        }
        String str = this.f2283d;
        return "<init>".equals(str) ? "constructor (Kotlin reflection is not available)" : androidx.activity.result.b.h("function ", str, " (Kotlin reflection is not available)");
    }

    public e(int i3, Object obj, Class cls, String str, String str2) {
        this.b = obj;
        this.f2282c = cls;
        this.f2283d = str;
        this.f2284e = str2;
        this.f = false;
        this.f2285g = i3;
        this.f2286h = 0;
    }
}
