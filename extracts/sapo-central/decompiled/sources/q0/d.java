package q0;

import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class d implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2855a;
    public final /* synthetic */ ArrayList b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ j f2856c;

    public /* synthetic */ d(j jVar, ArrayList arrayList, int i3) {
        this.f2855a = i3;
        this.f2856c = jVar;
        this.b = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2855a) {
            case 0:
                ArrayList arrayList = this.b;
                int size = arrayList.size();
                int i3 = 0;
                while (true) {
                    j jVar = this.f2856c;
                    if (i3 >= size) {
                        arrayList.clear();
                        jVar.f2927m.remove(arrayList);
                    } else {
                        Object obj = arrayList.get(i3);
                        i3++;
                        i iVar = (i) obj;
                        w0 w0Var = iVar.f2903a;
                        int i4 = iVar.b;
                        int i5 = iVar.f2904c;
                        int i6 = iVar.f2905d;
                        int i7 = iVar.f2906e;
                        jVar.getClass();
                        View view = w0Var.f3048a;
                        int i8 = i6 - i4;
                        int i9 = i7 - i5;
                        if (i8 != 0) {
                            view.animate().translationX(0.0f);
                        }
                        if (i9 != 0) {
                            view.animate().translationY(0.0f);
                        }
                        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
                        jVar.f2930p.add(w0Var);
                        viewPropertyAnimatorAnimate.setDuration(jVar.f2867e).setListener(new f(jVar, w0Var, i8, view, i9, viewPropertyAnimatorAnimate)).start();
                    }
                    break;
                }
                break;
            case 1:
                ArrayList arrayList2 = this.b;
                int size2 = arrayList2.size();
                int i10 = 0;
                while (true) {
                    j jVar2 = this.f2856c;
                    if (i10 >= size2) {
                        arrayList2.clear();
                        jVar2.f2928n.remove(arrayList2);
                        break;
                    } else {
                        Object obj2 = arrayList2.get(i10);
                        i10++;
                        h hVar = (h) obj2;
                        ArrayList arrayList3 = jVar2.f2932r;
                        long j3 = jVar2.f;
                        w0 w0Var2 = hVar.f2893a;
                        View view2 = w0Var2 == null ? null : w0Var2.f3048a;
                        w0 w0Var3 = hVar.b;
                        View view3 = w0Var3 != null ? w0Var3.f3048a : null;
                        if (view2 != null) {
                            ViewPropertyAnimator duration = view2.animate().setDuration(j3);
                            arrayList3.add(hVar.f2893a);
                            duration.translationX(hVar.f2896e - hVar.f2894c);
                            duration.translationY(hVar.f - hVar.f2895d);
                            duration.alpha(0.0f).setListener(new g(jVar2, hVar, duration, view2, 0)).start();
                        }
                        if (view3 != null) {
                            ViewPropertyAnimator viewPropertyAnimatorAnimate2 = view3.animate();
                            arrayList3.add(hVar.b);
                            viewPropertyAnimatorAnimate2.translationX(0.0f).translationY(0.0f).setDuration(j3).alpha(1.0f).setListener(new g(jVar2, hVar, viewPropertyAnimatorAnimate2, view3, 1)).start();
                        }
                    }
                }
                break;
            default:
                ArrayList arrayList4 = this.b;
                int size3 = arrayList4.size();
                int i11 = 0;
                while (true) {
                    j jVar3 = this.f2856c;
                    if (i11 >= size3) {
                        arrayList4.clear();
                        jVar3.f2926l.remove(arrayList4);
                    } else {
                        Object obj3 = arrayList4.get(i11);
                        i11++;
                        w0 w0Var4 = (w0) obj3;
                        jVar3.getClass();
                        View view4 = w0Var4.f3048a;
                        ViewPropertyAnimator viewPropertyAnimatorAnimate3 = view4.animate();
                        jVar3.f2929o.add(w0Var4);
                        viewPropertyAnimatorAnimate3.alpha(1.0f).setDuration(jVar3.f2865c).setListener(new e(jVar3, w0Var4, view4, viewPropertyAnimatorAnimate3)).start();
                    }
                    break;
                }
                break;
        }
    }
}
