package d0;

import android.os.Handler;
import android.os.Looper;
import android.view.accessibility.AccessibilityNodeInfo;

/* JADX INFO: loaded from: classes.dex */
public final class e {
    public static e b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f1532a;

    public e() {
        this.f1532a = new Object();
        new Handler(Looper.getMainLooper(), new t1.e(this));
    }

    public static e a(boolean z2, int i3, int i4, int i5, int i6) {
        return new e(AccessibilityNodeInfo.CollectionItemInfo.obtain(i3, i4, i5, i6, false, z2));
    }

    public e(AccessibilityNodeInfo.CollectionItemInfo collectionItemInfo) {
        this.f1532a = collectionItemInfo;
    }
}
