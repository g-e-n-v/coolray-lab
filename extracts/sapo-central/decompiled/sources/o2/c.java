package o2;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class c implements n2.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CharSequence f2627a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final i2.h f2628c;

    /* JADX WARN: Multi-variable type inference failed */
    public c(CharSequence charSequence, int i3, h2.p pVar) {
        i2.g.e(charSequence, "input");
        this.f2627a = charSequence;
        this.b = i3;
        this.f2628c = (i2.h) pVar;
    }

    @Override // n2.f
    public final Iterator iterator() {
        return new b(this);
    }
}
