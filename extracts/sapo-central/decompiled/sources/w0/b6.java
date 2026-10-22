package w0;

import android.content.pm.ApplicationInfo;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.io.File;
import java.net.NetworkInterface;
import java.util.Comparator;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class b6 implements Comparator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3383a;

    public /* synthetic */ b6(int i3) {
        this.f3383a = i3;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f3383a) {
            case 0:
                return a1.b.q(((ApplicationInfo) obj).packageName, ((ApplicationInfo) obj2).packageName);
            case 1:
                String str = (String) ((x1.d) obj).b;
                Locale locale = Locale.ROOT;
                String lowerCase = str.toLowerCase(locale);
                i2.g.d(lowerCase, "toLowerCase(...)");
                String lowerCase2 = ((String) ((x1.d) obj2).b).toLowerCase(locale);
                i2.g.d(lowerCase2, "toLowerCase(...)");
                return a1.b.q(lowerCase, lowerCase2);
            case 2:
                String str2 = ((g8) obj).b;
                Locale locale2 = Locale.ROOT;
                String lowerCase3 = str2.toLowerCase(locale2);
                i2.g.d(lowerCase3, "toLowerCase(...)");
                String lowerCase4 = ((g8) obj2).b.toLowerCase(locale2);
                i2.g.d(lowerCase4, "toLowerCase(...)");
                return a1.b.q(lowerCase3, lowerCase4);
            case 3:
                return a1.b.q((Long) ((x1.a) obj).f4641a, (Long) ((x1.a) obj2).f4641a);
            case 4:
                return a1.b.q(Long.valueOf(((File) obj).lastModified()), Long.valueOf(((File) obj2).lastModified()));
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                return a1.b.q(Boolean.valueOf(i2.g.a(((NetworkInterface) obj2).getName(), "ap0")), Boolean.valueOf(i2.g.a(((NetworkInterface) obj).getName(), "ap0")));
            case MusicClient.TYPE_GESTURE /* 6 */:
                String str3 = (String) ((x1.a) obj).b;
                Locale locale3 = Locale.ROOT;
                String lowerCase5 = str3.toLowerCase(locale3);
                i2.g.d(lowerCase5, "toLowerCase(...)");
                String lowerCase6 = ((String) ((x1.a) obj2).b).toLowerCase(locale3);
                i2.g.d(lowerCase6, "toLowerCase(...)");
                return a1.b.q(lowerCase5, lowerCase6);
            case PlaybackState.STATE_ERROR /* 7 */:
                String str4 = (String) ((x1.a) obj).b;
                Locale locale4 = Locale.ROOT;
                String lowerCase7 = str4.toLowerCase(locale4);
                i2.g.d(lowerCase7, "toLowerCase(...)");
                String lowerCase8 = ((String) ((x1.a) obj2).b).toLowerCase(locale4);
                i2.g.d(lowerCase8, "toLowerCase(...)");
                return a1.b.q(lowerCase7, lowerCase8);
            case 8:
                String str5 = ((hd) obj).f3679c;
                Locale locale5 = Locale.ROOT;
                String lowerCase9 = str5.toLowerCase(locale5);
                i2.g.d(lowerCase9, "toLowerCase(...)");
                String lowerCase10 = ((hd) obj2).f3679c.toLowerCase(locale5);
                i2.g.d(lowerCase10, "toLowerCase(...)");
                return a1.b.q(lowerCase9, lowerCase10);
            case 9:
                return a1.b.q(Long.valueOf(((File) obj).lastModified()), Long.valueOf(((File) obj2).lastModified()));
            case 10:
                return a1.b.q(Long.valueOf(((File) obj2).lastModified()), Long.valueOf(((File) obj).lastModified()));
            case 11:
                String str6 = ((qf) obj).b;
                Locale locale6 = Locale.ROOT;
                String lowerCase11 = str6.toLowerCase(locale6);
                i2.g.d(lowerCase11, "toLowerCase(...)");
                String lowerCase12 = ((qf) obj2).b.toLowerCase(locale6);
                i2.g.d(lowerCase12, "toLowerCase(...)");
                return a1.b.q(lowerCase11, lowerCase12);
            case 12:
                String str7 = (String) ((x1.d) obj).b;
                Locale locale7 = Locale.ROOT;
                String lowerCase13 = str7.toLowerCase(locale7);
                i2.g.d(lowerCase13, "toLowerCase(...)");
                String lowerCase14 = ((String) ((x1.d) obj2).b).toLowerCase(locale7);
                i2.g.d(lowerCase14, "toLowerCase(...)");
                return a1.b.q(lowerCase13, lowerCase14);
            case 13:
                String str8 = ((rf) obj).b;
                Locale locale8 = Locale.ROOT;
                String lowerCase15 = str8.toLowerCase(locale8);
                i2.g.d(lowerCase15, "toLowerCase(...)");
                String lowerCase16 = ((rf) obj2).b.toLowerCase(locale8);
                i2.g.d(lowerCase16, "toLowerCase(...)");
                return a1.b.q(lowerCase15, lowerCase16);
            case 14:
                return a1.b.q(Long.valueOf(((File) obj).lastModified()), Long.valueOf(((File) obj2).lastModified()));
            case 15:
                Object obj3 = ((x1.a) obj).f4641a;
                i2.g.d(obj3, "<get-first>(...)");
                Locale locale9 = Locale.ROOT;
                String lowerCase17 = ((String) obj3).toLowerCase(locale9);
                i2.g.d(lowerCase17, "toLowerCase(...)");
                Object obj4 = ((x1.a) obj2).f4641a;
                i2.g.d(obj4, "<get-first>(...)");
                String lowerCase18 = ((String) obj4).toLowerCase(locale9);
                i2.g.d(lowerCase18, "toLowerCase(...)");
                return a1.b.q(lowerCase17, lowerCase18);
            default:
                return a1.b.q(((tg) obj).f4287a, ((tg) obj2).f4287a);
        }
    }
}
