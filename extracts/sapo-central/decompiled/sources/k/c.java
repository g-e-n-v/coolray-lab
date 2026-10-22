package k;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class c implements Map.Entry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f2332a;
    public final Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public c f2333c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public c f2334d;

    public c(Object obj, Object obj2) {
        this.f2332a = obj;
        this.b = obj2;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f2332a.equals(cVar.f2332a) && this.b.equals(cVar.b);
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f2332a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return this.f2332a.hashCode() ^ this.b.hashCode();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException("An entry modification is not supported");
    }

    public final String toString() {
        return this.f2332a + "=" + this.b;
    }
}
