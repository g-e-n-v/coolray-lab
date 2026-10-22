package u1;

import android.view.MotionEvent;
import android.view.View;
import android.widget.AutoCompleteTextView;

/* JADX INFO: loaded from: classes.dex */
public final class i implements View.OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AutoCompleteTextView f3260a;
    public final /* synthetic */ k b;

    public i(k kVar, AutoCompleteTextView autoCompleteTextView) {
        this.b = kVar;
        this.f3260a = autoCompleteTextView;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            k kVar = this.b;
            long j3 = jCurrentTimeMillis - kVar.f3268k;
            if (j3 < 0 || j3 > 300) {
                kVar.f3266i = false;
            }
            k.e(kVar, this.f3260a);
        }
        return false;
    }
}
