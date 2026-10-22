package m1;

import android.content.Context;
import android.util.TypedValue;
import com.ex.auto.R;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f2436a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2437c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f2438d;

    public a(Context context) {
        TypedValue typedValueN = k1.a.N(context, R.attr.elevationOverlayEnabled);
        this.f2436a = (typedValueN == null || typedValueN.type != 18 || typedValueN.data == 0) ? false : true;
        TypedValue typedValueN2 = k1.a.N(context, R.attr.elevationOverlayColor);
        this.b = typedValueN2 != null ? typedValueN2.data : 0;
        TypedValue typedValueN3 = k1.a.N(context, R.attr.colorSurface);
        this.f2437c = typedValueN3 != null ? typedValueN3.data : 0;
        this.f2438d = context.getResources().getDisplayMetrics().density;
    }
}
