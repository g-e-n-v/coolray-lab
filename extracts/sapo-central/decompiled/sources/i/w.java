package i;

import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextView f2188a;
    public final androidx.emoji2.text.m b;

    public w(TextView textView) {
        this.f2188a = textView;
        this.b = new androidx.emoji2.text.m(textView);
    }

    public final void a(AttributeSet attributeSet, int i3) {
        TypedArray typedArrayObtainStyledAttributes = this.f2188a.getContext().obtainStyledAttributes(attributeSet, d.a.f1502i, i3, 0);
        try {
            boolean z2 = typedArrayObtainStyledAttributes.hasValue(14) ? typedArrayObtainStyledAttributes.getBoolean(14, true) : true;
            typedArrayObtainStyledAttributes.recycle();
            c(z2);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public final void b(boolean z2) {
        ((a1.b) this.b.b).a0(z2);
    }

    public final void c(boolean z2) {
        ((a1.b) this.b.b).b0(z2);
    }
}
