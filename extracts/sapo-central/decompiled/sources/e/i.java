package e;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.app.AlertController$RecycleListView;
import androidx.core.widget.NestedScrollView;
import c0.p0;
import com.ex.auto.R;
import i.u1;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class i extends Dialog implements DialogInterface, k, androidx.lifecycle.q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public androidx.lifecycle.s f1608a;
    public final androidx.activity.n b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public y f1609c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final z f1610d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final g f1611e;

    public i(ContextThemeWrapper contextThemeWrapper, int i3) {
        int i4;
        int i5 = i(contextThemeWrapper, i3);
        if (i5 == 0) {
            TypedValue typedValue = new TypedValue();
            contextThemeWrapper.getTheme().resolveAttribute(R.attr.dialogTheme, typedValue, true);
            i4 = typedValue.resourceId;
        } else {
            i4 = i5;
        }
        super(contextThemeWrapper, i4);
        this.b = new androidx.activity.n(new a1.r(2, this));
        this.f1610d = new z(this);
        o oVarD = d();
        if (i5 == 0) {
            TypedValue typedValue2 = new TypedValue();
            contextThemeWrapper.getTheme().resolveAttribute(R.attr.dialogTheme, typedValue2, true);
            i5 = typedValue2.resourceId;
        }
        ((y) oVarD).T = i5;
        oVarD.i();
        this.f1611e = new g(getContext(), this, getWindow());
    }

    public static void b(i iVar) {
        super.onBackPressed();
    }

    public static int i(Context context, int i3) {
        if (((i3 >>> 24) & 255) >= 1) {
            return i3;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    @Override // android.app.Dialog
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        y yVar = (y) d();
        yVar.C();
        ((ViewGroup) yVar.A.findViewById(android.R.id.content)).addView(view, layoutParams);
        yVar.f1694m.a(yVar.f1693l.getCallback());
    }

    public final Button c(int i3) {
        g gVar = this.f1611e;
        if (i3 == -3) {
            return gVar.f1591o;
        }
        if (i3 == -2) {
            return gVar.f1588l;
        }
        if (i3 == -1) {
            return gVar.f1585i;
        }
        gVar.getClass();
        return null;
    }

    public final o d() {
        if (this.f1609c == null) {
            e0 e0Var = o.f1648a;
            this.f1609c = new y(getContext(), getWindow(), this, this);
        }
        return this.f1609c;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        super.dismiss();
        d().j();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        getWindow().getDecorView();
        z zVar = this.f1610d;
        if (zVar == null) {
            return false;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    public final void e(Bundle bundle) {
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackInvokedDispatcher onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            androidx.activity.n nVar = this.b;
            nVar.f98e = onBackInvokedDispatcher;
            nVar.c();
        }
        androidx.lifecycle.s sVar = this.f1608a;
        if (sVar == null) {
            sVar = new androidx.lifecycle.s(this);
            this.f1608a = sVar;
        }
        sVar.d(androidx.lifecycle.k.ON_CREATE);
    }

    @Override // androidx.lifecycle.q
    public final androidx.lifecycle.s f() {
        androidx.lifecycle.s sVar = this.f1608a;
        if (sVar != null) {
            return sVar;
        }
        androidx.lifecycle.s sVar2 = new androidx.lifecycle.s(this);
        this.f1608a = sVar2;
        return sVar2;
    }

    @Override // android.app.Dialog
    public final View findViewById(int i3) {
        y yVar = (y) d();
        yVar.C();
        return yVar.f1693l.findViewById(i3);
    }

    public final void g(Bundle bundle) {
        d().e();
        e(bundle);
        d().i();
    }

    public final void h() {
        androidx.lifecycle.s sVar = this.f1608a;
        if (sVar == null) {
            sVar = new androidx.lifecycle.s(this);
            this.f1608a = sVar;
        }
        sVar.d(androidx.lifecycle.k.ON_DESTROY);
        this.f1608a = null;
        super.onStop();
    }

    @Override // android.app.Dialog
    public final void invalidateOptionsMenu() {
        d().g();
    }

    public final void j(CharSequence charSequence) {
        super.setTitle(charSequence);
        d().r(charSequence);
    }

    @Override // android.app.Dialog
    public final void onBackPressed() {
        this.b.b();
    }

    @Override // android.app.Dialog
    public final void onCreate(Bundle bundle) {
        int i3;
        ListAdapter listAdapter;
        View viewFindViewById;
        g(bundle);
        g gVar = this.f1611e;
        gVar.b.setContentView(gVar.f1602z);
        Context context = gVar.f1579a;
        Window window = gVar.f1580c;
        View viewFindViewById2 = window.findViewById(R.id.parentPanel);
        View viewFindViewById3 = viewFindViewById2.findViewById(R.id.topPanel);
        View viewFindViewById4 = viewFindViewById2.findViewById(R.id.contentPanel);
        View viewFindViewById5 = viewFindViewById2.findViewById(R.id.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) viewFindViewById2.findViewById(R.id.customPanel);
        View view = gVar.f1583g;
        if (view == null) {
            view = null;
        }
        boolean z2 = view != null;
        if (!z2 || !g.a(view)) {
            window.setFlags(131072, 131072);
        }
        if (z2) {
            FrameLayout frameLayout = (FrameLayout) window.findViewById(R.id.custom);
            frameLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
            if (gVar.f1584h) {
                frameLayout.setPadding(0, 0, 0, 0);
            }
            if (gVar.f != null) {
                ((LinearLayout.LayoutParams) ((u1) viewGroup.getLayoutParams())).weight = 0.0f;
            }
        } else {
            viewGroup.setVisibility(8);
        }
        View viewFindViewById6 = viewGroup.findViewById(R.id.topPanel);
        View viewFindViewById7 = viewGroup.findViewById(R.id.contentPanel);
        View viewFindViewById8 = viewGroup.findViewById(R.id.buttonPanel);
        ViewGroup viewGroupB = g.b(viewFindViewById6, viewFindViewById3);
        ViewGroup viewGroupB2 = g.b(viewFindViewById7, viewFindViewById4);
        ViewGroup viewGroupB3 = g.b(viewFindViewById8, viewFindViewById5);
        NestedScrollView nestedScrollView = (NestedScrollView) window.findViewById(R.id.scrollView);
        gVar.f1594r = nestedScrollView;
        nestedScrollView.setFocusable(false);
        gVar.f1594r.setNestedScrollingEnabled(false);
        TextView textView = (TextView) viewGroupB2.findViewById(android.R.id.message);
        gVar.f1598v = textView;
        if (textView != null) {
            CharSequence charSequence = gVar.f1582e;
            if (charSequence != null) {
                textView.setText(charSequence);
            } else {
                textView.setVisibility(8);
                gVar.f1594r.removeView(gVar.f1598v);
                if (gVar.f != null) {
                    ViewGroup viewGroup2 = (ViewGroup) gVar.f1594r.getParent();
                    int iIndexOfChild = viewGroup2.indexOfChild(gVar.f1594r);
                    viewGroup2.removeViewAt(iIndexOfChild);
                    viewGroup2.addView(gVar.f, iIndexOfChild, new ViewGroup.LayoutParams(-1, -1));
                } else {
                    viewGroupB2.setVisibility(8);
                }
            }
        }
        Button button = (Button) viewGroupB3.findViewById(android.R.id.button1);
        gVar.f1585i = button;
        com.google.android.material.datepicker.k kVar = gVar.G;
        button.setOnClickListener(kVar);
        if (TextUtils.isEmpty(gVar.f1586j)) {
            gVar.f1585i.setVisibility(8);
            i3 = 0;
        } else {
            gVar.f1585i.setText(gVar.f1586j);
            gVar.f1585i.setVisibility(0);
            i3 = 1;
        }
        Button button2 = (Button) viewGroupB3.findViewById(android.R.id.button2);
        gVar.f1588l = button2;
        button2.setOnClickListener(kVar);
        if (TextUtils.isEmpty(gVar.f1589m)) {
            gVar.f1588l.setVisibility(8);
        } else {
            gVar.f1588l.setText(gVar.f1589m);
            gVar.f1588l.setVisibility(0);
            i3 |= 2;
        }
        Button button3 = (Button) viewGroupB3.findViewById(android.R.id.button3);
        gVar.f1591o = button3;
        button3.setOnClickListener(kVar);
        if (TextUtils.isEmpty(gVar.f1592p)) {
            gVar.f1591o.setVisibility(8);
        } else {
            gVar.f1591o.setText(gVar.f1592p);
            gVar.f1591o.setVisibility(0);
            i3 |= 4;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data != 0) {
            if (i3 == 1) {
                Button button4 = gVar.f1585i;
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button4.getLayoutParams();
                layoutParams.gravity = 1;
                layoutParams.weight = 0.5f;
                button4.setLayoutParams(layoutParams);
            } else if (i3 == 2) {
                Button button5 = gVar.f1588l;
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) button5.getLayoutParams();
                layoutParams2.gravity = 1;
                layoutParams2.weight = 0.5f;
                button5.setLayoutParams(layoutParams2);
            } else if (i3 == 4) {
                Button button6 = gVar.f1591o;
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) button6.getLayoutParams();
                layoutParams3.gravity = 1;
                layoutParams3.weight = 0.5f;
                button6.setLayoutParams(layoutParams3);
            }
        }
        if (i3 == 0) {
            viewGroupB3.setVisibility(8);
        }
        if (gVar.f1599w != null) {
            viewGroupB.addView(gVar.f1599w, 0, new ViewGroup.LayoutParams(-1, -2));
            window.findViewById(R.id.title_template).setVisibility(8);
        } else {
            gVar.f1596t = (ImageView) window.findViewById(android.R.id.icon);
            if (TextUtils.isEmpty(gVar.f1581d) || !gVar.E) {
                window.findViewById(R.id.title_template).setVisibility(8);
                gVar.f1596t.setVisibility(8);
                viewGroupB.setVisibility(8);
            } else {
                TextView textView2 = (TextView) window.findViewById(R.id.alertTitle);
                gVar.f1597u = textView2;
                textView2.setText(gVar.f1581d);
                Drawable drawable = gVar.f1595s;
                if (drawable != null) {
                    gVar.f1596t.setImageDrawable(drawable);
                } else {
                    gVar.f1597u.setPadding(gVar.f1596t.getPaddingLeft(), gVar.f1596t.getPaddingTop(), gVar.f1596t.getPaddingRight(), gVar.f1596t.getPaddingBottom());
                    gVar.f1596t.setVisibility(8);
                }
            }
        }
        boolean z3 = viewGroup.getVisibility() != 8;
        int i4 = (viewGroupB == null || viewGroupB.getVisibility() == 8) ? 0 : 1;
        boolean z4 = viewGroupB3.getVisibility() != 8;
        if (!z4 && (viewFindViewById = viewGroupB2.findViewById(R.id.textSpacerNoButtons)) != null) {
            viewFindViewById.setVisibility(0);
        }
        if (i4 != 0) {
            NestedScrollView nestedScrollView2 = gVar.f1594r;
            if (nestedScrollView2 != null) {
                nestedScrollView2.setClipToPadding(true);
            }
            View viewFindViewById9 = (gVar.f1582e == null && gVar.f == null) ? null : viewGroupB.findViewById(R.id.titleDividerNoCustom);
            if (viewFindViewById9 != null) {
                viewFindViewById9.setVisibility(0);
            }
        } else {
            View viewFindViewById10 = viewGroupB2.findViewById(R.id.textSpacerNoTitle);
            if (viewFindViewById10 != null) {
                viewFindViewById10.setVisibility(0);
            }
        }
        AlertController$RecycleListView alertController$RecycleListView = gVar.f;
        if (alertController$RecycleListView != null && (!z4 || i4 == 0)) {
            alertController$RecycleListView.setPadding(alertController$RecycleListView.getPaddingLeft(), i4 != 0 ? alertController$RecycleListView.getPaddingTop() : alertController$RecycleListView.f102a, alertController$RecycleListView.getPaddingRight(), z4 ? alertController$RecycleListView.getPaddingBottom() : alertController$RecycleListView.b);
        }
        if (!z3) {
            View view2 = gVar.f;
            if (view2 == null) {
                view2 = gVar.f1594r;
            }
            if (view2 != null) {
                int i5 = z4 ? 2 : 0;
                View viewFindViewById11 = window.findViewById(R.id.scrollIndicatorUp);
                View viewFindViewById12 = window.findViewById(R.id.scrollIndicatorDown);
                WeakHashMap weakHashMap = p0.f727a;
                c0.g0.d(view2, i4 | i5, 3);
                if (viewFindViewById11 != null) {
                    viewGroupB2.removeView(viewFindViewById11);
                }
                if (viewFindViewById12 != null) {
                    viewGroupB2.removeView(viewFindViewById12);
                }
            }
        }
        AlertController$RecycleListView alertController$RecycleListView2 = gVar.f;
        if (alertController$RecycleListView2 == null || (listAdapter = gVar.f1600x) == null) {
            return;
        }
        alertController$RecycleListView2.setAdapter(listAdapter);
        int i6 = gVar.f1601y;
        if (i6 > -1) {
            alertController$RecycleListView2.setItemChecked(i6, true);
            alertController$RecycleListView2.setSelection(i6);
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i3, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f1611e.f1594r;
        if (nestedScrollView == null || !nestedScrollView.j(keyEvent)) {
            return super.onKeyDown(i3, keyEvent);
        }
        return true;
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i3, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f1611e.f1594r;
        if (nestedScrollView == null || !nestedScrollView.j(keyEvent)) {
            return super.onKeyUp(i3, keyEvent);
        }
        return true;
    }

    @Override // android.app.Dialog
    public final void onStart() {
        super.onStart();
        androidx.lifecycle.s sVar = this.f1608a;
        if (sVar == null) {
            sVar = new androidx.lifecycle.s(this);
            this.f1608a = sVar;
        }
        sVar.d(androidx.lifecycle.k.ON_RESUME);
    }

    @Override // android.app.Dialog
    public final void onStop() {
        h();
        y yVar = (y) d();
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

    @Override // android.app.Dialog
    public final void setContentView(int i3) {
        d().n(i3);
    }

    @Override // android.app.Dialog
    public final void setTitle(int i3) {
        super.setTitle(i3);
        d().r(getContext().getString(i3));
    }

    @Override // android.app.Dialog
    public final void setContentView(View view) {
        d().o(view);
    }

    @Override // android.app.Dialog
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        d().p(view, layoutParams);
    }

    @Override // android.app.Dialog
    public final void setTitle(CharSequence charSequence) {
        j(charSequence);
        g gVar = this.f1611e;
        gVar.f1581d = charSequence;
        TextView textView = gVar.f1597u;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }
}
