package i1;

import android.R;
import android.content.res.ColorStateList;
import f0.b;
import i.p;

/* JADX INFO: loaded from: classes.dex */
public final class a extends p {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int[][] f2275g = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ColorStateList f2276e;
    public boolean f;

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f2276e == null) {
            int iY = k1.a.y(this, com.ex.auto.R.attr.colorControlActivated);
            int iY2 = k1.a.y(this, com.ex.auto.R.attr.colorSurface);
            int iY3 = k1.a.y(this, com.ex.auto.R.attr.colorOnSurface);
            this.f2276e = new ColorStateList(f2275g, new int[]{k1.a.H(iY2, iY, 1.0f), k1.a.H(iY2, iY3, 0.54f), k1.a.H(iY2, iY3, 0.38f), k1.a.H(iY2, iY3, 0.38f)});
        }
        return this.f2276e;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f && b.a(this) == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z2) {
        this.f = z2;
        if (z2) {
            b.c(this, getMaterialThemeColorsTintList());
        } else {
            b.c(this, null);
        }
    }
}
