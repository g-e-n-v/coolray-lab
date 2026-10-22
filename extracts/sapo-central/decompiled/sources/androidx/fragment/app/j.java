package androidx.fragment.app;

import android.animation.Animator;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import com.ex.auto.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ViewGroup f450a;
    public final ArrayList b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f451c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f452d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f453e = false;

    public j(ViewGroup viewGroup) {
        this.f450a = viewGroup;
    }

    public static j f(ViewGroup viewGroup, s1.e eVar) {
        Object tag = viewGroup.getTag(R.id.special_effects_controller_view_tag);
        if (tag instanceof j) {
            return (j) tag;
        }
        eVar.getClass();
        j jVar = new j(viewGroup);
        viewGroup.setTag(R.id.special_effects_controller_view_tag, jVar);
        return jVar;
    }

    public final void a(int i3, int i4, n0 n0Var) {
        synchronized (this.b) {
            try {
                y.b bVar = new y.b();
                s0 s0VarD = d(n0Var.f479c);
                if (s0VarD != null) {
                    s0VarD.c(i3, i4);
                    return;
                }
                s0 s0Var = new s0(i3, i4, n0Var, bVar);
                this.b.add(s0Var);
                s0Var.f530d.add(new r0(this, s0Var, 0));
                s0Var.f530d.add(new r0(this, s0Var, 1));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(ArrayList arrayList, boolean z2) {
        int i3;
        boolean z3;
        int i4;
        int size = arrayList.size();
        boolean z4 = false;
        s0 s0Var = null;
        int i5 = 0;
        s0 s0Var2 = null;
        while (true) {
            i3 = 2;
            if (i5 >= size) {
                break;
            }
            Object obj = arrayList.get(i5);
            i5++;
            s0 s0Var3 = (s0) obj;
            int iC = androidx.activity.result.b.c(s0Var3.f529c.E);
            int iB = n.g.b(s0Var3.f528a);
            if (iB != 0) {
                if (iB != 1) {
                    if (iB == 2 || iB == 3) {
                    }
                } else if (iC != 2) {
                    s0Var2 = s0Var3;
                }
            }
            if (iC == 2 && s0Var == null) {
                s0Var = s0Var3;
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList(arrayList);
        int size2 = arrayList.size();
        int i6 = 0;
        while (i6 < size2) {
            Object obj2 = arrayList.get(i6);
            i6++;
            s0 s0Var4 = (s0) obj2;
            y.b bVar = new y.b();
            s0Var4.d();
            HashSet hashSet = s0Var4.f531e;
            hashSet.add(bVar);
            g gVar = new g(s0Var4, bVar);
            gVar.f416d = z4;
            gVar.f415c = z2;
            arrayList2.add(gVar);
            y.b bVar2 = new y.b();
            s0Var4.d();
            hashSet.add(bVar2);
            boolean z5 = (!z2 ? s0Var4 == s0Var2 : s0Var4 == s0Var) ? z4 : true;
            i iVar = new i(s0Var4, bVar2);
            int i7 = s0Var4.f528a;
            r rVar = s0Var4.f529c;
            if (i7 == 2) {
                if (z2) {
                    rVar.getClass();
                } else {
                    rVar.getClass();
                }
                if (z2) {
                    rVar.getClass();
                } else {
                    rVar.getClass();
                }
            } else if (z2) {
                rVar.getClass();
            } else {
                rVar.getClass();
            }
            if (z5) {
                if (z2) {
                    rVar.getClass();
                } else {
                    rVar.getClass();
                }
            }
            arrayList3.add(iVar);
            s0Var4.f530d.add(new c(this, arrayList4, s0Var4));
            z4 = false;
        }
        HashMap map = new HashMap();
        int size3 = arrayList3.size();
        int i8 = 0;
        while (i8 < size3) {
            Object obj3 = arrayList3.get(i8);
            i8++;
            s0 s0Var5 = (s0) ((i) obj3).f419a;
            androidx.activity.result.b.c(s0Var5.f529c.E);
            int i9 = s0Var5.f528a;
        }
        int size4 = arrayList3.size();
        int i10 = 0;
        while (i10 < size4) {
            Object obj4 = arrayList3.get(i10);
            i10++;
            i iVar2 = (i) obj4;
            map.put((s0) iVar2.f419a, Boolean.FALSE);
            iVar2.d();
        }
        boolean zContainsValue = map.containsValue(Boolean.TRUE);
        ViewGroup viewGroup = this.f450a;
        Context context = viewGroup.getContext();
        ArrayList arrayList5 = new ArrayList();
        int size5 = arrayList2.size();
        boolean z6 = false;
        int i11 = 0;
        while (i11 < size5) {
            Object obj5 = arrayList2.get(i11);
            i11++;
            g gVar2 = (g) obj5;
            s0 s0Var6 = (s0) gVar2.f419a;
            int iC2 = androidx.activity.result.b.c(s0Var6.f529c.E);
            int i12 = s0Var6.f528a;
            if (iC2 == i12 || !(iC2 == i3 || i12 == i3)) {
                z3 = zContainsValue;
                i4 = i3;
                gVar2.d();
                zContainsValue = z3;
                viewGroup = viewGroup;
                i3 = i4;
            } else {
                androidx.activity.result.c cVarJ = gVar2.j(context);
                if (cVarJ == null) {
                    gVar2.d();
                } else {
                    Animator animator = (Animator) cVarJ.b;
                    if (animator == null) {
                        arrayList5.add(gVar2);
                    } else {
                        s0 s0Var7 = (s0) gVar2.f419a;
                        i4 = i3;
                        r rVar2 = s0Var7.f529c;
                        z3 = zContainsValue;
                        if (Boolean.TRUE.equals(map.get(s0Var7))) {
                            if (h0.D(i4)) {
                                Log.v("FragmentManager", "Ignoring Animator set on " + rVar2 + " as this Fragment was involved in a Transition.");
                            }
                            gVar2.d();
                            zContainsValue = z3;
                            viewGroup = viewGroup;
                            i3 = i4;
                        } else {
                            boolean z7 = s0Var7.f528a == 3;
                            if (z7) {
                                arrayList4.remove(s0Var7);
                            }
                            View view = rVar2.E;
                            viewGroup.startViewTransition(view);
                            ViewGroup viewGroup2 = viewGroup;
                            animator.addListener(new d(viewGroup2, view, z7, s0Var7, gVar2));
                            animator.setTarget(view);
                            animator.start();
                            ((y.b) gVar2.b).a(new androidx.emoji2.text.m(1, animator));
                            zContainsValue = z3;
                            viewGroup = viewGroup2;
                            i3 = i4;
                            z6 = true;
                        }
                    }
                }
                z3 = zContainsValue;
                i4 = i3;
                zContainsValue = z3;
                viewGroup = viewGroup;
                i3 = i4;
            }
        }
        boolean z8 = zContainsValue;
        int i13 = i3;
        ViewGroup viewGroup3 = viewGroup;
        int size6 = arrayList5.size();
        int i14 = 0;
        while (i14 < size6) {
            Object obj6 = arrayList5.get(i14);
            i14++;
            g gVar3 = (g) obj6;
            s0 s0Var8 = (s0) gVar3.f419a;
            r rVar3 = s0Var8.f529c;
            if (z8) {
                if (h0.D(i13)) {
                    Log.v("FragmentManager", "Ignoring Animation set on " + rVar3 + " as Animations cannot run alongside Transitions.");
                }
                gVar3.d();
            } else if (z6) {
                if (h0.D(i13)) {
                    Log.v("FragmentManager", "Ignoring Animation set on " + rVar3 + " as Animations cannot run alongside Animators.");
                }
                gVar3.d();
            } else {
                View view2 = rVar3.E;
                androidx.activity.result.c cVarJ2 = gVar3.j(context);
                cVarJ2.getClass();
                Animation animation = (Animation) cVarJ2.f100a;
                animation.getClass();
                if (s0Var8.f528a != 1) {
                    view2.startAnimation(animation);
                    gVar3.d();
                } else {
                    viewGroup3.startViewTransition(view2);
                    v vVar = new v(animation, viewGroup3, view2);
                    vVar.setAnimationListener(new e(view2, viewGroup3, gVar3));
                    view2.startAnimation(vVar);
                }
                ((y.b) gVar3.b).a(new f(view2, viewGroup3, gVar3));
            }
        }
        int size7 = arrayList4.size();
        int i15 = 0;
        while (i15 < size7) {
            Object obj7 = arrayList4.get(i15);
            i15++;
            s0 s0Var9 = (s0) obj7;
            androidx.activity.result.b.a(s0Var9.f529c.E, s0Var9.f528a);
        }
        arrayList4.clear();
    }

    public final void c() {
        if (this.f453e) {
            return;
        }
        ViewGroup viewGroup = this.f450a;
        WeakHashMap weakHashMap = c0.p0.f727a;
        if (!c0.c0.b(viewGroup)) {
            e();
            this.f452d = false;
            return;
        }
        synchronized (this.b) {
            try {
                if (!this.b.isEmpty()) {
                    ArrayList arrayList = new ArrayList(this.f451c);
                    this.f451c.clear();
                    int size = arrayList.size();
                    int i3 = 0;
                    while (i3 < size) {
                        Object obj = arrayList.get(i3);
                        i3++;
                        s0 s0Var = (s0) obj;
                        if (h0.D(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Cancelling operation " + s0Var);
                        }
                        s0Var.a();
                        if (!s0Var.f532g) {
                            this.f451c.add(s0Var);
                        }
                    }
                    g();
                    ArrayList arrayList2 = new ArrayList(this.b);
                    this.b.clear();
                    this.f451c.addAll(arrayList2);
                    int size2 = arrayList2.size();
                    int i4 = 0;
                    while (i4 < size2) {
                        Object obj2 = arrayList2.get(i4);
                        i4++;
                        ((s0) obj2).d();
                    }
                    b(arrayList2, this.f452d);
                    this.f452d = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final s0 d(r rVar) {
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            s0 s0Var = (s0) obj;
            if (s0Var.f529c.equals(rVar) && !s0Var.f) {
                return s0Var;
            }
        }
        return null;
    }

    public final void e() {
        String str;
        String str2;
        ViewGroup viewGroup = this.f450a;
        WeakHashMap weakHashMap = c0.p0.f727a;
        boolean zB = c0.c0.b(viewGroup);
        synchronized (this.b) {
            try {
                g();
                ArrayList arrayList = this.b;
                int size = arrayList.size();
                int i3 = 0;
                int i4 = 0;
                while (i4 < size) {
                    Object obj = arrayList.get(i4);
                    i4++;
                    ((s0) obj).d();
                }
                ArrayList arrayList2 = new ArrayList(this.f451c);
                int size2 = arrayList2.size();
                int i5 = 0;
                while (i5 < size2) {
                    Object obj2 = arrayList2.get(i5);
                    i5++;
                    s0 s0Var = (s0) obj2;
                    if (h0.D(2)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("SpecialEffectsController: ");
                        if (zB) {
                            str2 = "";
                        } else {
                            str2 = "Container " + this.f450a + " is not attached to window. ";
                        }
                        sb.append(str2);
                        sb.append("Cancelling running operation ");
                        sb.append(s0Var);
                        Log.v("FragmentManager", sb.toString());
                    }
                    s0Var.a();
                }
                ArrayList arrayList3 = new ArrayList(this.b);
                int size3 = arrayList3.size();
                while (i3 < size3) {
                    Object obj3 = arrayList3.get(i3);
                    i3++;
                    s0 s0Var2 = (s0) obj3;
                    if (h0.D(2)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("SpecialEffectsController: ");
                        if (zB) {
                            str = "";
                        } else {
                            str = "Container " + this.f450a + " is not attached to window. ";
                        }
                        sb2.append(str);
                        sb2.append("Cancelling pending operation ");
                        sb2.append(s0Var2);
                        Log.v("FragmentManager", sb2.toString());
                    }
                    s0Var2.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void g() {
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            s0 s0Var = (s0) obj;
            if (s0Var.b == 2) {
                s0Var.c(androidx.activity.result.b.b(s0Var.f529c.x().getVisibility()), 1);
            }
        }
    }
}
