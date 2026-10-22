package androidx.lifecycle;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f562a;
    public final Method b;

    public b(int i3, Method method) {
        this.f562a = i3;
        this.b = method;
        method.setAccessible(true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f562a == bVar.f562a && this.b.getName().equals(bVar.b.getName());
    }

    public final int hashCode() {
        return this.b.getName().hashCode() + (this.f562a * 31);
    }
}
