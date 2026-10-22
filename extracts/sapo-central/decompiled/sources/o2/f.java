package o2;

/* JADX INFO: loaded from: classes.dex */
public final class f extends i2.h implements h2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h f2632a;
    public final /* synthetic */ String b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(h hVar, String str) {
        super(0);
        this.f2632a = hVar;
        this.b = str;
    }

    @Override // h2.a
    public final Object a() {
        return this.f2632a.b(this.b, 0);
    }
}
