package e;

import android.R;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.Toolbar;
import c0.p0;
import c0.v0;
import c0.w0;
import i.j1;
import i.l3;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class k0 extends a1.b implements i.d {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final AccelerateInterpolator f1623y = new AccelerateInterpolator();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final DecelerateInterpolator f1624z = new DecelerateInterpolator();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f1625a;
    public Context b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ActionBarOverlayLayout f1626c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ActionBarContainer f1627d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public j1 f1628e;
    public ActionBarContextView f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final View f1629g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1630h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public j0 f1631i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public j0 f1632j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public androidx.activity.result.c f1633k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f1634l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ArrayList f1635m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f1636n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f1637o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f1638p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f1639q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f1640r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public g.k f1641s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f1642t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f1643u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final i0 f1644v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final i0 f1645w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final androidx.emoji2.text.m f1646x;

    public k0(Activity activity, boolean z2) {
        new ArrayList();
        this.f1635m = new ArrayList();
        this.f1636n = 0;
        this.f1637o = true;
        this.f1640r = true;
        this.f1644v = new i0(this, 0);
        this.f1645w = new i0(this, 1);
        this.f1646x = new androidx.emoji2.text.m(10, this);
        View decorView = activity.getWindow().getDecorView();
        g0(decorView);
        if (z2) {
            return;
        }
        this.f1629g = decorView.findViewById(R.id.content);
    }

    public final void e0(boolean z2) {
        w0 w0VarI;
        w0 w0VarI2;
        if (z2) {
            if (!this.f1639q) {
                this.f1639q = true;
                ActionBarOverlayLayout actionBarOverlayLayout = this.f1626c;
                if (actionBarOverlayLayout != null) {
                    actionBarOverlayLayout.setShowingForActionMode(true);
                }
                j0(false);
            }
        } else if (this.f1639q) {
            this.f1639q = false;
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.f1626c;
            if (actionBarOverlayLayout2 != null) {
                actionBarOverlayLayout2.setShowingForActionMode(false);
            }
            j0(false);
        }
        ActionBarContainer actionBarContainer = this.f1627d;
        WeakHashMap weakHashMap = p0.f727a;
        if (!c0.c0.c(actionBarContainer)) {
            if (z2) {
                ((l3) this.f1628e).f2082a.setVisibility(4);
                this.f.setVisibility(0);
                return;
            } else {
                ((l3) this.f1628e).f2082a.setVisibility(0);
                this.f.setVisibility(8);
                return;
            }
        }
        if (z2) {
            l3 l3Var = (l3) this.f1628e;
            w0VarI = p0.a(l3Var.f2082a);
            w0VarI.a(0.0f);
            w0VarI.c(100L);
            w0VarI.d(new g.j(l3Var, 4));
            w0VarI2 = this.f.i(0, 200L);
        } else {
            l3 l3Var2 = (l3) this.f1628e;
            w0 w0VarA = p0.a(l3Var2.f2082a);
            w0VarA.a(1.0f);
            w0VarA.c(200L);
            w0VarA.d(new g.j(l3Var2, 0));
            w0VarI = this.f.i(8, 100L);
            w0VarI2 = w0VarA;
        }
        g.k kVar = new g.k();
        ArrayList arrayList = kVar.f1787a;
        arrayList.add(w0VarI);
        View view = (View) w0VarI.f737a.get();
        long duration = view != null ? view.animate().getDuration() : 0L;
        View view2 = (View) w0VarI2.f737a.get();
        if (view2 != null) {
            view2.animate().setStartDelay(duration);
        }
        arrayList.add(w0VarI2);
        kVar.b();
    }

    public final Context f0() {
        if (this.b == null) {
            TypedValue typedValue = new TypedValue();
            this.f1625a.getTheme().resolveAttribute(com.ex.auto.R.attr.actionBarWidgetTheme, typedValue, true);
            int i3 = typedValue.resourceId;
            if (i3 != 0) {
                this.b = new ContextThemeWrapper(this.f1625a, i3);
            } else {
                this.b = this.f1625a;
            }
        }
        return this.b;
    }

    public final void g0(View view) {
        j1 wrapper;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(com.ex.auto.R.id.decor_content_parent);
        this.f1626c = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        KeyEvent.Callback callbackFindViewById = view.findViewById(com.ex.auto.R.id.action_bar);
        if (callbackFindViewById instanceof j1) {
            wrapper = (j1) callbackFindViewById;
        } else {
            if (!(callbackFindViewById instanceof Toolbar)) {
                throw new IllegalStateException("Can't make a decor toolbar out of ".concat(callbackFindViewById != null ? callbackFindViewById.getClass().getSimpleName() : "null"));
            }
            wrapper = ((Toolbar) callbackFindViewById).getWrapper();
        }
        this.f1628e = wrapper;
        this.f = (ActionBarContextView) view.findViewById(com.ex.auto.R.id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(com.ex.auto.R.id.action_bar_container);
        this.f1627d = actionBarContainer;
        j1 j1Var = this.f1628e;
        if (j1Var == null || this.f == null || actionBarContainer == null) {
            throw new IllegalStateException(k0.class.getSimpleName().concat(" can only be used with a compatible window decor layout"));
        }
        Context context = ((l3) j1Var).f2082a.getContext();
        this.f1625a = context;
        if ((((l3) this.f1628e).b & 4) != 0) {
            this.f1630h = true;
        }
        int i3 = context.getApplicationInfo().targetSdkVersion;
        this.f1628e.getClass();
        i0(context.getResources().getBoolean(com.ex.auto.R.bool.abc_action_bar_embed_tabs));
        TypedArray typedArrayObtainStyledAttributes = this.f1625a.obtainStyledAttributes(null, d.a.f1496a, com.ex.auto.R.attr.actionBarStyle, 0);
        if (typedArrayObtainStyledAttributes.getBoolean(14, false)) {
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.f1626c;
            if (!actionBarOverlayLayout2.f160h) {
                throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
            }
            this.f1643u = true;
            actionBarOverlayLayout2.setHideOnContentScrollEnabled(true);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(12, 0);
        if (dimensionPixelSize != 0) {
            ActionBarContainer actionBarContainer2 = this.f1627d;
            WeakHashMap weakHashMap = p0.f727a;
            c0.f0.s(actionBarContainer2, dimensionPixelSize);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void h0(boolean z2) {
        if (this.f1630h) {
            return;
        }
        int i3 = z2 ? 4 : 0;
        l3 l3Var = (l3) this.f1628e;
        int i4 = l3Var.b;
        this.f1630h = true;
        l3Var.a((i3 & 4) | (i4 & (-5)));
    }

    public final void i0(boolean z2) {
        if (z2) {
            this.f1627d.setTabContainer(null);
            ((l3) this.f1628e).getClass();
        } else {
            ((l3) this.f1628e).getClass();
            this.f1627d.setTabContainer(null);
        }
        this.f1628e.getClass();
        ((l3) this.f1628e).f2082a.setCollapsible(false);
        this.f1626c.setHasNonEmbeddedTabs(false);
    }

    public final void j0(boolean z2) {
        boolean z3 = this.f1638p;
        boolean z4 = this.f1639q;
        final androidx.emoji2.text.m mVar = this.f1646x;
        View view = this.f1629g;
        if (!z4 && z3) {
            if (this.f1640r) {
                this.f1640r = false;
                g.k kVar = this.f1641s;
                if (kVar != null) {
                    kVar.a();
                }
                int i3 = this.f1636n;
                i0 i0Var = this.f1644v;
                if (i3 != 0 || (!this.f1642t && !z2)) {
                    i0Var.b();
                    return;
                }
                this.f1627d.setAlpha(1.0f);
                this.f1627d.setTransitioning(true);
                g.k kVar2 = new g.k();
                float f = -this.f1627d.getHeight();
                if (z2) {
                    int[] iArr = {0, 0};
                    this.f1627d.getLocationInWindow(iArr);
                    f -= iArr[1];
                }
                w0 w0VarA = p0.a(this.f1627d);
                w0VarA.e(f);
                final View view2 = (View) w0VarA.f737a.get();
                if (view2 != null) {
                    v0.a(view2.animate(), mVar != null ? new ValueAnimator.AnimatorUpdateListener(view2) { // from class: c0.t0
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            ((View) ((e.k0) this.f732a.b).f1627d.getParent()).invalidate();
                        }
                    } : null);
                }
                boolean z5 = kVar2.f1790e;
                ArrayList arrayList = kVar2.f1787a;
                if (!z5) {
                    arrayList.add(w0VarA);
                }
                if (this.f1637o && view != null) {
                    w0 w0VarA2 = p0.a(view);
                    w0VarA2.e(f);
                    if (!kVar2.f1790e) {
                        arrayList.add(w0VarA2);
                    }
                }
                boolean z6 = kVar2.f1790e;
                if (!z6) {
                    kVar2.f1788c = f1623y;
                }
                if (!z6) {
                    kVar2.b = 250L;
                }
                if (!z6) {
                    kVar2.f1789d = i0Var;
                }
                this.f1641s = kVar2;
                kVar2.b();
                return;
            }
            return;
        }
        if (this.f1640r) {
            return;
        }
        this.f1640r = true;
        g.k kVar3 = this.f1641s;
        if (kVar3 != null) {
            kVar3.a();
        }
        this.f1627d.setVisibility(0);
        int i4 = this.f1636n;
        i0 i0Var2 = this.f1645w;
        if (i4 == 0 && (this.f1642t || z2)) {
            this.f1627d.setTranslationY(0.0f);
            float f3 = -this.f1627d.getHeight();
            if (z2) {
                int[] iArr2 = {0, 0};
                this.f1627d.getLocationInWindow(iArr2);
                f3 -= iArr2[1];
            }
            this.f1627d.setTranslationY(f3);
            g.k kVar4 = new g.k();
            w0 w0VarA3 = p0.a(this.f1627d);
            w0VarA3.e(0.0f);
            final View view3 = (View) w0VarA3.f737a.get();
            if (view3 != null) {
                v0.a(view3.animate(), mVar != null ? new ValueAnimator.AnimatorUpdateListener(view3) { // from class: c0.t0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        ((View) ((e.k0) this.f732a.b).f1627d.getParent()).invalidate();
                    }
                } : null);
            }
            boolean z7 = kVar4.f1790e;
            ArrayList arrayList2 = kVar4.f1787a;
            if (!z7) {
                arrayList2.add(w0VarA3);
            }
            if (this.f1637o && view != null) {
                view.setTranslationY(f3);
                w0 w0VarA4 = p0.a(view);
                w0VarA4.e(0.0f);
                if (!kVar4.f1790e) {
                    arrayList2.add(w0VarA4);
                }
            }
            boolean z8 = kVar4.f1790e;
            if (!z8) {
                kVar4.f1788c = f1624z;
            }
            if (!z8) {
                kVar4.b = 250L;
            }
            if (!z8) {
                kVar4.f1789d = i0Var2;
            }
            this.f1641s = kVar4;
            kVar4.b();
        } else {
            this.f1627d.setAlpha(1.0f);
            this.f1627d.setTranslationY(0.0f);
            if (this.f1637o && view != null) {
                view.setTranslationY(0.0f);
            }
            i0Var2.b();
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f1626c;
        if (actionBarOverlayLayout != null) {
            WeakHashMap weakHashMap = p0.f727a;
            c0.d0.c(actionBarOverlayLayout);
        }
    }

    public k0(Dialog dialog) {
        new ArrayList();
        this.f1635m = new ArrayList();
        this.f1636n = 0;
        this.f1637o = true;
        this.f1640r = true;
        this.f1644v = new i0(this, 0);
        this.f1645w = new i0(this, 1);
        this.f1646x = new androidx.emoji2.text.m(10, this);
        g0(dialog.getWindow().getDecorView());
    }
}
