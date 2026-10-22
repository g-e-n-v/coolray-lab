package i;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import androidx.appcompat.widget.Toolbar;

/* JADX INFO: loaded from: classes.dex */
public final class l3 implements j1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Toolbar f2082a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public View f2083c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Drawable f2084d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Drawable f2085e;
    public Drawable f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2086g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public CharSequence f2087h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public CharSequence f2088i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CharSequence f2089j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Window.Callback f2090k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f2091l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public j f2092m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2093n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Drawable f2094o;

    public final void a(int i3) {
        View view;
        Toolbar toolbar = this.f2082a;
        int i4 = this.b ^ i3;
        this.b = i3;
        if (i4 != 0) {
            if ((i4 & 4) != 0) {
                if ((i3 & 4) != 0) {
                    b();
                }
                if ((this.b & 4) != 0) {
                    Drawable drawable = this.f;
                    if (drawable == null) {
                        drawable = this.f2094o;
                    }
                    toolbar.setNavigationIcon(drawable);
                } else {
                    toolbar.setNavigationIcon((Drawable) null);
                }
            }
            if ((i4 & 3) != 0) {
                c();
            }
            if ((i4 & 8) != 0) {
                if ((i3 & 8) != 0) {
                    toolbar.setTitle(this.f2087h);
                    toolbar.setSubtitle(this.f2088i);
                } else {
                    toolbar.setTitle((CharSequence) null);
                    toolbar.setSubtitle((CharSequence) null);
                }
            }
            if ((i4 & 16) == 0 || (view = this.f2083c) == null) {
                return;
            }
            if ((i3 & 16) != 0) {
                toolbar.addView(view);
            } else {
                toolbar.removeView(view);
            }
        }
    }

    public final void b() {
        Toolbar toolbar = this.f2082a;
        if ((this.b & 4) != 0) {
            if (TextUtils.isEmpty(this.f2089j)) {
                toolbar.setNavigationContentDescription(this.f2093n);
            } else {
                toolbar.setNavigationContentDescription(this.f2089j);
            }
        }
    }

    public final void c() {
        Drawable drawable;
        int i3 = this.b;
        if ((i3 & 2) == 0) {
            drawable = null;
        } else if ((i3 & 1) == 0 || (drawable = this.f2085e) == null) {
            drawable = this.f2084d;
        }
        this.f2082a.setLogo(drawable);
    }
}
