package x1;

import i2.g;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public final class c implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public h2.a f4643a;
    public volatile Object b = e.b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f4644c = this;

    public c(h2.a aVar) {
        this.f4643a = aVar;
    }

    public final Object a() {
        Object objA;
        Object obj = this.b;
        e eVar = e.b;
        if (obj != eVar) {
            return obj;
        }
        synchronized (this.f4644c) {
            objA = this.b;
            if (objA == eVar) {
                h2.a aVar = this.f4643a;
                g.b(aVar);
                objA = aVar.a();
                this.b = objA;
                this.f4643a = null;
            }
        }
        return objA;
    }

    public final String toString() {
        return this.b != e.b ? String.valueOf(a()) : "Lazy value not initialized yet.";
    }
}
