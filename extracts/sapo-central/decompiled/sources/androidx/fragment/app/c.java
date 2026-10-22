package androidx.fragment.app;

import android.graphics.Typeface;
import android.view.View;
import android.widget.AutoCompleteTextView;
import com.google.android.material.behavior.SwipeDismissBehavior;
import i.o2;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class c implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f400a;
    public final Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f401c;

    public /* synthetic */ c(Object obj, int i3, Object obj2) {
        this.f400a = i3;
        this.b = obj;
        this.f401c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i3 = this.f400a;
        Object obj = this.f401c;
        Object obj2 = this.b;
        switch (i3) {
            case 0:
                ArrayList arrayList = (ArrayList) obj2;
                s0 s0Var = (s0) obj;
                if (arrayList.contains(s0Var)) {
                    arrayList.remove(s0Var);
                    androidx.activity.result.b.a(s0Var.f529c.E, s0Var.f528a);
                }
                break;
            case 1:
                i0.e eVar = ((SwipeDismissBehavior) obj).f1319a;
                if (eVar != null && eVar.f()) {
                    WeakHashMap weakHashMap = c0.p0.f727a;
                    c0.a0.m((View) obj2, this);
                    break;
                }
                break;
            case 2:
                boolean zIsPopupShowing = ((AutoCompleteTextView) obj2).isPopupShowing();
                o2 o2Var = (o2) obj;
                ((u1.k) o2Var.b).g(zIsPopupShowing);
                ((u1.k) o2Var.b).f3266i = zIsPopupShowing;
                break;
            case 3:
                Typeface typeface = (Typeface) obj;
                u.b bVar = (u.b) ((androidx.emoji2.text.m) obj2).b;
                if (bVar != null) {
                    bVar.e(typeface);
                }
                break;
            default:
                ((z.e) obj2).accept(obj);
                break;
        }
    }

    public c(o2 o2Var, AutoCompleteTextView autoCompleteTextView) {
        this.f400a = 2;
        this.f401c = o2Var;
        this.b = autoCompleteTextView;
    }

    public c(j jVar, ArrayList arrayList, s0 s0Var) {
        this.f400a = 0;
        this.b = arrayList;
        this.f401c = s0Var;
    }

    public c(SwipeDismissBehavior swipeDismissBehavior, View view, boolean z2) {
        this.f400a = 1;
        this.f401c = swipeDismissBehavior;
        this.b = view;
    }
}
