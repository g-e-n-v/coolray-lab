package k0;

import android.text.InputFilter;
import android.widget.TextView;
import androidx.emoji2.text.k;

/* JADX INFO: loaded from: classes.dex */
public final class g extends a1.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f f2348a;

    public g(TextView textView) {
        this.f2348a = new f(textView);
    }

    @Override // a1.b
    public final void a0(boolean z2) {
        if (k.f335j != null) {
            this.f2348a.a0(z2);
        }
    }

    @Override // a1.b
    public final void b0(boolean z2) {
        f fVar = this.f2348a;
        if (k.f335j != null) {
            fVar.b0(z2);
        } else {
            fVar.f2347c = z2;
        }
    }

    @Override // a1.b
    public final InputFilter[] w(InputFilter[] inputFilterArr) {
        return !(k.f335j != null) ? inputFilterArr : this.f2348a.w(inputFilterArr);
    }
}
