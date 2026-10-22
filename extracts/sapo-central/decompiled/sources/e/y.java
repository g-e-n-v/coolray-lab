package e;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import c0.p0;
import c0.w0;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import ecarx.xsf.mediacenter.session.PlaybackState;
import i.g1;
import i.g3;
import i.i1;
import i.j1;
import i.l3;
import i.n3;
import i.p3;
import i.t0;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class y extends o implements h.k, LayoutInflater.Factory2 {

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static final l.k f1680h0 = new l.k();

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public static final int[] f1681i0 = {R.attr.windowBackground};

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public static final boolean f1682j0 = !"robolectric".equals(Build.FINGERPRINT);

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public static final boolean f1683k0 = true;
    public ViewGroup A;
    public TextView B;
    public View C;
    public boolean D;
    public boolean E;
    public boolean F;
    public boolean G;
    public boolean H;
    public boolean I;
    public boolean J;
    public boolean K;
    public x[] L;
    public x M;
    public boolean N;
    public boolean O;
    public boolean P;
    public boolean Q;
    public Configuration R;
    public final int S;
    public int T;
    public int U;
    public boolean V;
    public v W;
    public v X;
    public boolean Y;
    public int Z;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f1685b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public Rect f1686c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public Rect f1687d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public b0 f1688e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public OnBackInvokedDispatcher f1689f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public OnBackInvokedCallback f1690g0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Object f1691j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Context f1692k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Window f1693l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public u f1694m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Object f1695n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public k0 f1696o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public g.i f1697p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public CharSequence f1698q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public i1 f1699r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public q f1700s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public q f1701t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public g.a f1702u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public ActionBarContextView f1703v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public PopupWindow f1704w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public p f1705x;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f1707z;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public w0 f1706y = null;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final p f1684a0 = new p(this, 0);

    public y(Context context, Window window, k kVar, Object obj) {
        j jVar;
        this.S = -100;
        this.f1692k = context;
        this.f1695n = kVar;
        this.f1691j = obj;
        if (obj instanceof Dialog) {
            while (true) {
                if (context != null) {
                    if (context instanceof j) {
                        jVar = (j) context;
                        break;
                    } else if (context instanceof ContextWrapper) {
                        context = ((ContextWrapper) context).getBaseContext();
                    }
                }
                jVar = null;
                break;
            }
            if (jVar != null) {
                this.S = ((y) jVar.i()).S;
            }
        }
        if (this.S == -100) {
            String name = this.f1691j.getClass().getName();
            l.k kVar2 = f1680h0;
            Integer num = (Integer) kVar2.getOrDefault(name, null);
            if (num != null) {
                this.S = num.intValue();
                kVar2.remove(this.f1691j.getClass().getName());
            }
        }
        if (window != null) {
            u(window);
        }
        i.t.d();
    }

    public static y.e v(Context context) {
        y.e eVar;
        y.e eVar2;
        if (Build.VERSION.SDK_INT >= 33 || (eVar = o.f1649c) == null) {
            return null;
        }
        y.f fVar = eVar.f4652a;
        y.e eVarB = s.b(context.getApplicationContext().getResources().getConfiguration());
        if (eVar.b()) {
            eVar2 = y.e.b;
        } else {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            int i3 = 0;
            while (i3 < eVarB.f4652a.f4653a.size() + fVar.f4653a.size()) {
                Locale locale = i3 < fVar.f4653a.size() ? fVar.f4653a.get(i3) : eVarB.f4652a.f4653a.get(i3 - fVar.f4653a.size());
                if (locale != null) {
                    linkedHashSet.add(locale);
                }
                i3++;
            }
            eVar2 = new y.e(new y.f(y.d.a((Locale[]) linkedHashSet.toArray(new Locale[linkedHashSet.size()]))));
        }
        return eVar2.b() ? eVarB : eVar2;
    }

    public static Configuration z(Context context, int i3, y.e eVar, Configuration configuration, boolean z2) {
        int i4;
        if (i3 == 1) {
            i4 = 16;
        } else if (i3 != 2) {
            i4 = z2 ? 0 : context.getApplicationContext().getResources().getConfiguration().uiMode & 48;
        } else {
            i4 = 32;
        }
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i4 | (configuration2.uiMode & (-49));
        if (eVar != null) {
            s.d(configuration2, eVar);
        }
        return configuration2;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0148 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:19:0x0039  */
    /* JADX WARN: Code duplicated, block: B:21:0x0044 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:22:0x0046 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x004a  */
    /* JADX WARN: Code duplicated, block: B:26:0x0050  */
    /* JADX WARN: Code duplicated, block: B:28:0x0058  */
    /* JADX WARN: Code duplicated, block: B:30:0x005c  */
    /* JADX WARN: Code duplicated, block: B:33:0x0065  */
    /* JADX WARN: Code duplicated, block: B:36:0x0069 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:37:0x006b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:39:0x006f  */
    /* JADX WARN: Code duplicated, block: B:42:0x0075  */
    /* JADX WARN: Code duplicated, block: B:44:0x007f  */
    /* JADX WARN: Code duplicated, block: B:76:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:78:0x0103  */
    /* JADX WARN: Code duplicated, block: B:89:0x011d  */
    /* JADX WARN: Code duplicated, block: B:93:0x0127  */
    /* JADX WARN: Code duplicated, block: B:95:0x0135  */
    /* JADX WARN: Code duplicated, block: B:97:0x0139  */
    /* JADX WARN: Code duplicated, block: B:99:0x0141  */
    public final boolean A(KeyEvent keyEvent) {
        int keyCode;
        x xVarF;
        i1 i1Var;
        Context context;
        boolean z2;
        boolean z3;
        boolean zM;
        AudioManager audioManager;
        Toolbar toolbar;
        ActionMenuView actionMenuView;
        i.j jVar;
        i.j jVar2;
        i.j jVar3;
        x xVarF2;
        Object obj = this.f1691j;
        if (((obj instanceof c0.k) || (obj instanceof i)) && this.f1693l.getDecorView() != null) {
            WeakHashMap weakHashMap = p0.f727a;
        }
        if (keyEvent.getKeyCode() == 82) {
            u uVar = this.f1694m;
            Window.Callback callback = this.f1693l.getCallback();
            uVar.getClass();
            try {
                uVar.f1659c = true;
                boolean zDispatchKeyEvent = callback.dispatchKeyEvent(keyEvent);
                uVar.f1659c = false;
                if (!zDispatchKeyEvent) {
                    keyCode = keyEvent.getKeyCode();
                    if (keyEvent.getAction() == 0) {
                        if (keyCode != 4) {
                            this.N = (keyEvent.getFlags() & 128) != 0;
                            return false;
                        }
                        if (keyCode == 82) {
                            if (keyEvent.getRepeatCount() == 0) {
                                xVarF2 = F(0);
                                if (!xVarF2.f1676m) {
                                    M(xVarF2, keyEvent);
                                    return true;
                                }
                            }
                        }
                        return false;
                    }
                    if (keyCode != 4) {
                        if (keyCode == 82) {
                            if (this.f1702u == null) {
                                xVarF = F(0);
                                i1Var = this.f1699r;
                                context = this.f1692k;
                                if (i1Var != null) {
                                    ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) i1Var;
                                    actionBarOverlayLayout.k();
                                    toolbar = ((l3) actionBarOverlayLayout.f158e).f2082a;
                                    if (toolbar.getVisibility() == 0 || (actionMenuView = toolbar.f220a) == null || !actionMenuView.f182s || ViewConfiguration.get(context).hasPermanentMenuKey()) {
                                        z2 = xVarF.f1676m;
                                        if (!z2 || xVarF.f1675l) {
                                            y(xVarF, true);
                                            z3 = z2;
                                        } else {
                                            if (xVarF.f1674k) {
                                                if (xVarF.f1678o) {
                                                    xVarF.f1674k = false;
                                                    zM = M(xVarF, keyEvent);
                                                } else {
                                                    zM = true;
                                                }
                                                if (zM) {
                                                    K(xVarF, keyEvent);
                                                    z3 = true;
                                                }
                                            }
                                            z3 = false;
                                        }
                                    } else {
                                        ActionBarOverlayLayout actionBarOverlayLayout2 = (ActionBarOverlayLayout) this.f1699r;
                                        actionBarOverlayLayout2.k();
                                        ActionMenuView actionMenuView2 = ((l3) actionBarOverlayLayout2.f158e).f2082a.f220a;
                                        if (actionMenuView2 == null || (jVar2 = actionMenuView2.f183t) == null || !jVar2.f()) {
                                            if (!this.Q && M(xVarF, keyEvent)) {
                                                ActionBarOverlayLayout actionBarOverlayLayout3 = (ActionBarOverlayLayout) this.f1699r;
                                                actionBarOverlayLayout3.k();
                                                ActionMenuView actionMenuView3 = ((l3) actionBarOverlayLayout3.f158e).f2082a.f220a;
                                                if (actionMenuView3 != null && (jVar = actionMenuView3.f183t) != null && jVar.l()) {
                                                    z3 = true;
                                                }
                                            }
                                            z3 = false;
                                        } else {
                                            ActionBarOverlayLayout actionBarOverlayLayout4 = (ActionBarOverlayLayout) this.f1699r;
                                            actionBarOverlayLayout4.k();
                                            ActionMenuView actionMenuView4 = ((l3) actionBarOverlayLayout4.f158e).f2082a.f220a;
                                            if (actionMenuView4 == null || (jVar3 = actionMenuView4.f183t) == null || !jVar3.d()) {
                                                z3 = false;
                                            } else {
                                                z3 = true;
                                            }
                                        }
                                    }
                                } else {
                                    z2 = xVarF.f1676m;
                                    if (z2) {
                                    }
                                    y(xVarF, true);
                                    z3 = z2;
                                }
                                if (z3) {
                                    audioManager = (AudioManager) context.getApplicationContext().getSystemService("audio");
                                    if (audioManager != null) {
                                        audioManager.playSoundEffect(0);
                                        return true;
                                    }
                                    Log.w("AppCompatDelegate", "Couldn't get audio manager");
                                    return true;
                                }
                            }
                        }
                        return false;
                    }
                    if (J()) {
                        return false;
                    }
                }
            } catch (Throwable th) {
                uVar.f1659c = false;
                throw th;
            }
        } else {
            keyCode = keyEvent.getKeyCode();
            if (keyEvent.getAction() == 0) {
                if (keyCode != 4) {
                    this.N = (keyEvent.getFlags() & 128) != 0;
                    return false;
                }
                if (keyCode == 82) {
                    if (keyEvent.getRepeatCount() == 0) {
                        xVarF2 = F(0);
                        if (!xVarF2.f1676m) {
                            M(xVarF2, keyEvent);
                            return true;
                        }
                    }
                }
                return false;
            }
            if (keyCode != 4) {
                if (keyCode == 82) {
                    if (this.f1702u == null) {
                        xVarF = F(0);
                        i1Var = this.f1699r;
                        context = this.f1692k;
                        if (i1Var != null) {
                            ActionBarOverlayLayout actionBarOverlayLayout5 = (ActionBarOverlayLayout) i1Var;
                            actionBarOverlayLayout5.k();
                            toolbar = ((l3) actionBarOverlayLayout5.f158e).f2082a;
                            if (toolbar.getVisibility() == 0) {
                                z2 = xVarF.f1676m;
                                if (z2) {
                                }
                                y(xVarF, true);
                                z3 = z2;
                            } else {
                                z2 = xVarF.f1676m;
                                if (z2) {
                                }
                                y(xVarF, true);
                                z3 = z2;
                            }
                        } else {
                            z2 = xVarF.f1676m;
                            if (z2) {
                            }
                            y(xVarF, true);
                            z3 = z2;
                        }
                        if (z3) {
                            audioManager = (AudioManager) context.getApplicationContext().getSystemService("audio");
                            if (audioManager != null) {
                                audioManager.playSoundEffect(0);
                                return true;
                            }
                            Log.w("AppCompatDelegate", "Couldn't get audio manager");
                            return true;
                        }
                    }
                }
                return false;
            }
            if (J()) {
                return false;
            }
        }
        return true;
    }

    public final void B(int i3) {
        x xVarF = F(i3);
        if (xVarF.f1671h != null) {
            Bundle bundle = new Bundle();
            xVarF.f1671h.t(bundle);
            if (bundle.size() > 0) {
                xVarF.f1679p = bundle;
            }
            xVarF.f1671h.w();
            xVarF.f1671h.clear();
        }
        xVarF.f1678o = true;
        xVarF.f1677n = true;
        if ((i3 == 108 || i3 == 0) && this.f1699r != null) {
            x xVarF2 = F(0);
            xVarF2.f1674k = false;
            M(xVarF2, null);
        }
    }

    public final void C() {
        ViewGroup viewGroup;
        if (this.f1707z) {
            return;
        }
        Context context = this.f1692k;
        int[] iArr = d.a.f1503j;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(iArr);
        if (!typedArrayObtainStyledAttributes.hasValue(117)) {
            typedArrayObtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        int i3 = 0;
        int i4 = 1;
        if (typedArrayObtainStyledAttributes.getBoolean(126, false)) {
            l(1);
        } else if (typedArrayObtainStyledAttributes.getBoolean(117, false)) {
            l(108);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(118, false)) {
            l(109);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(119, false)) {
            l(10);
        }
        this.I = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        D();
        this.f1693l.getDecorView();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        if (this.J) {
            viewGroup = this.H ? (ViewGroup) layoutInflaterFrom.inflate(com.ex.auto.R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) layoutInflaterFrom.inflate(com.ex.auto.R.layout.abc_screen_simple, (ViewGroup) null);
        } else if (this.I) {
            viewGroup = (ViewGroup) layoutInflaterFrom.inflate(com.ex.auto.R.layout.abc_dialog_title_material, (ViewGroup) null);
            this.G = false;
            this.F = false;
        } else if (this.F) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(com.ex.auto.R.attr.actionBarTheme, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new g.d(context, typedValue.resourceId) : context).inflate(com.ex.auto.R.layout.abc_screen_toolbar, (ViewGroup) null);
            i1 i1Var = (i1) viewGroup.findViewById(com.ex.auto.R.id.decor_content_parent);
            this.f1699r = i1Var;
            i1Var.setWindowCallback(this.f1693l.getCallback());
            if (this.G) {
                ((ActionBarOverlayLayout) this.f1699r).j(109);
            }
            if (this.D) {
                ((ActionBarOverlayLayout) this.f1699r).j(2);
            }
            if (this.E) {
                ((ActionBarOverlayLayout) this.f1699r).j(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.F + ", windowActionBarOverlay: " + this.G + ", android:windowIsFloating: " + this.I + ", windowActionModeOverlay: " + this.H + ", windowNoTitle: " + this.J + " }");
        }
        q qVar = new q(this, i3);
        WeakHashMap weakHashMap = p0.f727a;
        c0.f0.u(viewGroup, qVar);
        if (this.f1699r == null) {
            this.B = (TextView) viewGroup.findViewById(com.ex.auto.R.id.title);
        }
        Method method = p3.f2123a;
        try {
            Method method2 = viewGroup.getClass().getMethod("makeOptionalFitsSystemWindows", null);
            if (!method2.isAccessible()) {
                method2.setAccessible(true);
            }
            method2.invoke(viewGroup, null);
        } catch (IllegalAccessException e3) {
            Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e3);
        } catch (NoSuchMethodException unused) {
            Log.d("ViewUtils", "Could not find method makeOptionalFitsSystemWindows. Oh well...");
        } catch (InvocationTargetException e4) {
            Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e4);
        }
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(com.ex.auto.R.id.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.f1693l.findViewById(R.id.content);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.f1693l.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new q(this, i4));
        this.A = viewGroup;
        Object obj = this.f1691j;
        CharSequence title = obj instanceof Activity ? ((Activity) obj).getTitle() : this.f1698q;
        if (!TextUtils.isEmpty(title)) {
            i1 i1Var2 = this.f1699r;
            if (i1Var2 != null) {
                i1Var2.setWindowTitle(title);
            } else {
                k0 k0Var = this.f1696o;
                if (k0Var != null) {
                    l3 l3Var = (l3) k0Var.f1628e;
                    if (!l3Var.f2086g) {
                        Toolbar toolbar = l3Var.f2082a;
                        l3Var.f2087h = title;
                        if ((l3Var.b & 8) != 0) {
                            toolbar.setTitle(title);
                            if (l3Var.f2086g) {
                                p0.j(toolbar.getRootView(), title);
                            }
                        }
                    }
                } else {
                    TextView textView = this.B;
                    if (textView != null) {
                        textView.setText(title);
                    }
                }
            }
        }
        ContentFrameLayout contentFrameLayout2 = (ContentFrameLayout) this.A.findViewById(R.id.content);
        View decorView = this.f1693l.getDecorView();
        contentFrameLayout2.f197g.set(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        WeakHashMap weakHashMap2 = p0.f727a;
        if (c0.c0.c(contentFrameLayout2)) {
            contentFrameLayout2.requestLayout();
        }
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(iArr);
        typedArrayObtainStyledAttributes2.getValue(124, contentFrameLayout2.getMinWidthMajor());
        typedArrayObtainStyledAttributes2.getValue(125, contentFrameLayout2.getMinWidthMinor());
        if (typedArrayObtainStyledAttributes2.hasValue(122)) {
            typedArrayObtainStyledAttributes2.getValue(122, contentFrameLayout2.getFixedWidthMajor());
        }
        if (typedArrayObtainStyledAttributes2.hasValue(123)) {
            typedArrayObtainStyledAttributes2.getValue(123, contentFrameLayout2.getFixedWidthMinor());
        }
        if (typedArrayObtainStyledAttributes2.hasValue(120)) {
            typedArrayObtainStyledAttributes2.getValue(120, contentFrameLayout2.getFixedHeightMajor());
        }
        if (typedArrayObtainStyledAttributes2.hasValue(121)) {
            typedArrayObtainStyledAttributes2.getValue(121, contentFrameLayout2.getFixedHeightMinor());
        }
        typedArrayObtainStyledAttributes2.recycle();
        contentFrameLayout2.requestLayout();
        this.f1707z = true;
        x xVarF = F(0);
        if (this.Q || xVarF.f1671h != null) {
            return;
        }
        H(108);
    }

    public final void D() {
        if (this.f1693l == null) {
            Object obj = this.f1691j;
            if (obj instanceof Activity) {
                u(((Activity) obj).getWindow());
            }
        }
        if (this.f1693l == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    public final androidx.fragment.app.h E(Context context) {
        if (this.W == null) {
            if (androidx.fragment.app.f.f411e == null) {
                Context applicationContext = context.getApplicationContext();
                androidx.fragment.app.f.f411e = new androidx.fragment.app.f(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
            }
            this.W = new v(this, androidx.fragment.app.f.f411e);
        }
        return this.W;
    }

    public final x F(int i3) {
        x[] xVarArr = this.L;
        if (xVarArr == null || xVarArr.length <= i3) {
            x[] xVarArr2 = new x[i3 + 1];
            if (xVarArr != null) {
                System.arraycopy(xVarArr, 0, xVarArr2, 0, xVarArr.length);
            }
            this.L = xVarArr2;
            xVarArr = xVarArr2;
        }
        x xVar = xVarArr[i3];
        if (xVar != null) {
            return xVar;
        }
        x xVar2 = new x();
        xVar2.f1666a = i3;
        xVar2.f1677n = false;
        xVarArr[i3] = xVar2;
        return xVar2;
    }

    public final void G() {
        C();
        if (this.F && this.f1696o == null) {
            Object obj = this.f1691j;
            if (obj instanceof Activity) {
                this.f1696o = new k0((Activity) obj, this.G);
            } else if (obj instanceof Dialog) {
                this.f1696o = new k0((Dialog) obj);
            }
            k0 k0Var = this.f1696o;
            if (k0Var != null) {
                k0Var.h0(this.f1685b0);
            }
        }
    }

    public final void H(int i3) {
        this.Z = (1 << i3) | this.Z;
        if (this.Y) {
            return;
        }
        View decorView = this.f1693l.getDecorView();
        WeakHashMap weakHashMap = p0.f727a;
        c0.a0.m(decorView, this.f1684a0);
        this.Y = true;
    }

    public final int I(Context context, int i3) {
        if (i3 != -100) {
            if (i3 != -1) {
                if (i3 != 0) {
                    if (i3 != 1 && i3 != 2) {
                        if (i3 != 3) {
                            throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                        }
                        if (this.X == null) {
                            this.X = new v(this, context);
                        }
                        return this.X.f();
                    }
                } else if (((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() != 0) {
                    return E(context).f();
                }
            }
            return i3;
        }
        return -1;
    }

    public final boolean J() {
        j1 j1Var;
        g3 g3Var;
        boolean z2 = this.N;
        this.N = false;
        x xVarF = F(0);
        if (!xVarF.f1676m) {
            g.a aVar = this.f1702u;
            if (aVar != null) {
                aVar.b();
                return true;
            }
            G();
            k0 k0Var = this.f1696o;
            if (k0Var == null || (j1Var = k0Var.f1628e) == null || (g3Var = ((l3) j1Var).f2082a.L) == null || g3Var.b == null) {
                return false;
            }
            g3 g3Var2 = ((l3) j1Var).f2082a.L;
            h.o oVar = g3Var2 == null ? null : g3Var2.b;
            if (oVar != null) {
                oVar.collapseActionView();
            }
        } else if (!z2) {
            y(xVarF, true);
            return true;
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:105:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0176, code lost:
    
        if (r2.f.getCount() > 0) goto L88;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void K(e.x r18, android.view.KeyEvent r19) {
        /*
            Method dump skipped, instruction units count: 474
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: e.y.K(e.x, android.view.KeyEvent):void");
    }

    public final boolean L(x xVar, int i3, KeyEvent keyEvent) {
        h.m mVar;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((xVar.f1674k || M(xVar, keyEvent)) && (mVar = xVar.f1671h) != null) {
            return mVar.performShortcut(i3, keyEvent, 1);
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:59:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:64:0x00da  */
    /* JADX WARN: Code duplicated, block: B:68:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:71:0x00fd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:72:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:79:0x0114  */
    public final boolean M(x xVar, KeyEvent keyEvent) {
        h.m mVar;
        i1 i1Var;
        i1 i1Var2;
        Resources.Theme themeNewTheme;
        i1 i1Var3;
        i1 i1Var4;
        if (!this.Q) {
            boolean z2 = xVar.f1674k;
            int i3 = xVar.f1666a;
            if (z2) {
                return true;
            }
            x xVar2 = this.M;
            if (xVar2 != null && xVar2 != xVar) {
                y(xVar2, false);
            }
            Window.Callback callback = this.f1693l.getCallback();
            if (callback != null) {
                xVar.f1670g = callback.onCreatePanelView(i3);
            }
            boolean z3 = i3 == 0 || i3 == 108;
            if (z3 && (i1Var4 = this.f1699r) != null) {
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) i1Var4;
                actionBarOverlayLayout.k();
                ((l3) actionBarOverlayLayout.f158e).f2091l = true;
            }
            if (xVar.f1670g == null) {
                h.m mVar2 = xVar.f1671h;
                if (mVar2 == null || xVar.f1678o) {
                    if (mVar2 == null) {
                        Context context = this.f1692k;
                        if ((i3 == 0 || i3 == 108) && this.f1699r != null) {
                            TypedValue typedValue = new TypedValue();
                            Resources.Theme theme = context.getTheme();
                            theme.resolveAttribute(com.ex.auto.R.attr.actionBarTheme, typedValue, true);
                            if (typedValue.resourceId != 0) {
                                themeNewTheme = context.getResources().newTheme();
                                themeNewTheme.setTo(theme);
                                themeNewTheme.applyStyle(typedValue.resourceId, true);
                                themeNewTheme.resolveAttribute(com.ex.auto.R.attr.actionBarWidgetTheme, typedValue, true);
                            } else {
                                theme.resolveAttribute(com.ex.auto.R.attr.actionBarWidgetTheme, typedValue, true);
                                themeNewTheme = null;
                            }
                            if (typedValue.resourceId != 0) {
                                if (themeNewTheme == null) {
                                    themeNewTheme = context.getResources().newTheme();
                                    themeNewTheme.setTo(theme);
                                }
                                themeNewTheme.applyStyle(typedValue.resourceId, true);
                            }
                            if (themeNewTheme != null) {
                                g.d dVar = new g.d(context, 0);
                                dVar.getTheme().setTo(themeNewTheme);
                                context = dVar;
                            }
                        }
                        h.m mVar3 = new h.m(context);
                        mVar3.f1889e = this;
                        h.m mVar4 = xVar.f1671h;
                        if (mVar3 != mVar4) {
                            if (mVar4 != null) {
                                mVar4.r(xVar.f1672i);
                            }
                            xVar.f1671h = mVar3;
                            h.i iVar = xVar.f1672i;
                            if (iVar != null) {
                                mVar3.b(iVar, mVar3.f1886a);
                            }
                        }
                        if (xVar.f1671h != null) {
                            if (z3 && (i1Var2 = this.f1699r) != null) {
                                if (this.f1700s == null) {
                                    this.f1700s = new q(this, 2);
                                }
                                ((ActionBarOverlayLayout) i1Var2).l(xVar.f1671h, this.f1700s);
                            }
                            xVar.f1671h.w();
                            if (callback.onCreatePanelMenu(i3, xVar.f1671h)) {
                                xVar.f1678o = false;
                            } else {
                                mVar = xVar.f1671h;
                                if (mVar != null) {
                                    if (mVar != null) {
                                        mVar.r(xVar.f1672i);
                                    }
                                    xVar.f1671h = null;
                                }
                                if (z3 && (i1Var = this.f1699r) != null) {
                                    ((ActionBarOverlayLayout) i1Var).l(null, this.f1700s);
                                }
                            }
                        }
                    } else {
                        if (z3) {
                            if (this.f1700s == null) {
                                this.f1700s = new q(this, 2);
                            }
                            ((ActionBarOverlayLayout) i1Var2).l(xVar.f1671h, this.f1700s);
                        }
                        xVar.f1671h.w();
                        if (callback.onCreatePanelMenu(i3, xVar.f1671h)) {
                            mVar = xVar.f1671h;
                            if (mVar != null) {
                                if (mVar != null) {
                                    mVar.r(xVar.f1672i);
                                }
                                xVar.f1671h = null;
                            }
                            if (z3) {
                                ((ActionBarOverlayLayout) i1Var).l(null, this.f1700s);
                            }
                        } else {
                            xVar.f1678o = false;
                        }
                    }
                }
                xVar.f1671h.w();
                Bundle bundle = xVar.f1679p;
                if (bundle != null) {
                    xVar.f1671h.s(bundle);
                    xVar.f1679p = null;
                }
                if (!callback.onPreparePanel(0, xVar.f1670g, xVar.f1671h)) {
                    if (z3 && (i1Var3 = this.f1699r) != null) {
                        ((ActionBarOverlayLayout) i1Var3).l(null, this.f1700s);
                    }
                    xVar.f1671h.v();
                    return false;
                }
                xVar.f1671h.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
                xVar.f1671h.v();
            }
            xVar.f1674k = true;
            xVar.f1675l = false;
            this.M = xVar;
            return true;
        }
        return false;
    }

    public final void N() {
        if (this.f1707z) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    public final void O() {
        OnBackInvokedCallback onBackInvokedCallback;
        if (Build.VERSION.SDK_INT >= 33) {
            boolean z2 = false;
            if (this.f1689f0 != null && (F(0).f1676m || this.f1702u != null)) {
                z2 = true;
            }
            if (z2 && this.f1690g0 == null) {
                this.f1690g0 = t.b(this.f1689f0, this);
            } else {
                if (z2 || (onBackInvokedCallback = this.f1690g0) == null) {
                    return;
                }
                t.c(this.f1689f0, onBackInvokedCallback);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x002a  */
    @Override // h.k
    public final boolean a(h.m mVar, MenuItem menuItem) {
        x xVar;
        Window.Callback callback = this.f1693l.getCallback();
        if (callback != null && !this.Q) {
            h.m mVarK = mVar.k();
            x[] xVarArr = this.L;
            int length = xVarArr != null ? xVarArr.length : 0;
            for (int i3 = 0; i3 < length; i3++) {
                xVar = xVarArr[i3];
                if (xVar != null && xVar.f1671h == mVarK) {
                    if (xVar != null) {
                        return callback.onMenuItemSelected(xVar.f1666a, menuItem);
                    }
                }
            }
            xVar = null;
            if (xVar != null) {
                return callback.onMenuItemSelected(xVar.f1666a, menuItem);
            }
        }
        return false;
    }

    @Override // e.o
    public final void e() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f1692k);
        if (layoutInflaterFrom.getFactory() == null) {
            layoutInflaterFrom.setFactory2(this);
        } else {
            if (layoutInflaterFrom.getFactory2() instanceof y) {
                return;
            }
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0048, code lost:
    
        if (r6.f() != false) goto L20;
     */
    @Override // h.k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f(h.m r6) {
        /*
            Method dump skipped, instruction units count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: e.y.f(h.m):void");
    }

    @Override // e.o
    public final void g() {
        if (this.f1696o != null) {
            G();
            this.f1696o.getClass();
            H(0);
        }
    }

    @Override // e.o
    public final void i() {
        String strA;
        this.O = true;
        t(false, true);
        D();
        Object obj = this.f1691j;
        if (obj instanceof Activity) {
            try {
                Activity activity = (Activity) obj;
                try {
                    strA = a1.b.A(activity, activity.getComponentName());
                } catch (PackageManager.NameNotFoundException e3) {
                    throw new IllegalArgumentException(e3);
                }
            } catch (IllegalArgumentException unused) {
                strA = null;
            }
            if (strA != null) {
                k0 k0Var = this.f1696o;
                if (k0Var == null) {
                    this.f1685b0 = true;
                } else {
                    k0Var.h0(true);
                }
            }
            synchronized (o.f1653h) {
                o.k(this);
                o.f1652g.add(new WeakReference(this));
            }
        }
        this.R = new Configuration(this.f1692k.getResources().getConfiguration());
        this.P = true;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x004d  */
    @Override // e.o
    public final void j() {
        if (this.f1691j instanceof Activity) {
            synchronized (o.f1653h) {
                o.k(this);
            }
        }
        if (this.Y) {
            this.f1693l.getDecorView().removeCallbacks(this.f1684a0);
        }
        this.Q = true;
        if (this.S != -100) {
            Object obj = this.f1691j;
            if ((obj instanceof Activity) && ((Activity) obj).isChangingConfigurations()) {
                f1680h0.put(this.f1691j.getClass().getName(), Integer.valueOf(this.S));
            } else {
                f1680h0.remove(this.f1691j.getClass().getName());
            }
        } else {
            f1680h0.remove(this.f1691j.getClass().getName());
        }
        v vVar = this.W;
        if (vVar != null) {
            vVar.c();
        }
        v vVar2 = this.X;
        if (vVar2 != null) {
            vVar2.c();
        }
    }

    @Override // e.o
    public final boolean l(int i3) {
        if (i3 == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            i3 = 108;
        } else if (i3 == 9) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            i3 = 109;
        }
        if (this.J && i3 == 108) {
            return false;
        }
        if (this.F && i3 == 1) {
            this.F = false;
        }
        if (i3 == 1) {
            N();
            this.J = true;
            return true;
        }
        if (i3 == 2) {
            N();
            this.D = true;
            return true;
        }
        if (i3 == 5) {
            N();
            this.E = true;
            return true;
        }
        if (i3 == 10) {
            N();
            this.H = true;
            return true;
        }
        if (i3 == 108) {
            N();
            this.F = true;
            return true;
        }
        if (i3 != 109) {
            return this.f1693l.requestFeature(i3);
        }
        N();
        this.G = true;
        return true;
    }

    @Override // e.o
    public final void n(int i3) {
        C();
        ViewGroup viewGroup = (ViewGroup) this.A.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f1692k).inflate(i3, viewGroup);
        this.f1694m.a(this.f1693l.getCallback());
    }

    @Override // e.o
    public final void o(View view) {
        C();
        ViewGroup viewGroup = (ViewGroup) this.A.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f1694m.a(this.f1693l.getCallback());
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View e0Var;
        View view2 = null;
        if (this.f1688e0 == null) {
            int[] iArr = d.a.f1503j;
            Context context2 = this.f1692k;
            String string = context2.obtainStyledAttributes(iArr).getString(116);
            if (string == null) {
                this.f1688e0 = new b0();
            } else {
                try {
                    this.f1688e0 = (b0) context2.getClassLoader().loadClass(string).getDeclaredConstructor(null).newInstance(null);
                } catch (Throwable th) {
                    Log.i("AppCompatDelegate", "Failed to instantiate custom view inflater " + string + ". Falling back to default.", th);
                    this.f1688e0 = new b0();
                }
            }
        }
        b0 b0Var = this.f1688e0;
        int i3 = n3.f2111a;
        b0Var.getClass();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.a.f1518y, 0, 0);
        byte b = 4;
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(4, 0);
        if (resourceId != 0) {
            Log.i("AppCompatViewInflater", "app:theme is now deprecated. Please move to using android:theme instead.");
        }
        typedArrayObtainStyledAttributes.recycle();
        Context dVar = (resourceId == 0 || ((context instanceof g.d) && ((g.d) context).f1744a == resourceId)) ? context : new g.d(context, resourceId);
        str.getClass();
        switch (str.hashCode()) {
            case -1946472170:
                b = !str.equals("RatingBar") ? (byte) -1 : (byte) 0;
                break;
            case -1455429095:
                b = !str.equals("CheckedTextView") ? (byte) -1 : (byte) 1;
                break;
            case -1346021293:
                b = !str.equals("MultiAutoCompleteTextView") ? (byte) -1 : (byte) 2;
                break;
            case -938935918:
                b = !str.equals("TextView") ? (byte) -1 : (byte) 3;
                break;
            case -937446323:
                if (!str.equals("ImageButton")) {
                    b = -1;
                }
                break;
            case -658531749:
                b = !str.equals("SeekBar") ? (byte) -1 : (byte) 5;
                break;
            case -339785223:
                b = !str.equals("Spinner") ? (byte) -1 : (byte) 6;
                break;
            case 776382189:
                b = !str.equals("RadioButton") ? (byte) -1 : (byte) 7;
                break;
            case 799298502:
                b = !str.equals("ToggleButton") ? (byte) -1 : (byte) 8;
                break;
            case 1125864064:
                b = !str.equals("ImageView") ? (byte) -1 : (byte) 9;
                break;
            case 1413872058:
                b = !str.equals("AutoCompleteTextView") ? (byte) -1 : (byte) 10;
                break;
            case 1601505219:
                b = !str.equals("CheckBox") ? (byte) -1 : (byte) 11;
                break;
            case 1666676343:
                b = !str.equals("EditText") ? (byte) -1 : (byte) 12;
                break;
            case 2001146706:
                b = !str.equals("Button") ? (byte) -1 : (byte) 13;
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                e0Var = new i.e0(dVar, attributeSet);
                break;
            case 1:
                e0Var = new i.q(dVar, attributeSet);
                break;
            case 2:
                e0Var = new i.a0(dVar, attributeSet);
                break;
            case 3:
                e0Var = b0Var.e(dVar, attributeSet);
                break;
            case 4:
                e0Var = new i.x(dVar, attributeSet, com.ex.auto.R.attr.imageButtonStyle);
                break;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                e0Var = new i.g0(dVar, attributeSet);
                break;
            case MusicClient.TYPE_GESTURE /* 6 */:
                e0Var = new t0(dVar, attributeSet);
                break;
            case PlaybackState.STATE_ERROR /* 7 */:
                e0Var = b0Var.d(dVar, attributeSet);
                break;
            case 8:
                e0Var = new g1(dVar, attributeSet);
                break;
            case 9:
                e0Var = new i.z(dVar, attributeSet, 0);
                break;
            case 10:
                e0Var = b0Var.a(dVar, attributeSet);
                break;
            case 11:
                e0Var = b0Var.c(dVar, attributeSet);
                break;
            case 12:
                e0Var = new i.v(dVar, attributeSet);
                break;
            case 13:
                e0Var = b0Var.b(dVar, attributeSet);
                break;
            default:
                e0Var = null;
                break;
        }
        if (e0Var != null || context == dVar) {
            view2 = e0Var;
        } else {
            Object[] objArr = b0Var.f1549a;
            if (str.equals("view")) {
                str = attributeSet.getAttributeValue(null, "class");
            }
            try {
                objArr[0] = dVar;
                objArr[1] = attributeSet;
                if (-1 == str.indexOf(46)) {
                    int i4 = 0;
                    while (true) {
                        String[] strArr = b0.f1547g;
                        if (i4 < 3) {
                            View viewF = b0Var.f(dVar, str, strArr[i4]);
                            if (viewF != null) {
                                objArr[0] = null;
                                objArr[1] = null;
                                view2 = viewF;
                            } else {
                                i4++;
                            }
                        } else {
                            objArr[0] = null;
                            objArr[1] = null;
                        }
                    }
                } else {
                    View viewF2 = b0Var.f(dVar, str, null);
                    objArr[0] = null;
                    objArr[1] = null;
                    view2 = viewF2;
                }
            } catch (Exception unused) {
                objArr[0] = view2;
                objArr[1] = view2;
            } catch (Throwable th2) {
                objArr[0] = view2;
                objArr[1] = view2;
                throw th2;
            }
        }
        if (view2 != null) {
            Context context3 = view2.getContext();
            if (context3 instanceof ContextWrapper) {
                WeakHashMap weakHashMap = p0.f727a;
                if (c0.z.a(view2)) {
                    TypedArray typedArrayObtainStyledAttributes2 = context3.obtainStyledAttributes(attributeSet, b0.f1544c);
                    String string2 = typedArrayObtainStyledAttributes2.getString(0);
                    if (string2 != null) {
                        view2.setOnClickListener(new a0(view2, string2));
                    }
                    typedArrayObtainStyledAttributes2.recycle();
                }
            }
            if (Build.VERSION.SDK_INT <= 28) {
                TypedArray typedArrayObtainStyledAttributes3 = dVar.obtainStyledAttributes(attributeSet, b0.f1545d);
                if (typedArrayObtainStyledAttributes3.hasValue(0)) {
                    boolean z2 = typedArrayObtainStyledAttributes3.getBoolean(0, false);
                    WeakHashMap weakHashMap2 = p0.f727a;
                    new c0.w(com.ex.auto.R.id.tag_accessibility_heading, Boolean.class, 0, 28, 2).d(view2, Boolean.valueOf(z2));
                }
                typedArrayObtainStyledAttributes3.recycle();
                TypedArray typedArrayObtainStyledAttributes4 = dVar.obtainStyledAttributes(attributeSet, b0.f1546e);
                if (typedArrayObtainStyledAttributes4.hasValue(0)) {
                    p0.j(view2, typedArrayObtainStyledAttributes4.getString(0));
                }
                typedArrayObtainStyledAttributes4.recycle();
                TypedArray typedArrayObtainStyledAttributes5 = dVar.obtainStyledAttributes(attributeSet, b0.f);
                if (typedArrayObtainStyledAttributes5.hasValue(0)) {
                    boolean z3 = typedArrayObtainStyledAttributes5.getBoolean(0, false);
                    WeakHashMap weakHashMap3 = p0.f727a;
                    new c0.w(com.ex.auto.R.id.tag_screen_reader_focusable, Boolean.class, 0, 28, 0).d(view2, Boolean.valueOf(z3));
                }
                typedArrayObtainStyledAttributes5.recycle();
            }
        }
        return view2;
    }

    @Override // e.o
    public final void p(View view, ViewGroup.LayoutParams layoutParams) {
        C();
        ViewGroup viewGroup = (ViewGroup) this.A.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f1694m.a(this.f1693l.getCallback());
    }

    @Override // e.o
    public final void r(CharSequence charSequence) {
        this.f1698q = charSequence;
        i1 i1Var = this.f1699r;
        if (i1Var != null) {
            i1Var.setWindowTitle(charSequence);
            return;
        }
        k0 k0Var = this.f1696o;
        if (k0Var == null) {
            TextView textView = this.B;
            if (textView != null) {
                textView.setText(charSequence);
                return;
            }
            return;
        }
        l3 l3Var = (l3) k0Var.f1628e;
        if (l3Var.f2086g) {
            return;
        }
        Toolbar toolbar = l3Var.f2082a;
        l3Var.f2087h = charSequence;
        if ((l3Var.b & 8) != 0) {
            toolbar.setTitle(charSequence);
            if (l3Var.f2086g) {
                p0.j(toolbar.getRootView(), charSequence);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:62:0x00c8  */
    /* JADX WARN: Multi-variable type inference failed */
    public final boolean t(boolean z2, boolean z3) {
        int i3;
        boolean z4;
        if (this.Q) {
            return false;
        }
        int i4 = this.S;
        if (i4 == -100) {
            i4 = o.b;
        }
        Context context = this.f1692k;
        int I = I(context, i4);
        int i5 = Build.VERSION.SDK_INT;
        y.e eVarV = i5 < 33 ? v(context) : null;
        if (!z3 && eVarV != null) {
            eVarV = s.b(context.getResources().getConfiguration());
        }
        Configuration configurationZ = z(context, I, eVarV, null, false);
        boolean z5 = this.V;
        boolean z6 = true;
        Object obj = this.f1691j;
        if (z5 || !(obj instanceof Activity)) {
            this.V = true;
            i3 = this.U;
        } else {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                i3 = 0;
            } else {
                try {
                    ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(context, obj.getClass()), i5 >= 29 ? 269221888 : 786432);
                    if (activityInfo != null) {
                        this.U = activityInfo.configChanges;
                    }
                } catch (PackageManager.NameNotFoundException e3) {
                    Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", e3);
                    this.U = 0;
                }
                this.V = true;
                i3 = this.U;
            }
        }
        Configuration configuration = this.R;
        if (configuration == null) {
            configuration = context.getResources().getConfiguration();
        }
        int i6 = configuration.uiMode & 48;
        int i7 = configurationZ.uiMode & 48;
        y.e eVarB = s.b(configuration);
        y.e eVarB2 = eVarV == null ? null : s.b(configurationZ);
        int i8 = i6 != i7 ? 512 : 0;
        if (eVarB2 != null && !eVarB.equals(eVarB2)) {
            i8 |= 8196;
        }
        if (((~i3) & i8) != 0 && z2 && this.O && ((f1682j0 || this.P) && (obj instanceof Activity))) {
            Activity activity = (Activity) obj;
            if (activity.isChild()) {
                z4 = false;
            } else {
                activity.recreate();
                z4 = true;
            }
        } else {
            z4 = false;
        }
        if (z4 || i8 == 0) {
            z6 = z4;
        } else {
            boolean z7 = (i8 & i3) == i8;
            Resources resources = context.getResources();
            Configuration configuration2 = new Configuration(resources.getConfiguration());
            configuration2.uiMode = (resources.getConfiguration().uiMode & (-49)) | i7;
            if (eVarB2 != null) {
                s.d(configuration2, eVarB2);
            }
            resources.updateConfiguration(configuration2, null);
            int i9 = this.T;
            if (i9 != 0) {
                context.setTheme(i9);
                context.getTheme().applyStyle(this.T, true);
            }
            if (z7 && (obj instanceof Activity)) {
                Activity activity2 = (Activity) obj;
                if (activity2 instanceof androidx.lifecycle.q) {
                    if (((androidx.lifecycle.q) activity2).f().b.a(androidx.lifecycle.l.f579c)) {
                        activity2.onConfigurationChanged(configuration2);
                    }
                } else if (this.P && !this.Q) {
                    activity2.onConfigurationChanged(configuration2);
                }
            }
        }
        if (z6 && eVarB2 != null) {
            s.c(s.b(context.getResources().getConfiguration()));
        }
        if (i4 == 0) {
            E(context).i();
        } else {
            v vVar = this.W;
            if (vVar != null) {
                vVar.c();
            }
        }
        if (i4 == 3) {
            if (this.X == null) {
                this.X = new v(this, context);
            }
            this.X.i();
        } else {
            v vVar2 = this.X;
            if (vVar2 != null) {
                vVar2.c();
            }
        }
        return z6;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0074  */
    public final void u(Window window) {
        Drawable drawableD;
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        OnBackInvokedCallback onBackInvokedCallback;
        int resourceId;
        if (this.f1693l != null) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof u) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        u uVar = new u(this, callback);
        this.f1694m = uVar;
        window.setCallback(uVar);
        Context context = this.f1692k;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, f1681i0);
        if (!typedArrayObtainStyledAttributes.hasValue(0) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0)) == 0) {
            drawableD = null;
        } else {
            i.t tVarA = i.t.a();
            synchronized (tVarA) {
                drawableD = tVarA.f2150a.d(context, resourceId, true);
            }
        }
        if (drawableD != null) {
            window.setBackgroundDrawable(drawableD);
        }
        typedArrayObtainStyledAttributes.recycle();
        this.f1693l = window;
        if (Build.VERSION.SDK_INT < 33 || (onBackInvokedDispatcher = this.f1689f0) != null) {
            return;
        }
        Object obj = this.f1691j;
        if (onBackInvokedDispatcher != null && (onBackInvokedCallback = this.f1690g0) != null) {
            t.c(onBackInvokedDispatcher, onBackInvokedCallback);
            this.f1690g0 = null;
        }
        if (obj instanceof Activity) {
            Activity activity = (Activity) obj;
            if (activity.getWindow() != null) {
                this.f1689f0 = t.a(activity);
            } else {
                this.f1689f0 = null;
            }
        } else {
            this.f1689f0 = null;
        }
        O();
    }

    public final void w(int i3, x xVar, h.m mVar) {
        if (mVar == null) {
            if (xVar == null && i3 >= 0) {
                x[] xVarArr = this.L;
                if (i3 < xVarArr.length) {
                    xVar = xVarArr[i3];
                }
            }
            if (xVar != null) {
                mVar = xVar.f1671h;
            }
        }
        if ((xVar == null || xVar.f1676m) && !this.Q) {
            u uVar = this.f1694m;
            Window.Callback callback = this.f1693l.getCallback();
            uVar.getClass();
            try {
                uVar.f1660d = true;
                callback.onPanelClosed(i3, mVar);
            } finally {
                uVar.f1660d = false;
            }
        }
    }

    public final void x(h.m mVar) {
        i.j jVar;
        if (this.K) {
            return;
        }
        this.K = true;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) this.f1699r;
        actionBarOverlayLayout.k();
        ActionMenuView actionMenuView = ((l3) actionBarOverlayLayout.f158e).f2082a.f220a;
        if (actionMenuView != null && (jVar = actionMenuView.f183t) != null) {
            jVar.d();
            i.f fVar = jVar.f2064t;
            if (fVar != null && fVar.b()) {
                fVar.f1948i.dismiss();
            }
        }
        Window.Callback callback = this.f1693l.getCallback();
        if (callback != null && !this.Q) {
            callback.onPanelClosed(108, mVar);
        }
        this.K = false;
    }

    public final void y(x xVar, boolean z2) {
        w wVar;
        i1 i1Var;
        i.j jVar;
        if (z2 && xVar.f1666a == 0 && (i1Var = this.f1699r) != null) {
            ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) i1Var;
            actionBarOverlayLayout.k();
            ActionMenuView actionMenuView = ((l3) actionBarOverlayLayout.f158e).f2082a.f220a;
            if (actionMenuView != null && (jVar = actionMenuView.f183t) != null && jVar.f()) {
                x(xVar.f1671h);
                return;
            }
        }
        WindowManager windowManager = (WindowManager) this.f1692k.getSystemService("window");
        if (windowManager != null && xVar.f1676m && (wVar = xVar.f1669e) != null) {
            windowManager.removeView(wVar);
            if (z2) {
                w(xVar.f1666a, xVar, null);
            }
        }
        xVar.f1674k = false;
        xVar.f1675l = false;
        xVar.f1676m = false;
        xVar.f = null;
        xVar.f1677n = true;
        if (this.M == xVar) {
            this.M = null;
        }
        if (xVar.f1666a == 0) {
            O();
        }
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
