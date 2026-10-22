package o2;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class h implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Pattern f2634a;

    public h(String str) {
        Pattern patternCompile = Pattern.compile(str);
        i2.g.d(patternCompile, "compile(...)");
        this.f2634a = patternCompile;
    }

    public final boolean a(String str) {
        i2.g.e(str, "input");
        return this.f2634a.matcher(str).find();
    }

    public final e b(CharSequence charSequence, int i3) {
        i2.g.e(charSequence, "input");
        Matcher matcher = this.f2634a.matcher(charSequence);
        i2.g.d(matcher, "matcher(...)");
        return k1.a.b(matcher, i3, charSequence);
    }

    public final boolean c(String str) {
        i2.g.e(str, "input");
        return this.f2634a.matcher(str).matches();
    }

    public final List d(int i3, String str) {
        i2.g.e(str, "input");
        k.s0(i3);
        Matcher matcher = this.f2634a.matcher(str);
        if (i3 == 1 || !matcher.find()) {
            return k1.a.I(str.toString());
        }
        int i4 = 10;
        if (i3 > 0 && i3 <= 10) {
            i4 = i3;
        }
        ArrayList arrayList = new ArrayList(i4);
        int i5 = i3 - 1;
        int iEnd = 0;
        do {
            arrayList.add(str.subSequence(iEnd, matcher.start()).toString());
            iEnd = matcher.end();
            if (i5 >= 0 && arrayList.size() == i5) {
                break;
            }
        } while (matcher.find());
        arrayList.add(str.subSequence(iEnd, str.length()).toString());
        return arrayList;
    }

    public final String toString() {
        String string = this.f2634a.toString();
        i2.g.d(string, "toString(...)");
        return string;
    }

    public h(int i3, String str) {
        Pattern patternCompile = Pattern.compile(str, 66);
        i2.g.d(patternCompile, "compile(...)");
        this.f2634a = patternCompile;
    }
}
