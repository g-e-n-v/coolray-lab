package q0;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public class j0 extends ViewGroup.MarginLayoutParams {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public w0 f2933a;
    public final Rect b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2934c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2935d;

    public j0(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new Rect();
        this.f2934c = true;
        this.f2935d = false;
    }

    public j0(int i3, int i4) {
        super(i3, i4);
        this.b = new Rect();
        this.f2934c = true;
        this.f2935d = false;
    }

    public j0(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.b = new Rect();
        this.f2934c = true;
        this.f2935d = false;
    }

    public j0(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.b = new Rect();
        this.f2934c = true;
        this.f2935d = false;
    }

    public j0(j0 j0Var) {
        super((ViewGroup.LayoutParams) j0Var);
        this.b = new Rect();
        this.f2934c = true;
        this.f2935d = false;
    }
}
