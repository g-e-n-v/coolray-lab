package androidx.activity.result;

import android.content.Context;
import android.content.res.XmlResourceParser;
import android.os.Handler;
import android.text.Editable;
import android.text.Selection;
import android.text.TextPaint;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.emoji2.text.g;
import androidx.emoji2.text.i;
import androidx.emoji2.text.m;
import androidx.emoji2.text.o;
import androidx.emoji2.text.t;
import androidx.emoji2.text.w;
import androidx.fragment.app.h0;
import androidx.fragment.app.r;
import c0.d0;
import c0.p0;
import c0.q;
import e.j;
import e.y;
import h.c0;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import l.e;
import l.k;
import org.xmlpull.v1.XmlPullParserException;
import q.h;
import q0.d1;
import q0.g0;
import q0.g1;
import q0.h1;
import q0.w0;
import z.f;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f100a;
    public Object b;

    public /* synthetic */ c(Object obj, Object obj2) {
        this.b = obj;
        this.f100a = obj2;
    }

    public static boolean b(Editable editable, KeyEvent keyEvent, boolean z2) {
        w[] wVarArr;
        if (KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState())) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (selectionStart != -1 && selectionEnd != -1 && selectionStart == selectionEnd && (wVarArr = (w[]) editable.getSpans(selectionStart, selectionEnd, w.class)) != null && wVarArr.length > 0) {
                for (w wVar : wVarArr) {
                    int spanStart = editable.getSpanStart(wVar);
                    int spanEnd = editable.getSpanEnd(wVar);
                    if ((z2 && spanStart == selectionStart) || ((!z2 && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                        editable.delete(spanStart, spanEnd);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static int s(int i3, int i4) {
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < i3; i7++) {
            i5++;
            if (i5 == i4) {
                i6++;
                i5 = 0;
            } else if (i5 > i4) {
                i6++;
                i5 = 1;
            }
        }
        return i5 + 1 > i4 ? i6 + 1 : i6;
    }

    public void A(f fVar) {
        Handler handler = (Handler) this.b;
        m mVar = (m) this.f100a;
        int i3 = fVar.b;
        if (i3 != 0) {
            handler.post(new i(mVar, i3, 2));
        } else {
            handler.post(new androidx.fragment.app.c(mVar, 3, fVar.f4672a));
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public void B(Context context, XmlResourceParser xmlResourceParser) {
        q.m mVar = new q.m();
        int attributeCount = xmlResourceParser.getAttributeCount();
        for (int i3 = 0; i3 < attributeCount; i3++) {
            if ("id".equals(xmlResourceParser.getAttributeName(i3))) {
                String attributeValue = xmlResourceParser.getAttributeValue(i3);
                int identifier = attributeValue.contains("/") ? context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), "id", context.getPackageName()) : -1;
                if (identifier == -1) {
                    if (attributeValue.length() > 1) {
                        identifier = Integer.parseInt(attributeValue.substring(1));
                    } else {
                        Log.e("ConstraintLayoutStates", "error in parsing id");
                    }
                }
                try {
                    int eventType = xmlResourceParser.getEventType();
                    h hVarC = null;
                    while (eventType != 1) {
                        if (eventType == 0) {
                            xmlResourceParser.getName();
                        } else if (eventType == 2) {
                            String name = xmlResourceParser.getName();
                            switch (name.hashCode()) {
                                case -2025855158:
                                    if (name.equals("Layout")) {
                                        if (hVarC == null) {
                                            throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                        }
                                        hVarC.f2774d.a(context, Xml.asAttributeSet(xmlResourceParser));
                                    } else {
                                        continue;
                                    }
                                    break;
                                case -1984451626:
                                    if (name.equals("Motion")) {
                                        if (hVarC == null) {
                                            throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                        }
                                        hVarC.f2773c.a(context, Xml.asAttributeSet(xmlResourceParser));
                                    } else {
                                        continue;
                                    }
                                    break;
                                case -1269513683:
                                    if (name.equals("PropertySet")) {
                                        if (hVarC == null) {
                                            throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                        }
                                        hVarC.b.a(context, Xml.asAttributeSet(xmlResourceParser));
                                    } else {
                                        continue;
                                    }
                                    break;
                                case -1238332596:
                                    if (name.equals("Transform")) {
                                        if (hVarC == null) {
                                            throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                        }
                                        hVarC.f2775e.a(context, Xml.asAttributeSet(xmlResourceParser));
                                    } else {
                                        continue;
                                    }
                                    break;
                                case -71750448:
                                    if (name.equals("Guideline")) {
                                        hVarC = q.m.c(context, Xml.asAttributeSet(xmlResourceParser));
                                        hVarC.f2774d.f2777a = true;
                                    }
                                    break;
                                case 1331510167:
                                    if (name.equals("Barrier")) {
                                        hVarC = q.m.c(context, Xml.asAttributeSet(xmlResourceParser));
                                        hVarC.f2774d.f2781c0 = 1;
                                    }
                                    break;
                                case 1791837707:
                                    if (name.equals("CustomAttribute")) {
                                        if (hVarC == null) {
                                            throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                        }
                                        q.b.a(context, xmlResourceParser, hVarC.f);
                                    } else {
                                        continue;
                                    }
                                    break;
                                case 1803088381:
                                    if (name.equals("Constraint")) {
                                        hVarC = q.m.c(context, Xml.asAttributeSet(xmlResourceParser));
                                    }
                                    break;
                            }
                        } else if (eventType != 3) {
                            continue;
                        } else {
                            String name2 = xmlResourceParser.getName();
                            if ("ConstraintSet".equals(name2)) {
                                ((SparseArray) this.b).put(identifier, mVar);
                                return;
                            } else if (name2.equalsIgnoreCase("Constraint")) {
                                mVar.f2831c.put(Integer.valueOf(hVarC.f2772a), hVarC);
                                hVarC = null;
                            }
                        }
                        eventType = xmlResourceParser.next();
                    }
                } catch (IOException e3) {
                    e3.printStackTrace();
                } catch (XmlPullParserException e4) {
                    e4.printStackTrace();
                }
                ((SparseArray) this.b).put(identifier, mVar);
                return;
            }
        }
    }

    public q C(w0 w0Var, int i3) {
        h1 h1Var;
        q qVar;
        k kVar = (k) this.f100a;
        int iD = kVar.d(w0Var);
        if (iD >= 0 && (h1Var = (h1) kVar.i(iD)) != null) {
            int i4 = h1Var.f2901a;
            if ((i4 & i3) != 0) {
                int i5 = i4 & (~i3);
                h1Var.f2901a = i5;
                if (i3 == 4) {
                    qVar = h1Var.b;
                } else {
                    if (i3 != 8) {
                        throw new IllegalArgumentException("Must provide flag PRE or POST");
                    }
                    qVar = h1Var.f2902c;
                }
                if ((i5 & 12) == 0) {
                    kVar.h(iD);
                    h1Var.f2901a = 0;
                    h1Var.b = null;
                    h1Var.f2902c = null;
                    h1.f2900d.c(h1Var);
                }
                return qVar;
            }
        }
        return null;
    }

    public void D(w0 w0Var) {
        h1 h1Var = (h1) ((k) this.f100a).getOrDefault(w0Var, null);
        if (h1Var == null) {
            return;
        }
        h1Var.f2901a &= -2;
    }

    public void E(w0 w0Var) {
        e eVar = (e) this.b;
        for (int iE = eVar.e() - 1; iE >= 0; iE--) {
            if (w0Var == eVar.f(iE)) {
                Object[] objArr = eVar.f2399c;
                Object obj = objArr[iE];
                Object obj2 = e.f2397e;
                if (obj == obj2) {
                    break;
                }
                objArr[iE] = obj2;
                eVar.f2398a = true;
                break;
            }
        }
        h1 h1Var = (h1) ((k) this.f100a).remove(w0Var);
        if (h1Var != null) {
            h1Var.f2901a = 0;
            h1Var.b = null;
            h1Var.f2902c = null;
            h1.f2900d.c(h1Var);
        }
    }

    public void a(w0 w0Var, q qVar) {
        k kVar = (k) this.f100a;
        h1 h1VarA = (h1) kVar.getOrDefault(w0Var, null);
        if (h1VarA == null) {
            h1VarA = h1.a();
            kVar.put(w0Var, h1VarA);
        }
        h1VarA.f2902c = qVar;
        h1VarA.f2901a |= 8;
    }

    public void c(boolean z2) {
        r rVar = ((h0) this.b).f433p;
        if (rVar != null) {
            rVar.j().f428k.c(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f100a).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    public void d(boolean z2) {
        h0 h0Var = (h0) this.b;
        j jVar = h0Var.f431n.b;
        r rVar = h0Var.f433p;
        if (rVar != null) {
            rVar.j().f428k.d(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f100a).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    public void e(boolean z2) {
        r rVar = ((h0) this.b).f433p;
        if (rVar != null) {
            rVar.j().f428k.e(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f100a).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    public void f(boolean z2) {
        r rVar = ((h0) this.b).f433p;
        if (rVar != null) {
            rVar.j().f428k.f(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f100a).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    public void g(boolean z2) {
        r rVar = ((h0) this.b).f433p;
        if (rVar != null) {
            rVar.j().f428k.g(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f100a).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    public void h(boolean z2) {
        r rVar = ((h0) this.b).f433p;
        if (rVar != null) {
            rVar.j().f428k.h(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f100a).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    public void i(boolean z2) {
        h0 h0Var = (h0) this.b;
        j jVar = h0Var.f431n.b;
        r rVar = h0Var.f433p;
        if (rVar != null) {
            rVar.j().f428k.i(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f100a).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    public void j(boolean z2) {
        r rVar = ((h0) this.b).f433p;
        if (rVar != null) {
            rVar.j().f428k.j(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f100a).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    public void k(boolean z2) {
        r rVar = ((h0) this.b).f433p;
        if (rVar != null) {
            rVar.j().f428k.k(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f100a).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    public void l(boolean z2) {
        r rVar = ((h0) this.b).f433p;
        if (rVar != null) {
            rVar.j().f428k.l(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f100a).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    public void m(boolean z2) {
        r rVar = ((h0) this.b).f433p;
        if (rVar != null) {
            rVar.j().f428k.m(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f100a).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    public void n(boolean z2) {
        r rVar = ((h0) this.b).f433p;
        if (rVar != null) {
            rVar.j().f428k.n(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f100a).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    public void o(boolean z2) {
        r rVar = ((h0) this.b).f433p;
        if (rVar != null) {
            rVar.j().f428k.o(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f100a).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    public void p(boolean z2) {
        r rVar = ((h0) this.b).f433p;
        if (rVar != null) {
            rVar.j().f428k.p(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f100a).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    public void q(int i3) {
        int[] iArr = (int[]) this.f100a;
        if (iArr == null) {
            int[] iArr2 = new int[Math.max(i3, 10) + 1];
            this.f100a = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i3 >= iArr.length) {
            int length = iArr.length;
            while (length <= i3) {
                length *= 2;
            }
            int[] iArr3 = new int[length];
            this.f100a = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            int[] iArr4 = (int[]) this.f100a;
            Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
        }
    }

    public View r(int i3, int i4, int i5, int i6) {
        View viewU;
        g1 g1Var = (g1) this.b;
        g0 g0Var = (g0) this.f100a;
        int iD = g0Var.d();
        int iC = g0Var.c();
        int i7 = i4 > i3 ? 1 : -1;
        View view = null;
        while (i3 != i4) {
            switch (g0Var.f2888a) {
                case 0:
                    viewU = g0Var.b.u(i3);
                    break;
                default:
                    viewU = g0Var.b.u(i3);
                    break;
            }
            int iB = g0Var.b(viewU);
            int iA = g0Var.a(viewU);
            g1Var.b = iD;
            g1Var.f2890c = iC;
            g1Var.f2891d = iB;
            g1Var.f2892e = iA;
            if (i5 != 0) {
                g1Var.f2889a = i5;
                if (g1Var.a()) {
                    return viewU;
                }
            }
            if (i6 != 0) {
                g1Var.f2889a = i6;
                if (g1Var.a()) {
                    view = viewU;
                }
            }
            i3 += i7;
        }
        return view;
    }

    public boolean t(CharSequence charSequence, int i3, int i4, o oVar) {
        if (oVar.f346c == 0) {
            g gVar = (g) this.b;
            j0.a aVarB = oVar.b();
            int iA = aVarB.a(8);
            if (iA != 0) {
                ((ByteBuffer) aVarB.f741d).getShort(iA + aVarB.f739a);
            }
            androidx.emoji2.text.c cVar = (androidx.emoji2.text.c) gVar;
            cVar.getClass();
            ThreadLocal threadLocal = androidx.emoji2.text.c.b;
            if (threadLocal.get() == null) {
                threadLocal.set(new StringBuilder());
            }
            StringBuilder sb = (StringBuilder) threadLocal.get();
            sb.setLength(0);
            while (i3 < i4) {
                sb.append(charSequence.charAt(i3));
                i3++;
            }
            TextPaint textPaint = cVar.f326a;
            String string = sb.toString();
            int i5 = v.e.f3312a;
            oVar.f346c = v.d.a(textPaint, string) ? 2 : 1;
        }
        return oVar.f346c == 2;
    }

    public void u() {
        ((SparseIntArray) this.f100a).clear();
    }

    public boolean v(View view) {
        g1 g1Var = (g1) this.b;
        g0 g0Var = (g0) this.f100a;
        int iD = g0Var.d();
        int iC = g0Var.c();
        int iB = g0Var.b(view);
        int iA = g0Var.a(view);
        g1Var.b = iD;
        g1Var.f2890c = iC;
        g1Var.f2891d = iB;
        g1Var.f2892e = iA;
        g1Var.f2889a = 24579;
        return g1Var.a();
    }

    public void w(int i3, int i4) {
        int[] iArr = (int[]) this.f100a;
        if (iArr == null || i3 >= iArr.length) {
            return;
        }
        int i5 = i3 + i4;
        q(i5);
        int[] iArr2 = (int[]) this.f100a;
        System.arraycopy(iArr2, i3, iArr2, i5, (iArr2.length - i3) - i4);
        Arrays.fill((int[]) this.f100a, i3, i5, -1);
        ArrayList arrayList = (ArrayList) this.b;
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            d1 d1Var = (d1) ((ArrayList) this.b).get(size);
            int i6 = d1Var.f2857a;
            if (i6 >= i3) {
                d1Var.f2857a = i6 + i4;
            }
        }
    }

    public void x(int i3, int i4) {
        int[] iArr = (int[]) this.f100a;
        if (iArr == null || i3 >= iArr.length) {
            return;
        }
        int i5 = i3 + i4;
        q(i5);
        int[] iArr2 = (int[]) this.f100a;
        System.arraycopy(iArr2, i5, iArr2, i3, (iArr2.length - i3) - i4);
        int[] iArr3 = (int[]) this.f100a;
        Arrays.fill(iArr3, iArr3.length - i4, iArr3.length, -1);
        ArrayList arrayList = (ArrayList) this.b;
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            d1 d1Var = (d1) ((ArrayList) this.b).get(size);
            int i6 = d1Var.f2857a;
            if (i6 >= i3) {
                if (i6 < i5) {
                    ((ArrayList) this.b).remove(size);
                } else {
                    d1Var.f2857a = i6 - i4;
                }
            }
        }
    }

    public void y(g.a aVar) {
        t tVar = (t) this.f100a;
        ((ActionMode.Callback) tVar.f359a).onDestroyActionMode(tVar.b(aVar));
        y yVar = (y) this.b;
        if (yVar.f1704w != null) {
            yVar.f1693l.getDecorView().removeCallbacks(yVar.f1705x);
        }
        if (yVar.f1703v != null) {
            c0.w0 w0Var = yVar.f1706y;
            if (w0Var != null) {
                w0Var.b();
            }
            c0.w0 w0VarA = p0.a(yVar.f1703v);
            w0VarA.a(0.0f);
            yVar.f1706y = w0VarA;
            w0VarA.d(new e.r(2, this));
        }
        yVar.f1702u = null;
        ViewGroup viewGroup = yVar.A;
        WeakHashMap weakHashMap = p0.f727a;
        d0.c(viewGroup);
        yVar.O();
    }

    public boolean z(g.a aVar, Menu menu) {
        ViewGroup viewGroup = ((y) this.b).A;
        WeakHashMap weakHashMap = p0.f727a;
        d0.c(viewGroup);
        t tVar = (t) this.f100a;
        ActionMode.Callback callback = (ActionMode.Callback) tVar.f359a;
        g.f fVarB = tVar.b(aVar);
        k kVar = (k) tVar.f361d;
        Menu c0Var = (Menu) kVar.getOrDefault(menu, null);
        if (c0Var == null) {
            c0Var = new c0((Context) tVar.b, (h.m) menu);
            kVar.put(menu, c0Var);
        }
        return callback.onPrepareActionMode(fVarB, c0Var);
    }

    public c(Runnable runnable) {
        this.b = new CopyOnWriteArrayList();
        new HashMap();
        this.f100a = runnable;
    }

    public c(g0 g0Var) {
        this.f100a = g0Var;
        g1 g1Var = new g1();
        g1Var.f2889a = 0;
        this.b = g1Var;
    }

    public c(Animation animation) {
        this.f100a = animation;
        this.b = null;
    }

    public c(int i3) {
        switch (i3) {
            case 11:
                this.f100a = new k();
                this.b = new e();
                break;
            default:
                this.f100a = new SparseIntArray();
                this.b = new SparseIntArray();
                break;
        }
    }
}
