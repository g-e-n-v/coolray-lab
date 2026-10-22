package u1;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import c0.b0;
import c0.c0;
import c0.p0;
import com.ex.auto.R;
import com.google.android.material.textfield.TextInputLayout;
import i.b1;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f3280a;
    public final TextInputLayout b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LinearLayout f3281c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3282d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public FrameLayout f3283e;
    public int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public AnimatorSet f3284g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f3285h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f3286i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3287j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public CharSequence f3288k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f3289l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public b1 f3290m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public CharSequence f3291n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f3292o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ColorStateList f3293p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public CharSequence f3294q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f3295r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public b1 f3296s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f3297t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public ColorStateList f3298u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Typeface f3299v;

    public n(TextInputLayout textInputLayout) {
        Context context = textInputLayout.getContext();
        this.f3280a = context;
        this.b = textInputLayout;
        this.f3285h = context.getResources().getDimensionPixelSize(R.dimen.design_textinput_caption_translate_y);
    }

    public final void a(b1 b1Var, int i3) {
        if (this.f3281c == null && this.f3283e == null) {
            Context context = this.f3280a;
            LinearLayout linearLayout = new LinearLayout(context);
            this.f3281c = linearLayout;
            linearLayout.setOrientation(0);
            LinearLayout linearLayout2 = this.f3281c;
            TextInputLayout textInputLayout = this.b;
            textInputLayout.addView(linearLayout2, -1, -2);
            this.f3283e = new FrameLayout(context);
            this.f3281c.addView(this.f3283e, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (textInputLayout.getEditText() != null) {
                b();
            }
        }
        if (i3 == 0 || i3 == 1) {
            this.f3283e.setVisibility(0);
            this.f3283e.addView(b1Var);
            this.f++;
        } else {
            this.f3281c.addView(b1Var, new LinearLayout.LayoutParams(-2, -2));
        }
        this.f3281c.setVisibility(0);
        this.f3282d++;
    }

    public final void b() {
        if (this.f3281c != null) {
            TextInputLayout textInputLayout = this.b;
            if (textInputLayout.getEditText() != null) {
                LinearLayout linearLayout = this.f3281c;
                EditText editText = textInputLayout.getEditText();
                WeakHashMap weakHashMap = p0.f727a;
                b0.k(linearLayout, b0.f(editText), 0, b0.e(textInputLayout.getEditText()), 0);
            }
        }
    }

    public final void c() {
        AnimatorSet animatorSet = this.f3284g;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    public final void d(ArrayList arrayList, boolean z2, b1 b1Var, int i3, int i4, int i5) {
        if (b1Var == null || !z2) {
            return;
        }
        if (i3 == i5 || i3 == i4) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(b1Var, (Property<b1, Float>) View.ALPHA, i5 == i3 ? 1.0f : 0.0f);
            objectAnimatorOfFloat.setDuration(167L);
            objectAnimatorOfFloat.setInterpolator(c1.a.f749a);
            arrayList.add(objectAnimatorOfFloat);
            if (i5 == i3) {
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(b1Var, (Property<b1, Float>) View.TRANSLATION_Y, -this.f3285h, 0.0f);
                objectAnimatorOfFloat2.setDuration(217L);
                objectAnimatorOfFloat2.setInterpolator(c1.a.f751d);
                arrayList.add(objectAnimatorOfFloat2);
            }
        }
    }

    public final boolean e() {
        return (this.f3287j != 1 || this.f3290m == null || TextUtils.isEmpty(this.f3288k)) ? false : true;
    }

    public final TextView f(int i3) {
        if (i3 == 1) {
            return this.f3290m;
        }
        if (i3 != 2) {
            return null;
        }
        return this.f3296s;
    }

    public final void g() {
        this.f3288k = null;
        c();
        if (this.f3286i == 1) {
            if (!this.f3295r || TextUtils.isEmpty(this.f3294q)) {
                this.f3287j = 0;
            } else {
                this.f3287j = 2;
            }
        }
        j(this.f3286i, this.f3287j, i(this.f3290m, null));
    }

    public final void h(b1 b1Var, int i3) {
        FrameLayout frameLayout;
        LinearLayout linearLayout = this.f3281c;
        if (linearLayout == null) {
            return;
        }
        if ((i3 == 0 || i3 == 1) && (frameLayout = this.f3283e) != null) {
            int i4 = this.f - 1;
            this.f = i4;
            if (i4 == 0) {
                frameLayout.setVisibility(8);
            }
            this.f3283e.removeView(b1Var);
        } else {
            linearLayout.removeView(b1Var);
        }
        int i5 = this.f3282d - 1;
        this.f3282d = i5;
        LinearLayout linearLayout2 = this.f3281c;
        if (i5 == 0) {
            linearLayout2.setVisibility(8);
        }
    }

    public final boolean i(b1 b1Var, CharSequence charSequence) {
        WeakHashMap weakHashMap = p0.f727a;
        TextInputLayout textInputLayout = this.b;
        if (c0.c(textInputLayout) && textInputLayout.isEnabled()) {
            return (this.f3287j == this.f3286i && b1Var != null && TextUtils.equals(b1Var.getText(), charSequence)) ? false : true;
        }
        return false;
    }

    public final void j(int i3, int i4, boolean z2) {
        TextView textViewF;
        TextView textViewF2;
        n nVar = this;
        if (i3 == i4) {
            return;
        }
        if (z2) {
            AnimatorSet animatorSet = new AnimatorSet();
            nVar.f3284g = animatorSet;
            ArrayList arrayList = new ArrayList();
            nVar.d(arrayList, nVar.f3295r, nVar.f3296s, 2, i3, i4);
            nVar.d(arrayList, nVar.f3289l, nVar.f3290m, 1, i3, i4);
            int size = arrayList.size();
            long jMax = 0;
            for (int i5 = 0; i5 < size; i5++) {
                Animator animator = (Animator) arrayList.get(i5);
                jMax = Math.max(jMax, animator.getDuration() + animator.getStartDelay());
            }
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 0);
            valueAnimatorOfInt.setDuration(jMax);
            arrayList.add(0, valueAnimatorOfInt);
            animatorSet.playTogether(arrayList);
            m mVar = new m(this, i4, f(i3), i3, nVar.f(i4));
            nVar = this;
            animatorSet.addListener(mVar);
            animatorSet.start();
        } else if (i3 != i4) {
            if (i4 != 0 && (textViewF2 = nVar.f(i4)) != null) {
                textViewF2.setVisibility(0);
                textViewF2.setAlpha(1.0f);
            }
            if (i3 != 0 && (textViewF = f(i3)) != null) {
                textViewF.setVisibility(4);
                if (i3 == 1) {
                    textViewF.setText((CharSequence) null);
                }
            }
            nVar.f3286i = i4;
        }
        TextInputLayout textInputLayout = nVar.b;
        textInputLayout.p();
        textInputLayout.s(z2, false);
        textInputLayout.z();
    }
}
