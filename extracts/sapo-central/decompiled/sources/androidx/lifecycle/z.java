package androidx.lifecycle;

import android.app.Activity;
import android.os.Build;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class z extends e {
    final /* synthetic */ a0 this$0;

    public class a extends e {
        public a() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(Activity activity) {
            z.this.this$0.b();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(Activity activity) {
            a0 a0Var = z.this.this$0;
            int i3 = a0Var.f556a + 1;
            a0Var.f556a = i3;
            if (i3 == 1 && a0Var.f558d) {
                a0Var.f.d(k.ON_START);
                a0Var.f558d = false;
            }
        }
    }

    public z(a0 a0Var) {
        this.this$0 = a0Var;
    }

    @Override // androidx.lifecycle.e, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        if (Build.VERSION.SDK_INT < 29) {
            int i3 = b0.b;
            ((b0) activity.getFragmentManager().findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag")).f563a = this.this$0.f561h;
        }
    }

    @Override // androidx.lifecycle.e, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        a0 a0Var = this.this$0;
        int i3 = a0Var.b - 1;
        a0Var.b = i3;
        if (i3 == 0) {
            a0Var.f559e.postDelayed(a0Var.f560g, 700L);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreCreated(Activity activity, Bundle bundle) {
        activity.registerActivityLifecycleCallbacks(new a());
    }

    @Override // androidx.lifecycle.e, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        a0 a0Var = this.this$0;
        int i3 = a0Var.f556a - 1;
        a0Var.f556a = i3;
        if (i3 == 0 && a0Var.f557c) {
            a0Var.f.d(k.ON_STOP);
            a0Var.f558d = true;
        }
    }
}
