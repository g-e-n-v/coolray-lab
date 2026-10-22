package e;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import i.b1;
import java.lang.reflect.Constructor;

/* JADX INFO: loaded from: classes.dex */
public class b0 {
    public static final Class[] b = {Context.class, AttributeSet.class};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f1544c = {R.attr.onClick};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f1545d = {R.attr.accessibilityHeading};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f1546e = {R.attr.accessibilityPaneTitle};
    public static final int[] f = {R.attr.screenReaderFocusable};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String[] f1547g = {"android.widget.", "android.view.", "android.webkit."};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final l.k f1548h = new l.k();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object[] f1549a = new Object[2];

    public i.n a(Context context, AttributeSet attributeSet) {
        return new i.n(context, attributeSet);
    }

    public i.o b(Context context, AttributeSet attributeSet) {
        return new i.o(context, attributeSet, com.ex.auto.R.attr.buttonStyle);
    }

    public i.p c(Context context, AttributeSet attributeSet) {
        return new i.p(context, attributeSet, com.ex.auto.R.attr.checkboxStyle);
    }

    public i.d0 d(Context context, AttributeSet attributeSet) {
        return new i.d0(context, attributeSet);
    }

    public b1 e(Context context, AttributeSet attributeSet) {
        return new b1(context, attributeSet);
    }

    public final View f(Context context, String str, String str2) {
        String strConcat;
        l.k kVar = f1548h;
        Constructor constructor = (Constructor) kVar.getOrDefault(str, null);
        if (constructor == null) {
            if (str2 != null) {
                try {
                    strConcat = str2.concat(str);
                } catch (Exception unused) {
                    return null;
                }
            } else {
                strConcat = str;
            }
            constructor = Class.forName(strConcat, false, context.getClassLoader()).asSubclass(View.class).getConstructor(b);
            kVar.put(str, constructor);
        }
        constructor.setAccessible(true);
        return (View) constructor.newInstance(this.f1549a);
    }
}
