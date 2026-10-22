package o2;

import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f2622a;
    public static final Charset b;

    static {
        Charset charsetForName = Charset.forName("UTF-8");
        i2.g.d(charsetForName, "forName(...)");
        f2622a = charsetForName;
        i2.g.d(Charset.forName("UTF-16"), "forName(...)");
        i2.g.d(Charset.forName("UTF-16BE"), "forName(...)");
        i2.g.d(Charset.forName("UTF-16LE"), "forName(...)");
        Charset charsetForName2 = Charset.forName("US-ASCII");
        i2.g.d(charsetForName2, "forName(...)");
        b = charsetForName2;
        i2.g.d(Charset.forName("ISO-8859-1"), "forName(...)");
    }
}
