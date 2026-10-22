package w0;

import android.car.hardware.property.CarPropertyManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.R;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public abstract class v7 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f4376a = {1, 4, 16, 64};
    public static final int[] b = {1, 2, 3, 4, 6};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f4377c = {570491137, 570491138, 570491139};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f4378d = {537003265, 537003266, 537003267};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f4379e = {0, 1};
    public static final int[] f = {0, 1, 16777216};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int[] f4380g = {1, 49, 5, 0};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Set f4381h = k1.a.P(570491137, 570491138, 570491139);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Set f4382i = k1.a.P(537003265, 537003266, 537003267);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int[] f4383j = {0, 20, 40, 60, 80, 100};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Object f4384k = y1.s.X(new x1.a(0, Integer.valueOf(R.drawable.widget_card_bg_000)), new x1.a(20, Integer.valueOf(R.drawable.widget_card_bg_020)), new x1.a(40, Integer.valueOf(R.drawable.widget_card_bg_040)), new x1.a(60, Integer.valueOf(R.drawable.widget_card_bg_060)), new x1.a(80, Integer.valueOf(R.drawable.widget_card_bg_080)), new x1.a(100, Integer.valueOf(R.drawable.widget_card_bg_100)));

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int[] f4385l = {0, 1};

    public static void A(CarPropertyManager carPropertyManager, boolean z2) {
        i2.g.e(carPropertyManager, "cpm");
        p1.i(carPropertyManager, 270535680, 117, z2);
    }

    public static int a(Context context) {
        return b(k1.a.k(context.getSharedPreferences("tela_preta_prefs", 0).getInt("widget_bg_opacity_pct", 100), 0, 100));
    }

    /* JADX WARN: Type inference failed for: r9v4, types: [java.lang.Object, java.util.Map] */
    public static int b(int i3) {
        Integer numValueOf;
        int[] iArr = f4383j;
        if (iArr.length == 0) {
            numValueOf = null;
        } else {
            int i4 = iArr[0];
            int i5 = 1;
            int length = iArr.length - 1;
            if (length == 0) {
                numValueOf = Integer.valueOf(i4);
            } else {
                int iAbs = Math.abs(i4 - k1.a.k(i3, 0, 100));
                if (1 <= length) {
                    while (true) {
                        int i6 = iArr[i5];
                        int iAbs2 = Math.abs(i6 - k1.a.k(i3, 0, 100));
                        if (iAbs > iAbs2) {
                            i4 = i6;
                            iAbs = iAbs2;
                        }
                        if (i5 == length) {
                            break;
                        }
                        i5++;
                    }
                }
                numValueOf = Integer.valueOf(i4);
            }
        }
        Integer num = (Integer) f4384k.get(Integer.valueOf(numValueOf != null ? numValueOf.intValue() : 100));
        return num != null ? num.intValue() : R.drawable.widget_card_bg_100;
    }

    public static boolean c(Context context, Integer num, Integer num2) {
        i2.g.e(context, "context");
        try {
            SharedPreferences.Editor editorEdit = DriveRegenFloaterService.h(context).edit();
            if (num != null) {
                editorEdit.putInt("saved_drive", num.intValue());
            }
            if (num2 != null) {
                editorEdit.putInt("saved_regen", num2.intValue());
            }
            editorEdit.apply();
            int[] iArr = CentralWatchdogService.S2;
            if (t1.Y("widget")) {
                return true;
            }
            context.sendBroadcast(new Intent("UPDATE_DRIVE_REGEN_MODES"));
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public static Boolean d(CarPropertyManager carPropertyManager) {
        i2.g.e(carPropertyManager, "cpm");
        for (int i3 : u.B) {
            Boolean boolA = p1.a(carPropertyManager, 358613145, i3);
            if (boolA != null) {
                return boolA;
            }
        }
        for (int i4 : u.B) {
            Integer numC = p1.c(carPropertyManager, 358613145, i4);
            if (numC != null) {
                return Boolean.valueOf(numC.intValue() != 0);
            }
        }
        return null;
    }

    public static Integer e(CarPropertyManager carPropertyManager) {
        i2.g.e(carPropertyManager, "cpm");
        for (int i3 = 0; i3 < 4; i3++) {
            Integer numC = p1.c(carPropertyManager, 356517120, f4380g[i3]);
            if (numC != null) {
                return Integer.valueOf(numC.intValue());
            }
        }
        return null;
    }

    public static Boolean f(CarPropertyManager carPropertyManager) {
        i2.g.e(carPropertyManager, "cpm");
        return p1.a(carPropertyManager, 354419975, 1);
    }

    public static Integer g(CarPropertyManager carPropertyManager, int i3, int[] iArr, Set set) {
        int length = iArr.length;
        int i4 = 0;
        while (true) {
            if (i4 >= length) {
                return null;
            }
            Object objE = p1.e(carPropertyManager, i3, iArr[i4]);
            Integer num = objE instanceof Integer ? (Integer) objE : null;
            if (num != null && set.contains(num)) {
                return num;
            }
            i4++;
        }
    }

    public static Boolean h(CarPropertyManager carPropertyManager) {
        i2.g.e(carPropertyManager, "cpm");
        return p1.a(carPropertyManager, 354419988, 2);
    }

    public static Boolean i(CarPropertyManager carPropertyManager) {
        i2.g.e(carPropertyManager, "cpm");
        AtomicInteger atomicInteger = p1.f4042a;
        return p1.a(carPropertyManager, u.f4291e, u.f);
    }

    public static Integer j(CarPropertyManager carPropertyManager, int i3) {
        i2.g.e(carPropertyManager, "cpm");
        return p1.c(carPropertyManager, 356517131, i3);
    }

    public static Float k(CarPropertyManager carPropertyManager) {
        i2.g.e(carPropertyManager, "cpm");
        AtomicInteger atomicInteger = p1.f4042a;
        Float fB = p1.b(carPropertyManager, u.f4290d, 1);
        if (fB == null) {
            return null;
        }
        float fFloatValue = fB.floatValue();
        if (fFloatValue < 17.0f || fFloatValue > 32.0f) {
            return null;
        }
        return fB;
    }

    public static Integer l(CarPropertyManager carPropertyManager) {
        i2.g.e(carPropertyManager, "cpm");
        for (int i3 = 0; i3 < 4; i3++) {
            Integer numC = p1.c(carPropertyManager, 356517121, f4376a[i3]);
            if (numC != null) {
                return Integer.valueOf(numC.intValue());
            }
        }
        return null;
    }

    public static Boolean m(CarPropertyManager carPropertyManager) {
        i2.g.e(carPropertyManager, "cpm");
        for (int i3 : f4385l) {
            Integer numC = p1.c(carPropertyManager, 289408269, i3);
            if (numC != null) {
                return Boolean.valueOf(numC.intValue() != 0);
            }
        }
        return null;
    }

    public static Boolean n(CarPropertyManager carPropertyManager) {
        i2.g.e(carPropertyManager, "cpm");
        return p1.a(carPropertyManager, 270535680, 117);
    }

    public static Context o(Context context) {
        Locale localeForLanguageTag;
        Locale locale;
        i2.g.e(context, "context");
        y.e eVarC = e.o.c();
        String languageTag = (eVarC.b() || (locale = eVarC.f4652a.f4653a.get(0)) == null) ? null : locale.toLanguageTag();
        if (languageTag == null) {
            languageTag = context.getSharedPreferences("tela_preta_prefs", 0).getString("app_language_tag", null);
        }
        if (languageTag == null || (localeForLanguageTag = Locale.forLanguageTag(languageTag)) == null) {
            localeForLanguageTag = context.getResources().getConfiguration().getLocales().get(0);
        }
        Configuration configuration = new Configuration(context.getResources().getConfiguration());
        configuration.setLocale(localeForLanguageTag);
        Context contextCreateConfigurationContext = context.createConfigurationContext(configuration);
        i2.g.d(contextCreateConfigurationContext, "createConfigurationContext(...)");
        return contextCreateConfigurationContext;
    }

    public static int p(int[] iArr, Integer num, int i3) {
        int length = -1;
        int iIntValue = num != null ? num.intValue() : -1;
        int length2 = iArr.length;
        for (int i4 = 0; i4 < length2; i4++) {
            if (iIntValue == iArr[i4]) {
                length = i4;
                break;
            }
        }
        if (length < 0) {
            length = iArr.length / 2;
        }
        return k1.a.k(length + i3, 0, iArr.length - 1);
    }

    public static void q(CarPropertyManager carPropertyManager, boolean z2) {
        i2.g.e(carPropertyManager, "cpm");
        for (int i3 : u.B) {
            if (p1.i(carPropertyManager, 358613145, i3, z2)) {
                return;
            }
        }
        int[] iArr = u.B;
        int length = iArr.length;
        for (int i4 = 0; i4 < length && !p1.l(carPropertyManager, 358613145, iArr[i4], z2 ? 1 : 0); i4++) {
        }
    }

    public static void r(Context context, CarPropertyManager carPropertyManager, int i3) {
        i2.g.e(context, "context");
        i2.g.e(carPropertyManager, "cpm");
        if (c(context, Integer.valueOf(i3), null)) {
            return;
        }
        for (int i4 = 0; i4 < 3 && !p1.l(carPropertyManager, 570491136, f[i4], i3); i4++) {
        }
    }

    public static void s(CarPropertyManager carPropertyManager, int i3) {
        i2.g.e(carPropertyManager, "cpm");
        for (int i4 = 0; i4 < 4 && !p1.l(carPropertyManager, 356517120, f4380g[i4], i3); i4++) {
        }
    }

    public static void t(CarPropertyManager carPropertyManager, boolean z2) {
        i2.g.e(carPropertyManager, "cpm");
        p1.i(carPropertyManager, 354419975, 1, z2);
    }

    public static void u(CarPropertyManager carPropertyManager, boolean z2) {
        i2.g.e(carPropertyManager, "cpm");
        p1.i(carPropertyManager, 354419988, 2, z2);
    }

    public static void v(CarPropertyManager carPropertyManager, boolean z2) {
        i2.g.e(carPropertyManager, "cpm");
        p1.i(carPropertyManager, u.f4291e, u.f, z2);
    }

    public static void w(Context context, CarPropertyManager carPropertyManager, int i3) {
        i2.g.e(context, "context");
        i2.g.e(carPropertyManager, "cpm");
        if (c(context, null, Integer.valueOf(i3))) {
            return;
        }
        for (int i4 = 0; i4 < 2 && !p1.l(carPropertyManager, 537003264, f4379e[i4], i3); i4++) {
        }
    }

    public static void x(CarPropertyManager carPropertyManager, float f3) {
        i2.g.e(carPropertyManager, "cpm");
        int i3 = u.f4290d;
        p1.j(carPropertyManager, i3, 1, f3);
        p1.j(carPropertyManager, i3, 4, f3);
    }

    public static void y(CarPropertyManager carPropertyManager, int i3) {
        i2.g.e(carPropertyManager, "cpm");
        p1.l(carPropertyManager, 356517121, 1, i3);
        p1.l(carPropertyManager, 356517121, 4, i3);
    }

    public static void z(CarPropertyManager carPropertyManager, boolean z2) {
        i2.g.e(carPropertyManager, "cpm");
        int[] iArr = f4385l;
        int length = iArr.length;
        for (int i3 = 0; i3 < length && !p1.l(carPropertyManager, 289408269, iArr[i3], z2 ? 1 : 0); i3++) {
        }
    }
}
