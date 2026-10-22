package w0;

import com.ex.auto.MainActivity;
import java.util.Comparator;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class mc implements Comparator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MainActivity f3914a;

    public mc(MainActivity mainActivity) {
        this.f3914a = mainActivity;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        String str = (String) obj;
        i2.g.b(str);
        int i3 = MainActivity.f1002z1;
        MainActivity mainActivity = this.f3914a;
        String strF1 = mainActivity.F1(str);
        Locale locale = Locale.ROOT;
        String lowerCase = strF1.toLowerCase(locale);
        i2.g.d(lowerCase, "toLowerCase(...)");
        String str2 = (String) obj2;
        i2.g.b(str2);
        String lowerCase2 = mainActivity.F1(str2).toLowerCase(locale);
        i2.g.d(lowerCase2, "toLowerCase(...)");
        return a1.b.q(lowerCase, lowerCase2);
    }
}
