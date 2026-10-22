package androidx.lifecycle;

import android.os.Bundle;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class e0 implements r0.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i.r f569a;
    public boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Bundle f570c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final x1.c f571d;

    public e0(i.r rVar, e.j jVar) {
        i2.g.e(rVar, "savedStateRegistry");
        this.f569a = rVar;
        this.f571d = new x1.c(new d0(jVar));
    }

    @Override // r0.c
    public final Bundle a() {
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f570c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        Iterator it = ((f0) this.f571d.a()).f573c.entrySet().iterator();
        if (!it.hasNext()) {
            this.b = false;
            return bundle;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getValue().getClass();
        throw new ClassCastException();
    }
}
