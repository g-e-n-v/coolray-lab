package androidx.lifecycle;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ProcessLifecycleInitializer implements s0.b {
    @Override // s0.b
    public final List a() {
        return Collections.EMPTY_LIST;
    }

    @Override // s0.b
    public final Object b(Context context) {
        if (!s0.a.c(context).b.contains(ProcessLifecycleInitializer.class)) {
            throw new IllegalStateException("ProcessLifecycleInitializer cannot be initialized lazily. \nPlease ensure that you have: \n<meta-data\n    android:name='androidx.lifecycle.ProcessLifecycleInitializer' \n    android:value='androidx.startup' /> \nunder InitializationProvider in your AndroidManifest.xml");
        }
        if (!n.f582a.getAndSet(true)) {
            ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new m());
        }
        a0 a0Var = a0.f555i;
        a0Var.getClass();
        a0Var.f559e = new Handler();
        a0Var.f.d(k.ON_CREATE);
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new z(a0Var));
        return a0Var;
    }
}
