package g1;

import android.view.View;
import c0.a0;
import c0.p0;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class f implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f1809a;
    public boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1810c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ BottomSheetBehavior f1811d;

    public f(BottomSheetBehavior bottomSheetBehavior, View view, int i3) {
        this.f1811d = bottomSheetBehavior;
        this.f1809a = view;
        this.f1810c = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BottomSheetBehavior bottomSheetBehavior = this.f1811d;
        i0.e eVar = bottomSheetBehavior.f1346z;
        if (eVar == null || !eVar.f()) {
            bottomSheetBehavior.z(this.f1810c);
        } else {
            WeakHashMap weakHashMap = p0.f727a;
            a0.m(this.f1809a, this);
        }
        this.b = false;
    }
}
