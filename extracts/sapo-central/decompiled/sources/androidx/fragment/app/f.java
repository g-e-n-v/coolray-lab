package androidx.fragment.app;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.ex.auto.R;
import i.u0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.WeakHashMap;
import q0.w0;

/* JADX INFO: loaded from: classes.dex */
public final class f implements y.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static f f411e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f412a;
    public Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f413c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f414d;

    public /* synthetic */ f(int i3) {
        this.f412a = i3;
    }

    public static f v(Context context, AttributeSet attributeSet, int[] iArr, int i3) {
        return new f(context, context.obtainStyledAttributes(attributeSet, iArr, i3, 0));
    }

    public static void w() {
        if (Build.VERSION.SDK_INT >= 29) {
            throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
        }
    }

    public void A(o.e eVar) {
        ArrayList arrayList = (ArrayList) this.b;
        arrayList.clear();
        int size = eVar.f2598j0.size();
        for (int i3 = 0; i3 < size; i3++) {
            o.d dVar = (o.d) eVar.f2598j0.get(i3);
            int[] iArr = dVar.f2580i0;
            if (iArr[0] == 3 || iArr[1] == 3) {
                arrayList.add(dVar);
            }
        }
        eVar.f2600l0.b = true;
    }

    public void a(r rVar) {
        if (((ArrayList) this.b).contains(rVar)) {
            throw new IllegalStateException("Fragment already added: " + rVar);
        }
        synchronized (((ArrayList) this.b)) {
            ((ArrayList) this.b).add(rVar);
        }
        rVar.f509k = true;
    }

    public void b(View view, int i3, boolean z2) {
        RecyclerView recyclerView = ((q0.z) this.b).f3073a;
        int childCount = i3 < 0 ? recyclerView.getChildCount() : o(i3);
        ((q0.c) this.f413c).e(childCount, z2);
        if (z2) {
            r(view);
        }
        recyclerView.addView(view, childCount);
        RecyclerView.I(view);
    }

    public void c(View view, int i3, ViewGroup.LayoutParams layoutParams, boolean z2) {
        RecyclerView recyclerView = ((q0.z) this.b).f3073a;
        int childCount = i3 < 0 ? recyclerView.getChildCount() : o(i3);
        ((q0.c) this.f413c).e(childCount, z2);
        if (z2) {
            r(view);
        }
        w0 w0VarI = RecyclerView.I(view);
        if (w0VarI != null) {
            if (!w0VarI.j() && !w0VarI.o()) {
                throw new IllegalArgumentException("Called attach on a child which is not detached: " + w0VarI + recyclerView.y());
            }
            w0VarI.f3055j &= -257;
        }
        recyclerView.attachViewToParent(view, childCount, layoutParams);
    }

    public void d(int i3) {
        w0 w0VarI;
        int iO = o(i3);
        ((q0.c) this.f413c).f(iO);
        RecyclerView recyclerView = ((q0.z) this.b).f3073a;
        View childAt = recyclerView.getChildAt(iO);
        if (childAt != null && (w0VarI = RecyclerView.I(childAt)) != null) {
            if (w0VarI.j() && !w0VarI.o()) {
                throw new IllegalArgumentException("called detach on an already detached child " + w0VarI + recyclerView.y());
            }
            w0VarI.a(256);
        }
        recyclerView.detachViewFromParent(iO);
    }

    public r e(String str) {
        n0 n0Var = (n0) ((HashMap) this.f413c).get(str);
        if (n0Var != null) {
            return n0Var.f479c;
        }
        return null;
    }

    public r f(String str) {
        for (n0 n0Var : ((HashMap) this.f413c).values()) {
            if (n0Var != null) {
                r rVarF = n0Var.f479c;
                if (!str.equals(rVarF.f504e)) {
                    rVarF = rVarF.f518t.f421c.f(str);
                }
                if (rVarF != null) {
                    return rVarF;
                }
            }
        }
        return null;
    }

    public ArrayList g() {
        ArrayList arrayList = new ArrayList();
        for (n0 n0Var : ((HashMap) this.f413c).values()) {
            if (n0Var != null) {
                arrayList.add(n0Var);
            }
        }
        return arrayList;
    }

    public View h(int i3) {
        return ((q0.z) this.b).f3073a.getChildAt(o(i3));
    }

    public int i() {
        return ((q0.z) this.b).f3073a.getChildCount() - ((ArrayList) this.f414d).size();
    }

    public ColorStateList j(int i3) {
        int resourceId;
        ColorStateList colorStateListT;
        TypedArray typedArray = (TypedArray) this.f413c;
        return (!typedArray.hasValue(i3) || (resourceId = typedArray.getResourceId(i3, 0)) == 0 || (colorStateListT = a1.b.t((Context) this.b, resourceId)) == null) ? typedArray.getColorStateList(i3) : colorStateListT;
    }

    public Drawable k(int i3) {
        int resourceId;
        TypedArray typedArray = (TypedArray) this.f413c;
        return (!typedArray.hasValue(i3) || (resourceId = typedArray.getResourceId(i3, 0)) == 0) ? typedArray.getDrawable(i3) : a1.b.v((Context) this.b, resourceId);
    }

    public Drawable l(int i3) {
        int resourceId;
        Drawable drawableD;
        if (!((TypedArray) this.f413c).hasValue(i3) || (resourceId = ((TypedArray) this.f413c).getResourceId(i3, 0)) == 0) {
            return null;
        }
        i.t tVarA = i.t.a();
        Context context = (Context) this.b;
        synchronized (tVarA) {
            drawableD = tVarA.f2150a.d(context, resourceId, true);
        }
        return drawableD;
    }

    public Typeface m(int i3, int i4, u0 u0Var) {
        int resourceId = ((TypedArray) this.f413c).getResourceId(i3, 0);
        if (resourceId == 0) {
            return null;
        }
        if (((TypedValue) this.f414d) == null) {
            this.f414d = new TypedValue();
        }
        Context context = (Context) this.b;
        TypedValue typedValue = (TypedValue) this.f414d;
        ThreadLocal threadLocal = u.n.f3235a;
        if (context.isRestricted()) {
            return null;
        }
        return u.n.a(context, resourceId, typedValue, i4, u0Var, true);
    }

    public List n() {
        ArrayList arrayList;
        if (((ArrayList) this.b).isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        synchronized (((ArrayList) this.b)) {
            arrayList = new ArrayList((ArrayList) this.b);
        }
        return arrayList;
    }

    public int o(int i3) {
        q0.c cVar = (q0.c) this.f413c;
        if (i3 < 0) {
            return -1;
        }
        int childCount = ((q0.z) this.b).f3073a.getChildCount();
        int i4 = i3;
        while (i4 < childCount) {
            int iB = i3 - (i4 - cVar.b(i4));
            if (iB == 0) {
                while (cVar.d(i4)) {
                    i4++;
                }
                return i4;
            }
            i4 += iB;
        }
        return -1;
    }

    @Override // y.a
    public void onCancel() {
        View view = (View) this.b;
        view.clearAnimation();
        ((ViewGroup) this.f413c).endViewTransition(view);
        ((g) this.f414d).d();
    }

    public View p(int i3) {
        return ((q0.z) this.b).f3073a.getChildAt(i3);
    }

    public int q() {
        return ((q0.z) this.b).f3073a.getChildCount();
    }

    public void r(View view) {
        ((ArrayList) this.f414d).add(view);
        q0.z zVar = (q0.z) this.b;
        w0 w0VarI = RecyclerView.I(view);
        if (w0VarI != null) {
            View view2 = w0VarI.f3048a;
            RecyclerView recyclerView = zVar.f3073a;
            int i3 = w0VarI.f3062q;
            if (i3 != -1) {
                w0VarI.f3061p = i3;
            } else {
                WeakHashMap weakHashMap = c0.p0.f727a;
                w0VarI.f3061p = c0.a0.c(view2);
            }
            if (recyclerView.L()) {
                w0VarI.f3062q = 4;
                recyclerView.f644p0.add(w0VarI);
            } else {
                WeakHashMap weakHashMap2 = c0.p0.f727a;
                c0.a0.s(view2, 4);
            }
        }
    }

    public void s(n0 n0Var) {
        r rVar = n0Var.f479c;
        String str = rVar.f504e;
        HashMap map = (HashMap) this.f413c;
        if (map.get(str) != null) {
            return;
        }
        map.put(rVar.f504e, n0Var);
        if (h0.D(2)) {
            Log.v("FragmentManager", "Added fragment to active set " + rVar);
        }
    }

    public void t(n0 n0Var) {
        r rVar = n0Var.f479c;
        if (rVar.A) {
            ((j0) this.f414d).b(rVar);
        }
        if (((n0) ((HashMap) this.f413c).put(rVar.f504e, null)) != null && h0.D(2)) {
            Log.v("FragmentManager", "Removed fragment from active set " + rVar);
        }
    }

    public String toString() {
        switch (this.f412a) {
            case 8:
                return ((q0.c) this.f413c).toString() + ", hidden list:" + ((ArrayList) this.f414d).size();
            default:
                return super.toString();
        }
    }

    public boolean u(q.f fVar, o.d dVar, int i3) {
        p.b bVar = (p.b) this.f413c;
        int[] iArr = dVar.f2580i0;
        int[] iArr2 = dVar.f2585n;
        bVar.f2639a = iArr[0];
        bVar.b = iArr[1];
        bVar.f2640c = dVar.l();
        bVar.f2641d = dVar.i();
        bVar.f2645i = false;
        bVar.f2646j = i3;
        boolean z2 = bVar.f2639a == 3;
        boolean z3 = bVar.b == 3;
        boolean z4 = z2 && dVar.P > 0.0f;
        boolean z5 = z3 && dVar.P > 0.0f;
        if (z4 && iArr2[0] == 4) {
            bVar.f2639a = 1;
        }
        if (z5 && iArr2[1] == 4) {
            bVar.b = 1;
        }
        fVar.b(dVar, bVar);
        dVar.D(bVar.f2642e);
        dVar.A(bVar.f);
        dVar.f2596y = bVar.f2644h;
        int i4 = bVar.f2643g;
        dVar.T = i4;
        dVar.f2596y = i4 > 0;
        bVar.f2646j = 0;
        return bVar.f2645i;
    }

    public void x() {
        ((TypedArray) this.f413c).recycle();
    }

    public void y(o.e eVar, int i3, int i4) {
        int i5 = eVar.U;
        int i6 = eVar.V;
        eVar.U = 0;
        eVar.V = 0;
        eVar.D(i3);
        eVar.A(i4);
        if (i5 < 0) {
            eVar.U = 0;
        } else {
            eVar.U = i5;
        }
        if (i6 < 0) {
            eVar.V = 0;
        } else {
            eVar.V = i6;
        }
        ((o.e) this.f414d).K();
    }

    public void z(View view) {
        if (((ArrayList) this.f414d).remove(view)) {
            q0.z zVar = (q0.z) this.b;
            w0 w0VarI = RecyclerView.I(view);
            if (w0VarI != null) {
                RecyclerView recyclerView = zVar.f3073a;
                int i3 = w0VarI.f3061p;
                if (recyclerView.L()) {
                    w0VarI.f3062q = i3;
                    recyclerView.f644p0.add(w0VarI);
                } else {
                    View view2 = w0VarI.f3048a;
                    WeakHashMap weakHashMap = c0.p0.f727a;
                    c0.a0.s(view2, i3);
                }
                w0VarI.f3061p = 0;
            }
        }
    }

    public f() {
        this.f412a = 1;
        this.b = new ArrayList();
        this.f413c = new HashMap();
    }

    public f(q0.z zVar) {
        this.f412a = 8;
        this.b = zVar;
        this.f413c = new q0.c();
        this.f414d = new ArrayList();
    }

    public f(Context context, TypedArray typedArray) {
        this.f412a = 5;
        this.b = context;
        this.f413c = typedArray;
    }

    public f(Context context, LocationManager locationManager) {
        this.f412a = 3;
        this.f414d = new e.h0();
        this.b = context;
        this.f413c = locationManager;
    }

    public f(o.e eVar) {
        this.f412a = 7;
        this.b = new ArrayList();
        this.f413c = new p.b();
        this.f414d = eVar;
    }

    public f(Context context) {
        this.f412a = 2;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(k1.a.O(R.attr.materialCalendarStyle, context, com.google.android.material.datepicker.m.class.getCanonicalName()), b1.a.f679j);
        com.google.android.material.datepicker.c.b(context, typedArrayObtainStyledAttributes.getResourceId(3, 0));
        this.f414d = com.google.android.material.datepicker.c.b(context, typedArrayObtainStyledAttributes.getResourceId(1, 0));
        com.google.android.material.datepicker.c.b(context, typedArrayObtainStyledAttributes.getResourceId(2, 0));
        com.google.android.material.datepicker.c.b(context, typedArrayObtainStyledAttributes.getResourceId(4, 0));
        ColorStateList colorStateListZ = k1.a.z(context, typedArrayObtainStyledAttributes, 5);
        this.b = com.google.android.material.datepicker.c.b(context, typedArrayObtainStyledAttributes.getResourceId(7, 0));
        com.google.android.material.datepicker.c.b(context, typedArrayObtainStyledAttributes.getResourceId(6, 0));
        this.f413c = com.google.android.material.datepicker.c.b(context, typedArrayObtainStyledAttributes.getResourceId(8, 0));
        new Paint().setColor(colorStateListZ.getDefaultColor());
        typedArrayObtainStyledAttributes.recycle();
    }

    public f(View view, ViewGroup viewGroup, g gVar) {
        this.f412a = 0;
        this.b = view;
        this.f413c = viewGroup;
        this.f414d = gVar;
    }
}
