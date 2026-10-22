package p2;

/* JADX INFO: loaded from: classes.dex */
public abstract class c extends b2.a implements b2.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f2704a = new b(b2.d.f696a, a.f2702a);

    public c() {
        super(b2.d.f696a);
    }

    public abstract void a(b2.h hVar, Runnable runnable);

    public boolean b() {
        return !(this instanceof r);
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [h2.l, i2.h] */
    @Override // b2.a, b2.h
    public final b2.f get(b2.g gVar) {
        b2.f fVar;
        i2.g.e(gVar, "key");
        if (gVar instanceof b) {
            b bVar = (b) gVar;
            b2.g key = getKey();
            i2.g.e(key, "key");
            if ((key == bVar || bVar.b == key) && (fVar = (b2.f) bVar.f2703a.c(this)) != null) {
                return fVar;
            }
        } else if (b2.d.f696a == gVar) {
            return this;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0022, code lost:
    
        if (((b2.f) r3.f2703a.c(r2)) == null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0027, code lost:
    
        if (b2.d.f696a == r3) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002b, code lost:
    
        return b2.i.f697a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002c, code lost:
    
        return r2;
     */
    /* JADX WARN: Type inference failed for: r3v3, types: [h2.l, i2.h] */
    @Override // b2.a, b2.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final b2.h minusKey(b2.g r3) {
        /*
            r2 = this;
            java.lang.String r0 = "key"
            i2.g.e(r3, r0)
            boolean r1 = r3 instanceof p2.b
            if (r1 == 0) goto L25
            p2.b r3 = (p2.b) r3
            b2.g r1 = r2.getKey()
            i2.g.e(r1, r0)
            if (r1 == r3) goto L1a
            b2.g r0 = r3.b
            if (r0 != r1) goto L19
            goto L1a
        L19:
            return r2
        L1a:
            i2.h r3 = r3.f2703a
            java.lang.Object r3 = r3.c(r2)
            b2.f r3 = (b2.f) r3
            if (r3 == 0) goto L2c
            goto L29
        L25:
            b2.d r0 = b2.d.f696a
            if (r0 != r3) goto L2c
        L29:
            b2.i r3 = b2.i.f697a
            return r3
        L2c:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: p2.c.minusKey(b2.g):b2.h");
    }

    public String toString() {
        return getClass().getSimpleName() + '@' + Integer.toHexString(System.identityHashCode(this));
    }
}
