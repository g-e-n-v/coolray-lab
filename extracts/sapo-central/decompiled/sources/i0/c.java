package i0;

import android.graphics.Rect;
import d0.f;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public final class c implements Comparator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Rect f2251a = new Rect();
    public final Rect b = new Rect();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f2252c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final s1.e f2253d;

    public c(boolean z2, s1.e eVar) {
        this.f2252c = z2;
        this.f2253d = eVar;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        this.f2253d.getClass();
        Rect rect = this.f2251a;
        ((f) obj).d(rect);
        Rect rect2 = this.b;
        ((f) obj2).d(rect2);
        int i3 = rect.top;
        int i4 = rect2.top;
        if (i3 < i4) {
            return -1;
        }
        if (i3 > i4) {
            return 1;
        }
        int i5 = rect.left;
        int i6 = rect2.left;
        boolean z2 = this.f2252c;
        if (i5 < i6) {
            return z2 ? 1 : -1;
        }
        if (i5 > i6) {
            return z2 ? -1 : 1;
        }
        int i7 = rect.bottom;
        int i8 = rect2.bottom;
        if (i7 < i8) {
            return -1;
        }
        if (i7 > i8) {
            return 1;
        }
        int i9 = rect.right;
        int i10 = rect2.right;
        if (i9 < i10) {
            return z2 ? 1 : -1;
        }
        if (i9 > i10) {
            return z2 ? -1 : 1;
        }
        return 0;
    }
}
