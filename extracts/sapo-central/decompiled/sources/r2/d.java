package r2;

import androidx.emoji2.text.m;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: loaded from: classes.dex */
public final class d {
    private volatile /* synthetic */ Object _next = null;
    private volatile /* synthetic */ long _state = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3098a;
    public final boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3099c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ AtomicReferenceArray f3100d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final m f3097g = new m(24, "REMOVE_FROZEN");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f3096e = AtomicReferenceFieldUpdater.newUpdater(d.class, Object.class, "_next");
    public static final /* synthetic */ AtomicLongFieldUpdater f = AtomicLongFieldUpdater.newUpdater(d.class, "_state");

    public d(int i3, boolean z2) {
        this.f3098a = i3;
        this.b = z2;
        int i4 = i3 - 1;
        this.f3099c = i4;
        this.f3100d = new AtomicReferenceArray(i3);
        if (i4 > 1073741823) {
            throw new IllegalStateException("Check failed.");
        }
        if ((i3 & i4) != 0) {
            throw new IllegalStateException("Check failed.");
        }
    }

    public final int a(Object obj) {
        while (true) {
            long j3 = this._state;
            if ((3458764513820540928L & j3) != 0) {
                return (2305843009213693952L & j3) != 0 ? 2 : 1;
            }
            int i3 = (int) (1073741823 & j3);
            int i4 = (int) ((1152921503533105152L & j3) >> 30);
            int i5 = this.f3099c;
            if (((i4 + 2) & i5) == (i3 & i5)) {
                return 1;
            }
            if (this.b || this.f3100d.get(i4 & i5) == null) {
                if (f.compareAndSet(this, j3, (((long) ((i4 + 1) & 1073741823)) << 30) | ((-1152921503533105153L) & j3))) {
                    this.f3100d.set(i4 & i5, obj);
                    d dVarE = this;
                    while ((dVarE._state & 1152921504606846976L) != 0) {
                        dVarE = dVarE.e();
                        AtomicReferenceArray atomicReferenceArray = dVarE.f3100d;
                        int i6 = dVarE.f3099c & i4;
                        Object obj2 = atomicReferenceArray.get(i6);
                        if ((obj2 instanceof c) && ((c) obj2).f3095a == i4) {
                            atomicReferenceArray.set(i6, obj);
                        } else {
                            dVarE = null;
                        }
                        if (dVarE == null) {
                            return 0;
                        }
                    }
                    return 0;
                }
            } else {
                int i7 = this.f3098a;
                if (i7 < 1024 || ((i4 - i3) & 1073741823) > (i7 >> 1)) {
                    return 1;
                }
            }
        }
    }

    public final boolean b() {
        long j3;
        do {
            j3 = this._state;
            if ((j3 & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j3) != 0) {
                return false;
            }
        } while (!f.compareAndSet(this, j3, j3 | 2305843009213693952L));
        return true;
    }

    public final int c() {
        long j3 = this._state;
        return (((int) ((j3 & 1152921503533105152L) >> 30)) - ((int) (1073741823 & j3))) & 1073741823;
    }

    public final boolean d() {
        long j3 = this._state;
        return ((int) (1073741823 & j3)) == ((int) ((j3 & 1152921503533105152L) >> 30));
    }

    public final d e() {
        long j3;
        d dVar;
        while (true) {
            j3 = this._state;
            if ((j3 & 1152921504606846976L) != 0) {
                dVar = this;
                break;
            }
            long j4 = j3 | 1152921504606846976L;
            dVar = this;
            if (f.compareAndSet(dVar, j3, j4)) {
                j3 = j4;
                break;
            }
        }
        while (true) {
            d dVar2 = (d) dVar._next;
            if (dVar2 != null) {
                return dVar2;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3096e;
            d dVar3 = new d(dVar.f3098a * 2, dVar.b);
            int i3 = (int) (1073741823 & j3);
            int i4 = (int) ((1152921503533105152L & j3) >> 30);
            while (true) {
                int i5 = dVar.f3099c;
                int i6 = i3 & i5;
                if (i6 == (i5 & i4)) {
                    break;
                }
                Object cVar = dVar.f3100d.get(i6);
                if (cVar == null) {
                    cVar = new c(i3);
                }
                dVar3.f3100d.set(dVar3.f3099c & i3, cVar);
                i3++;
            }
            dVar3._state = (-1152921504606846977L) & j3;
            while (!atomicReferenceFieldUpdater.compareAndSet(this, null, dVar3) && atomicReferenceFieldUpdater.get(this) == null) {
            }
        }
    }

    public final Object f() {
        while (true) {
            long j3 = this._state;
            if ((j3 & 1152921504606846976L) != 0) {
                return f3097g;
            }
            int i3 = (int) (j3 & 1073741823);
            int i4 = this.f3099c;
            int i5 = ((int) ((1152921503533105152L & j3) >> 30)) & i4;
            int i6 = i4 & i3;
            if (i5 != i6) {
                Object obj = this.f3100d.get(i6);
                if (obj == null) {
                    if (this.b) {
                    }
                } else if (!(obj instanceof c)) {
                    long j4 = (i3 + 1) & 1073741823;
                    if (f.compareAndSet(this, j3, (j3 & (-1073741824)) | j4)) {
                        this.f3100d.set(this.f3099c & i3, null);
                        return obj;
                    }
                    if (this.b) {
                        d dVarE = this;
                        while (true) {
                            long j5 = dVarE._state;
                            int i7 = (int) (j5 & 1073741823);
                            if ((j5 & 1152921504606846976L) != 0) {
                                dVarE = dVarE.e();
                            } else {
                                d dVar = dVarE;
                                if (f.compareAndSet(dVar, j5, (j5 & (-1073741824)) | j4)) {
                                    dVar.f3100d.set(dVar.f3099c & i7, null);
                                    dVarE = null;
                                } else {
                                    dVarE = dVar;
                                }
                            }
                            if (dVarE == null) {
                                return obj;
                            }
                        }
                    }
                }
            }
            return null;
        }
    }
}
