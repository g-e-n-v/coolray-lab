package l;

import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class b extends k implements Map {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public a f2387h;

    @Override // java.util.Map
    public final Set entrySet() {
        if (this.f2387h == null) {
            this.f2387h = new a(0, this);
        }
        a aVar = this.f2387h;
        if (aVar.f2383a == null) {
            aVar.f2383a = new h(aVar, 0);
        }
        return aVar.f2383a;
    }

    @Override // java.util.Map
    public final Set keySet() {
        if (this.f2387h == null) {
            this.f2387h = new a(0, this);
        }
        a aVar = this.f2387h;
        if (aVar.b == null) {
            aVar.b = new h(aVar, 1);
        }
        return aVar.b;
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        int size = map.size() + this.f2418c;
        int i3 = this.f2418c;
        int[] iArr = this.f2417a;
        if (iArr.length < size) {
            Object[] objArr = this.b;
            a(size);
            if (this.f2418c > 0) {
                System.arraycopy(iArr, 0, this.f2417a, 0, i3);
                System.arraycopy(objArr, 0, this.b, 0, i3 << 1);
            }
            k.b(iArr, objArr, i3);
        }
        if (this.f2418c != i3) {
            throw new ConcurrentModificationException();
        }
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public final Collection values() {
        if (this.f2387h == null) {
            this.f2387h = new a(0, this);
        }
        a aVar = this.f2387h;
        if (aVar.f2384c == null) {
            aVar.f2384c = new j(0, aVar);
        }
        return aVar.f2384c;
    }
}
