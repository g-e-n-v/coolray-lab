package i;

import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: classes.dex */
public abstract class j0 {
    public static void a(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
    }
}
