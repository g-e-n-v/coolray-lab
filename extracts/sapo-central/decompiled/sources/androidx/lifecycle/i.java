package androidx.lifecycle;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes.dex */
public final class i implements r0.b {
    public final void a(r0.e eVar) {
        Object obj;
        boolean z2;
        i0 i0VarE = ((j0) eVar).e();
        i.r rVarA = eVar.a();
        i0VarE.getClass();
        Iterator it = new HashSet(i0VarE.f576a.keySet()).iterator();
        while (it.hasNext()) {
            g0 g0Var = (g0) i0VarE.f576a.get((String) it.next());
            s sVarF = eVar.f();
            HashMap map = g0Var.f574a;
            if (map == null) {
                obj = null;
            } else {
                synchronized (map) {
                    obj = g0Var.f574a.get("androidx.lifecycle.savedstate.vm.tag");
                }
            }
            SavedStateHandleController savedStateHandleController = (SavedStateHandleController) obj;
            if (savedStateHandleController != null && !(z2 = savedStateHandleController.f553a)) {
                if (z2) {
                    throw new IllegalStateException("Already attached to lifecycleOwner");
                }
                savedStateHandleController.f553a = true;
                sVarF.a(savedStateHandleController);
                throw null;
            }
        }
        if (new HashSet(i0VarE.f576a.keySet()).isEmpty()) {
            return;
        }
        if (!rVarA.f2141e) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        androidx.fragment.app.s sVar = (androidx.fragment.app.s) rVarA.b;
        if (sVar == null) {
            sVar = new androidx.fragment.app.s(rVarA);
        }
        rVarA.b = sVar;
        try {
            i.class.getDeclaredConstructor(null);
            androidx.fragment.app.s sVar2 = (androidx.fragment.app.s) rVarA.b;
            if (sVar2 != null) {
                ((LinkedHashSet) sVar2.b).add(i.class.getName());
            }
        } catch (NoSuchMethodException e3) {
            throw new IllegalArgumentException("Class " + i.class.getSimpleName() + " must have default constructor in order to be automatically recreated", e3);
        }
    }
}
