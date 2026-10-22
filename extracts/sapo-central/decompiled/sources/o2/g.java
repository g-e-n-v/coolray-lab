package o2;

import java.util.regex.Matcher;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g extends i2.e implements h2.l {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final g f2633i = new g(1, e.class, "next", "next()Lkotlin/text/MatchResult;");

    @Override // h2.l
    public final Object c(Object obj) {
        e eVar = (e) obj;
        i2.g.e(eVar, "p0");
        CharSequence charSequence = eVar.b;
        Matcher matcher = eVar.f2630a;
        int iEnd = matcher.end() + (matcher.end() == matcher.start() ? 1 : 0);
        if (iEnd > charSequence.length()) {
            return null;
        }
        Matcher matcher2 = matcher.pattern().matcher(charSequence);
        i2.g.d(matcher2, "matcher(...)");
        return k1.a.b(matcher2, iEnd, charSequence);
    }
}
