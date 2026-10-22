package c0;

import android.view.DisplayCutout;
import android.view.WindowInsets;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class f1 extends e1 {
    public f1(k1 k1Var, WindowInsets windowInsets) {
        super(k1Var, windowInsets);
    }

    @Override // c0.j1
    public k1 a() {
        return k1.g(this.f706c.consumeDisplayCutout(), null);
    }

    @Override // c0.j1
    public i e() {
        DisplayCutout displayCutout = this.f706c.getDisplayCutout();
        if (displayCutout == null) {
            return null;
        }
        return new i(displayCutout);
    }

    @Override // c0.j1
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f1)) {
            return false;
        }
        f1 f1Var = (f1) obj;
        return Objects.equals(this.f706c, f1Var.f706c) && Objects.equals(this.f708e, f1Var.f708e);
    }

    @Override // c0.j1
    public int hashCode() {
        return this.f706c.hashCode();
    }
}
