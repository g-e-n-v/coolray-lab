package b2;

import h2.p;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public final class i implements h, Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final i f697a = new i();

    @Override // b2.h
    public final Object fold(Object obj, p pVar) {
        return obj;
    }

    @Override // b2.h
    public final f get(g gVar) {
        i2.g.e(gVar, "key");
        return null;
    }

    public final int hashCode() {
        return 0;
    }

    @Override // b2.h
    public final h minusKey(g gVar) {
        i2.g.e(gVar, "key");
        return this;
    }

    public final String toString() {
        return "EmptyCoroutineContext";
    }
}
