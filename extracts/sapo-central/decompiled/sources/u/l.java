package u;

import android.content.res.Resources;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Resources f3234a;
    public final Resources.Theme b;

    public l(Resources resources, Resources.Theme theme) {
        this.f3234a = resources;
        this.b = theme;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && l.class == obj.getClass()) {
            l lVar = (l) obj;
            if (this.f3234a.equals(lVar.f3234a) && b0.b.a(this.b, lVar.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return b0.b.b(this.f3234a, this.b);
    }
}
