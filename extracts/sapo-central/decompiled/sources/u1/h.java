package u1;

import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.AutoCompleteTextView;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: loaded from: classes.dex */
public final class h extends r {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ k f3259e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(k kVar, TextInputLayout textInputLayout) {
        super(textInputLayout);
        this.f3259e = kVar;
    }

    @Override // u1.r, c0.c
    public final void d(View view, d0.f fVar) {
        AccessibilityNodeInfo accessibilityNodeInfo = fVar.f1533a;
        super.d(view, fVar);
        if (this.f3259e.f3274a.getEditText().getKeyListener() == null) {
            accessibilityNodeInfo.setClassName("android.widget.Spinner");
        }
        if (accessibilityNodeInfo.isShowingHintText()) {
            accessibilityNodeInfo.setHintText(null);
        }
    }

    @Override // c0.c
    public final void e(View view, AccessibilityEvent accessibilityEvent) {
        super.e(view, accessibilityEvent);
        k kVar = this.f3259e;
        AutoCompleteTextView autoCompleteTextViewD = k.d(kVar, kVar.f3274a.getEditText());
        if (accessibilityEvent.getEventType() == 1 && kVar.f3271n.isTouchExplorationEnabled()) {
            k.e(kVar, autoCompleteTextViewD);
        }
    }
}
