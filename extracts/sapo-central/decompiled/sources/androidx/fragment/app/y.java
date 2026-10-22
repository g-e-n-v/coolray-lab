package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class y implements LayoutInflater.Factory2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final h0 f547a;

    public y(h0 h0Var) {
        this.f547a = h0Var;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        boolean zIsAssignableFrom;
        r rVar;
        int i3;
        n0 n0VarF;
        View view2;
        h0 h0Var = this.f547a;
        f fVar = h0Var.f421c;
        int id = 0;
        r rVar2 = null;
        if (w.class.getName().equals(str)) {
            w wVar = new w(context, attributeSet);
            wVar.f545d = true;
            String classAttribute = attributeSet.getClassAttribute();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, l0.a.b);
            if (classAttribute == null) {
                classAttribute = typedArrayObtainStyledAttributes.getString(0);
            }
            String string = typedArrayObtainStyledAttributes.getString(1);
            typedArrayObtainStyledAttributes.recycle();
            int id2 = wVar.getId();
            r rVarY = h0Var.y(id2);
            if (classAttribute != null && rVarY == null) {
                if (id2 <= 0) {
                    throw new IllegalStateException(androidx.activity.result.b.h("FragmentContainerView must have an android:id to add Fragment ", classAttribute, string != null ? " with tag ".concat(string) : ""));
                }
                b0 b0VarA = h0Var.A();
                context.getClassLoader();
                r rVarA = b0VarA.a(classAttribute);
                rVarA.C = true;
                u uVar = rVarA.f517s;
                if ((uVar == null ? null : uVar.f535a) != null) {
                    rVarA.C = true;
                }
                a aVar = new a(h0Var);
                aVar.f380o = true;
                rVarA.D = wVar;
                int id3 = wVar.getId();
                Class<?> cls = rVarA.getClass();
                int modifiers = cls.getModifiers();
                if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
                    throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
                }
                if (string != null) {
                    String str2 = rVarA.f522x;
                    if (str2 != null && !string.equals(str2)) {
                        throw new IllegalStateException("Can't change tag of fragment " + rVarA + ": was " + rVarA.f522x + " now " + string);
                    }
                    rVarA.f522x = string;
                }
                if (id3 != 0) {
                    if (id3 == -1) {
                        throw new IllegalArgumentException("Can't add fragment " + rVarA + " with tag " + string + " to container view with no id");
                    }
                    int i4 = rVarA.f520v;
                    if (i4 != 0 && i4 != id3) {
                        throw new IllegalStateException("Can't change container ID of fragment " + rVarA + ": was " + rVarA.f520v + " now " + id3);
                    }
                    rVarA.f520v = id3;
                    rVarA.f521w = id3;
                }
                aVar.b(new o0(1, rVarA));
                h0 h0Var2 = aVar.f381p;
                rVarA.f516r = h0Var2;
                if (aVar.f372g) {
                    throw new IllegalStateException("This transaction is already being added to the back stack");
                }
                if (h0Var2.f431n != null && !h0Var2.A) {
                    h0Var2.v(true);
                    aVar.a(h0Var2.C, h0Var2.D);
                    h0Var2.b = true;
                    try {
                        h0Var2.M(h0Var2.C, h0Var2.D);
                        h0Var2.d();
                        h0Var2.W();
                        if (h0Var2.B) {
                            h0Var2.B = false;
                            h0Var2.V();
                        }
                        ((HashMap) h0Var2.f421c.f413c).values().removeAll(Collections.singleton(null));
                    } catch (Throwable th) {
                        h0Var2.d();
                        throw th;
                    }
                }
            }
            ArrayList arrayListG = fVar.g();
            int size = arrayListG.size();
            while (id < size) {
                Object obj = arrayListG.get(id);
                id++;
                n0 n0Var = (n0) obj;
                r rVar3 = n0Var.f479c;
                if (rVar3.f521w == wVar.getId() && (view2 = rVar3.E) != null && view2.getParent() == null) {
                    rVar3.D = wVar;
                    n0Var.b();
                }
            }
            return wVar;
        }
        if ("fragment".equals(str)) {
            String attributeValue = attributeSet.getAttributeValue(null, "class");
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, l0.a.f2422a);
            if (attributeValue == null) {
                attributeValue = typedArrayObtainStyledAttributes2.getString(0);
            }
            int resourceId = typedArrayObtainStyledAttributes2.getResourceId(1, -1);
            int i5 = 2;
            String string2 = typedArrayObtainStyledAttributes2.getString(2);
            typedArrayObtainStyledAttributes2.recycle();
            if (attributeValue != null) {
                try {
                    zIsAssignableFrom = r.class.isAssignableFrom(b0.b(context.getClassLoader(), attributeValue));
                } catch (ClassNotFoundException unused) {
                    zIsAssignableFrom = false;
                }
                if (zIsAssignableFrom) {
                    id = view != null ? view.getId() : 0;
                    if (id == -1 && resourceId == -1 && string2 == null) {
                        throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
                    }
                    r rVarY2 = resourceId != -1 ? h0Var.y(resourceId) : null;
                    if (rVarY2 == null && string2 != null) {
                        ArrayList arrayList = (ArrayList) fVar.b;
                        int size2 = arrayList.size() - 1;
                        while (true) {
                            if (size2 < 0) {
                                rVar = rVar2;
                                i3 = i5;
                                Iterator it = ((HashMap) fVar.f413c).values().iterator();
                                while (true) {
                                    if (!it.hasNext()) {
                                        rVarY2 = rVar;
                                        break;
                                    }
                                    n0 n0Var2 = (n0) it.next();
                                    if (n0Var2 != null) {
                                        rVarY2 = n0Var2.f479c;
                                        if (string2.equals(rVarY2.f522x)) {
                                            break;
                                        }
                                    }
                                }
                            } else {
                                rVar = rVar2;
                                r rVar4 = (r) arrayList.get(size2);
                                i3 = i5;
                                if (rVar4 != null && string2.equals(rVar4.f522x)) {
                                    rVarY2 = rVar4;
                                    break;
                                }
                                size2--;
                                i5 = i3;
                                rVar2 = rVar;
                            }
                        }
                    } else {
                        rVar = null;
                        i3 = 2;
                    }
                    if (rVarY2 == null && id != -1) {
                        rVarY2 = h0Var.y(id);
                    }
                    if (rVarY2 == null) {
                        b0 b0VarA2 = h0Var.A();
                        context.getClassLoader();
                        rVarY2 = b0VarA2.a(attributeValue);
                        rVarY2.f511m = true;
                        rVarY2.f520v = resourceId != 0 ? resourceId : id;
                        rVarY2.f521w = id;
                        rVarY2.f522x = string2;
                        rVarY2.f512n = true;
                        rVarY2.f516r = h0Var;
                        u uVar2 = h0Var.f431n;
                        rVarY2.f517s = uVar2;
                        e.j jVar = uVar2.b;
                        rVarY2.C = true;
                        if ((uVar2 == null ? rVar : uVar2.f535a) != null) {
                            rVarY2.C = true;
                        }
                        n0VarF = h0Var.a(rVarY2);
                        if (h0.D(i3)) {
                            Log.v("FragmentManager", "Fragment " + rVarY2 + " has been inflated via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                        }
                    } else {
                        if (rVarY2.f512n) {
                            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string2 + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + attributeValue);
                        }
                        rVarY2.f512n = true;
                        rVarY2.f516r = h0Var;
                        u uVar3 = h0Var.f431n;
                        rVarY2.f517s = uVar3;
                        e.j jVar2 = uVar3.b;
                        rVarY2.C = true;
                        if ((uVar3 == null ? rVar : uVar3.f535a) != null) {
                            rVarY2.C = true;
                        }
                        n0VarF = h0Var.f(rVarY2);
                        if (h0.D(i3)) {
                            Log.v("FragmentManager", "Retained Fragment " + rVarY2 + " has been re-attached via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                        }
                    }
                    rVarY2.D = (ViewGroup) view;
                    n0VarF.k();
                    n0VarF.j();
                    View view3 = rVarY2.E;
                    if (view3 == null) {
                        throw new IllegalStateException(androidx.activity.result.b.h("Fragment ", attributeValue, " did not create a view."));
                    }
                    if (resourceId != 0) {
                        view3.setId(resourceId);
                    }
                    if (rVarY2.E.getTag() == null) {
                        rVarY2.E.setTag(string2);
                    }
                    rVarY2.E.addOnAttachStateChangeListener(new x(this, n0VarF));
                    return rVarY2.E;
                }
            }
        }
        return null;
    }
}
