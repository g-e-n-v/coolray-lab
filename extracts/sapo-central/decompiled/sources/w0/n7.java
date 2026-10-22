package w0;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
public final class n7 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3936a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Drawable f3937c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f3938d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f3939e;

    public n7(String str, String str2, Drawable drawable, float f, boolean z2) {
        i2.g.e(str2, "label");
        this.f3936a = str;
        this.b = str2;
        this.f3937c = drawable;
        this.f3938d = f;
        this.f3939e = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n7)) {
            return false;
        }
        n7 n7Var = (n7) obj;
        return i2.g.a(this.f3936a, n7Var.f3936a) && i2.g.a(this.b, n7Var.b) && i2.g.a(this.f3937c, n7Var.f3937c) && Float.compare(this.f3938d, n7Var.f3938d) == 0 && this.f3939e == n7Var.f3939e;
    }

    public final int hashCode() {
        int iE = androidx.activity.result.b.e(this.b, this.f3936a.hashCode() * 31, 31);
        Drawable drawable = this.f3937c;
        return Boolean.hashCode(this.f3939e) + ((Float.hashCode(this.f3938d) + ((iE + (drawable == null ? 0 : drawable.hashCode())) * 31)) * 31);
    }

    public final String toString() {
        return "AppCpu(pkg=" + this.f3936a + ", label=" + this.b + ", icon=" + this.f3937c + ", pct=" + this.f3938d + ", isSystem=" + this.f3939e + ')';
    }
}
