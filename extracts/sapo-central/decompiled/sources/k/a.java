package k;

import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class a extends f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMap f2329e = new HashMap();

    @Override // k.f
    public final c a(Object obj) {
        return (c) this.f2329e.get(obj);
    }

    @Override // k.f
    public final Object b(Object obj) {
        Object objB = super.b(obj);
        this.f2329e.remove(obj);
        return objB;
    }
}
