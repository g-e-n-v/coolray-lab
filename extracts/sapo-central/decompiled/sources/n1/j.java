package n1;

import android.view.View;
import c0.d0;
import c0.p0;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class j implements View.OnAttachStateChangeListener {
    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        view.removeOnAttachStateChangeListener(this);
        WeakHashMap weakHashMap = p0.f727a;
        d0.c(view);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
