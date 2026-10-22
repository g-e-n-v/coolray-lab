package c0;

import android.os.Build;
import android.view.View;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public abstract class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f739a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f740c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f741d;

    public y() {
        if (s1.e.f3126a == null) {
            s1.e.f3126a = new s1.e();
        }
    }

    public int a(int i3) {
        if (i3 < this.f740c) {
            return ((ByteBuffer) this.f741d).getShort(this.b + i3);
        }
        return 0;
    }

    public abstract Object b(View view);

    public abstract void c(View view, Object obj);

    public void d(View view, Object obj) {
        Object tag;
        c cVar;
        if (Build.VERSION.SDK_INT >= this.b) {
            c(view, obj);
            return;
        }
        if (Build.VERSION.SDK_INT >= this.b) {
            tag = b(view);
        } else {
            tag = view.getTag(this.f739a);
            if (!((Class) this.f741d).isInstance(tag)) {
                tag = null;
            }
        }
        if (e(tag, obj)) {
            View.AccessibilityDelegate accessibilityDelegateB = p0.b(view);
            if (accessibilityDelegateB == null) {
                cVar = null;
            } else {
                cVar = accessibilityDelegateB instanceof a ? ((a) accessibilityDelegateB).f698a : new c(accessibilityDelegateB);
            }
            if (cVar == null) {
                cVar = new c();
            }
            p0.i(view, cVar);
            view.setTag(this.f739a, obj);
            p0.d(view, this.f740c);
        }
    }

    public abstract boolean e(Object obj, Object obj2);
}
