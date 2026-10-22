package w0;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
public final class rf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4182a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Drawable f4183c;

    public rf(String str, String str2, Drawable drawable) {
        i2.g.e(str, "pkg");
        i2.g.e(str2, "label");
        this.f4182a = str;
        this.b = str2;
        this.f4183c = drawable;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rf)) {
            return false;
        }
        rf rfVar = (rf) obj;
        return i2.g.a(this.f4182a, rfVar.f4182a) && i2.g.a(this.b, rfVar.b) && i2.g.a(this.f4183c, rfVar.f4183c);
    }

    public final int hashCode() {
        return this.f4183c.hashCode() + androidx.activity.result.b.e(this.b, this.f4182a.hashCode() * 31, 31);
    }

    public final String toString() {
        return "Fav(pkg=" + this.f4182a + ", label=" + this.b + ", icon=" + this.f4183c + ')';
    }
}
