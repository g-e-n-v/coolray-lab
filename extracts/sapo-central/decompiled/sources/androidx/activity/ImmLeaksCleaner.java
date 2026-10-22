package androidx.activity;

import android.view.inputmethod.InputMethodManager;
import androidx.lifecycle.o;
import androidx.lifecycle.q;

/* JADX INFO: loaded from: classes.dex */
final class ImmLeaksCleaner implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f67a;

    @Override // androidx.lifecycle.o
    public final void a(q qVar, androidx.lifecycle.k kVar) {
        if (kVar != androidx.lifecycle.k.ON_DESTROY) {
            return;
        }
        if (f67a == 0) {
            try {
                f67a = 2;
                InputMethodManager.class.getDeclaredField("mServedView").setAccessible(true);
                InputMethodManager.class.getDeclaredField("mNextServedView").setAccessible(true);
                InputMethodManager.class.getDeclaredField("mH").setAccessible(true);
                f67a = 1;
            } catch (NoSuchFieldException unused) {
            }
        }
        if (f67a == 1) {
            throw null;
        }
    }
}
