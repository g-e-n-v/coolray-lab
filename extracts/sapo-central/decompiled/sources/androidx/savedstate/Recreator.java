package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.i;
import androidx.lifecycle.k;
import androidx.lifecycle.o;
import androidx.lifecycle.q;
import i2.g;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import r0.b;
import r0.e;

/* JADX INFO: loaded from: classes.dex */
public final class Recreator implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f668a;

    public Recreator(e eVar) {
        this.f668a = eVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v3, types: [java.lang.Object, r0.e] */
    @Override // androidx.lifecycle.o
    public final void a(q qVar, k kVar) {
        if (kVar != k.ON_CREATE) {
            throw new AssertionError("Next event must be ON_CREATE");
        }
        qVar.f().f(this);
        ?? r8 = this.f668a;
        Bundle bundleC = r8.a().c("androidx.savedstate.Restarter");
        if (bundleC == null) {
            return;
        }
        ArrayList<String> stringArrayList = bundleC.getStringArrayList("classes_to_restore");
        if (stringArrayList == null) {
            throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
        }
        int size = stringArrayList.size();
        int i3 = 0;
        while (i3 < size) {
            String str = stringArrayList.get(i3);
            i3++;
            String str2 = str;
            try {
                Class<? extends U> clsAsSubclass = Class.forName(str2, false, Recreator.class.getClassLoader()).asSubclass(b.class);
                g.d(clsAsSubclass, "{\n                Class.…class.java)\n            }");
                try {
                    Constructor declaredConstructor = clsAsSubclass.getDeclaredConstructor(null);
                    declaredConstructor.setAccessible(true);
                    try {
                        Object objNewInstance = declaredConstructor.newInstance(null);
                        g.d(objNewInstance, "{\n                constr…wInstance()\n            }");
                        ((i) ((b) objNewInstance)).a(r8);
                    } catch (Exception e3) {
                        throw new RuntimeException("Failed to instantiate " + str2, e3);
                    }
                } catch (NoSuchMethodException e4) {
                    throw new IllegalStateException("Class " + clsAsSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e4);
                }
            } catch (ClassNotFoundException e5) {
                throw new RuntimeException(androidx.activity.result.b.h("Class ", str2, " wasn't found"), e5);
            }
        }
    }
}
