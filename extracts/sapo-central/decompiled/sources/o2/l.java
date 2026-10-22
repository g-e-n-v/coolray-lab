package o2;

/* JADX INFO: loaded from: classes.dex */
public final class l extends i2.h implements h2.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2637a;
    public final /* synthetic */ Object b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ l(int i3, Object obj) {
        super(1);
        this.f2637a = i3;
        this.b = obj;
    }

    @Override // h2.l
    public final Object c(Object obj) {
        switch (this.f2637a) {
            case 0:
                String str = (String) obj;
                String str2 = (String) this.b;
                i2.g.e(str, "it");
                if (k.m0(str)) {
                    return str.length() < str2.length() ? str2 : str;
                }
                return n.g.a(str2, str);
            case 1:
                l2.c cVar = (l2.c) obj;
                i2.g.e(cVar, "it");
                return k.w0((CharSequence) this.b, cVar);
            default:
                return obj == ((y1.c) this.b) ? "(this Collection)" : String.valueOf(obj);
        }
    }
}
