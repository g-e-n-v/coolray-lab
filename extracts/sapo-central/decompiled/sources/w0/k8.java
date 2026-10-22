package w0;

import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public abstract class k8 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final o2.h f3798a = new o2.h("\\[(\\d{1,2}):(\\d{1,2})(?:[.:](\\d{1,3}))?]");

    public static String a(String str, String str2) {
        i2.g.e(str, "titulo");
        i2.g.e(str2, "artista");
        String lowerCase = (o2.k.E0(str).toString() + '|' + o2.k.E0(str2).toString()).toLowerCase(Locale.ROOT);
        i2.g.d(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }
}
