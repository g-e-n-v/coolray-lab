package c0;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class e0 implements View.OnApplyWindowInsetsListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public k1 f709a = null;
    public final /* synthetic */ View b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ r f710c;

    public e0(View view, r rVar) {
        this.b = view;
        this.f710c = rVar;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        k1 k1VarG = k1.g(windowInsets, view);
        int i3 = Build.VERSION.SDK_INT;
        r rVar = this.f710c;
        if (i3 < 30) {
            f0.a(windowInsets, this.b);
            if (k1VarG.equals(this.f709a)) {
                return rVar.o(view, k1VarG).f();
            }
        }
        this.f709a = k1VarG;
        k1 k1VarO = rVar.o(view, k1VarG);
        if (i3 >= 30) {
            return k1VarO.f();
        }
        WeakHashMap weakHashMap = p0.f727a;
        d0.c(view);
        return k1VarO.f();
    }
}
