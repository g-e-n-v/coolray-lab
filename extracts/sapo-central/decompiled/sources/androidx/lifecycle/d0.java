package androidx.lifecycle;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class d0 extends i2.h implements h2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e.j f568a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d0(e.j jVar) {
        super(0);
        this.f568a = jVar;
    }

    @Override // h2.a
    public final Object a() {
        ArrayList arrayList = new ArrayList();
        i2.n.f2293a.getClass();
        Class clsA = new i2.d(f0.class).a();
        i2.g.c(clsA, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>");
        arrayList.add(new n0.d(clsA));
        Object[] array = arrayList.toArray(new n0.d[0]);
        if (array == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        }
        n0.d[] dVarArr = (n0.d[]) array;
        n0.d[] dVarArr2 = (n0.d[]) Arrays.copyOf(dVarArr, dVarArr.length);
        i2.g.e(dVarArr2, "initializers");
        e.j jVar = this.f568a;
        i0 i0VarE = jVar.e();
        i2.g.d(i0VarE, "owner.viewModelStore");
        HashMap map = i0VarE.f576a;
        n0.b bVarB = jVar.b();
        i2.g.d(bVarB, "{\n        owner.defaultV…ModelCreationExtras\n    }");
        g0 f0Var = (g0) map.get("androidx.lifecycle.internal.SavedStateHandlesVM");
        if (!f0.class.isInstance(f0Var)) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.putAll(bVarB.f2481a);
            linkedHashMap.put(h0.b, "androidx.lifecycle.internal.SavedStateHandlesVM");
            try {
                f0Var = null;
                for (n0.d dVar : dVarArr2) {
                    if (dVar.f2482a.equals(f0.class)) {
                        f0Var = new f0();
                    }
                }
                if (f0Var == null) {
                    throw new IllegalArgumentException("No initializer set for given class ".concat(f0.class.getName()));
                }
                g0 g0Var = (g0) map.put("androidx.lifecycle.internal.SavedStateHandlesVM", f0Var);
                if (g0Var != null) {
                    g0Var.a();
                }
            } catch (AbstractMethodError unused) {
                throw new UnsupportedOperationException("Factory.create(String) is unsupported.  This Factory requires `CreationExtras` to be passed into `create` method.");
            }
        } else if (f0Var == null) {
            throw new NullPointerException("null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get");
        }
        return (f0) f0Var;
    }
}
