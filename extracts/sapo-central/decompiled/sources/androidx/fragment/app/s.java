package androidx.fragment.app;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes.dex */
public final class s implements r0.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f527a;
    public final Object b;

    public /* synthetic */ s(e.j jVar, int i3) {
        this.f527a = i3;
        this.b = jVar;
    }

    @Override // r0.c
    public final Bundle a() {
        switch (this.f527a) {
            case 0:
                Bundle bundle = new Bundle();
                e.j jVar = (e.j) this.b;
                androidx.emoji2.text.m mVar = jVar.f1613n;
                while (e.j.k(((u) mVar.b).f537d)) {
                }
                jVar.f1614o.d(androidx.lifecycle.k.ON_STOP);
                i0 i0VarO = ((u) mVar.b).f537d.O();
                if (i0VarO != null) {
                    bundle.putParcelable("android:support:fragments", i0VarO);
                }
                return bundle;
            case 1:
                Bundle bundle2 = new Bundle();
                ((e.j) this.b).i().getClass();
                return bundle2;
            default:
                Bundle bundle3 = new Bundle();
                bundle3.putStringArrayList("classes_to_restore", new ArrayList<>((LinkedHashSet) this.b));
                return bundle3;
        }
    }

    public s(i.r rVar) {
        this.f527a = 2;
        this.b = new LinkedHashSet();
        rVar.e("androidx.savedstate.Restarter", this);
    }
}
