package j1;

import android.widget.CompoundButton;
import com.google.android.material.chip.ChipGroup;

/* JADX INFO: loaded from: classes.dex */
public final class f implements CompoundButton.OnCheckedChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ChipGroup f2326a;

    public f(ChipGroup chipGroup) {
        this.f2326a = chipGroup;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
        ChipGroup chipGroup = this.f2326a;
        if (chipGroup.f1383l) {
            return;
        }
        if (chipGroup.getCheckedChipIds().isEmpty() && chipGroup.f1379h) {
            chipGroup.b(compoundButton.getId(), true);
            chipGroup.f1382k = compoundButton.getId();
            return;
        }
        int id = compoundButton.getId();
        if (!z2) {
            if (chipGroup.f1382k == id) {
                chipGroup.setCheckedId(-1);
            }
        } else {
            int i3 = chipGroup.f1382k;
            if (i3 != -1 && i3 != id && chipGroup.f1378g) {
                chipGroup.b(i3, false);
            }
            chipGroup.setCheckedId(id);
        }
    }
}
