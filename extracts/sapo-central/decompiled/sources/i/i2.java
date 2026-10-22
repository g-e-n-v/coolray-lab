package i;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import android.view.MenuItem;
import android.widget.PopupWindow;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public final class i2 extends c2 implements d2 {
    public static final Method C;
    public androidx.emoji2.text.m B;

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                C = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException unused) {
            Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    @Override // i.d2
    public final void l(h.m mVar, MenuItem menuItem) {
        androidx.emoji2.text.m mVar2 = this.B;
        if (mVar2 != null) {
            mVar2.l(mVar, menuItem);
        }
    }

    @Override // i.d2
    public final void n(h.m mVar, h.o oVar) {
        androidx.emoji2.text.m mVar2 = this.B;
        if (mVar2 != null) {
            mVar2.n(mVar, oVar);
        }
    }

    @Override // i.c2
    public final q1 q(Context context, boolean z2) {
        h2 h2Var = new h2(context, z2);
        h2Var.setHoverListener(this);
        return h2Var;
    }
}
