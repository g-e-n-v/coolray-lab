package com.google.android.material.datepicker;

import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.ex.auto.R;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.NavigationMenuItemView;

/* JADX INFO: loaded from: classes.dex */
public final class i extends c0.c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f1397d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f1398e;

    public /* synthetic */ i(int i3, Object obj) {
        this.f1397d = i3;
        this.f1398e = obj;
    }

    @Override // c0.c
    public void c(View view, AccessibilityEvent accessibilityEvent) {
        switch (this.f1397d) {
            case 1:
                super.c(view, accessibilityEvent);
                accessibilityEvent.setChecked(((CheckableImageButton) this.f1398e).f1437d);
                break;
            default:
                super.c(view, accessibilityEvent);
                break;
        }
    }

    @Override // c0.c
    public final void d(View view, d0.f fVar) {
        switch (this.f1397d) {
            case 0:
                AccessibilityNodeInfo accessibilityNodeInfo = fVar.f1533a;
                this.f701a.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                m mVar = (m) this.f1398e;
                accessibilityNodeInfo.setHintText(mVar.f1404a0.getVisibility() == 0 ? mVar.w().getResources().getString(R.string.mtrl_picker_toggle_to_year_selection) : mVar.w().getResources().getString(R.string.mtrl_picker_toggle_to_day_selection));
                break;
            case 1:
                AccessibilityNodeInfo accessibilityNodeInfo2 = fVar.f1533a;
                this.f701a.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo2);
                CheckableImageButton checkableImageButton = (CheckableImageButton) this.f1398e;
                accessibilityNodeInfo2.setCheckable(checkableImageButton.f1438e);
                accessibilityNodeInfo2.setChecked(checkableImageButton.f1437d);
                break;
            default:
                AccessibilityNodeInfo accessibilityNodeInfo3 = fVar.f1533a;
                this.f701a.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo3);
                accessibilityNodeInfo3.setCheckable(((NavigationMenuItemView) this.f1398e).f1441x);
                break;
        }
    }
}
