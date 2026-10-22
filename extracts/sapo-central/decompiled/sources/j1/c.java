package j1;

import android.graphics.Rect;
import android.text.TextUtils;
import android.view.accessibility.AccessibilityNodeInfo;
import com.ex.auto.R;
import com.google.android.material.chip.Chip;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class c extends i0.b {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final /* synthetic */ Chip f2299q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(Chip chip, Chip chip2) {
        super(chip2);
        this.f2299q = chip;
    }

    @Override // i0.b
    public final void l(ArrayList arrayList) {
        e eVar;
        arrayList.add(0);
        Rect rect = Chip.f1359u;
        Chip chip = this.f2299q;
        if (!chip.c() || (eVar = chip.f1362e) == null || !eVar.K || chip.f1364h == null) {
            return;
        }
        arrayList.add(1);
    }

    @Override // i0.b
    public final void o(int i3, d0.f fVar) {
        AccessibilityNodeInfo accessibilityNodeInfo = fVar.f1533a;
        if (i3 != 1) {
            accessibilityNodeInfo.setContentDescription("");
            accessibilityNodeInfo.setBoundsInParent(Chip.f1359u);
            return;
        }
        Chip chip = this.f2299q;
        CharSequence closeIconContentDescription = chip.getCloseIconContentDescription();
        if (closeIconContentDescription != null) {
            accessibilityNodeInfo.setContentDescription(closeIconContentDescription);
        } else {
            CharSequence text = chip.getText();
            accessibilityNodeInfo.setContentDescription(chip.getContext().getString(R.string.mtrl_chip_close_icon_content_description, TextUtils.isEmpty(text) ? "" : text).trim());
        }
        accessibilityNodeInfo.setBoundsInParent(chip.getCloseIconTouchBoundsInt());
        fVar.b(d0.d.f1522e);
        accessibilityNodeInfo.setEnabled(chip.isEnabled());
    }
}
