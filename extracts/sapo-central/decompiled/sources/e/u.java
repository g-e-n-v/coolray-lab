package e;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.widget.PopupWindow;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ViewStubCompat;
import c0.p0;
import c0.w0;
import com.ex.auto.R;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class u implements Window.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Window.Callback f1658a;
    public boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1659c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1660d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ y f1661e;

    public u(y yVar, Window.Callback callback) {
        this.f1661e = yVar;
        if (callback == null) {
            throw new IllegalArgumentException("Window callback may not be null");
        }
        this.f1658a = callback;
    }

    public final void a(Window.Callback callback) {
        try {
            this.b = true;
            callback.onContentChanged();
        } finally {
            this.b = false;
        }
    }

    public final boolean b(int i3, Menu menu) {
        return this.f1658a.onMenuOpened(i3, menu);
    }

    public final void c(int i3, Menu menu) {
        this.f1658a.onPanelClosed(i3, menu);
    }

    public final void d(List list, Menu menu, int i3) {
        g.m.a(this.f1658a, list, menu, i3);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        return this.f1658a.dispatchGenericMotionEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean z2 = this.f1659c;
        Window.Callback callback = this.f1658a;
        if (z2) {
            return callback.dispatchKeyEvent(keyEvent);
        }
        return this.f1661e.A(keyEvent) || callback.dispatchKeyEvent(keyEvent);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x003b  */
    /* JADX WARN: Code duplicated, block: B:18:0x003d  */
    /* JADX WARN: Code duplicated, block: B:25:0x0052  */
    /* JADX WARN: Code duplicated, block: B:27:0x0056  */
    @Override // android.view.Window.Callback
    public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        x xVar;
        boolean z2;
        boolean zL;
        h.m mVar;
        boolean zPerformShortcut;
        if (!this.f1658a.dispatchKeyShortcutEvent(keyEvent)) {
            int keyCode = keyEvent.getKeyCode();
            y yVar = this.f1661e;
            yVar.G();
            k0 k0Var = yVar.f1696o;
            if (k0Var == null) {
                xVar = yVar.M;
                if (xVar == null && yVar.L(xVar, keyEvent.getKeyCode(), keyEvent)) {
                    x xVar2 = yVar.M;
                    if (xVar2 != null) {
                        xVar2.f1675l = true;
                    }
                } else {
                    if (yVar.M == null) {
                        x xVarF = yVar.F(0);
                        yVar.M(xVarF, keyEvent);
                        zL = yVar.L(xVarF, keyEvent.getKeyCode(), keyEvent);
                        xVarF.f1674k = false;
                        if (zL) {
                        }
                    }
                    z2 = false;
                }
                z2 = true;
            } else {
                j0 j0Var = k0Var.f1631i;
                if (j0Var == null || (mVar = j0Var.f1620d) == null) {
                    zPerformShortcut = false;
                } else {
                    mVar.setQwertyMode(KeyCharacterMap.load(keyEvent.getDeviceId()).getKeyboardType() != 1);
                    zPerformShortcut = mVar.performShortcut(keyCode, keyEvent, 0);
                }
                if (zPerformShortcut) {
                    z2 = true;
                } else {
                    xVar = yVar.M;
                    if (xVar == null) {
                        if (yVar.M == null) {
                            x xVarF2 = yVar.F(0);
                            yVar.M(xVarF2, keyEvent);
                            zL = yVar.L(xVarF2, keyEvent.getKeyCode(), keyEvent);
                            xVarF2.f1674k = false;
                            if (zL) {
                                z2 = true;
                            }
                        }
                        z2 = false;
                    } else {
                        if (yVar.M == null) {
                            x xVarF3 = yVar.F(0);
                            yVar.M(xVarF3, keyEvent);
                            zL = yVar.L(xVarF3, keyEvent.getKeyCode(), keyEvent);
                            xVarF3.f1674k = false;
                            if (zL) {
                                z2 = true;
                            }
                        }
                        z2 = false;
                    }
                }
            }
            if (!z2) {
                return false;
            }
        }
        return true;
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return this.f1658a.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return this.f1658a.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        return this.f1658a.dispatchTrackballEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final void onActionModeFinished(ActionMode actionMode) {
        this.f1658a.onActionModeFinished(actionMode);
    }

    @Override // android.view.Window.Callback
    public final void onActionModeStarted(ActionMode actionMode) {
        this.f1658a.onActionModeStarted(actionMode);
    }

    @Override // android.view.Window.Callback
    public final void onAttachedToWindow() {
        this.f1658a.onAttachedToWindow();
    }

    @Override // android.view.Window.Callback
    public final void onContentChanged() {
        if (this.b) {
            this.f1658a.onContentChanged();
        }
    }

    @Override // android.view.Window.Callback
    public final boolean onCreatePanelMenu(int i3, Menu menu) {
        if (i3 != 0 || (menu instanceof h.m)) {
            return this.f1658a.onCreatePanelMenu(i3, menu);
        }
        return false;
    }

    @Override // android.view.Window.Callback
    public final View onCreatePanelView(int i3) {
        return this.f1658a.onCreatePanelView(i3);
    }

    @Override // android.view.Window.Callback
    public final void onDetachedFromWindow() {
        this.f1658a.onDetachedFromWindow();
    }

    @Override // android.view.Window.Callback
    public final boolean onMenuItemSelected(int i3, MenuItem menuItem) {
        return this.f1658a.onMenuItemSelected(i3, menuItem);
    }

    @Override // android.view.Window.Callback
    public final boolean onMenuOpened(int i3, Menu menu) {
        b(i3, menu);
        if (i3 == 108) {
            y yVar = this.f1661e;
            yVar.G();
            k0 k0Var = yVar.f1696o;
            if (k0Var != null) {
                ArrayList arrayList = k0Var.f1635m;
                if (true != k0Var.f1634l) {
                    k0Var.f1634l = true;
                    if (arrayList.size() > 0) {
                        arrayList.get(0).getClass();
                        throw new ClassCastException();
                    }
                }
            }
        }
        return true;
    }

    @Override // android.view.Window.Callback
    public final void onPanelClosed(int i3, Menu menu) {
        if (this.f1660d) {
            this.f1658a.onPanelClosed(i3, menu);
            return;
        }
        c(i3, menu);
        y yVar = this.f1661e;
        if (i3 != 108) {
            if (i3 == 0) {
                x xVarF = yVar.F(i3);
                if (xVarF.f1676m) {
                    yVar.y(xVarF, false);
                    return;
                }
                return;
            }
            return;
        }
        yVar.G();
        k0 k0Var = yVar.f1696o;
        if (k0Var != null) {
            ArrayList arrayList = k0Var.f1635m;
            if (k0Var.f1634l) {
                k0Var.f1634l = false;
                if (arrayList.size() <= 0) {
                    return;
                }
                arrayList.get(0).getClass();
                throw new ClassCastException();
            }
        }
    }

    @Override // android.view.Window.Callback
    public final void onPointerCaptureChanged(boolean z2) {
        g.n.a(this.f1658a, z2);
    }

    @Override // android.view.Window.Callback
    public final boolean onPreparePanel(int i3, View view, Menu menu) {
        h.m mVar = menu instanceof h.m ? (h.m) menu : null;
        if (i3 == 0 && mVar == null) {
            return false;
        }
        if (mVar != null) {
            mVar.f1907x = true;
        }
        boolean zOnPreparePanel = this.f1658a.onPreparePanel(i3, view, menu);
        if (mVar != null) {
            mVar.f1907x = false;
        }
        return zOnPreparePanel;
    }

    @Override // android.view.Window.Callback
    public final void onProvideKeyboardShortcuts(List list, Menu menu, int i3) {
        h.m mVar = this.f1661e.F(0).f1671h;
        if (mVar != null) {
            d(list, mVar, i3);
        } else {
            d(list, menu, i3);
        }
    }

    @Override // android.view.Window.Callback
    public final boolean onSearchRequested(SearchEvent searchEvent) {
        return g.l.a(this.f1658a, searchEvent);
    }

    @Override // android.view.Window.Callback
    public final void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        this.f1658a.onWindowAttributesChanged(layoutParams);
    }

    @Override // android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z2) {
        this.f1658a.onWindowFocusChanged(z2);
    }

    /* JADX WARN: Code duplicated, block: B:63:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:65:0x01b5  */
    @Override // android.view.Window.Callback
    public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i3) {
        ViewGroup viewGroup;
        if (i3 != 0) {
            return g.l.b(this.f1658a, callback, i3);
        }
        y yVar = this.f1661e;
        Context context = yVar.f1692k;
        androidx.emoji2.text.t tVar = new androidx.emoji2.text.t(context, callback);
        g.a aVar = yVar.f1702u;
        if (aVar != null) {
            aVar.b();
        }
        androidx.activity.result.c cVar = new androidx.activity.result.c(yVar, tVar);
        yVar.G();
        k0 k0Var = yVar.f1696o;
        int i4 = 1;
        if (k0Var != null) {
            j0 j0Var = k0Var.f1631i;
            if (j0Var != null) {
                j0Var.b();
            }
            k0Var.f1626c.setHideOnContentScrollEnabled(false);
            k0Var.f.e();
            j0 j0Var2 = new j0(k0Var, k0Var.f.getContext(), cVar);
            h.m mVar = j0Var2.f1620d;
            mVar.w();
            try {
                boolean zD = ((androidx.emoji2.text.t) j0Var2.f1621e.f100a).d(j0Var2, mVar);
                mVar.v();
                if (zD) {
                    k0Var.f1631i = j0Var2;
                    j0Var2.i();
                    k0Var.f.c(j0Var2);
                    k0Var.e0(true);
                } else {
                    j0Var2 = null;
                }
                yVar.f1702u = j0Var2;
            } catch (Throwable th) {
                mVar.v();
                throw th;
            }
        }
        if (yVar.f1702u == null) {
            w0 w0Var = yVar.f1706y;
            if (w0Var != null) {
                w0Var.b();
            }
            g.a aVar2 = yVar.f1702u;
            if (aVar2 != null) {
                aVar2.b();
            }
            if (yVar.f1703v == null) {
                if (yVar.I) {
                    TypedValue typedValue = new TypedValue();
                    Resources.Theme theme = context.getTheme();
                    theme.resolveAttribute(R.attr.actionBarTheme, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        Resources.Theme themeNewTheme = context.getResources().newTheme();
                        themeNewTheme.setTo(theme);
                        themeNewTheme.applyStyle(typedValue.resourceId, true);
                        g.d dVar = new g.d(context, 0);
                        dVar.getTheme().setTo(themeNewTheme);
                        context = dVar;
                    }
                    yVar.f1703v = new ActionBarContextView(context, null);
                    PopupWindow popupWindow = new PopupWindow(context, (AttributeSet) null, R.attr.actionModePopupWindowStyle);
                    yVar.f1704w = popupWindow;
                    f0.m.d(popupWindow, 2);
                    yVar.f1704w.setContentView(yVar.f1703v);
                    yVar.f1704w.setWidth(-1);
                    context.getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true);
                    yVar.f1703v.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics()));
                    yVar.f1704w.setHeight(-2);
                    yVar.f1705x = new p(yVar, i4);
                } else {
                    ViewStubCompat viewStubCompat = (ViewStubCompat) yVar.A.findViewById(R.id.action_mode_bar_stub);
                    if (viewStubCompat != null) {
                        yVar.G();
                        k0 k0Var2 = yVar.f1696o;
                        Context contextF0 = k0Var2 != null ? k0Var2.f0() : null;
                        if (contextF0 != null) {
                            context = contextF0;
                        }
                        viewStubCompat.setLayoutInflater(LayoutInflater.from(context));
                        yVar.f1703v = (ActionBarContextView) viewStubCompat.a();
                    }
                }
            }
            if (yVar.f1703v != null) {
                w0 w0Var2 = yVar.f1706y;
                if (w0Var2 != null) {
                    w0Var2.b();
                }
                yVar.f1703v.e();
                Context context2 = yVar.f1703v.getContext();
                ActionBarContextView actionBarContextView = yVar.f1703v;
                g.e eVar = new g.e();
                eVar.f1748c = context2;
                eVar.f1749d = actionBarContextView;
                eVar.f1750e = cVar;
                h.m mVar2 = new h.m(actionBarContextView.getContext());
                mVar2.f1895l = 1;
                eVar.f1752h = mVar2;
                mVar2.f1889e = eVar;
                if (tVar.d(eVar, mVar2)) {
                    eVar.i();
                    yVar.f1703v.c(eVar);
                    yVar.f1702u = eVar;
                    if (!yVar.f1707z || (viewGroup = yVar.A) == null) {
                        yVar.f1703v.setAlpha(1.0f);
                        yVar.f1703v.setVisibility(0);
                        if (yVar.f1703v.getParent() instanceof View) {
                            View view = (View) yVar.f1703v.getParent();
                            WeakHashMap weakHashMap = p0.f727a;
                            c0.d0.c(view);
                        }
                    } else {
                        WeakHashMap weakHashMap2 = p0.f727a;
                        if (c0.c0.c(viewGroup)) {
                            yVar.f1703v.setAlpha(0.0f);
                            w0 w0VarA = p0.a(yVar.f1703v);
                            w0VarA.a(1.0f);
                            yVar.f1706y = w0VarA;
                            w0VarA.d(new r(i4, yVar));
                        } else {
                            yVar.f1703v.setAlpha(1.0f);
                            yVar.f1703v.setVisibility(0);
                            if (yVar.f1703v.getParent() instanceof View) {
                                View view2 = (View) yVar.f1703v.getParent();
                                WeakHashMap weakHashMap3 = p0.f727a;
                                c0.d0.c(view2);
                            }
                        }
                    }
                    if (yVar.f1704w != null) {
                        yVar.f1693l.getDecorView().post(yVar.f1705x);
                    }
                } else {
                    yVar.f1702u = null;
                }
            }
            yVar.O();
            yVar.f1702u = yVar.f1702u;
        }
        yVar.O();
        g.a aVar3 = yVar.f1702u;
        if (aVar3 != null) {
            return tVar.b(aVar3);
        }
        return null;
    }

    @Override // android.view.Window.Callback
    public final boolean onSearchRequested() {
        return this.f1658a.onSearchRequested();
    }

    @Override // android.view.Window.Callback
    public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        return null;
    }
}
