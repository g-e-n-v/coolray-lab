package w0;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
public final class g8 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3628a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Drawable f3629c;

    public g8(String str, String str2, Drawable drawable) {
        i2.g.e(str2, "label");
        this.f3628a = str;
        this.b = str2;
        this.f3629c = drawable;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g8)) {
            return false;
        }
        g8 g8Var = (g8) obj;
        return i2.g.a(this.f3628a, g8Var.f3628a) && i2.g.a(this.b, g8Var.b) && i2.g.a(this.f3629c, g8Var.f3629c);
    }

    public final int hashCode() {
        int iE = androidx.activity.result.b.e(this.b, this.f3628a.hashCode() * 31, 31);
        Drawable drawable = this.f3629c;
        return iE + (drawable == null ? 0 : drawable.hashCode());
    }

    public final String toString() {
        return "InstalledUserApp(packageName=" + this.f3628a + ", label=" + this.b + ", icon=" + this.f3629c + ')';
    }
}
