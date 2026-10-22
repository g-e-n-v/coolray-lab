package o2;

import java.util.List;
import java.util.regex.Matcher;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Matcher f2630a;
    public final CharSequence b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public d f2631c;

    public e(Matcher matcher, CharSequence charSequence) {
        i2.g.e(charSequence, "input");
        this.f2630a = matcher;
        this.b = charSequence;
    }

    public final List a() {
        if (this.f2631c == null) {
            this.f2631c = new d(this);
        }
        d dVar = this.f2631c;
        i2.g.b(dVar);
        return dVar;
    }
}
