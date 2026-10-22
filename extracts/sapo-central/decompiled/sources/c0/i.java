package c0;

import android.view.DisplayCutout;

/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DisplayCutout f718a;

    public i(DisplayCutout displayCutout) {
        this.f718a = displayCutout;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i.class != obj.getClass()) {
            return false;
        }
        return b0.b.a(this.f718a, ((i) obj).f718a);
    }

    public final int hashCode() {
        DisplayCutout displayCutout = this.f718a;
        if (displayCutout == null) {
            return 0;
        }
        return displayCutout.hashCode();
    }

    public final String toString() {
        return "DisplayCutoutCompat{" + this.f718a + "}";
    }
}
