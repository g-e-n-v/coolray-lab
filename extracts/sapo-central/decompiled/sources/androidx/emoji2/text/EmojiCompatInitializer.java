package androidx.emoji2.text;

import android.content.Context;
import android.os.Looper;
import androidx.lifecycle.ProcessLifecycleInitializer;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class EmojiCompatInitializer implements s0.b {
    @Override // s0.b
    public final List a() {
        return Collections.singletonList(ProcessLifecycleInitializer.class);
    }

    @Override // s0.b
    public final Object b(Context context) {
        Object objB;
        r rVar = new r(new m(context));
        rVar.f330a = 1;
        if (k.f335j == null) {
            synchronized (k.f334i) {
                try {
                    if (k.f335j == null) {
                        k.f335j = new k(rVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        s0.a aVarC = s0.a.c(context);
        aVarC.getClass();
        synchronized (s0.a.f3121e) {
            try {
                objB = aVarC.f3122a.get(ProcessLifecycleInitializer.class);
                if (objB == null) {
                    objB = aVarC.b(ProcessLifecycleInitializer.class, new HashSet());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        final androidx.lifecycle.s sVarF = ((androidx.lifecycle.q) objB).f();
        sVarF.a(new androidx.lifecycle.d(this) { // from class: androidx.emoji2.text.EmojiCompatInitializer.1
            @Override // androidx.lifecycle.d
            public final void b() {
                b.a(Looper.getMainLooper()).postDelayed(new n(), 500L);
                sVarF.f(this);
            }
        });
        return Boolean.TRUE;
    }
}
