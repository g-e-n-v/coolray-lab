package u1;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import android.view.animation.LinearInterpolator;
import com.ex.auto.R;
import com.google.android.material.textfield.TextInputLayout;
import i.o2;
import i.q2;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes.dex */
public final class e extends l {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final o2 f3250d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final q2 f3251e;
    public final a f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final b f3252g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public AnimatorSet f3253h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ValueAnimator f3254i;

    public e(TextInputLayout textInputLayout) {
        super(textInputLayout);
        this.f3250d = new o2(1, this);
        this.f3251e = new q2(1, this);
        this.f = new a(this, 0);
        this.f3252g = new b(this, 0);
    }

    @Override // u1.l
    public final void a() {
        Drawable drawableV = a1.b.v(this.b, R.drawable.mtrl_ic_cancel);
        TextInputLayout textInputLayout = this.f3274a;
        textInputLayout.setEndIconDrawable(drawableV);
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(R.string.clear_text_end_icon_content_description));
        textInputLayout.setEndIconOnClickListener(new com.google.android.material.datepicker.k(5, this));
        LinkedHashSet linkedHashSet = textInputLayout.f1451b0;
        a aVar = this.f;
        linkedHashSet.add(aVar);
        if (textInputLayout.f1456e != null) {
            aVar.a(textInputLayout);
        }
        textInputLayout.f1458f0.add(this.f3252g);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        valueAnimatorOfFloat.setInterpolator(c1.a.f751d);
        valueAnimatorOfFloat.setDuration(150L);
        valueAnimatorOfFloat.addUpdateListener(new d(this, 1));
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        LinearInterpolator linearInterpolator = c1.a.f749a;
        valueAnimatorOfFloat2.setInterpolator(linearInterpolator);
        valueAnimatorOfFloat2.setDuration(100L);
        valueAnimatorOfFloat2.addUpdateListener(new d(this, 0));
        AnimatorSet animatorSet = new AnimatorSet();
        this.f3253h = animatorSet;
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2);
        this.f3253h.addListener(new c(this, 0));
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat3.setInterpolator(linearInterpolator);
        valueAnimatorOfFloat3.setDuration(100L);
        valueAnimatorOfFloat3.addUpdateListener(new d(this, 0));
        this.f3254i = valueAnimatorOfFloat3;
        valueAnimatorOfFloat3.addListener(new c(this, 1));
    }

    @Override // u1.l
    public final void c(boolean z2) {
        if (this.f3274a.getSuffixText() == null) {
            return;
        }
        d(z2);
    }

    public final void d(boolean z2) {
        boolean z3 = this.f3274a.g() == z2;
        if (z2) {
            this.f3254i.cancel();
            this.f3253h.start();
            if (z3) {
                this.f3253h.end();
                return;
            }
            return;
        }
        this.f3253h.cancel();
        this.f3254i.start();
        if (z3) {
            this.f3254i.end();
        }
    }
}
