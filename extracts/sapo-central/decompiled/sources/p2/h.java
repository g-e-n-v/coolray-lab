package p2;

/* JADX INFO: loaded from: classes.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f2709a = 0;

    static {
        String property;
        int i3 = r2.h.f3102a;
        try {
            property = System.getProperty("kotlinx.coroutines.main.delay");
        } catch (SecurityException unused) {
            property = null;
        }
        if (!(property == null ? false : Boolean.parseBoolean(property))) {
            g gVar = g.f2707c;
            return;
        }
        kotlinx.coroutines.scheduling.c cVar = k.f2711a;
        b2.f fVar = r2.f.f3101a;
        q2.a aVar = ((q2.a) fVar).f3076d;
        if (fVar instanceof i) {
        } else {
            g gVar2 = g.f2707c;
        }
    }
}
