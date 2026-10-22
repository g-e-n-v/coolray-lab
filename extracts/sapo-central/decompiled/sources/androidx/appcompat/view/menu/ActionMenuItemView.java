package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import d.a;
import h.a0;
import h.b;
import h.c;
import h.l;
import h.m;
import h.o;
import i.b1;
import i.k;
import i.m3;

/* JADX INFO: loaded from: classes.dex */
public class ActionMenuItemView extends b1 implements a0, View.OnClickListener, k {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public o f103g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public CharSequence f104h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Drawable f105i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public l f106j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public b f107k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public c f108l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f109m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f110n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f111o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f112p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f113q;

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        Resources resources = context.getResources();
        this.f109m = f();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f1497c, 0, 0);
        this.f111o = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.f113q = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.f112p = -1;
        setSaveEnabled(false);
    }

    @Override // i.k
    public final boolean a() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // i.k
    public final boolean b() {
        return !TextUtils.isEmpty(getText()) && this.f103g.getIcon() == null;
    }

    @Override // h.a0
    public final void c(o oVar) {
        this.f103g = oVar;
        setIcon(oVar.getIcon());
        setTitle(oVar.getTitleCondensed());
        setId(oVar.f1910a);
        setVisibility(oVar.isVisible() ? 0 : 8);
        setEnabled(oVar.isEnabled());
        if (oVar.hasSubMenu() && this.f107k == null) {
            this.f107k = new b(this);
        }
    }

    public final boolean f() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i3 = configuration.screenWidthDp;
        int i4 = configuration.screenHeightDp;
        if (i3 < 480) {
            return (i3 >= 640 && i4 >= 480) || configuration.orientation == 2;
        }
        return true;
    }

    public final void g() {
        boolean z2 = true;
        boolean z3 = !TextUtils.isEmpty(this.f104h);
        if (this.f105i != null && ((this.f103g.f1932y & 4) != 4 || (!this.f109m && !this.f110n))) {
            z2 = false;
        }
        boolean z4 = z3 & z2;
        setText(z4 ? this.f104h : null);
        CharSequence charSequence = this.f103g.f1924q;
        if (TextUtils.isEmpty(charSequence)) {
            setContentDescription(z4 ? null : this.f103g.f1913e);
        } else {
            setContentDescription(charSequence);
        }
        CharSequence charSequence2 = this.f103g.f1925r;
        if (TextUtils.isEmpty(charSequence2)) {
            m3.a(this, z4 ? null : this.f103g.f1913e);
        } else {
            m3.a(this, charSequence2);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return Button.class.getName();
    }

    @Override // h.a0
    public o getItemData() {
        return this.f103g;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        l lVar = this.f106j;
        if (lVar != null) {
            lVar.b(this.f103g);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f109m = f();
        g();
    }

    @Override // i.b1, android.widget.TextView, android.view.View
    public final void onMeasure(int i3, int i4) {
        int i5;
        boolean zIsEmpty = TextUtils.isEmpty(getText());
        if (!zIsEmpty && (i5 = this.f112p) >= 0) {
            super.setPadding(i5, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i3, i4);
        int mode = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i3);
        int measuredWidth = getMeasuredWidth();
        int i6 = this.f111o;
        int iMin = mode == Integer.MIN_VALUE ? Math.min(size, i6) : i6;
        if (mode != 1073741824 && i6 > 0 && measuredWidth < iMin) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(iMin, 1073741824), i4);
        }
        if (!zIsEmpty || this.f105i == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.f105i.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        b bVar;
        if (this.f103g.hasSubMenu() && (bVar = this.f107k) != null && bVar.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setCheckable(boolean z2) {
    }

    public void setChecked(boolean z2) {
    }

    public void setExpandedFormat(boolean z2) {
        if (this.f110n != z2) {
            this.f110n = z2;
            o oVar = this.f103g;
            if (oVar != null) {
                m mVar = oVar.f1921n;
                mVar.f1894k = true;
                mVar.p(true);
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.f105i = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i3 = this.f113q;
            if (intrinsicWidth > i3) {
                intrinsicHeight = (int) (intrinsicHeight * (i3 / intrinsicWidth));
                intrinsicWidth = i3;
            }
            if (intrinsicHeight > i3) {
                intrinsicWidth = (int) (intrinsicWidth * (i3 / intrinsicHeight));
            } else {
                i3 = intrinsicHeight;
            }
            drawable.setBounds(0, 0, intrinsicWidth, i3);
        }
        setCompoundDrawables(drawable, null, null, null);
        g();
    }

    public void setItemInvoker(l lVar) {
        this.f106j = lVar;
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPadding(int i3, int i4, int i5, int i6) {
        this.f112p = i3;
        super.setPadding(i3, i4, i5, i6);
    }

    public void setPopupCallback(c cVar) {
        this.f108l = cVar;
    }

    public void setTitle(CharSequence charSequence) {
        this.f104h = charSequence;
        g();
    }
}
