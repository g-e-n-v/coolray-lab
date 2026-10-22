package u1;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.LinearInterpolator;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import c0.a0;
import c0.p0;
import com.ex.auto.R;
import com.google.android.material.textfield.TextInputLayout;
import i.o2;
import i.q2;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class k extends l {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final o2 f3262d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final q2 f3263e;
    public final h f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final a f3264g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final b f3265h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f3266i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f3267j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f3268k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public StateListDrawable f3269l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public s1.g f3270m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public AccessibilityManager f3271n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public ValueAnimator f3272o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ValueAnimator f3273p;

    public k(TextInputLayout textInputLayout) {
        super(textInputLayout);
        int i3 = 2;
        this.f3262d = new o2(i3, this);
        this.f3263e = new q2(i3, this);
        this.f = new h(this, textInputLayout);
        this.f3264g = new a(this, 1);
        this.f3265h = new b(this, 1);
        this.f3266i = false;
        this.f3267j = false;
        this.f3268k = Long.MAX_VALUE;
    }

    public static AutoCompleteTextView d(k kVar, EditText editText) {
        if (editText instanceof AutoCompleteTextView) {
            return (AutoCompleteTextView) editText;
        }
        throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
    }

    public static void e(k kVar, AutoCompleteTextView autoCompleteTextView) {
        if (autoCompleteTextView == null) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - kVar.f3268k;
        if (jCurrentTimeMillis < 0 || jCurrentTimeMillis > 300) {
            kVar.f3266i = false;
        }
        if (kVar.f3266i) {
            kVar.f3266i = false;
            return;
        }
        kVar.g(!kVar.f3267j);
        if (!kVar.f3267j) {
            autoCompleteTextView.dismissDropDown();
        } else {
            autoCompleteTextView.requestFocus();
            autoCompleteTextView.showDropDown();
        }
    }

    @Override // u1.l
    public final void a() {
        Context context = this.b;
        float dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R.dimen.mtrl_shape_corner_size_small_component);
        float dimensionPixelOffset2 = context.getResources().getDimensionPixelOffset(R.dimen.mtrl_exposed_dropdown_menu_popup_elevation);
        int dimensionPixelOffset3 = context.getResources().getDimensionPixelOffset(R.dimen.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        s1.g gVarF = f(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        s1.g gVarF2 = f(0.0f, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        this.f3270m = gVarF;
        StateListDrawable stateListDrawable = new StateListDrawable();
        this.f3269l = stateListDrawable;
        stateListDrawable.addState(new int[]{android.R.attr.state_above_anchor}, gVarF);
        this.f3269l.addState(new int[0], gVarF2);
        Drawable drawableV = a1.b.v(context, R.drawable.mtrl_dropdown_arrow);
        TextInputLayout textInputLayout = this.f3274a;
        textInputLayout.setEndIconDrawable(drawableV);
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(R.string.exposed_dropdown_menu_content_description));
        textInputLayout.setEndIconOnClickListener(new com.google.android.material.datepicker.k(6, this));
        LinkedHashSet linkedHashSet = textInputLayout.f1451b0;
        a aVar = this.f3264g;
        linkedHashSet.add(aVar);
        if (textInputLayout.f1456e != null) {
            aVar.a(textInputLayout);
        }
        textInputLayout.f1458f0.add(this.f3265h);
        int i3 = 2;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        LinearInterpolator linearInterpolator = c1.a.f749a;
        valueAnimatorOfFloat.setInterpolator(linearInterpolator);
        valueAnimatorOfFloat.setDuration(67);
        valueAnimatorOfFloat.addUpdateListener(new g1.b(i3, this));
        this.f3273p = valueAnimatorOfFloat;
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat2.setInterpolator(linearInterpolator);
        valueAnimatorOfFloat2.setDuration(50);
        valueAnimatorOfFloat2.addUpdateListener(new g1.b(i3, this));
        this.f3272o = valueAnimatorOfFloat2;
        valueAnimatorOfFloat2.addListener(new e1.a(2, this));
        WeakHashMap weakHashMap = p0.f727a;
        a0.s(this.f3275c, 2);
        this.f3271n = (AccessibilityManager) context.getSystemService("accessibility");
    }

    @Override // u1.l
    public final boolean b(int i3) {
        return i3 != 0;
    }

    public final s1.g f(float f, float f3, float f4, int i3) {
        s1.i iVar = new s1.i();
        s1.i iVar2 = new s1.i();
        s1.i iVar3 = new s1.i();
        s1.i iVar4 = new s1.i();
        s1.e eVar = new s1.e();
        s1.e eVar2 = new s1.e();
        s1.e eVar3 = new s1.e();
        s1.e eVar4 = new s1.e();
        s1.a aVar = new s1.a(f);
        s1.a aVar2 = new s1.a(f);
        s1.a aVar3 = new s1.a(f3);
        s1.a aVar4 = new s1.a(f3);
        s1.k kVar = new s1.k();
        kVar.f3173a = iVar;
        kVar.b = iVar2;
        kVar.f3174c = iVar3;
        kVar.f3175d = iVar4;
        kVar.f3176e = aVar;
        kVar.f = aVar2;
        kVar.f3177g = aVar4;
        kVar.f3178h = aVar3;
        kVar.f3179i = eVar;
        kVar.f3180j = eVar2;
        kVar.f3181k = eVar3;
        kVar.f3182l = eVar4;
        Paint paint = s1.g.f3141w;
        String simpleName = s1.g.class.getSimpleName();
        Context context = this.b;
        int iO = k1.a.O(R.attr.colorSurface, context, simpleName);
        s1.g gVar = new s1.g();
        gVar.g(context);
        gVar.i(ColorStateList.valueOf(iO));
        gVar.h(f4);
        gVar.setShapeAppearanceModel(kVar);
        s1.f fVar = gVar.f3142a;
        if (fVar.f3131g == null) {
            fVar.f3131g = new Rect();
        }
        gVar.f3142a.f3131g.set(0, i3, 0, i3);
        gVar.invalidateSelf();
        return gVar;
    }

    public final void g(boolean z2) {
        if (this.f3267j != z2) {
            this.f3267j = z2;
            this.f3273p.cancel();
            this.f3272o.start();
        }
    }
}
