package e;

import android.app.Activity;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract class t {
    public static OnBackInvokedDispatcher a(Activity activity) {
        return activity.getOnBackInvokedDispatcher();
    }

    public static OnBackInvokedCallback b(Object obj, y yVar) {
        Objects.requireNonNull(yVar);
        androidx.activity.k kVar = new androidx.activity.k(1, yVar);
        androidx.activity.i.e(obj).registerOnBackInvokedCallback(1000000, kVar);
        return kVar;
    }

    public static void c(Object obj, Object obj2) {
        androidx.activity.i.e(obj).unregisterOnBackInvokedCallback(androidx.activity.i.b(obj2));
    }
}
