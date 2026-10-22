package g1;

import android.graphics.Typeface;
import android.view.View;
import android.widget.TextView;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1799a = 1;
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f1800c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f1801d;

    public a(TextView textView, Typeface typeface, int i3) {
        this.f1800c = textView;
        this.f1801d = typeface;
        this.b = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1799a) {
            case 0:
                ((BottomSheetBehavior) this.f1801d).A(this.f1800c, this.b);
                break;
            default:
                ((TextView) this.f1800c).setTypeface((Typeface) this.f1801d, this.b);
                break;
        }
    }

    public a(BottomSheetBehavior bottomSheetBehavior, View view, int i3) {
        this.f1801d = bottomSheetBehavior;
        this.f1800c = view;
        this.b = i3;
    }
}
