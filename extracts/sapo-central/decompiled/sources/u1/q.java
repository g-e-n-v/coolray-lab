package u1;

import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: loaded from: classes.dex */
public final class q implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3304a;
    public final /* synthetic */ TextInputLayout b;

    public /* synthetic */ q(TextInputLayout textInputLayout, int i3) {
        this.f3304a = i3;
        this.b = textInputLayout;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3304a) {
            case 0:
                TextInputLayout textInputLayout = this.b;
                textInputLayout.f1457e0.performClick();
                textInputLayout.f1457e0.jumpDrawablesToCurrentState();
                break;
            default:
                this.b.f1456e.requestLayout();
                break;
        }
    }
}
