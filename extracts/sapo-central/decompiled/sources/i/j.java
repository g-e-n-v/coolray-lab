package i;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.ActionMenuView;
import com.ex.auto.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class j implements h.z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f2047a;
    public Context b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public h.m f2048c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LayoutInflater f2049d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public h.y f2050e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public h.b0 f2052h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public i f2053i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Drawable f2054j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f2055k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f2056l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f2057m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2058n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f2059o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f2060p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f2061q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public f f2063s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public f f2064t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public h f2065u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public g f2066v;
    public final int f = R.layout.abc_action_menu_layout;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f2051g = R.layout.abc_action_menu_item_layout;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final SparseBooleanArray f2062r = new SparseBooleanArray();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final androidx.emoji2.text.m f2067w = new androidx.emoji2.text.m(17, this);

    public j(Context context) {
        this.f2047a = context;
        this.f2049d = LayoutInflater.from(context);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final View a(h.o oVar, View view, ViewGroup viewGroup) {
        View actionView = oVar.getActionView();
        if (actionView == null || oVar.e()) {
            h.a0 a0Var = view instanceof h.a0 ? (h.a0) view : (h.a0) this.f2049d.inflate(this.f2051g, viewGroup, false);
            a0Var.c(oVar);
            ActionMenuItemView actionMenuItemView = (ActionMenuItemView) a0Var;
            actionMenuItemView.setItemInvoker((ActionMenuView) this.f2052h);
            if (this.f2066v == null) {
                this.f2066v = new g(this);
            }
            actionMenuItemView.setPopupCallback(this.f2066v);
            actionView = (View) a0Var;
        }
        actionView.setVisibility(oVar.C ? 8 : 0);
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        ((ActionMenuView) viewGroup).getClass();
        if (!(layoutParams instanceof l)) {
            actionView.setLayoutParams(ActionMenuView.k(layoutParams));
        }
        return actionView;
    }

    @Override // h.z
    public final void b(h.m mVar, boolean z2) {
        d();
        f fVar = this.f2064t;
        if (fVar != null && fVar.b()) {
            fVar.f1948i.dismiss();
        }
        h.y yVar = this.f2050e;
        if (yVar != null) {
            yVar.b(mVar, z2);
        }
    }

    @Override // h.z
    public final void c(h.y yVar) {
        throw null;
    }

    public final boolean d() {
        Object obj;
        h hVar = this.f2065u;
        if (hVar != null && (obj = this.f2052h) != null) {
            ((View) obj).removeCallbacks(hVar);
            this.f2065u = null;
            return true;
        }
        f fVar = this.f2063s;
        if (fVar == null) {
            return false;
        }
        if (fVar.b()) {
            fVar.f1948i.dismiss();
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // h.z
    public final void e() {
        int i3;
        ViewGroup viewGroup = (ViewGroup) this.f2052h;
        ArrayList arrayList = null;
        boolean z2 = false;
        if (viewGroup != null) {
            h.m mVar = this.f2048c;
            if (mVar != null) {
                mVar.i();
                ArrayList arrayListL = this.f2048c.l();
                int size = arrayListL.size();
                i3 = 0;
                for (int i4 = 0; i4 < size; i4++) {
                    h.o oVar = (h.o) arrayListL.get(i4);
                    if ((oVar.f1931x & 32) == 32) {
                        View childAt = viewGroup.getChildAt(i3);
                        h.o itemData = childAt instanceof h.a0 ? ((h.a0) childAt).getItemData() : null;
                        View viewA = a(oVar, childAt, viewGroup);
                        if (oVar != itemData) {
                            viewA.setPressed(false);
                            viewA.jumpDrawablesToCurrentState();
                        }
                        if (viewA != childAt) {
                            ViewGroup viewGroup2 = (ViewGroup) viewA.getParent();
                            if (viewGroup2 != null) {
                                viewGroup2.removeView(viewA);
                            }
                            ((ViewGroup) this.f2052h).addView(viewA, i3);
                        }
                        i3++;
                    }
                }
            } else {
                i3 = 0;
            }
            while (i3 < viewGroup.getChildCount()) {
                if (viewGroup.getChildAt(i3) == this.f2053i) {
                    i3++;
                } else {
                    viewGroup.removeViewAt(i3);
                }
            }
        }
        ((View) this.f2052h).requestLayout();
        h.m mVar2 = this.f2048c;
        if (mVar2 != null) {
            mVar2.i();
            ArrayList arrayList2 = mVar2.f1892i;
            int size2 = arrayList2.size();
            for (int i5 = 0; i5 < size2; i5++) {
                h.p pVar = ((h.o) arrayList2.get(i5)).A;
            }
        }
        h.m mVar3 = this.f2048c;
        if (mVar3 != null) {
            mVar3.i();
            arrayList = mVar3.f1893j;
        }
        if (this.f2056l && arrayList != null) {
            int size3 = arrayList.size();
            if (size3 == 1) {
                z2 = !((h.o) arrayList.get(0)).C;
            } else if (size3 > 0) {
                z2 = true;
            }
        }
        if (z2) {
            if (this.f2053i == null) {
                this.f2053i = new i(this, this.f2047a);
            }
            ViewGroup viewGroup3 = (ViewGroup) this.f2053i.getParent();
            if (viewGroup3 != this.f2052h) {
                if (viewGroup3 != null) {
                    viewGroup3.removeView(this.f2053i);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f2052h;
                i iVar = this.f2053i;
                actionMenuView.getClass();
                l lVarJ = ActionMenuView.j();
                lVarJ.f2078a = true;
                actionMenuView.addView(iVar, lVarJ);
            }
        } else {
            i iVar2 = this.f2053i;
            if (iVar2 != null) {
                Object parent = iVar2.getParent();
                Object obj = this.f2052h;
                if (parent == obj) {
                    ((ViewGroup) obj).removeView(this.f2053i);
                }
            }
        }
        ((ActionMenuView) this.f2052h).setOverflowReserved(this.f2056l);
    }

    public final boolean f() {
        f fVar = this.f2063s;
        return fVar != null && fVar.b();
    }

    @Override // h.z
    public final void g(Context context, h.m mVar) {
        this.b = context;
        LayoutInflater.from(context);
        this.f2048c = mVar;
        Resources resources = context.getResources();
        if (!this.f2057m) {
            this.f2056l = true;
        }
        int i3 = 2;
        this.f2058n = context.getResources().getDisplayMetrics().widthPixels / 2;
        Configuration configuration = context.getResources().getConfiguration();
        int i4 = configuration.screenWidthDp;
        int i5 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i4 > 600 || ((i4 > 960 && i5 > 720) || (i4 > 720 && i5 > 960))) {
            i3 = 5;
        } else if (i4 >= 500 || ((i4 > 640 && i5 > 480) || (i4 > 480 && i5 > 640))) {
            i3 = 4;
        } else if (i4 >= 360) {
            i3 = 3;
        }
        this.f2060p = i3;
        int measuredWidth = this.f2058n;
        if (this.f2056l) {
            if (this.f2053i == null) {
                i iVar = new i(this, this.f2047a);
                this.f2053i = iVar;
                if (this.f2055k) {
                    iVar.setImageDrawable(this.f2054j);
                    this.f2054j = null;
                    this.f2055k = false;
                }
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f2053i.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            }
            measuredWidth -= this.f2053i.getMeasuredWidth();
        } else {
            this.f2053i = null;
        }
        this.f2059o = measuredWidth;
        float f = resources.getDisplayMetrics().density;
    }

    @Override // h.z
    public final boolean h() {
        int size;
        ArrayList arrayListL;
        int i3;
        boolean z2;
        j jVar = this;
        h.m mVar = jVar.f2048c;
        if (mVar != null) {
            arrayListL = mVar.l();
            size = arrayListL.size();
        } else {
            size = 0;
            arrayListL = null;
        }
        int i4 = jVar.f2060p;
        int i5 = jVar.f2059o;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) jVar.f2052h;
        int i6 = 0;
        boolean z3 = false;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            i3 = 2;
            z2 = true;
            if (i6 >= size) {
                break;
            }
            h.o oVar = (h.o) arrayListL.get(i6);
            int i9 = oVar.f1932y;
            if ((i9 & 2) == 2) {
                i7++;
            } else if ((i9 & 1) == 1) {
                i8++;
            } else {
                z3 = true;
            }
            if (jVar.f2061q && oVar.C) {
                i4 = 0;
            }
            i6++;
        }
        if (jVar.f2056l && (z3 || i8 + i7 > i4)) {
            i4--;
        }
        int i10 = i4 - i7;
        SparseBooleanArray sparseBooleanArray = jVar.f2062r;
        sparseBooleanArray.clear();
        int i11 = 0;
        int i12 = 0;
        while (i11 < size) {
            h.o oVar2 = (h.o) arrayListL.get(i11);
            int i13 = oVar2.f1932y;
            boolean z4 = (i13 & 2) == i3 ? z2 : false;
            int i14 = oVar2.b;
            if (z4) {
                View viewA = jVar.a(oVar2, null, viewGroup);
                viewA.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                int measuredWidth = viewA.getMeasuredWidth();
                i5 -= measuredWidth;
                if (i12 == 0) {
                    i12 = measuredWidth;
                }
                if (i14 != 0) {
                    sparseBooleanArray.put(i14, z2);
                }
                oVar2.f(z2);
            } else {
                if ((i13 & 1) == z2) {
                    boolean z5 = sparseBooleanArray.get(i14);
                    boolean z6 = ((i10 > 0 || z5) && i5 > 0) ? z2 : false;
                    if (z6) {
                        View viewA2 = jVar.a(oVar2, null, viewGroup);
                        viewA2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                        int measuredWidth2 = viewA2.getMeasuredWidth();
                        i5 -= measuredWidth2;
                        if (i12 == 0) {
                            i12 = measuredWidth2;
                        }
                        z6 &= i5 + i12 > 0;
                    }
                    if (z6 && i14 != 0) {
                        sparseBooleanArray.put(i14, true);
                    } else if (z5) {
                        sparseBooleanArray.put(i14, false);
                        for (int i15 = 0; i15 < i11; i15++) {
                            h.o oVar3 = (h.o) arrayListL.get(i15);
                            if (oVar3.b == i14) {
                                if ((oVar3.f1931x & 32) == 32) {
                                    i10++;
                                }
                                oVar3.f(false);
                            }
                        }
                    }
                    if (z6) {
                        i10--;
                    }
                    oVar2.f(z6);
                } else {
                    oVar2.f(false);
                }
                i11++;
                i3 = 2;
                jVar = this;
                z2 = true;
            }
            i11++;
            i3 = 2;
            jVar = this;
            z2 = true;
        }
        return z2;
    }

    @Override // h.z
    public final boolean i(h.o oVar) {
        return false;
    }

    @Override // h.z
    public final boolean j(h.o oVar) {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // h.z
    public final boolean k(h.f0 f0Var) {
        boolean z2;
        if (f0Var.hasVisibleItems()) {
            h.f0 f0Var2 = f0Var;
            while (true) {
                h.m mVar = f0Var2.f1852z;
                if (mVar == this.f2048c) {
                    break;
                }
                f0Var2 = (h.f0) mVar;
            }
            h.o oVar = f0Var2.A;
            ViewGroup viewGroup = (ViewGroup) this.f2052h;
            View view = null;
            view = null;
            if (viewGroup != null) {
                int childCount = viewGroup.getChildCount();
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt = viewGroup.getChildAt(i3);
                    if ((childAt instanceof h.a0) && ((h.a0) childAt).getItemData() == oVar) {
                        view = childAt;
                        break;
                    }
                }
            }
            if (view != null) {
                f0Var.A.getClass();
                int size = f0Var.f.size();
                int i4 = 0;
                while (true) {
                    if (i4 >= size) {
                        z2 = false;
                        break;
                    }
                    MenuItem item = f0Var.getItem(i4);
                    if (item.isVisible() && item.getIcon() != null) {
                        z2 = true;
                        break;
                    }
                    i4++;
                }
                f fVar = new f(this, this.b, f0Var, view);
                this.f2064t = fVar;
                fVar.f1946g = z2;
                h.u uVar = fVar.f1948i;
                if (uVar != null) {
                    uVar.o(z2);
                }
                f fVar2 = this.f2064t;
                if (!fVar2.b()) {
                    if (fVar2.f1945e == null) {
                        throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
                    }
                    fVar2.d(0, 0, false, false);
                }
                h.y yVar = this.f2050e;
                if (yVar != null) {
                    yVar.g(f0Var);
                }
                return true;
            }
        }
        return false;
    }

    public final boolean l() {
        h.m mVar;
        if (!this.f2056l || f() || (mVar = this.f2048c) == null || this.f2052h == null || this.f2065u != null) {
            return false;
        }
        mVar.i();
        if (mVar.f1893j.isEmpty()) {
            return false;
        }
        h hVar = new h(this, new f(this, this.b, this.f2048c, this.f2053i));
        this.f2065u = hVar;
        ((View) this.f2052h).post(hVar);
        return true;
    }
}
