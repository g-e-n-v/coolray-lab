package w0;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f3774a;
    public final boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f3775c;

    public k(ArrayList arrayList, boolean z2, boolean z3) {
        this.f3774a = arrayList;
        this.b = z2;
        this.f3775c = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return this.f3774a.equals(kVar.f3774a) && this.b == kVar.b && this.f3775c == kVar.f3775c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f3775c) + ((Boolean.hashCode(this.b) + (this.f3774a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "Program(steps=" + this.f3774a + ", repeat=" + this.b + ", restaurarAnterior=" + this.f3775c + ')';
    }
}
