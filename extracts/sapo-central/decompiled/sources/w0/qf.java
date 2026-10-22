package w0;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
public final class qf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4126a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Drawable f4127c;

    public qf(int i3, String str, Drawable drawable) {
        this.f4126a = i3;
        this.b = str;
        this.f4127c = drawable;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qf)) {
            return false;
        }
        qf qfVar = (qf) obj;
        return this.f4126a == qfVar.f4126a && i2.g.a(this.b, qfVar.b) && i2.g.a(this.f4127c, qfVar.f4127c);
    }

    public final int hashCode() {
        int iE = androidx.activity.result.b.e(this.b, Integer.hashCode(this.f4126a) * 31, 31);
        Drawable drawable = this.f4127c;
        return iE + (drawable == null ? 0 : drawable.hashCode());
    }

    public final String toString() {
        return "Recent(taskId=" + this.f4126a + ", label=" + this.b + ", icon=" + this.f4127c + ')';
    }
}
