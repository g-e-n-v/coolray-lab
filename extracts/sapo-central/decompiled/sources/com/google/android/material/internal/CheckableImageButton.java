package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import c0.p0;
import com.google.android.material.datepicker.i;
import i.x;
import n1.a;

/* JADX INFO: loaded from: classes.dex */
public class CheckableImageButton extends x implements Checkable {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int[] f1436g = {R.attr.state_checked};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1437d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1438e;
    public boolean f;

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, com.ex.auto.R.attr.imageButtonStyle);
        this.f1438e = true;
        this.f = true;
        p0.i(this, new i(1, this));
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f1437d;
    }

    @Override // android.widget.ImageView, android.view.View
    public final int[] onCreateDrawableState(int i3) {
        return this.f1437d ? View.mergeDrawableStates(super.onCreateDrawableState(i3 + 1), f1436g) : super.onCreateDrawableState(i3);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof a)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        a aVar = (a) parcelable;
        super.onRestoreInstanceState(aVar.f1951a);
        setChecked(aVar.f2483c);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        a aVar = new a(super.onSaveInstanceState());
        aVar.f2483c = this.f1437d;
        return aVar;
    }

    public void setCheckable(boolean z2) {
        if (this.f1438e != z2) {
            this.f1438e = z2;
            sendAccessibilityEvent(0);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z2) {
        if (!this.f1438e || this.f1437d == z2) {
            return;
        }
        this.f1437d = z2;
        refreshDrawableState();
        sendAccessibilityEvent(2048);
    }

    public void setPressable(boolean z2) {
        this.f = z2;
    }

    @Override // android.view.View
    public void setPressed(boolean z2) {
        if (this.f) {
            super.setPressed(z2);
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.f1437d);
    }
}
