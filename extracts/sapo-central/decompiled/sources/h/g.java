package h;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.fragment.app.m0;
import c0.p0;
import com.ex.auto.R;
import i.e2;
import i.f2;
import i.i2;
import i.q1;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class g extends u implements View.OnKeyListener, PopupWindow.OnDismissListener {
    public final Context b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1853c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1854d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f1855e;
    public final Handler f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public View f1863n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public View f1864o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f1865p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f1866q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f1867r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f1868s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f1869t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f1871v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public y f1872w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public ViewTreeObserver f1873x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public PopupWindow.OnDismissListener f1874y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f1875z;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayList f1856g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f1857h = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final d f1858i = new d(0, this);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final m0 f1859j = new m0(1, this);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final androidx.emoji2.text.m f1860k = new androidx.emoji2.text.m(15, this);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f1861l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f1862m = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f1870u = false;

    public g(Context context, View view, int i3, boolean z2) {
        this.b = context;
        this.f1863n = view;
        this.f1854d = i3;
        this.f1855e = z2;
        WeakHashMap weakHashMap = p0.f727a;
        this.f1865p = c0.b0.d(view) != 1 ? 1 : 0;
        Resources resources = context.getResources();
        this.f1853c = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.f = new Handler();
    }

    @Override // h.d0
    public final boolean a() {
        ArrayList arrayList = this.f1857h;
        return arrayList.size() > 0 && ((f) arrayList.get(0)).f1850a.f2012y.isShowing();
    }

    @Override // h.z
    public final void b(m mVar, boolean z2) {
        ArrayList arrayList = this.f1857h;
        int size = arrayList.size();
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                i3 = -1;
                break;
            } else if (mVar == ((f) arrayList.get(i3)).b) {
                break;
            } else {
                i3++;
            }
        }
        if (i3 < 0) {
            return;
        }
        int i4 = i3 + 1;
        if (i4 < arrayList.size()) {
            ((f) arrayList.get(i4)).b.c(false);
        }
        f fVar = (f) arrayList.remove(i3);
        m mVar2 = fVar.b;
        i2 i2Var = fVar.f1850a;
        i.b0 b0Var = i2Var.f2012y;
        mVar2.r(this);
        if (this.f1875z) {
            e2.b(b0Var, null);
            b0Var.setAnimationStyle(0);
        }
        i2Var.dismiss();
        int size2 = arrayList.size();
        if (size2 > 0) {
            this.f1865p = ((f) arrayList.get(size2 - 1)).f1851c;
        } else {
            View view = this.f1863n;
            WeakHashMap weakHashMap = p0.f727a;
            this.f1865p = c0.b0.d(view) == 1 ? 0 : 1;
        }
        if (size2 != 0) {
            if (z2) {
                ((f) arrayList.get(0)).b.c(false);
                return;
            }
            return;
        }
        dismiss();
        y yVar = this.f1872w;
        if (yVar != null) {
            yVar.b(mVar, true);
        }
        ViewTreeObserver viewTreeObserver = this.f1873x;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.f1873x.removeGlobalOnLayoutListener(this.f1858i);
            }
            this.f1873x = null;
        }
        this.f1864o.removeOnAttachStateChangeListener(this.f1859j);
        this.f1874y.onDismiss();
    }

    @Override // h.z
    public final void c(y yVar) {
        this.f1872w = yVar;
    }

    @Override // h.d0
    public final void d() {
        if (a()) {
            return;
        }
        ArrayList arrayList = this.f1856g;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            u((m) obj);
        }
        arrayList.clear();
        View view = this.f1863n;
        this.f1864o = view;
        if (view != null) {
            boolean z2 = this.f1873x == null;
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.f1873x = viewTreeObserver;
            if (z2) {
                viewTreeObserver.addOnGlobalLayoutListener(this.f1858i);
            }
            this.f1864o.addOnAttachStateChangeListener(this.f1859j);
        }
    }

    @Override // h.d0
    public final void dismiss() {
        ArrayList arrayList = this.f1857h;
        int size = arrayList.size();
        if (size > 0) {
            f[] fVarArr = (f[]) arrayList.toArray(new f[size]);
            for (int i3 = size - 1; i3 >= 0; i3--) {
                f fVar = fVarArr[i3];
                if (fVar.f1850a.f2012y.isShowing()) {
                    fVar.f1850a.dismiss();
                }
            }
        }
    }

    @Override // h.z
    public final void e() {
        ArrayList arrayList = this.f1857h;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            ListAdapter adapter = ((f) obj).f1850a.f1991c.getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                adapter = ((HeaderViewListAdapter) adapter).getWrappedAdapter();
            }
            ((j) adapter).notifyDataSetChanged();
        }
    }

    @Override // h.d0
    public final q1 f() {
        ArrayList arrayList = this.f1857h;
        if (arrayList.isEmpty()) {
            return null;
        }
        return ((f) arrayList.get(arrayList.size() - 1)).f1850a.f1991c;
    }

    @Override // h.z
    public final boolean h() {
        return false;
    }

    @Override // h.z
    public final boolean k(f0 f0Var) {
        ArrayList arrayList = this.f1857h;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            f fVar = (f) obj;
            if (f0Var == fVar.b) {
                fVar.f1850a.f1991c.requestFocus();
                return true;
            }
        }
        if (!f0Var.hasVisibleItems()) {
            return false;
        }
        l(f0Var);
        y yVar = this.f1872w;
        if (yVar != null) {
            yVar.g(f0Var);
        }
        return true;
    }

    @Override // h.u
    public final void l(m mVar) {
        mVar.b(this, this.b);
        if (a()) {
            u(mVar);
        } else {
            this.f1856g.add(mVar);
        }
    }

    @Override // h.u
    public final void n(View view) {
        if (this.f1863n != view) {
            this.f1863n = view;
            int i3 = this.f1861l;
            WeakHashMap weakHashMap = p0.f727a;
            this.f1862m = Gravity.getAbsoluteGravity(i3, c0.b0.d(view));
        }
    }

    @Override // h.u
    public final void o(boolean z2) {
        this.f1870u = z2;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        f fVar;
        ArrayList arrayList = this.f1857h;
        int size = arrayList.size();
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                fVar = null;
                break;
            }
            fVar = (f) arrayList.get(i3);
            if (!fVar.f1850a.f2012y.isShowing()) {
                break;
            } else {
                i3++;
            }
        }
        if (fVar != null) {
            fVar.b.c(false);
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i3, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i3 != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // h.u
    public final void p(int i3) {
        if (this.f1861l != i3) {
            this.f1861l = i3;
            View view = this.f1863n;
            WeakHashMap weakHashMap = p0.f727a;
            this.f1862m = Gravity.getAbsoluteGravity(i3, c0.b0.d(view));
        }
    }

    @Override // h.u
    public final void q(int i3) {
        this.f1866q = true;
        this.f1868s = i3;
    }

    @Override // h.u
    public final void r(PopupWindow.OnDismissListener onDismissListener) {
        this.f1874y = onDismissListener;
    }

    @Override // h.u
    public final void s(boolean z2) {
        this.f1871v = z2;
    }

    @Override // h.u
    public final void t(int i3) {
        this.f1867r = true;
        this.f1869t = i3;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x0116 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x010a  */
    /* JADX WARN: Code duplicated, block: B:57:0x0112  */
    /* JADX WARN: Code duplicated, block: B:62:0x0128  */
    /* JADX WARN: Code duplicated, block: B:65:0x0157  */
    /* JADX WARN: Code duplicated, block: B:67:0x0163  */
    /* JADX WARN: Code duplicated, block: B:68:0x0166  */
    /* JADX WARN: Code duplicated, block: B:69:0x0169  */
    /* JADX WARN: Code duplicated, block: B:73:0x0171  */
    /* JADX WARN: Code duplicated, block: B:74:0x0173  */
    /* JADX WARN: Code duplicated, block: B:77:0x017e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:79:0x0181  */
    /* JADX WARN: Code duplicated, block: B:80:0x0188 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:81:0x018a  */
    /* JADX WARN: Code duplicated, block: B:82:0x018f  */
    /* JADX WARN: Code duplicated, block: B:84:0x019c  */
    /* JADX WARN: Code duplicated, block: B:86:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:89:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:92:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:93:0x01b7  */
    public final void u(m mVar) {
        boolean z2;
        int i3;
        f fVar;
        View childAt;
        Rect rect;
        Rect rect2;
        int i4;
        i.b0 b0Var;
        q1 q1Var;
        int[] iArr;
        Rect rect3;
        int i5;
        int i6;
        boolean z3;
        Method method;
        MenuItem item;
        j jVar;
        int headersCount;
        int firstVisiblePosition;
        Context context = this.b;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        j jVar2 = new j(mVar, layoutInflaterFrom, this.f1855e, R.layout.abc_cascading_menu_item_layout);
        if (!a() && this.f1870u) {
            jVar2.f1882c = true;
        } else if (a()) {
            int size = mVar.f.size();
            int i7 = 0;
            while (true) {
                if (i7 >= size) {
                    z2 = false;
                    break;
                }
                MenuItem item2 = mVar.getItem(i7);
                if (item2.isVisible() && item2.getIcon() != null) {
                    z2 = true;
                    break;
                }
                i7++;
            }
            jVar2.f1882c = z2;
        }
        int iM = u.m(jVar2, context, this.f1853c);
        i2 i2Var = new i2(context, null, this.f1854d, 0);
        i2Var.B = this.f1860k;
        i2Var.f2003p = this;
        i2Var.f2012y.setOnDismissListener(this);
        i2Var.f2002o = this.f1863n;
        i2Var.f1999l = this.f1862m;
        i2Var.f2011x = true;
        i2Var.f2012y.setFocusable(true);
        i2Var.f2012y.setInputMethodMode(2);
        i2Var.p(jVar2);
        i2Var.r(iM);
        i2Var.f1999l = this.f1862m;
        ArrayList arrayList = this.f1857h;
        if (arrayList.size() > 0) {
            fVar = (f) arrayList.get(arrayList.size() - 1);
            m mVar2 = fVar.b;
            int size2 = mVar2.f.size();
            int i8 = 0;
            while (true) {
                if (i8 >= size2) {
                    item = null;
                    break;
                }
                item = mVar2.getItem(i8);
                if (item.hasSubMenu() && mVar == item.getSubMenu()) {
                    break;
                } else {
                    i8++;
                }
            }
            if (item == null) {
                i3 = 1;
                childAt = null;
            } else {
                q1 q1Var2 = fVar.f1850a.f1991c;
                ListAdapter adapter = q1Var2.getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    headersCount = headerViewListAdapter.getHeadersCount();
                    jVar = (j) headerViewListAdapter.getWrappedAdapter();
                } else {
                    jVar = (j) adapter;
                    headersCount = 0;
                }
                int count = jVar.getCount();
                i3 = 1;
                int i9 = 0;
                while (true) {
                    if (i9 >= count) {
                        i9 = -1;
                        break;
                    } else if (item == jVar.getItem(i9)) {
                        break;
                    } else {
                        i9++;
                    }
                }
                if (i9 != -1 && (firstVisiblePosition = (i9 + headersCount) - q1Var2.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < q1Var2.getChildCount()) {
                    childAt = q1Var2.getChildAt(firstVisiblePosition);
                }
            }
            if (childAt != null) {
                i4 = Build.VERSION.SDK_INT;
                b0Var = i2Var.f2012y;
                if (i4 <= 28) {
                    method = i2.C;
                    if (method != null) {
                        try {
                            method.invoke(b0Var, Boolean.FALSE);
                        } catch (Exception unused) {
                            Log.i("MenuPopupWindow", "Could not invoke setTouchModal() on PopupWindow. Oh well.");
                        }
                    }
                } else {
                    f2.a(b0Var, false);
                }
                e2.a(i2Var.f2012y, null);
                q1Var = ((f) arrayList.get(arrayList.size() - 1)).f1850a.f1991c;
                iArr = new int[2];
                q1Var.getLocationOnScreen(iArr);
                rect3 = new Rect();
                this.f1864o.getWindowVisibleDisplayFrame(rect3);
                if (this.f1865p == i3) {
                    if (q1Var.getWidth() + iArr[0] + iM > rect3.right) {
                        i6 = 0;
                        i5 = 1;
                    } else {
                        i5 = 1;
                        i6 = 1;
                    }
                } else if (iArr[0] - iM < 0) {
                    i5 = 1;
                    i6 = 1;
                } else {
                    i6 = 0;
                    i5 = 1;
                }
                if (i6 == i5) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                this.f1865p = i6;
                i2Var.f2002o = childAt;
                if ((this.f1862m & 5) == 5) {
                    if (!z3) {
                        iM = 0 - childAt.getWidth();
                    }
                } else if (z3) {
                    iM = childAt.getWidth();
                } else {
                    iM = 0 - iM;
                }
                i2Var.f = iM;
                i2Var.f1998k = true;
                i2Var.f1997j = true;
                i2Var.h(0);
            } else {
                if (this.f1866q) {
                    i2Var.f = this.f1868s;
                }
                if (this.f1867r) {
                    i2Var.h(this.f1869t);
                }
                rect = this.f1940a;
                if (rect != null) {
                    rect2 = new Rect(rect);
                } else {
                    rect2 = null;
                }
                i2Var.f2010w = rect2;
            }
            arrayList.add(new f(i2Var, mVar, this.f1865p));
            i2Var.d();
            q1 q1Var3 = i2Var.f1991c;
            q1Var3.setOnKeyListener(this);
            if (fVar == null || !this.f1871v || mVar.f1896m == null) {
                return;
            }
            FrameLayout frameLayout = (FrameLayout) layoutInflaterFrom.inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) q1Var3, false);
            TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
            frameLayout.setEnabled(false);
            textView.setText(mVar.f1896m);
            q1Var3.addHeaderView(frameLayout, null, false);
            i2Var.d();
            return;
        }
        i3 = 1;
        fVar = null;
        childAt = null;
        if (childAt != null) {
            i4 = Build.VERSION.SDK_INT;
            b0Var = i2Var.f2012y;
            if (i4 <= 28) {
                method = i2.C;
                if (method != null) {
                    method.invoke(b0Var, Boolean.FALSE);
                }
            } else {
                f2.a(b0Var, false);
            }
            e2.a(i2Var.f2012y, null);
            q1Var = ((f) arrayList.get(arrayList.size() - 1)).f1850a.f1991c;
            iArr = new int[2];
            q1Var.getLocationOnScreen(iArr);
            rect3 = new Rect();
            this.f1864o.getWindowVisibleDisplayFrame(rect3);
            if (this.f1865p == i3) {
                if (q1Var.getWidth() + iArr[0] + iM > rect3.right) {
                    i6 = 0;
                    i5 = 1;
                } else {
                    i5 = 1;
                    i6 = 1;
                }
            } else if (iArr[0] - iM < 0) {
                i5 = 1;
                i6 = 1;
            } else {
                i6 = 0;
                i5 = 1;
            }
            if (i6 == i5) {
                z3 = true;
            } else {
                z3 = false;
            }
            this.f1865p = i6;
            i2Var.f2002o = childAt;
            if ((this.f1862m & 5) == 5) {
                if (!z3) {
                    iM = 0 - childAt.getWidth();
                }
            } else if (z3) {
                iM = childAt.getWidth();
            } else {
                iM = 0 - iM;
            }
            i2Var.f = iM;
            i2Var.f1998k = true;
            i2Var.f1997j = true;
            i2Var.h(0);
        } else {
            if (this.f1866q) {
                i2Var.f = this.f1868s;
            }
            if (this.f1867r) {
                i2Var.h(this.f1869t);
            }
            rect = this.f1940a;
            if (rect != null) {
                rect2 = new Rect(rect);
            } else {
                rect2 = null;
            }
            i2Var.f2010w = rect2;
        }
        arrayList.add(new f(i2Var, mVar, this.f1865p));
        i2Var.d();
        q1 q1Var4 = i2Var.f1991c;
        q1Var4.setOnKeyListener(this);
        if (fVar == null) {
        }
    }
}
