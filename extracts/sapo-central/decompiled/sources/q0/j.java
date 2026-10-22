package q0;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class j extends e0 {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static TimeInterpolator f2920s;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2921g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ArrayList f2922h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ArrayList f2923i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ArrayList f2924j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ArrayList f2925k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ArrayList f2926l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ArrayList f2927m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ArrayList f2928n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public ArrayList f2929o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ArrayList f2930p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public ArrayList f2931q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public ArrayList f2932r;

    public static void h(ArrayList arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((w0) arrayList.get(size)).f3048a.animate().cancel();
        }
    }

    @Override // q0.e0
    public final boolean a(w0 w0Var, w0 w0Var2, c0.q qVar, c0.q qVar2) {
        int i3;
        int i4;
        int i5 = qVar.f731a;
        int i6 = qVar.b;
        if (w0Var2.o()) {
            int i7 = qVar.f731a;
            i4 = qVar.b;
            i3 = i7;
        } else {
            i3 = qVar2.f731a;
            i4 = qVar2.b;
        }
        if (w0Var == w0Var2) {
            return g(w0Var, i5, i6, i3, i4);
        }
        View view = w0Var.f3048a;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        float alpha = view.getAlpha();
        l(w0Var);
        view.setTranslationX(translationX);
        view.setTranslationY(translationY);
        view.setAlpha(alpha);
        View view2 = w0Var2.f3048a;
        l(w0Var2);
        view2.setTranslationX(-((int) ((i3 - i5) - translationX)));
        view2.setTranslationY(-((int) ((i4 - i6) - translationY)));
        view2.setAlpha(0.0f);
        ArrayList arrayList = this.f2925k;
        h hVar = new h();
        hVar.f2893a = w0Var;
        hVar.b = w0Var2;
        hVar.f2894c = i5;
        hVar.f2895d = i6;
        hVar.f2896e = i3;
        hVar.f = i4;
        arrayList.add(hVar);
        return true;
    }

    @Override // q0.e0
    public final void d(w0 w0Var) {
        ArrayList arrayList = this.f2926l;
        ArrayList arrayList2 = this.f2927m;
        ArrayList arrayList3 = this.f2928n;
        View view = w0Var.f3048a;
        view.animate().cancel();
        ArrayList arrayList4 = this.f2924j;
        int size = arrayList4.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (((i) arrayList4.get(size)).f2903a == w0Var) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                c(w0Var);
                arrayList4.remove(size);
            }
        }
        j(this.f2925k, w0Var);
        if (this.f2922h.remove(w0Var)) {
            view.setAlpha(1.0f);
            c(w0Var);
        }
        if (this.f2923i.remove(w0Var)) {
            view.setAlpha(1.0f);
            c(w0Var);
        }
        for (int size2 = arrayList3.size() - 1; size2 >= 0; size2--) {
            ArrayList arrayList5 = (ArrayList) arrayList3.get(size2);
            j(arrayList5, w0Var);
            if (arrayList5.isEmpty()) {
                arrayList3.remove(size2);
            }
        }
        for (int size3 = arrayList2.size() - 1; size3 >= 0; size3--) {
            ArrayList arrayList6 = (ArrayList) arrayList2.get(size3);
            for (int size4 = arrayList6.size() - 1; size4 >= 0; size4--) {
                if (((i) arrayList6.get(size4)).f2903a == w0Var) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    c(w0Var);
                    arrayList6.remove(size4);
                    if (!arrayList6.isEmpty()) {
                        break;
                    }
                    arrayList2.remove(size3);
                    break;
                }
            }
        }
        for (int size5 = arrayList.size() - 1; size5 >= 0; size5--) {
            ArrayList arrayList7 = (ArrayList) arrayList.get(size5);
            if (arrayList7.remove(w0Var)) {
                view.setAlpha(1.0f);
                c(w0Var);
                if (arrayList7.isEmpty()) {
                    arrayList.remove(size5);
                }
            }
        }
        this.f2931q.remove(w0Var);
        this.f2929o.remove(w0Var);
        this.f2932r.remove(w0Var);
        this.f2930p.remove(w0Var);
        i();
    }

    @Override // q0.e0
    public final void e() {
        ArrayList arrayList = this.f2928n;
        ArrayList arrayList2 = this.f2926l;
        ArrayList arrayList3 = this.f2927m;
        ArrayList arrayList4 = this.f2925k;
        ArrayList arrayList5 = this.f2923i;
        ArrayList arrayList6 = this.f2922h;
        ArrayList arrayList7 = this.f2924j;
        int size = arrayList7.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            i iVar = (i) arrayList7.get(size);
            View view = iVar.f2903a.f3048a;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            c(iVar.f2903a);
            arrayList7.remove(size);
        }
        for (int size2 = arrayList6.size() - 1; size2 >= 0; size2--) {
            c((w0) arrayList6.get(size2));
            arrayList6.remove(size2);
        }
        int size3 = arrayList5.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            w0 w0Var = (w0) arrayList5.get(size3);
            w0Var.f3048a.setAlpha(1.0f);
            c(w0Var);
            arrayList5.remove(size3);
        }
        for (int size4 = arrayList4.size() - 1; size4 >= 0; size4--) {
            h hVar = (h) arrayList4.get(size4);
            w0 w0Var2 = hVar.f2893a;
            if (w0Var2 != null) {
                k(hVar, w0Var2);
            }
            w0 w0Var3 = hVar.b;
            if (w0Var3 != null) {
                k(hVar, w0Var3);
            }
        }
        arrayList4.clear();
        if (f()) {
            for (int size5 = arrayList3.size() - 1; size5 >= 0; size5--) {
                ArrayList arrayList8 = (ArrayList) arrayList3.get(size5);
                for (int size6 = arrayList8.size() - 1; size6 >= 0; size6--) {
                    i iVar2 = (i) arrayList8.get(size6);
                    View view2 = iVar2.f2903a.f3048a;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    c(iVar2.f2903a);
                    arrayList8.remove(size6);
                    if (arrayList8.isEmpty()) {
                        arrayList3.remove(arrayList8);
                    }
                }
            }
            for (int size7 = arrayList2.size() - 1; size7 >= 0; size7--) {
                ArrayList arrayList9 = (ArrayList) arrayList2.get(size7);
                for (int size8 = arrayList9.size() - 1; size8 >= 0; size8--) {
                    w0 w0Var4 = (w0) arrayList9.get(size8);
                    w0Var4.f3048a.setAlpha(1.0f);
                    c(w0Var4);
                    arrayList9.remove(size8);
                    if (arrayList9.isEmpty()) {
                        arrayList2.remove(arrayList9);
                    }
                }
            }
            for (int size9 = arrayList.size() - 1; size9 >= 0; size9--) {
                ArrayList arrayList10 = (ArrayList) arrayList.get(size9);
                for (int size10 = arrayList10.size() - 1; size10 >= 0; size10--) {
                    h hVar2 = (h) arrayList10.get(size10);
                    w0 w0Var5 = hVar2.f2893a;
                    if (w0Var5 != null) {
                        k(hVar2, w0Var5);
                    }
                    w0 w0Var6 = hVar2.b;
                    if (w0Var6 != null) {
                        k(hVar2, w0Var6);
                    }
                    if (arrayList10.isEmpty()) {
                        arrayList.remove(arrayList10);
                    }
                }
            }
            h(this.f2931q);
            h(this.f2930p);
            h(this.f2929o);
            h(this.f2932r);
            ArrayList arrayList11 = this.b;
            if (arrayList11.size() > 0) {
                arrayList11.get(0).getClass();
                throw new ClassCastException();
            }
            arrayList11.clear();
        }
    }

    @Override // q0.e0
    public final boolean f() {
        return (this.f2923i.isEmpty() && this.f2925k.isEmpty() && this.f2924j.isEmpty() && this.f2922h.isEmpty() && this.f2930p.isEmpty() && this.f2931q.isEmpty() && this.f2929o.isEmpty() && this.f2932r.isEmpty() && this.f2927m.isEmpty() && this.f2926l.isEmpty() && this.f2928n.isEmpty()) ? false : true;
    }

    public final boolean g(w0 w0Var, int i3, int i4, int i5, int i6) {
        View view = w0Var.f3048a;
        int translationX = i3 + ((int) view.getTranslationX());
        int translationY = i4 + ((int) w0Var.f3048a.getTranslationY());
        l(w0Var);
        int i7 = i5 - translationX;
        int i8 = i6 - translationY;
        if (i7 == 0 && i8 == 0) {
            c(w0Var);
            return false;
        }
        if (i7 != 0) {
            view.setTranslationX(-i7);
        }
        if (i8 != 0) {
            view.setTranslationY(-i8);
        }
        ArrayList arrayList = this.f2924j;
        i iVar = new i();
        iVar.f2903a = w0Var;
        iVar.b = translationX;
        iVar.f2904c = translationY;
        iVar.f2905d = i5;
        iVar.f2906e = i6;
        arrayList.add(iVar);
        return true;
    }

    public final void i() {
        if (f()) {
            return;
        }
        ArrayList arrayList = this.b;
        if (arrayList.size() <= 0) {
            arrayList.clear();
        } else {
            arrayList.get(0).getClass();
            throw new ClassCastException();
        }
    }

    public final void j(ArrayList arrayList, w0 w0Var) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            h hVar = (h) arrayList.get(size);
            if (k(hVar, w0Var) && hVar.f2893a == null && hVar.b == null) {
                arrayList.remove(hVar);
            }
        }
    }

    public final boolean k(h hVar, w0 w0Var) {
        if (hVar.b == w0Var) {
            hVar.b = null;
        } else {
            if (hVar.f2893a != w0Var) {
                return false;
            }
            hVar.f2893a = null;
        }
        View view = w0Var.f3048a;
        View view2 = w0Var.f3048a;
        view.setAlpha(1.0f);
        view2.setTranslationX(0.0f);
        view2.setTranslationY(0.0f);
        c(w0Var);
        return true;
    }

    public final void l(w0 w0Var) {
        if (f2920s == null) {
            f2920s = new ValueAnimator().getInterpolator();
        }
        w0Var.f3048a.animate().setInterpolator(f2920s);
        d(w0Var);
    }
}
