package q2;

import android.os.Handler;
import android.os.Looper;
import b2.h;
import i2.g;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.scheduling.c;
import p2.d;
import p2.i;
import p2.k;
import p2.p;
import r2.f;

/* JADX INFO: loaded from: classes.dex */
public final class a extends p implements i {
    private volatile a _immediate;
    public final Handler b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f3075c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final a f3076d;

    public a(Handler handler, boolean z2) {
        this.b = handler;
        this.f3075c = z2;
        this._immediate = z2 ? this : null;
        a aVar = this._immediate;
        if (aVar == null) {
            aVar = new a(handler, true);
            this._immediate = aVar;
        }
        this.f3076d = aVar;
    }

    @Override // p2.c
    public final void a(h hVar, Runnable runnable) {
        if (this.b.post(runnable)) {
            return;
        }
        r2.a aVar = (r2.a) hVar;
        r2.a aVar2 = (r2.a) runnable;
        new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed");
        if (aVar.get(d.b) != null) {
            throw new ClassCastException();
        }
        k.f2711a.a(aVar, aVar2);
    }

    @Override // p2.c
    public final boolean b() {
        return (this.f3075c && g.a(Looper.myLooper(), this.b.getLooper())) ? false : true;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof a) && ((a) obj).b == this.b;
    }

    public final int hashCode() {
        return System.identityHashCode(this.b);
    }

    @Override // p2.c
    public final String toString() {
        a aVar;
        String str;
        c cVar = k.f2711a;
        p pVar = f.f3101a;
        if (this == pVar) {
            str = "Dispatchers.Main";
        } else {
            try {
                aVar = ((a) pVar).f3076d;
            } catch (UnsupportedOperationException unused) {
                aVar = null;
            }
            str = this == aVar ? "Dispatchers.Main.immediate" : null;
        }
        if (str != null) {
            return str;
        }
        String string = this.b.toString();
        return this.f3075c ? g.g(".immediate", string) : string;
    }
}
