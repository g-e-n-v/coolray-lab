package e;

import android.R;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.p0;
import i.k2;
import i.l3;
import i.n3;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class j extends androidx.activity.h implements k {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f1615p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f1616q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public y f1618s;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final androidx.emoji2.text.m f1613n = new androidx.emoji2.text.m(3, new androidx.fragment.app.u(this));

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final androidx.lifecycle.s f1614o = new androidx.lifecycle.s(this);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f1617r = true;

    public j() {
        this.f84e.b.e("android:support:fragments", new androidx.fragment.app.s(this, 0));
        d(new androidx.fragment.app.t(this, 0));
        this.f84e.b.e("androidx:appcompat", new androidx.fragment.app.s(this, 1));
        d(new androidx.fragment.app.t(this, 1));
    }

    public static boolean k(androidx.fragment.app.h0 h0Var) {
        boolean zK = false;
        for (androidx.fragment.app.r rVar : h0Var.f421c.n()) {
            if (rVar != null) {
                androidx.fragment.app.u uVar = rVar.f517s;
                if ((uVar == null ? null : uVar.f538e) != null) {
                    zK |= k(rVar.g());
                }
                p0 p0Var = rVar.M;
                androidx.lifecycle.l lVar = androidx.lifecycle.l.f579c;
                androidx.lifecycle.l lVar2 = androidx.lifecycle.l.f580d;
                if (p0Var != null) {
                    p0Var.d();
                    if (p0Var.b.b.a(lVar2)) {
                        androidx.lifecycle.s sVar = rVar.M.b;
                        sVar.c("setCurrentState");
                        sVar.e(lVar);
                        zK = true;
                    }
                }
                if (rVar.L.b.a(lVar2)) {
                    androidx.lifecycle.s sVar2 = rVar.L;
                    sVar2.c("setCurrentState");
                    sVar2.e(lVar);
                    zK = true;
                }
            }
        }
        return zK;
    }

    @Override // android.app.Activity
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        j();
        y yVar = (y) i();
        yVar.C();
        ((ViewGroup) yVar.A.findViewById(R.id.content)).addView(view, layoutParams);
        yVar.f1694m.a(yVar.f1693l.getCallback());
    }

    /* JADX WARN: Code duplicated, block: B:110:0x01b2 A[Catch: all -> 0x01a6, TRY_LEAVE, TryCatch #1 {, blocks: (B:101:0x0194, B:103:0x0198, B:109:0x01b0, B:110:0x01b2, B:112:0x01b6, B:118:0x01c6, B:117:0x01bd, B:108:0x01a9), top: B:130:0x0194, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:128:0x0198 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:130:0x0194 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:138:0x01b6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:18:0x003d  */
    /* JADX WARN: Code duplicated, block: B:21:0x0049  */
    /* JADX WARN: Code duplicated, block: B:24:0x004f  */
    /* JADX WARN: Code duplicated, block: B:26:0x007a  */
    /* JADX WARN: Code duplicated, block: B:29:0x0089  */
    /* JADX WARN: Code duplicated, block: B:31:0x0091  */
    /* JADX WARN: Code duplicated, block: B:34:0x0099  */
    /* JADX WARN: Code duplicated, block: B:37:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:43:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:46:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:49:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:52:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:55:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:58:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:61:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:64:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:67:0x010d  */
    /* JADX WARN: Code duplicated, block: B:70:0x011c  */
    /* JADX WARN: Code duplicated, block: B:73:0x012b  */
    /* JADX WARN: Code duplicated, block: B:76:0x013a  */
    /* JADX WARN: Code duplicated, block: B:79:0x0149  */
    /* JADX WARN: Code duplicated, block: B:82:0x0154  */
    /* JADX WARN: Code duplicated, block: B:85:0x015c  */
    /* JADX WARN: Code duplicated, block: B:88:0x0164  */
    /* JADX WARN: Code duplicated, block: B:91:0x016c  */
    /* JADX WARN: Code duplicated, block: B:92:0x016f  */
    /* JADX WARN: Code duplicated, block: B:96:0x0185  */
    /* JADX WARN: Code duplicated, block: B:98:0x018d  */
    /* JADX WARN: Code duplicated, block: B:99:0x0191  */
    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        int i3;
        Configuration configuration;
        Configuration configuration2;
        Configuration configuration3;
        g.d dVar;
        Resources.Theme theme;
        Method method;
        float f;
        float f3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        int i31;
        int i32;
        int i33;
        int i34;
        int i35;
        int i36;
        int i37;
        int i38;
        int i39;
        int i40;
        int i41;
        int i42;
        int i43;
        y yVar = (y) i();
        yVar.O = true;
        int i44 = yVar.S;
        if (i44 == -100) {
            i44 = o.b;
        }
        int I = yVar.I(context, i44);
        if (o.h(context)) {
            o.s(context);
        }
        y.e eVarV = y.v(context);
        if (y.f1683k0 && (context instanceof ContextThemeWrapper)) {
            try {
                ((ContextThemeWrapper) context).applyOverrideConfiguration(y.z(context, I, eVarV, null, false));
            } catch (IllegalStateException unused) {
                if (context instanceof g.d) {
                    ((g.d) context).a(y.z(context, I, eVarV, null, false));
                } else if (y.f1682j0) {
                    i3 = Build.VERSION.SDK_INT;
                    Configuration configuration4 = new Configuration();
                    configuration4.uiMode = -1;
                    configuration4.fontScale = 0.0f;
                    configuration = context.createConfigurationContext(configuration4).getResources().getConfiguration();
                    configuration2 = context.getResources().getConfiguration();
                    configuration.uiMode = configuration2.uiMode;
                    if (configuration.equals(configuration2)) {
                        configuration3 = null;
                    } else {
                        configuration3 = new Configuration();
                        configuration3.fontScale = 0.0f;
                        if (configuration.diff(configuration2) != 0) {
                            f = configuration.fontScale;
                            f3 = configuration2.fontScale;
                            if (f != f3) {
                                configuration3.fontScale = f3;
                            }
                            i4 = configuration.mcc;
                            i5 = configuration2.mcc;
                            if (i4 != i5) {
                                configuration3.mcc = i5;
                            }
                            i6 = configuration.mnc;
                            i7 = configuration2.mnc;
                            if (i6 != i7) {
                                configuration3.mnc = i7;
                            }
                            s.a(configuration, configuration2, configuration3);
                            i8 = configuration.touchscreen;
                            i9 = configuration2.touchscreen;
                            if (i8 != i9) {
                                configuration3.touchscreen = i9;
                            }
                            i10 = configuration.keyboard;
                            i11 = configuration2.keyboard;
                            if (i10 != i11) {
                                configuration3.keyboard = i11;
                            }
                            i12 = configuration.keyboardHidden;
                            i13 = configuration2.keyboardHidden;
                            if (i12 != i13) {
                                configuration3.keyboardHidden = i13;
                            }
                            i14 = configuration.navigation;
                            i15 = configuration2.navigation;
                            if (i14 != i15) {
                                configuration3.navigation = i15;
                            }
                            i16 = configuration.navigationHidden;
                            i17 = configuration2.navigationHidden;
                            if (i16 != i17) {
                                configuration3.navigationHidden = i17;
                            }
                            i18 = configuration.orientation;
                            i19 = configuration2.orientation;
                            if (i18 != i19) {
                                configuration3.orientation = i19;
                            }
                            i20 = configuration.screenLayout & 15;
                            i21 = configuration2.screenLayout & 15;
                            if (i20 != i21) {
                                configuration3.screenLayout |= i21;
                            }
                            i22 = configuration.screenLayout & 192;
                            i23 = configuration2.screenLayout & 192;
                            if (i22 != i23) {
                                configuration3.screenLayout |= i23;
                            }
                            i24 = configuration.screenLayout & 48;
                            i25 = configuration2.screenLayout & 48;
                            if (i24 != i25) {
                                configuration3.screenLayout |= i25;
                            }
                            i26 = configuration.screenLayout & 768;
                            i27 = configuration2.screenLayout & 768;
                            if (i26 != i27) {
                                configuration3.screenLayout |= i27;
                            }
                            i28 = configuration.colorMode & 3;
                            i29 = configuration2.colorMode & 3;
                            if (i28 != i29) {
                                configuration3.colorMode |= i29;
                            }
                            i30 = configuration.colorMode & 12;
                            i31 = configuration2.colorMode & 12;
                            if (i30 != i31) {
                                configuration3.colorMode |= i31;
                            }
                            i32 = configuration.uiMode & 15;
                            i33 = configuration2.uiMode & 15;
                            if (i32 != i33) {
                                configuration3.uiMode |= i33;
                            }
                            i34 = configuration.uiMode & 48;
                            i35 = configuration2.uiMode & 48;
                            if (i34 != i35) {
                                configuration3.uiMode |= i35;
                            }
                            i36 = configuration.screenWidthDp;
                            i37 = configuration2.screenWidthDp;
                            if (i36 != i37) {
                                configuration3.screenWidthDp = i37;
                            }
                            i38 = configuration.screenHeightDp;
                            i39 = configuration2.screenHeightDp;
                            if (i38 != i39) {
                                configuration3.screenHeightDp = i39;
                            }
                            i40 = configuration.smallestScreenWidthDp;
                            i41 = configuration2.smallestScreenWidthDp;
                            if (i40 != i41) {
                                configuration3.smallestScreenWidthDp = i41;
                            }
                            i42 = configuration.densityDpi;
                            i43 = configuration2.densityDpi;
                            if (i42 != i43) {
                                configuration3.densityDpi = i43;
                            }
                        }
                    }
                    Configuration configurationZ = y.z(context, I, eVarV, configuration3, true);
                    dVar = new g.d(context, com.ex.auto.R.style.Theme_AppCompat_Empty);
                    dVar.a(configurationZ);
                    if (context.getTheme() != null) {
                        theme = dVar.getTheme();
                        if (i3 >= 29) {
                            u.m.a(theme);
                        } else {
                            synchronized (u.b.f3221e) {
                                if (u.b.f3222g) {
                                    method = u.b.f;
                                    if (method != null) {
                                        method.invoke(theme, null);
                                    }
                                } else {
                                    Method declaredMethod = Resources.Theme.class.getDeclaredMethod("rebase", null);
                                    u.b.f = declaredMethod;
                                    declaredMethod.setAccessible(true);
                                    u.b.f3222g = true;
                                    method = u.b.f;
                                    if (method != null) {
                                        method.invoke(theme, null);
                                    }
                                }
                            }
                        }
                    }
                    context = dVar;
                }
            }
        } else if (context instanceof g.d) {
            try {
                ((g.d) context).a(y.z(context, I, eVarV, null, false));
            } catch (IllegalStateException unused2) {
                if (y.f1682j0) {
                    i3 = Build.VERSION.SDK_INT;
                    Configuration configuration5 = new Configuration();
                    configuration5.uiMode = -1;
                    configuration5.fontScale = 0.0f;
                    configuration = context.createConfigurationContext(configuration5).getResources().getConfiguration();
                    configuration2 = context.getResources().getConfiguration();
                    configuration.uiMode = configuration2.uiMode;
                    if (configuration.equals(configuration2)) {
                        configuration3 = new Configuration();
                        configuration3.fontScale = 0.0f;
                        if (configuration.diff(configuration2) != 0) {
                            f = configuration.fontScale;
                            f3 = configuration2.fontScale;
                            if (f != f3) {
                                configuration3.fontScale = f3;
                            }
                            i4 = configuration.mcc;
                            i5 = configuration2.mcc;
                            if (i4 != i5) {
                                configuration3.mcc = i5;
                            }
                            i6 = configuration.mnc;
                            i7 = configuration2.mnc;
                            if (i6 != i7) {
                                configuration3.mnc = i7;
                            }
                            s.a(configuration, configuration2, configuration3);
                            i8 = configuration.touchscreen;
                            i9 = configuration2.touchscreen;
                            if (i8 != i9) {
                                configuration3.touchscreen = i9;
                            }
                            i10 = configuration.keyboard;
                            i11 = configuration2.keyboard;
                            if (i10 != i11) {
                                configuration3.keyboard = i11;
                            }
                            i12 = configuration.keyboardHidden;
                            i13 = configuration2.keyboardHidden;
                            if (i12 != i13) {
                                configuration3.keyboardHidden = i13;
                            }
                            i14 = configuration.navigation;
                            i15 = configuration2.navigation;
                            if (i14 != i15) {
                                configuration3.navigation = i15;
                            }
                            i16 = configuration.navigationHidden;
                            i17 = configuration2.navigationHidden;
                            if (i16 != i17) {
                                configuration3.navigationHidden = i17;
                            }
                            i18 = configuration.orientation;
                            i19 = configuration2.orientation;
                            if (i18 != i19) {
                                configuration3.orientation = i19;
                            }
                            i20 = configuration.screenLayout & 15;
                            i21 = configuration2.screenLayout & 15;
                            if (i20 != i21) {
                                configuration3.screenLayout |= i21;
                            }
                            i22 = configuration.screenLayout & 192;
                            i23 = configuration2.screenLayout & 192;
                            if (i22 != i23) {
                                configuration3.screenLayout |= i23;
                            }
                            i24 = configuration.screenLayout & 48;
                            i25 = configuration2.screenLayout & 48;
                            if (i24 != i25) {
                                configuration3.screenLayout |= i25;
                            }
                            i26 = configuration.screenLayout & 768;
                            i27 = configuration2.screenLayout & 768;
                            if (i26 != i27) {
                                configuration3.screenLayout |= i27;
                            }
                            i28 = configuration.colorMode & 3;
                            i29 = configuration2.colorMode & 3;
                            if (i28 != i29) {
                                configuration3.colorMode |= i29;
                            }
                            i30 = configuration.colorMode & 12;
                            i31 = configuration2.colorMode & 12;
                            if (i30 != i31) {
                                configuration3.colorMode |= i31;
                            }
                            i32 = configuration.uiMode & 15;
                            i33 = configuration2.uiMode & 15;
                            if (i32 != i33) {
                                configuration3.uiMode |= i33;
                            }
                            i34 = configuration.uiMode & 48;
                            i35 = configuration2.uiMode & 48;
                            if (i34 != i35) {
                                configuration3.uiMode |= i35;
                            }
                            i36 = configuration.screenWidthDp;
                            i37 = configuration2.screenWidthDp;
                            if (i36 != i37) {
                                configuration3.screenWidthDp = i37;
                            }
                            i38 = configuration.screenHeightDp;
                            i39 = configuration2.screenHeightDp;
                            if (i38 != i39) {
                                configuration3.screenHeightDp = i39;
                            }
                            i40 = configuration.smallestScreenWidthDp;
                            i41 = configuration2.smallestScreenWidthDp;
                            if (i40 != i41) {
                                configuration3.smallestScreenWidthDp = i41;
                            }
                            i42 = configuration.densityDpi;
                            i43 = configuration2.densityDpi;
                            if (i42 != i43) {
                                configuration3.densityDpi = i43;
                            }
                        }
                    } else {
                        configuration3 = null;
                    }
                    Configuration configurationZ2 = y.z(context, I, eVarV, configuration3, true);
                    dVar = new g.d(context, com.ex.auto.R.style.Theme_AppCompat_Empty);
                    dVar.a(configurationZ2);
                    try {
                        if (context.getTheme() != null) {
                            theme = dVar.getTheme();
                            if (i3 >= 29) {
                                u.m.a(theme);
                            } else {
                                synchronized (u.b.f3221e) {
                                    if (u.b.f3222g) {
                                        try {
                                            Method declaredMethod2 = Resources.Theme.class.getDeclaredMethod("rebase", null);
                                            u.b.f = declaredMethod2;
                                            declaredMethod2.setAccessible(true);
                                        } catch (NoSuchMethodException e3) {
                                            Log.i("ResourcesCompat", "Failed to retrieve rebase() method", e3);
                                        }
                                        u.b.f3222g = true;
                                        method = u.b.f;
                                        if (method != null) {
                                            try {
                                                method.invoke(theme, null);
                                            } catch (IllegalAccessException | InvocationTargetException e4) {
                                                Log.i("ResourcesCompat", "Failed to invoke rebase() method via reflection", e4);
                                                u.b.f = null;
                                            }
                                        }
                                    } else {
                                        method = u.b.f;
                                        if (method != null) {
                                            method.invoke(theme, null);
                                        }
                                    }
                                }
                            }
                        }
                    } catch (NullPointerException unused3) {
                    }
                    context = dVar;
                }
            }
        } else if (y.f1682j0) {
            i3 = Build.VERSION.SDK_INT;
            Configuration configuration6 = new Configuration();
            configuration6.uiMode = -1;
            configuration6.fontScale = 0.0f;
            configuration = context.createConfigurationContext(configuration6).getResources().getConfiguration();
            configuration2 = context.getResources().getConfiguration();
            configuration.uiMode = configuration2.uiMode;
            if (configuration.equals(configuration2)) {
                configuration3 = new Configuration();
                configuration3.fontScale = 0.0f;
                if (configuration.diff(configuration2) != 0) {
                    f = configuration.fontScale;
                    f3 = configuration2.fontScale;
                    if (f != f3) {
                        configuration3.fontScale = f3;
                    }
                    i4 = configuration.mcc;
                    i5 = configuration2.mcc;
                    if (i4 != i5) {
                        configuration3.mcc = i5;
                    }
                    i6 = configuration.mnc;
                    i7 = configuration2.mnc;
                    if (i6 != i7) {
                        configuration3.mnc = i7;
                    }
                    s.a(configuration, configuration2, configuration3);
                    i8 = configuration.touchscreen;
                    i9 = configuration2.touchscreen;
                    if (i8 != i9) {
                        configuration3.touchscreen = i9;
                    }
                    i10 = configuration.keyboard;
                    i11 = configuration2.keyboard;
                    if (i10 != i11) {
                        configuration3.keyboard = i11;
                    }
                    i12 = configuration.keyboardHidden;
                    i13 = configuration2.keyboardHidden;
                    if (i12 != i13) {
                        configuration3.keyboardHidden = i13;
                    }
                    i14 = configuration.navigation;
                    i15 = configuration2.navigation;
                    if (i14 != i15) {
                        configuration3.navigation = i15;
                    }
                    i16 = configuration.navigationHidden;
                    i17 = configuration2.navigationHidden;
                    if (i16 != i17) {
                        configuration3.navigationHidden = i17;
                    }
                    i18 = configuration.orientation;
                    i19 = configuration2.orientation;
                    if (i18 != i19) {
                        configuration3.orientation = i19;
                    }
                    i20 = configuration.screenLayout & 15;
                    i21 = configuration2.screenLayout & 15;
                    if (i20 != i21) {
                        configuration3.screenLayout |= i21;
                    }
                    i22 = configuration.screenLayout & 192;
                    i23 = configuration2.screenLayout & 192;
                    if (i22 != i23) {
                        configuration3.screenLayout |= i23;
                    }
                    i24 = configuration.screenLayout & 48;
                    i25 = configuration2.screenLayout & 48;
                    if (i24 != i25) {
                        configuration3.screenLayout |= i25;
                    }
                    i26 = configuration.screenLayout & 768;
                    i27 = configuration2.screenLayout & 768;
                    if (i26 != i27) {
                        configuration3.screenLayout |= i27;
                    }
                    i28 = configuration.colorMode & 3;
                    i29 = configuration2.colorMode & 3;
                    if (i28 != i29) {
                        configuration3.colorMode |= i29;
                    }
                    i30 = configuration.colorMode & 12;
                    i31 = configuration2.colorMode & 12;
                    if (i30 != i31) {
                        configuration3.colorMode |= i31;
                    }
                    i32 = configuration.uiMode & 15;
                    i33 = configuration2.uiMode & 15;
                    if (i32 != i33) {
                        configuration3.uiMode |= i33;
                    }
                    i34 = configuration.uiMode & 48;
                    i35 = configuration2.uiMode & 48;
                    if (i34 != i35) {
                        configuration3.uiMode |= i35;
                    }
                    i36 = configuration.screenWidthDp;
                    i37 = configuration2.screenWidthDp;
                    if (i36 != i37) {
                        configuration3.screenWidthDp = i37;
                    }
                    i38 = configuration.screenHeightDp;
                    i39 = configuration2.screenHeightDp;
                    if (i38 != i39) {
                        configuration3.screenHeightDp = i39;
                    }
                    i40 = configuration.smallestScreenWidthDp;
                    i41 = configuration2.smallestScreenWidthDp;
                    if (i40 != i41) {
                        configuration3.smallestScreenWidthDp = i41;
                    }
                    i42 = configuration.densityDpi;
                    i43 = configuration2.densityDpi;
                    if (i42 != i43) {
                        configuration3.densityDpi = i43;
                    }
                }
            } else {
                configuration3 = null;
            }
            Configuration configurationZ3 = y.z(context, I, eVarV, configuration3, true);
            dVar = new g.d(context, com.ex.auto.R.style.Theme_AppCompat_Empty);
            dVar.a(configurationZ3);
            if (context.getTheme() != null) {
                theme = dVar.getTheme();
                if (i3 >= 29) {
                    u.m.a(theme);
                } else {
                    synchronized (u.b.f3221e) {
                        if (u.b.f3222g) {
                            Method declaredMethod3 = Resources.Theme.class.getDeclaredMethod("rebase", null);
                            u.b.f = declaredMethod3;
                            declaredMethod3.setAccessible(true);
                            u.b.f3222g = true;
                            method = u.b.f;
                            if (method != null) {
                                method.invoke(theme, null);
                            }
                        } else {
                            method = u.b.f;
                            if (method != null) {
                                method.invoke(theme, null);
                            }
                        }
                    }
                }
            }
            context = dVar;
        }
        super.attachBaseContext(context);
    }

    @Override // android.app.Activity
    public final void closeOptionsMenu() {
        ((y) i()).G();
        if (getWindow().hasFeature(0)) {
            super.closeOptionsMenu();
        }
    }

    @Override // androidx.activity.h, android.app.Activity, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        keyEvent.getKeyCode();
        ((y) i()).G();
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        o0.a aVar;
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mCreated=");
        printWriter.print(this.f1615p);
        printWriter.print(" mResumed=");
        printWriter.print(this.f1616q);
        printWriter.print(" mStopped=");
        printWriter.print(this.f1617r);
        if (getApplication() != null) {
            androidx.lifecycle.i0 i0VarE = e();
            i2.g.e(i0VarE, "store");
            HashMap map = i0VarE.f576a;
            n0.a aVar2 = n0.a.b;
            i2.g.e(aVar2, "defaultCreationExtras");
            String canonicalName = o0.a.class.getCanonicalName();
            if (canonicalName == null) {
                throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
            }
            String strConcat = "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(canonicalName);
            i2.g.e(strConcat, "key");
            androidx.lifecycle.g0 g0Var = (androidx.lifecycle.g0) map.get(strConcat);
            if (!o0.a.class.isInstance(g0Var)) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.putAll(aVar2.f2481a);
                linkedHashMap.put(androidx.lifecycle.h0.b, strConcat);
                try {
                    aVar = new o0.a();
                } catch (AbstractMethodError unused) {
                    aVar = new o0.a();
                }
                g0Var = aVar;
                androidx.lifecycle.g0 g0Var2 = (androidx.lifecycle.g0) map.put(strConcat, g0Var);
                if (g0Var2 != null) {
                    g0Var2.a();
                }
            } else if (g0Var == null) {
                throw new NullPointerException("null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get");
            }
            l.l lVar = ((o0.a) g0Var).f2619c;
            if (lVar.f2421c > 0) {
                printWriter.print(str2);
                printWriter.println("Loaders:");
                if (lVar.f2421c > 0) {
                    if (lVar.b[0] != null) {
                        throw new ClassCastException();
                    }
                    printWriter.print(str2);
                    printWriter.print("  #");
                    printWriter.print(lVar.f2420a[0]);
                    printWriter.print(": ");
                    throw null;
                }
            }
        }
        ((androidx.fragment.app.u) this.f1613n.b).f537d.t(str, fileDescriptor, printWriter, strArr);
    }

    @Override // android.app.Activity
    public final View findViewById(int i3) {
        y yVar = (y) i();
        yVar.C();
        return yVar.f1693l.findViewById(i3);
    }

    @Override // android.app.Activity
    public final MenuInflater getMenuInflater() {
        y yVar = (y) i();
        if (yVar.f1697p == null) {
            yVar.G();
            k0 k0Var = yVar.f1696o;
            yVar.f1697p = new g.i(k0Var != null ? k0Var.f0() : yVar.f1692k);
        }
        return yVar.f1697p;
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        int i3 = n3.f2111a;
        return super.getResources();
    }

    public final o i() {
        if (this.f1618s == null) {
            e0 e0Var = o.f1648a;
            this.f1618s = new y(this, null, this, this);
        }
        return this.f1618s;
    }

    @Override // android.app.Activity
    public final void invalidateOptionsMenu() {
        i().g();
    }

    public final void j() {
        getWindow().getDecorView().setTag(com.ex.auto.R.id.view_tree_lifecycle_owner, this);
        getWindow().getDecorView().setTag(com.ex.auto.R.id.view_tree_view_model_store_owner, this);
        View decorView = getWindow().getDecorView();
        i2.g.e(decorView, "<this>");
        decorView.setTag(com.ex.auto.R.id.view_tree_saved_state_registry_owner, this);
        View decorView2 = getWindow().getDecorView();
        i2.g.e(decorView2, "<this>");
        decorView2.setTag(com.ex.auto.R.id.view_tree_on_back_pressed_dispatcher_owner, this);
    }

    public final void l(Configuration configuration) {
        androidx.emoji2.text.m mVar = this.f1613n;
        mVar.s();
        super.onConfigurationChanged(configuration);
        ((androidx.fragment.app.u) mVar.b).f537d.h();
    }

    public final void m() {
        super.onDestroy();
        ((androidx.fragment.app.u) this.f1613n.b).f537d.k();
        this.f1614o.d(androidx.lifecycle.k.ON_DESTROY);
    }

    public final boolean n(int i3, MenuItem menuItem) {
        if (super.onMenuItemSelected(i3, menuItem)) {
            return true;
        }
        androidx.emoji2.text.m mVar = this.f1613n;
        if (i3 == 0) {
            return ((androidx.fragment.app.u) mVar.b).f537d.n();
        }
        if (i3 != 6) {
            return false;
        }
        return ((androidx.fragment.app.u) mVar.b).f537d.i();
    }

    public final void o(int i3, Menu menu) {
        if (i3 == 0) {
            ((androidx.fragment.app.u) this.f1613n.b).f537d.o();
        }
        super.onPanelClosed(i3, menu);
    }

    @Override // androidx.activity.h, android.app.Activity
    public final void onActivityResult(int i3, int i4, Intent intent) {
        this.f1613n.s();
        super.onActivityResult(i3, i4, intent);
    }

    @Override // androidx.activity.h, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        l(configuration);
        y yVar = (y) i();
        if (yVar.F && yVar.f1707z) {
            yVar.G();
            k0 k0Var = yVar.f1696o;
            if (k0Var != null) {
                k0Var.i0(k0Var.f1625a.getResources().getBoolean(com.ex.auto.R.bool.abc_action_bar_embed_tabs));
            }
        }
        i.t tVarA = i.t.a();
        Context context = yVar.f1692k;
        synchronized (tVarA) {
            k2 k2Var = tVarA.f2150a;
            synchronized (k2Var) {
                l.e eVar = (l.e) k2Var.b.get(context);
                if (eVar != null) {
                    eVar.a();
                }
            }
        }
        yVar.R = new Configuration(yVar.f1692k.getResources().getConfiguration());
        yVar.t(false, false);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onContentChanged() {
    }

    @Override // androidx.activity.h, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f1614o.d(androidx.lifecycle.k.ON_CREATE);
        androidx.fragment.app.h0 h0Var = ((androidx.fragment.app.u) this.f1613n.b).f537d;
        h0Var.f442y = false;
        h0Var.f443z = false;
        h0Var.F.f458h = false;
        h0Var.s(1);
    }

    @Override // androidx.activity.h, android.app.Activity, android.view.Window.Callback
    public final boolean onCreatePanelMenu(int i3, Menu menu) {
        if (i3 != 0) {
            super.onCreatePanelMenu(i3, menu);
            return true;
        }
        super.onCreatePanelMenu(i3, menu);
        getMenuInflater();
        ((androidx.fragment.app.u) this.f1613n.b).f537d.j();
        return true;
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View viewOnCreateView = ((androidx.fragment.app.u) this.f1613n.b).f537d.f.onCreateView(view, str, context, attributeSet);
        return viewOnCreateView == null ? super.onCreateView(view, str, context, attributeSet) : viewOnCreateView;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        m();
        i().j();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onLowMemory() {
        super.onLowMemory();
        ((androidx.fragment.app.u) this.f1613n.b).f537d.l();
    }

    @Override // androidx.activity.h, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i3, MenuItem menuItem) {
        Intent intentY;
        if (!n(i3, menuItem)) {
            y yVar = (y) i();
            yVar.G();
            k0 k0Var = yVar.f1696o;
            if (menuItem.getItemId() != 16908332 || k0Var == null || (((l3) k0Var.f1628e).b & 4) == 0 || (intentY = a1.b.y(this)) == null) {
                return false;
            }
            if (!androidx.core.app.d.c(this, intentY)) {
                androidx.core.app.d.b(this, intentY);
                return true;
            }
            ArrayList arrayList = new ArrayList();
            Intent intentY2 = a1.b.y(this);
            if (intentY2 == null) {
                intentY2 = a1.b.y(this);
            }
            if (intentY2 != null) {
                ComponentName component = intentY2.getComponent();
                if (component == null) {
                    component = intentY2.resolveActivity(getPackageManager());
                }
                int size = arrayList.size();
                try {
                    Intent intentZ = a1.b.z(this, component);
                    while (intentZ != null) {
                        arrayList.add(size, intentZ);
                        intentZ = a1.b.z(this, intentZ.getComponent());
                    }
                    arrayList.add(intentY2);
                } catch (PackageManager.NameNotFoundException e3) {
                    Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
                    throw new IllegalArgumentException(e3);
                }
            }
            if (arrayList.isEmpty()) {
                throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
            }
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[0]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            androidx.core.content.a.a(this, intentArr, null);
            try {
                androidx.core.app.a.a(this);
            } catch (IllegalStateException unused) {
                finish();
            }
        }
        return true;
    }

    @Override // android.app.Activity
    public final void onMultiWindowModeChanged(boolean z2) {
        ((androidx.fragment.app.u) this.f1613n.b).f537d.m();
    }

    @Override // androidx.activity.h, android.app.Activity
    public void onNewIntent(Intent intent) {
        this.f1613n.s();
        super.onNewIntent(intent);
    }

    @Override // androidx.activity.h, android.app.Activity, android.view.Window.Callback
    public final void onPanelClosed(int i3, Menu menu) {
        o(i3, menu);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.f1616q = false;
        ((androidx.fragment.app.u) this.f1613n.b).f537d.s(5);
        this.f1614o.d(androidx.lifecycle.k.ON_PAUSE);
    }

    @Override // android.app.Activity
    public final void onPictureInPictureModeChanged(boolean z2) {
        ((androidx.fragment.app.u) this.f1613n.b).f537d.q();
    }

    @Override // android.app.Activity
    public final void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        ((y) i()).C();
    }

    @Override // android.app.Activity
    public final void onPostResume() {
        p();
        y yVar = (y) i();
        yVar.G();
        k0 k0Var = yVar.f1696o;
        if (k0Var != null) {
            k0Var.f1642t = true;
        }
    }

    @Override // androidx.activity.h, android.app.Activity, android.view.Window.Callback
    public final boolean onPreparePanel(int i3, View view, Menu menu) {
        if (i3 != 0) {
            super.onPreparePanel(i3, view, menu);
            return true;
        }
        super.onPreparePanel(0, view, menu);
        ((androidx.fragment.app.u) this.f1613n.b).f537d.r();
        return true;
    }

    @Override // androidx.activity.h, android.app.Activity
    public final void onRequestPermissionsResult(int i3, String[] strArr, int[] iArr) {
        this.f1613n.s();
        super.onRequestPermissionsResult(i3, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onResume() {
        androidx.emoji2.text.m mVar = this.f1613n;
        mVar.s();
        super.onResume();
        this.f1616q = true;
        ((androidx.fragment.app.u) mVar.b).f537d.w(true);
    }

    @Override // android.app.Activity
    public final void onStart() {
        q();
        ((y) i()).t(true, false);
    }

    @Override // android.app.Activity
    public final void onStateNotSaved() {
        this.f1613n.s();
    }

    @Override // android.app.Activity
    public final void onStop() {
        r();
        y yVar = (y) i();
        yVar.G();
        k0 k0Var = yVar.f1696o;
        if (k0Var != null) {
            k0Var.f1642t = false;
            g.k kVar = k0Var.f1641s;
            if (kVar != null) {
                kVar.a();
            }
        }
    }

    @Override // android.app.Activity
    public final void onTitleChanged(CharSequence charSequence, int i3) {
        super.onTitleChanged(charSequence, i3);
        i().r(charSequence);
    }

    @Override // android.app.Activity
    public final void openOptionsMenu() {
        ((y) i()).G();
        if (getWindow().hasFeature(0)) {
            super.openOptionsMenu();
        }
    }

    public final void p() {
        super.onPostResume();
        this.f1614o.d(androidx.lifecycle.k.ON_RESUME);
        androidx.fragment.app.h0 h0Var = ((androidx.fragment.app.u) this.f1613n.b).f537d;
        h0Var.f442y = false;
        h0Var.f443z = false;
        h0Var.F.f458h = false;
        h0Var.s(7);
    }

    public final void q() {
        androidx.emoji2.text.m mVar = this.f1613n;
        mVar.s();
        androidx.fragment.app.u uVar = (androidx.fragment.app.u) mVar.b;
        super.onStart();
        this.f1617r = false;
        if (!this.f1615p) {
            this.f1615p = true;
            androidx.fragment.app.h0 h0Var = uVar.f537d;
            h0Var.f442y = false;
            h0Var.f443z = false;
            h0Var.F.f458h = false;
            h0Var.s(4);
        }
        uVar.f537d.w(true);
        this.f1614o.d(androidx.lifecycle.k.ON_START);
        androidx.fragment.app.h0 h0Var2 = uVar.f537d;
        h0Var2.f442y = false;
        h0Var2.f443z = false;
        h0Var2.F.f458h = false;
        h0Var2.s(5);
    }

    public final void r() {
        androidx.emoji2.text.m mVar;
        super.onStop();
        this.f1617r = true;
        do {
            mVar = this.f1613n;
        } while (k(((androidx.fragment.app.u) mVar.b).f537d));
        androidx.fragment.app.h0 h0Var = ((androidx.fragment.app.u) mVar.b).f537d;
        h0Var.f443z = true;
        h0Var.F.f458h = true;
        h0Var.s(4);
        this.f1614o.d(androidx.lifecycle.k.ON_STOP);
    }

    @Override // android.app.Activity
    public final void setContentView(int i3) {
        j();
        i().n(i3);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i3) {
        super.setTheme(i3);
        ((y) i()).T = i3;
    }

    @Override // androidx.activity.h, android.app.Activity
    public void setContentView(View view) {
        j();
        i().o(view);
    }

    @Override // android.app.Activity
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        j();
        i().p(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View viewOnCreateView = ((androidx.fragment.app.u) this.f1613n.b).f537d.f.onCreateView(null, str, context, attributeSet);
        return viewOnCreateView == null ? super.onCreateView(str, context, attributeSet) : viewOnCreateView;
    }
}
