package e;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e0 f1648a = new e0(new f0());
    public static int b = -100;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static y.e f1649c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static y.e f1650d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static Boolean f1651e = null;
    public static boolean f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final l.c f1652g = new l.c();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Object f1653h = new Object();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Object f1654i = new Object();

    public static void b() {
        y.e eVar;
        Iterator it = f1652g.iterator();
        while (true) {
            l.g gVar = (l.g) it;
            if (!gVar.hasNext()) {
                return;
            }
            o oVar = (o) ((WeakReference) gVar.next()).get();
            if (oVar != null) {
                y yVar = (y) oVar;
                Context context = yVar.f1692k;
                if (h(context) && (eVar = f1649c) != null && !eVar.equals(f1650d)) {
                    f1648a.execute(new l(context, 1));
                }
                yVar.t(true, true);
            }
        }
    }

    public static y.e c() {
        if (k1.a.E()) {
            Object objD = d();
            if (objD != null) {
                return new y.e(new y.f(n.a(objD)));
            }
        } else {
            y.e eVar = f1649c;
            if (eVar != null) {
                return eVar;
            }
        }
        return y.e.b;
    }

    public static Object d() {
        Context context;
        Iterator it = f1652g.iterator();
        while (true) {
            l.g gVar = (l.g) it;
            if (!gVar.hasNext()) {
                return null;
            }
            o oVar = (o) ((WeakReference) gVar.next()).get();
            if (oVar != null && (context = ((y) oVar).f1692k) != null) {
                return context.getSystemService("locale");
            }
        }
    }

    public static boolean h(Context context) {
        if (f1651e == null) {
            try {
                int i3 = d0.f1574a;
                Bundle bundle = context.getPackageManager().getServiceInfo(new ComponentName(context, (Class<?>) d0.class), c0.a() | 128).metaData;
                if (bundle != null) {
                    f1651e = Boolean.valueOf(bundle.getBoolean("autoStoreLocales"));
                }
            } catch (PackageManager.NameNotFoundException unused) {
                Log.d("AppCompatDelegate", "Checking for metadata for AppLocalesMetadataHolderService : Service not found");
                f1651e = Boolean.FALSE;
            }
        }
        return f1651e.booleanValue();
    }

    public static void k(y yVar) {
        synchronized (f1653h) {
            try {
                Iterator it = f1652g.iterator();
                while (true) {
                    l.g gVar = (l.g) it;
                    if (gVar.hasNext()) {
                        o oVar = (o) ((WeakReference) gVar.next()).get();
                        if (oVar == yVar || oVar == null) {
                            gVar.remove();
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void m(y.e eVar) {
        Objects.requireNonNull(eVar);
        if (k1.a.E()) {
            Object objD = d();
            if (objD != null) {
                n.b(objD, m.a(eVar.f4652a.f4653a.toLanguageTags()));
                return;
            }
            return;
        }
        if (eVar.equals(f1649c)) {
            return;
        }
        synchronized (f1653h) {
            f1649c = eVar;
            b();
        }
    }

    public static void q(int i3) {
        if (i3 != -1 && i3 != 0 && i3 != 1 && i3 != 2 && i3 != 3) {
            Log.d("AppCompatDelegate", "setDefaultNightMode() called with an unknown mode");
            return;
        }
        if (b != i3) {
            b = i3;
            synchronized (f1653h) {
                try {
                    Iterator it = f1652g.iterator();
                    while (true) {
                        l.g gVar = (l.g) it;
                        if (gVar.hasNext()) {
                            o oVar = (o) ((WeakReference) gVar.next()).get();
                            if (oVar != null) {
                                ((y) oVar).t(true, true);
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static void s(Context context) {
        if (h(context)) {
            if (k1.a.E()) {
                if (f) {
                    return;
                }
                f1648a.execute(new l(context, 0));
                return;
            }
            synchronized (f1654i) {
                try {
                    y.e eVar = f1649c;
                    if (eVar == null) {
                        if (f1650d == null) {
                            f1650d = y.e.a(a1.b.Y(context));
                        }
                        if (f1650d.b()) {
                        } else {
                            f1649c = f1650d;
                        }
                    } else if (!eVar.equals(f1650d)) {
                        y.e eVar2 = f1649c;
                        f1650d = eVar2;
                        a1.b.U(context, eVar2.f4652a.f4653a.toLanguageTags());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public abstract void e();

    public abstract void g();

    public abstract void i();

    public abstract void j();

    public abstract boolean l(int i3);

    public abstract void n(int i3);

    public abstract void o(View view);

    public abstract void p(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void r(CharSequence charSequence);
}
