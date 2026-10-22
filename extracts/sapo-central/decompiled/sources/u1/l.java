package u1;

import android.content.Context;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: loaded from: classes.dex */
public abstract class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextInputLayout f3274a;
    public final Context b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CheckableImageButton f3275c;

    public l(TextInputLayout textInputLayout) {
        this.f3274a = textInputLayout;
        this.b = textInputLayout.getContext();
        this.f3275c = textInputLayout.getEndIconView();
    }

    public abstract void a();

    public boolean b(int i3) {
        return true;
    }

    public void c(boolean z2) {
    }
}
