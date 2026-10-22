package com.google.android.material.textfield;

import a0.h;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.animation.LinearInterpolator;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.c;
import androidx.emoji2.text.m;
import androidx.fragment.app.f;
import c0.a0;
import c0.b0;
import c0.c0;
import c0.p0;
import c0.z;
import com.ex.auto.R;
import com.google.android.material.internal.CheckableImageButton;
import f0.o;
import i.b1;
import i.k1;
import i.o2;
import i.t;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.WeakHashMap;
import n1.b;
import n1.i;
import p1.d;
import s1.g;
import s1.j;
import s1.k;
import u1.e;
import u1.l;
import u1.n;
import u1.p;
import u1.q;
import u1.r;
import u1.s;
import v1.a;

/* JADX INFO: loaded from: classes.dex */
public class TextInputLayout extends LinearLayout {
    public boolean A;
    public int A0;
    public g B;
    public int B0;
    public g C;
    public boolean C0;
    public final k D;
    public final b D0;
    public final int E;
    public boolean E0;
    public int F;
    public ValueAnimator F0;
    public final int G;
    public boolean G0;
    public int H;
    public boolean H0;
    public int I;
    public int J;
    public int K;
    public int L;
    public final Rect M;
    public final Rect N;
    public final RectF O;
    public Typeface P;
    public final CheckableImageButton Q;
    public ColorStateList R;
    public boolean S;
    public PorterDuff.Mode T;
    public boolean U;
    public ColorDrawable V;
    public int W;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FrameLayout f1449a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public View.OnLongClickListener f1450a0;
    public final LinearLayout b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final LinkedHashSet f1451b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinearLayout f1452c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public int f1453c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final FrameLayout f1454d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final SparseArray f1455d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public EditText f1456e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final CheckableImageButton f1457e0;
    public CharSequence f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final LinkedHashSet f1458f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final n f1459g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public ColorStateList f1460g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1461h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public boolean f1462h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1463i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public PorterDuff.Mode f1464i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f1465j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public boolean f1466j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public b1 f1467k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public ColorDrawable f1468k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f1469l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public int f1470l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f1471m;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public Drawable f1472m0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public CharSequence f1473n;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public View.OnLongClickListener f1474n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f1475o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public View.OnLongClickListener f1476o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public b1 f1477p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public final CheckableImageButton f1478p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public ColorStateList f1479q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public ColorStateList f1480q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f1481r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public ColorStateList f1482r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public ColorStateList f1483s;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public ColorStateList f1484s0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public ColorStateList f1485t;
    public int t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public CharSequence f1486u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public int f1487u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final b1 f1488v;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public int f1489v0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public CharSequence f1490w;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public ColorStateList f1491w0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final b1 f1492x;
    public int x0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f1493y;
    public int y0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public CharSequence f1494z;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public int f1495z0;

    /* JADX WARN: Code duplicated, block: B:84:0x04b3  */
    public TextInputLayout(Context context, AttributeSet attributeSet) {
        int i3;
        AttributeSet attributeSet2;
        super(a.a(context, attributeSet, R.attr.textInputStyle, R.style.Widget_Design_TextInputLayout), attributeSet, R.attr.textInputStyle);
        this.f1459g = new n(this);
        this.M = new Rect();
        this.N = new Rect();
        this.O = new RectF();
        this.f1451b0 = new LinkedHashSet();
        this.f1453c0 = 0;
        SparseArray sparseArray = new SparseArray();
        this.f1455d0 = sparseArray;
        this.f1458f0 = new LinkedHashSet();
        b bVar = new b(this);
        this.D0 = bVar;
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.f1449a = frameLayout;
        frameLayout.setAddStatesFromChildren(true);
        addView(frameLayout);
        LinearLayout linearLayout = new LinearLayout(context2);
        this.b = linearLayout;
        linearLayout.setOrientation(0);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388611));
        frameLayout.addView(linearLayout);
        LinearLayout linearLayout2 = new LinearLayout(context2);
        this.f1452c = linearLayout2;
        linearLayout2.setOrientation(0);
        linearLayout2.setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388613));
        frameLayout.addView(linearLayout2);
        FrameLayout frameLayout2 = new FrameLayout(context2);
        this.f1454d = frameLayout2;
        frameLayout2.setLayoutParams(new FrameLayout.LayoutParams(-2, -1));
        LinearInterpolator linearInterpolator = c1.a.f749a;
        bVar.H = linearInterpolator;
        bVar.g();
        bVar.G = linearInterpolator;
        bVar.g();
        if (bVar.f2489h != 8388659) {
            bVar.f2489h = 8388659;
            bVar.g();
        }
        i.a(context2, attributeSet, R.attr.textInputStyle, R.style.Widget_Design_TextInputLayout);
        int[] iArr = b1.a.f691v;
        i.b(context2, attributeSet, iArr, R.attr.textInputStyle, R.style.Widget_Design_TextInputLayout, 18, 16, 31, 35, 39);
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, R.attr.textInputStyle, R.style.Widget_Design_TextInputLayout);
        f fVar = new f(context2, typedArrayObtainStyledAttributes);
        this.f1493y = typedArrayObtainStyledAttributes.getBoolean(38, true);
        setHint(typedArrayObtainStyledAttributes.getText(2));
        this.E0 = typedArrayObtainStyledAttributes.getBoolean(37, true);
        k kVarA = k.b(context2, attributeSet, R.attr.textInputStyle, R.style.Widget_Design_TextInputLayout).a();
        this.D = kVarA;
        this.E = context2.getResources().getDimensionPixelOffset(R.dimen.mtrl_textinput_box_label_cutout_padding);
        this.G = typedArrayObtainStyledAttributes.getDimensionPixelOffset(5, 0);
        this.I = typedArrayObtainStyledAttributes.getDimensionPixelSize(12, context2.getResources().getDimensionPixelSize(R.dimen.mtrl_textinput_box_stroke_width_default));
        this.J = typedArrayObtainStyledAttributes.getDimensionPixelSize(13, context2.getResources().getDimensionPixelSize(R.dimen.mtrl_textinput_box_stroke_width_focused));
        this.H = this.I;
        float dimension = typedArrayObtainStyledAttributes.getDimension(9, -1.0f);
        float dimension2 = typedArrayObtainStyledAttributes.getDimension(8, -1.0f);
        float dimension3 = typedArrayObtainStyledAttributes.getDimension(6, -1.0f);
        float dimension4 = typedArrayObtainStyledAttributes.getDimension(7, -1.0f);
        j jVarE = kVarA.e();
        if (dimension >= 0.0f) {
            jVarE.f3166e = new s1.a(dimension);
        }
        if (dimension2 >= r8) {
            jVarE.f = new s1.a(dimension2);
        }
        if (dimension3 >= r8) {
            jVarE.f3167g = new s1.a(dimension3);
        }
        if (dimension4 >= 0) {
            jVarE.f3168h = new s1.a(dimension4);
        }
        this.D = jVarE.a();
        ColorStateList colorStateListA = k1.a.A(context2, fVar, 3);
        if (colorStateListA != null) {
            int defaultColor = colorStateListA.getDefaultColor();
            this.x0 = defaultColor;
            this.L = defaultColor;
            if (colorStateListA.isStateful()) {
                this.y0 = colorStateListA.getColorForState(new int[]{-16842910}, -1);
                this.f1495z0 = colorStateListA.getColorForState(new int[]{android.R.attr.state_focused, android.R.attr.state_enabled}, -1);
                this.A0 = colorStateListA.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, -1);
            } else {
                this.f1495z0 = this.x0;
                ColorStateList colorStateListT = a1.b.t(context2, R.color.mtrl_filled_background_color);
                this.y0 = colorStateListT.getColorForState(new int[]{-16842910}, -1);
                this.A0 = colorStateListT.getColorForState(new int[]{android.R.attr.state_hovered}, -1);
            }
            i3 = 0;
        } else {
            i3 = 0;
            this.L = 0;
            this.x0 = 0;
            this.y0 = 0;
            this.f1495z0 = 0;
            this.A0 = 0;
        }
        if (typedArrayObtainStyledAttributes.hasValue(1)) {
            ColorStateList colorStateListJ = fVar.j(1);
            this.f1484s0 = colorStateListJ;
            this.f1482r0 = colorStateListJ;
        }
        ColorStateList colorStateListA2 = k1.a.A(context2, fVar, 10);
        this.f1489v0 = typedArrayObtainStyledAttributes.getColor(10, i3);
        this.t0 = c.a(context2, R.color.mtrl_textinput_default_box_stroke_color);
        this.B0 = c.a(context2, R.color.mtrl_textinput_disabled_color);
        this.f1487u0 = c.a(context2, R.color.mtrl_textinput_hovered_box_stroke_color);
        if (colorStateListA2 != null) {
            setBoxStrokeColorStateList(colorStateListA2);
        }
        if (typedArrayObtainStyledAttributes.hasValue(11)) {
            setBoxStrokeErrorColor(k1.a.A(context2, fVar, 11));
        }
        if (typedArrayObtainStyledAttributes.getResourceId(39, -1) != -1) {
            setHintTextAppearance(typedArrayObtainStyledAttributes.getResourceId(39, 0));
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(31, 0);
        CharSequence text = typedArrayObtainStyledAttributes.getText(26);
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(27, false);
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_end_icon, (ViewGroup) linearLayout2, false);
        this.f1478p0 = checkableImageButton;
        checkableImageButton.setVisibility(8);
        if (typedArrayObtainStyledAttributes.hasValue(28)) {
            setErrorIconDrawable(fVar.k(28));
        }
        if (typedArrayObtainStyledAttributes.hasValue(29)) {
            setErrorIconTintList(k1.a.A(context2, fVar, 29));
        }
        if (typedArrayObtainStyledAttributes.hasValue(30)) {
            setErrorIconTintMode(i.e(typedArrayObtainStyledAttributes.getInt(30, -1), null));
        }
        checkableImageButton.setContentDescription(getResources().getText(R.string.error_icon_content_description));
        WeakHashMap weakHashMap = p0.f727a;
        a0.s(checkableImageButton, 2);
        checkableImageButton.setClickable(false);
        checkableImageButton.setPressable(false);
        checkableImageButton.setFocusable(false);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(35, 0);
        boolean z3 = typedArrayObtainStyledAttributes.getBoolean(34, false);
        CharSequence text2 = typedArrayObtainStyledAttributes.getText(33);
        int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(47, 0);
        CharSequence text3 = typedArrayObtainStyledAttributes.getText(46);
        int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(50, 0);
        CharSequence text4 = typedArrayObtainStyledAttributes.getText(49);
        int resourceId5 = typedArrayObtainStyledAttributes.getResourceId(60, 0);
        CharSequence text5 = typedArrayObtainStyledAttributes.getText(59);
        boolean z4 = typedArrayObtainStyledAttributes.getBoolean(14, false);
        setCounterMaxLength(typedArrayObtainStyledAttributes.getInt(15, -1));
        this.f1471m = typedArrayObtainStyledAttributes.getResourceId(18, 0);
        this.f1469l = typedArrayObtainStyledAttributes.getResourceId(16, 0);
        CheckableImageButton checkableImageButton2 = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_start_icon, (ViewGroup) linearLayout, false);
        this.Q = checkableImageButton2;
        checkableImageButton2.setVisibility(8);
        setStartIconOnClickListener(null);
        setStartIconOnLongClickListener(null);
        if (typedArrayObtainStyledAttributes.hasValue(56)) {
            setStartIconDrawable(fVar.k(56));
            if (typedArrayObtainStyledAttributes.hasValue(55)) {
                setStartIconContentDescription(typedArrayObtainStyledAttributes.getText(55));
            }
            setStartIconCheckable(typedArrayObtainStyledAttributes.getBoolean(54, true));
        }
        if (typedArrayObtainStyledAttributes.hasValue(57)) {
            setStartIconTintList(k1.a.A(context2, fVar, 57));
        }
        if (typedArrayObtainStyledAttributes.hasValue(58)) {
            setStartIconTintMode(i.e(typedArrayObtainStyledAttributes.getInt(58, -1), null));
        }
        setBoxBackgroundMode(typedArrayObtainStyledAttributes.getInt(4, 0));
        CheckableImageButton checkableImageButton3 = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_end_icon, (ViewGroup) frameLayout2, false);
        this.f1457e0 = checkableImageButton3;
        frameLayout2.addView(checkableImageButton3);
        checkableImageButton3.setVisibility(8);
        sparseArray.append(-1, new u1.f(this, 0));
        sparseArray.append(0, new u1.f(this, 1));
        sparseArray.append(1, new p(this));
        sparseArray.append(2, new e(this));
        sparseArray.append(3, new u1.k(this));
        if (typedArrayObtainStyledAttributes.hasValue(23)) {
            setEndIconMode(typedArrayObtainStyledAttributes.getInt(23, 0));
            if (typedArrayObtainStyledAttributes.hasValue(22)) {
                setEndIconDrawable(fVar.k(22));
            }
            if (typedArrayObtainStyledAttributes.hasValue(21)) {
                setEndIconContentDescription(typedArrayObtainStyledAttributes.getText(21));
            }
            setEndIconCheckable(typedArrayObtainStyledAttributes.getBoolean(20, true));
        } else if (typedArrayObtainStyledAttributes.hasValue(43)) {
            setEndIconMode(typedArrayObtainStyledAttributes.getBoolean(43, false) ? 1 : 0);
            setEndIconDrawable(fVar.k(42));
            setEndIconContentDescription(typedArrayObtainStyledAttributes.getText(41));
            if (typedArrayObtainStyledAttributes.hasValue(44)) {
                setEndIconTintList(k1.a.A(context2, fVar, 44));
            }
            if (typedArrayObtainStyledAttributes.hasValue(45)) {
                setEndIconTintMode(i.e(typedArrayObtainStyledAttributes.getInt(45, -1), null));
            }
        }
        if (typedArrayObtainStyledAttributes.hasValue(43)) {
            attributeSet2 = null;
        } else {
            if (typedArrayObtainStyledAttributes.hasValue(24)) {
                setEndIconTintList(k1.a.A(context2, fVar, 24));
            }
            if (typedArrayObtainStyledAttributes.hasValue(25)) {
                attributeSet2 = null;
                setEndIconTintMode(i.e(typedArrayObtainStyledAttributes.getInt(25, -1), null));
            } else {
                attributeSet2 = null;
            }
        }
        b1 b1Var = new b1(context2, attributeSet2);
        this.f1488v = b1Var;
        b1Var.setId(R.id.textinput_prefix_text);
        b1Var.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        c0.f(b1Var, 1);
        linearLayout.addView(checkableImageButton2);
        linearLayout.addView(b1Var);
        b1 b1Var2 = new b1(context2, attributeSet2);
        this.f1492x = b1Var2;
        b1Var2.setId(R.id.textinput_suffix_text);
        b1Var2.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 80));
        c0.f(b1Var2, 1);
        linearLayout2.addView(b1Var2);
        linearLayout2.addView(checkableImageButton);
        linearLayout2.addView(frameLayout2);
        setHelperTextEnabled(z3);
        setHelperText(text2);
        setHelperTextTextAppearance(resourceId2);
        setErrorEnabled(z2);
        setErrorTextAppearance(resourceId);
        setErrorContentDescription(text);
        setCounterTextAppearance(this.f1471m);
        setCounterOverflowTextAppearance(this.f1469l);
        setPlaceholderText(text3);
        setPlaceholderTextAppearance(resourceId3);
        setPrefixText(text4);
        setPrefixTextAppearance(resourceId4);
        setSuffixText(text5);
        setSuffixTextAppearance(resourceId5);
        if (typedArrayObtainStyledAttributes.hasValue(32)) {
            setErrorTextColor(fVar.j(32));
        }
        if (typedArrayObtainStyledAttributes.hasValue(36)) {
            setHelperTextColor(fVar.j(36));
        }
        if (typedArrayObtainStyledAttributes.hasValue(40)) {
            setHintTextColor(fVar.j(40));
        }
        if (typedArrayObtainStyledAttributes.hasValue(19)) {
            setCounterTextColor(fVar.j(19));
        }
        if (typedArrayObtainStyledAttributes.hasValue(17)) {
            setCounterOverflowTextColor(fVar.j(17));
        }
        if (typedArrayObtainStyledAttributes.hasValue(48)) {
            setPlaceholderTextColor(fVar.j(48));
        }
        if (typedArrayObtainStyledAttributes.hasValue(51)) {
            setPrefixTextColor(fVar.j(51));
        }
        if (typedArrayObtainStyledAttributes.hasValue(61)) {
            setSuffixTextColor(fVar.j(61));
        }
        setCounterEnabled(z4);
        setEnabled(typedArrayObtainStyledAttributes.getBoolean(0, true));
        fVar.x();
        a0.s(this, 2);
    }

    public static void d(CheckableImageButton checkableImageButton, boolean z2, ColorStateList colorStateList, boolean z3, PorterDuff.Mode mode) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (drawable != null && (z2 || z3)) {
            drawable = drawable.mutate();
            if (z2) {
                w.b.h(drawable, colorStateList);
            }
            if (z3) {
                w.b.i(drawable, mode);
            }
        }
        if (checkableImageButton.getDrawable() != drawable) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    private l getEndIconDelegate() {
        int i3 = this.f1453c0;
        SparseArray sparseArray = this.f1455d0;
        l lVar = (l) sparseArray.get(i3);
        return lVar != null ? lVar : (l) sparseArray.get(0);
    }

    private CheckableImageButton getEndIconToUpdateDummyDrawable() {
        CheckableImageButton checkableImageButton = this.f1478p0;
        if (checkableImageButton.getVisibility() == 0) {
            return checkableImageButton;
        }
        if (this.f1453c0 == 0 || !g()) {
            return null;
        }
        return this.f1457e0;
    }

    public static void j(ViewGroup viewGroup, boolean z2) {
        int childCount = viewGroup.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = viewGroup.getChildAt(i3);
            childAt.setEnabled(z2);
            if (childAt instanceof ViewGroup) {
                j((ViewGroup) childAt, z2);
            }
        }
    }

    public static void k(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        WeakHashMap weakHashMap = p0.f727a;
        boolean zA = z.a(checkableImageButton);
        boolean z2 = onLongClickListener != null;
        boolean z3 = zA || z2;
        checkableImageButton.setFocusable(z3);
        checkableImageButton.setClickable(zA);
        checkableImageButton.setPressable(zA);
        checkableImageButton.setLongClickable(z2);
        a0.s(checkableImageButton, z3 ? 1 : 2);
    }

    private void setEditText(EditText editText) {
        boolean z2;
        boolean z3;
        if (this.f1456e != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        if (this.f1453c0 != 3 && !(editText instanceof TextInputEditText)) {
            Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
        }
        this.f1456e = editText;
        h();
        setTextInputAccessibilityDelegate(new r(this));
        Typeface typeface = this.f1456e.getTypeface();
        b bVar = this.D0;
        p1.a aVar = bVar.f2503v;
        if (aVar != null) {
            aVar.f2686e = true;
        }
        if (bVar.f2500s != typeface) {
            bVar.f2500s = typeface;
            z2 = true;
        } else {
            z2 = false;
        }
        if (bVar.f2501t != typeface) {
            bVar.f2501t = typeface;
            z3 = true;
        } else {
            z3 = false;
        }
        if (z2 || z3) {
            bVar.g();
        }
        float textSize = this.f1456e.getTextSize();
        if (bVar.f2490i != textSize) {
            bVar.f2490i = textSize;
            bVar.g();
        }
        int gravity = this.f1456e.getGravity();
        int i3 = (gravity & (-113)) | 48;
        if (bVar.f2489h != i3) {
            bVar.f2489h = i3;
            bVar.g();
        }
        if (bVar.f2488g != gravity) {
            bVar.f2488g = gravity;
            bVar.g();
        }
        this.f1456e.addTextChangedListener(new o2(4, this));
        if (this.f1482r0 == null) {
            this.f1482r0 = this.f1456e.getHintTextColors();
        }
        if (this.f1493y) {
            if (TextUtils.isEmpty(this.f1494z)) {
                CharSequence hint = this.f1456e.getHint();
                this.f = hint;
                setHint(hint);
                this.f1456e.setHint((CharSequence) null);
            }
            this.A = true;
        }
        if (this.f1467k != null) {
            m(this.f1456e.getText().length());
        }
        p();
        this.f1459g.b();
        this.b.bringToFront();
        this.f1452c.bringToFront();
        this.f1454d.bringToFront();
        this.f1478p0.bringToFront();
        Iterator it = this.f1451b0.iterator();
        while (it.hasNext()) {
            ((u1.a) it.next()).a(this);
        }
        u();
        x();
        if (!isEnabled()) {
            editText.setEnabled(false);
        }
        s(false, true);
    }

    private void setErrorIconVisible(boolean z2) {
        this.f1478p0.setVisibility(z2 ? 0 : 8);
        this.f1454d.setVisibility(z2 ? 8 : 0);
        x();
        if (this.f1453c0 != 0) {
            return;
        }
        o();
    }

    private void setHintInternal(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.f1494z)) {
            return;
        }
        this.f1494z = charSequence;
        b bVar = this.D0;
        if (charSequence == null || !TextUtils.equals(bVar.f2504w, charSequence)) {
            bVar.f2504w = charSequence;
            bVar.f2505x = null;
            Bitmap bitmap = bVar.f2507z;
            if (bitmap != null) {
                bitmap.recycle();
                bVar.f2507z = null;
            }
            bVar.g();
        }
        if (this.C0) {
            return;
        }
        i();
    }

    private void setPlaceholderTextEnabled(boolean z2) {
        if (this.f1475o == z2) {
            return;
        }
        if (z2) {
            b1 b1Var = new b1(getContext(), null);
            this.f1477p = b1Var;
            b1Var.setId(R.id.textinput_placeholder);
            c0.f(this.f1477p, 1);
            setPlaceholderTextAppearance(this.f1481r);
            setPlaceholderTextColor(this.f1479q);
            b1 b1Var2 = this.f1477p;
            if (b1Var2 != null) {
                this.f1449a.addView(b1Var2);
                this.f1477p.setVisibility(0);
            }
        } else {
            b1 b1Var3 = this.f1477p;
            if (b1Var3 != null) {
                b1Var3.setVisibility(8);
            }
            this.f1477p = null;
        }
        this.f1475o = z2;
    }

    public final void a(float f) {
        b bVar = this.D0;
        if (bVar.f2485c == f) {
            return;
        }
        if (this.F0 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.F0 = valueAnimator;
            valueAnimator.setInterpolator(c1.a.b);
            this.F0.setDuration(167L);
            this.F0.addUpdateListener(new g1.b(3, this));
        }
        this.F0.setFloatValues(bVar.f2485c, f);
        this.F0.start();
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i3, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i3, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        FrameLayout frameLayout = this.f1449a;
        frameLayout.addView(view, layoutParams2);
        frameLayout.setLayoutParams(layoutParams);
        r();
        setEditText((EditText) view);
    }

    public final void b() {
        int i3;
        int i4;
        int i5;
        g gVar = this.B;
        if (gVar == null) {
            return;
        }
        gVar.setShapeAppearanceModel(this.D);
        if (this.F == 2 && (i4 = this.H) > -1 && (i5 = this.K) != 0) {
            g gVar2 = this.B;
            gVar2.f3142a.f3134j = i4;
            gVar2.invalidateSelf();
            ColorStateList colorStateListValueOf = ColorStateList.valueOf(i5);
            s1.f fVar = gVar2.f3142a;
            if (fVar.f3129d != colorStateListValueOf) {
                fVar.f3129d = colorStateListValueOf;
                gVar2.onStateChange(gVar2.getState());
            }
        }
        int iB = this.L;
        if (this.F == 1) {
            TypedValue typedValueN = k1.a.N(getContext(), R.attr.colorSurface);
            iB = v.a.b(this.L, typedValueN != null ? typedValueN.data : 0);
        }
        this.L = iB;
        this.B.i(ColorStateList.valueOf(iB));
        if (this.f1453c0 == 3) {
            this.f1456e.getBackground().invalidateSelf();
        }
        g gVar3 = this.C;
        if (gVar3 != null) {
            if (this.H > -1 && (i3 = this.K) != 0) {
                gVar3.i(ColorStateList.valueOf(i3));
            }
            invalidate();
        }
        invalidate();
    }

    public final void c() {
        d(this.f1457e0, this.f1462h0, this.f1460g0, this.f1466j0, this.f1464i0);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i3) {
        EditText editText;
        if (this.f == null || (editText = this.f1456e) == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i3);
            return;
        }
        boolean z2 = this.A;
        this.A = false;
        CharSequence hint = editText.getHint();
        this.f1456e.setHint(this.f);
        try {
            super.dispatchProvideAutofillStructure(viewStructure, i3);
        } finally {
            this.f1456e.setHint(hint);
            this.A = z2;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        this.H0 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.H0 = false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f1493y) {
            b bVar = this.D0;
            bVar.getClass();
            int iSave = canvas.save();
            if (bVar.f2505x != null && bVar.b) {
                bVar.M.getLineLeft(0);
                bVar.E.setTextSize(bVar.B);
                float f = bVar.f2498q;
                float f3 = bVar.f2499r;
                float f4 = bVar.A;
                if (f4 != 1.0f) {
                    canvas.scale(f4, f4, f, f3);
                }
                canvas.translate(f, f3);
                bVar.M.draw(canvas);
                canvas.restoreToCount(iSave);
            }
        }
        g gVar = this.C;
        if (gVar != null) {
            Rect bounds = gVar.getBounds();
            bounds.top = bounds.bottom - this.H;
            this.C.draw(canvas);
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002f  */
    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        boolean z2;
        ColorStateList colorStateList;
        if (this.G0) {
            return;
        }
        this.G0 = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        b bVar = this.D0;
        if (bVar != null) {
            bVar.C = drawableState;
            ColorStateList colorStateList2 = bVar.f2493l;
            if ((colorStateList2 == null || !colorStateList2.isStateful()) && ((colorStateList = bVar.f2492k) == null || !colorStateList.isStateful())) {
                z2 = false;
            } else {
                bVar.g();
                z2 = true;
            }
        } else {
            z2 = false;
        }
        if (this.f1456e != null) {
            WeakHashMap weakHashMap = p0.f727a;
            s(c0.c(this) && isEnabled(), false);
        }
        p();
        z();
        if (z2) {
            invalidate();
        }
        this.G0 = false;
    }

    public final int e() {
        float f;
        if (!this.f1493y) {
            return 0;
        }
        int i3 = this.F;
        b bVar = this.D0;
        if (i3 == 0 || i3 == 1) {
            TextPaint textPaint = bVar.F;
            textPaint.setTextSize(bVar.f2491j);
            textPaint.setTypeface(bVar.f2500s);
            f = -textPaint.ascent();
        } else {
            if (i3 != 2) {
                return 0;
            }
            TextPaint textPaint2 = bVar.F;
            textPaint2.setTextSize(bVar.f2491j);
            textPaint2.setTypeface(bVar.f2500s);
            f = (-textPaint2.ascent()) / 2.0f;
        }
        return (int) f;
    }

    public final boolean f() {
        return this.f1493y && !TextUtils.isEmpty(this.f1494z) && (this.B instanceof u1.g);
    }

    public final boolean g() {
        return this.f1454d.getVisibility() == 0 && this.f1457e0.getVisibility() == 0;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.f1456e;
        if (editText == null) {
            return super.getBaseline();
        }
        return e() + getPaddingTop() + editText.getBaseline();
    }

    public g getBoxBackground() {
        int i3 = this.F;
        if (i3 == 1 || i3 == 2) {
            return this.B;
        }
        throw new IllegalStateException();
    }

    public int getBoxBackgroundColor() {
        return this.L;
    }

    public int getBoxBackgroundMode() {
        return this.F;
    }

    public float getBoxCornerRadiusBottomEnd() {
        g gVar = this.B;
        return gVar.f3142a.f3127a.f3178h.a(gVar.e());
    }

    public float getBoxCornerRadiusBottomStart() {
        g gVar = this.B;
        return gVar.f3142a.f3127a.f3177g.a(gVar.e());
    }

    public float getBoxCornerRadiusTopEnd() {
        g gVar = this.B;
        return gVar.f3142a.f3127a.f.a(gVar.e());
    }

    public float getBoxCornerRadiusTopStart() {
        g gVar = this.B;
        return gVar.f3142a.f3127a.f3176e.a(gVar.e());
    }

    public int getBoxStrokeColor() {
        return this.f1489v0;
    }

    public ColorStateList getBoxStrokeErrorColor() {
        return this.f1491w0;
    }

    public int getBoxStrokeWidth() {
        return this.I;
    }

    public int getBoxStrokeWidthFocused() {
        return this.J;
    }

    public int getCounterMaxLength() {
        return this.f1463i;
    }

    public CharSequence getCounterOverflowDescription() {
        b1 b1Var;
        if (this.f1461h && this.f1465j && (b1Var = this.f1467k) != null) {
            return b1Var.getContentDescription();
        }
        return null;
    }

    public ColorStateList getCounterOverflowTextColor() {
        return this.f1483s;
    }

    public ColorStateList getCounterTextColor() {
        return this.f1483s;
    }

    public ColorStateList getDefaultHintTextColor() {
        return this.f1482r0;
    }

    public EditText getEditText() {
        return this.f1456e;
    }

    public CharSequence getEndIconContentDescription() {
        return this.f1457e0.getContentDescription();
    }

    public Drawable getEndIconDrawable() {
        return this.f1457e0.getDrawable();
    }

    public int getEndIconMode() {
        return this.f1453c0;
    }

    public CheckableImageButton getEndIconView() {
        return this.f1457e0;
    }

    public CharSequence getError() {
        n nVar = this.f1459g;
        if (nVar.f3289l) {
            return nVar.f3288k;
        }
        return null;
    }

    public CharSequence getErrorContentDescription() {
        return this.f1459g.f3291n;
    }

    public int getErrorCurrentTextColors() {
        b1 b1Var = this.f1459g.f3290m;
        if (b1Var != null) {
            return b1Var.getCurrentTextColor();
        }
        return -1;
    }

    public Drawable getErrorIconDrawable() {
        return this.f1478p0.getDrawable();
    }

    public final int getErrorTextCurrentColor() {
        b1 b1Var = this.f1459g.f3290m;
        if (b1Var != null) {
            return b1Var.getCurrentTextColor();
        }
        return -1;
    }

    public CharSequence getHelperText() {
        n nVar = this.f1459g;
        if (nVar.f3295r) {
            return nVar.f3294q;
        }
        return null;
    }

    public int getHelperTextCurrentTextColor() {
        b1 b1Var = this.f1459g.f3296s;
        if (b1Var != null) {
            return b1Var.getCurrentTextColor();
        }
        return -1;
    }

    public CharSequence getHint() {
        if (this.f1493y) {
            return this.f1494z;
        }
        return null;
    }

    public final float getHintCollapsedTextHeight() {
        b bVar = this.D0;
        TextPaint textPaint = bVar.F;
        textPaint.setTextSize(bVar.f2491j);
        textPaint.setTypeface(bVar.f2500s);
        return -textPaint.ascent();
    }

    public final int getHintCurrentCollapsedTextColor() {
        b bVar = this.D0;
        return bVar.d(bVar.f2493l);
    }

    public ColorStateList getHintTextColor() {
        return this.f1484s0;
    }

    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.f1457e0.getContentDescription();
    }

    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.f1457e0.getDrawable();
    }

    public CharSequence getPlaceholderText() {
        if (this.f1475o) {
            return this.f1473n;
        }
        return null;
    }

    public int getPlaceholderTextAppearance() {
        return this.f1481r;
    }

    public ColorStateList getPlaceholderTextColor() {
        return this.f1479q;
    }

    public CharSequence getPrefixText() {
        return this.f1486u;
    }

    public ColorStateList getPrefixTextColor() {
        return this.f1488v.getTextColors();
    }

    public TextView getPrefixTextView() {
        return this.f1488v;
    }

    public CharSequence getStartIconContentDescription() {
        return this.Q.getContentDescription();
    }

    public Drawable getStartIconDrawable() {
        return this.Q.getDrawable();
    }

    public CharSequence getSuffixText() {
        return this.f1490w;
    }

    public ColorStateList getSuffixTextColor() {
        return this.f1492x.getTextColors();
    }

    public TextView getSuffixTextView() {
        return this.f1492x;
    }

    public Typeface getTypeface() {
        return this.P;
    }

    public final void h() {
        int i3 = this.F;
        if (i3 != 0) {
            k kVar = this.D;
            if (i3 == 1) {
                this.B = new g(kVar);
                this.C = new g();
            } else {
                if (i3 != 2) {
                    throw new IllegalArgumentException(this.F + " is illegal; only @BoxBackgroundMode constants are supported.");
                }
                if (!this.f1493y || (this.B instanceof u1.g)) {
                    this.B = new g(kVar);
                } else {
                    this.B = new u1.g(kVar);
                }
                this.C = null;
            }
        } else {
            this.B = null;
            this.C = null;
        }
        EditText editText = this.f1456e;
        if (editText != null && this.B != null && editText.getBackground() == null && this.F != 0) {
            EditText editText2 = this.f1456e;
            g gVar = this.B;
            WeakHashMap weakHashMap = p0.f727a;
            a0.q(editText2, gVar);
        }
        z();
        if (this.F != 0) {
            r();
        }
    }

    /* JADX WARN: Code duplicated, block: B:48:0x00a2  */
    public final void i() {
        float f;
        float fB;
        float f3;
        float fB2;
        int i3;
        float fB3;
        int i4;
        if (f()) {
            int width = this.f1456e.getWidth();
            int gravity = this.f1456e.getGravity();
            b bVar = this.D0;
            CharSequence charSequence = bVar.f2504w;
            TextInputLayout textInputLayout = bVar.f2484a;
            WeakHashMap weakHashMap = p0.f727a;
            boolean zB = (b0.d(textInputLayout) == 1 ? h.f16d : h.f15c).b(charSequence, charSequence.length());
            bVar.f2506y = zB;
            Rect rect = bVar.f2487e;
            if (gravity != 17 && (gravity & 7) != 1) {
                if ((gravity & 8388613) == 8388613 || (gravity & 5) == 5) {
                    if (zB) {
                        i4 = rect.left;
                        f3 = i4;
                    } else {
                        f = rect.right;
                        fB = bVar.b();
                    }
                } else if (zB) {
                    f = rect.right;
                    fB = bVar.b();
                } else {
                    i4 = rect.left;
                    f3 = i4;
                }
                RectF rectF = this.O;
                rectF.left = f3;
                rectF.top = rect.top;
                if (gravity != 17 || (gravity & 7) == 1) {
                    fB2 = (width / 2.0f) + (bVar.b() / 2.0f);
                } else if ((gravity & 8388613) == 8388613 || (gravity & 5) == 5) {
                    if (bVar.f2506y) {
                        fB3 = bVar.b();
                        fB2 = fB3 + f3;
                    } else {
                        i3 = rect.right;
                        fB2 = i3;
                    }
                } else if (bVar.f2506y) {
                    i3 = rect.right;
                    fB2 = i3;
                } else {
                    fB3 = bVar.b();
                    fB2 = fB3 + f3;
                }
                rectF.right = fB2;
                float f4 = rect.top;
                TextPaint textPaint = bVar.F;
                textPaint.setTextSize(bVar.f2491j);
                textPaint.setTypeface(bVar.f2500s);
                float f5 = (-textPaint.ascent()) + f4;
                float f6 = rectF.left;
                float f7 = this.E;
                rectF.left = f6 - f7;
                rectF.top -= f7;
                rectF.right += f7;
                rectF.bottom = f5 + f7;
                rectF.offset(-getPaddingLeft(), -getPaddingTop());
                u1.g gVar = (u1.g) this.B;
                gVar.getClass();
                gVar.m(rectF.left, rectF.top, rectF.right, rectF.bottom);
            }
            f = width / 2.0f;
            fB = bVar.b() / 2.0f;
            f3 = f - fB;
            RectF rectF2 = this.O;
            rectF2.left = f3;
            rectF2.top = rect.top;
            if (gravity != 17) {
                fB2 = (width / 2.0f) + (bVar.b() / 2.0f);
            } else {
                fB2 = (width / 2.0f) + (bVar.b() / 2.0f);
            }
            rectF2.right = fB2;
            float f8 = rect.top;
            TextPaint textPaint2 = bVar.F;
            textPaint2.setTextSize(bVar.f2491j);
            textPaint2.setTypeface(bVar.f2500s);
            float f9 = (-textPaint2.ascent()) + f8;
            float f10 = rectF2.left;
            float f11 = this.E;
            rectF2.left = f10 - f11;
            rectF2.top -= f11;
            rectF2.right += f11;
            rectF2.bottom = f9 + f11;
            rectF2.offset(-getPaddingLeft(), -getPaddingTop());
            u1.g gVar2 = (u1.g) this.B;
            gVar2.getClass();
            gVar2.m(rectF2.left, rectF2.top, rectF2.right, rectF2.bottom);
        }
    }

    public final void l(b1 b1Var, int i3) {
        try {
            b1Var.setTextAppearance(i3);
            if (b1Var.getTextColors().getDefaultColor() != -65281) {
                return;
            }
        } catch (Exception unused) {
        }
        b1Var.setTextAppearance(R.style.TextAppearance_AppCompat_Caption);
        b1Var.setTextColor(c.a(getContext(), R.color.design_error));
    }

    public final void m(int i3) {
        boolean z2 = this.f1465j;
        int i4 = this.f1463i;
        if (i4 == -1) {
            this.f1467k.setText(String.valueOf(i3));
            this.f1467k.setContentDescription(null);
            this.f1465j = false;
        } else {
            this.f1465j = i3 > i4;
            Context context = getContext();
            this.f1467k.setContentDescription(context.getString(this.f1465j ? R.string.character_counter_overflowed_content_description : R.string.character_counter_content_description, Integer.valueOf(i3), Integer.valueOf(this.f1463i)));
            if (z2 != this.f1465j) {
                n();
            }
            String str = a0.b.b;
            Locale locale = Locale.getDefault();
            int i5 = a0.j.f17a;
            a0.b bVar = a0.i.a(locale) == 1 ? a0.b.f7e : a0.b.f6d;
            b1 b1Var = this.f1467k;
            String string = getContext().getString(R.string.character_counter_pattern, Integer.valueOf(i3), Integer.valueOf(this.f1463i));
            bVar.getClass();
            a0.g gVar = h.f14a;
            b1Var.setText(string != null ? bVar.c(string).toString() : null);
        }
        if (this.f1456e == null || z2 == this.f1465j) {
            return;
        }
        s(false, false);
        z();
        p();
    }

    public final void n() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        b1 b1Var = this.f1467k;
        if (b1Var != null) {
            l(b1Var, this.f1465j ? this.f1469l : this.f1471m);
            if (!this.f1465j && (colorStateList2 = this.f1483s) != null) {
                this.f1467k.setTextColor(colorStateList2);
            }
            if (!this.f1465j || (colorStateList = this.f1485t) == null) {
                return;
            }
            this.f1467k.setTextColor(colorStateList);
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0053  */
    /* JADX WARN: Code duplicated, block: B:21:0x0057  */
    /* JADX WARN: Code duplicated, block: B:23:0x006c  */
    public final boolean o() {
        boolean z2;
        if (this.f1456e == null) {
            return false;
        }
        boolean z3 = true;
        if (getStartIconDrawable() != null || this.f1486u != null) {
            LinearLayout linearLayout = this.b;
            if (linearLayout.getMeasuredWidth() > 0) {
                int measuredWidth = linearLayout.getMeasuredWidth() - this.f1456e.getPaddingLeft();
                if (this.V == null || this.W != measuredWidth) {
                    ColorDrawable colorDrawable = new ColorDrawable();
                    this.V = colorDrawable;
                    this.W = measuredWidth;
                    colorDrawable.setBounds(0, 0, measuredWidth, 1);
                }
                Drawable[] drawableArrA = o.a(this.f1456e);
                Drawable drawable = drawableArrA[0];
                ColorDrawable colorDrawable2 = this.V;
                if (drawable != colorDrawable2) {
                    o.e(this.f1456e, colorDrawable2, drawableArrA[1], drawableArrA[2], drawableArrA[3]);
                    z2 = true;
                } else {
                    z2 = false;
                }
            } else if (this.V != null) {
                Drawable[] drawableArrA2 = o.a(this.f1456e);
                o.e(this.f1456e, null, drawableArrA2[1], drawableArrA2[2], drawableArrA2[3]);
                this.V = null;
                z2 = true;
            } else {
                z2 = false;
            }
        } else if (this.V != null) {
            Drawable[] drawableArrA3 = o.a(this.f1456e);
            o.e(this.f1456e, null, drawableArrA3[1], drawableArrA3[2], drawableArrA3[3]);
            this.V = null;
            z2 = true;
        } else {
            z2 = false;
        }
        if ((this.f1478p0.getVisibility() == 0 || ((this.f1453c0 != 0 && g()) || this.f1490w != null)) && this.f1452c.getMeasuredWidth() > 0) {
            int measuredWidth2 = this.f1492x.getMeasuredWidth() - this.f1456e.getPaddingRight();
            CheckableImageButton endIconToUpdateDummyDrawable = getEndIconToUpdateDummyDrawable();
            if (endIconToUpdateDummyDrawable != null) {
                measuredWidth2 = c0.l.c((ViewGroup.MarginLayoutParams) endIconToUpdateDummyDrawable.getLayoutParams()) + endIconToUpdateDummyDrawable.getMeasuredWidth() + measuredWidth2;
            }
            Drawable[] drawableArrA4 = o.a(this.f1456e);
            ColorDrawable colorDrawable3 = this.f1468k0;
            if (colorDrawable3 != null && this.f1470l0 != measuredWidth2) {
                this.f1470l0 = measuredWidth2;
                colorDrawable3.setBounds(0, 0, measuredWidth2, 1);
                o.e(this.f1456e, drawableArrA4[0], drawableArrA4[1], this.f1468k0, drawableArrA4[3]);
                return true;
            }
            if (colorDrawable3 == null) {
                ColorDrawable colorDrawable4 = new ColorDrawable();
                this.f1468k0 = colorDrawable4;
                this.f1470l0 = measuredWidth2;
                colorDrawable4.setBounds(0, 0, measuredWidth2, 1);
            }
            Drawable drawable2 = drawableArrA4[2];
            ColorDrawable colorDrawable5 = this.f1468k0;
            if (drawable2 != colorDrawable5) {
                this.f1472m0 = drawable2;
                o.e(this.f1456e, drawableArrA4[0], drawableArrA4[1], colorDrawable5, drawableArrA4[3]);
                return true;
            }
        } else if (this.f1468k0 != null) {
            Drawable[] drawableArrA5 = o.a(this.f1456e);
            if (drawableArrA5[2] == this.f1468k0) {
                o.e(this.f1456e, drawableArrA5[0], drawableArrA5[1], this.f1472m0, drawableArrA5[3]);
            } else {
                z3 = z2;
            }
            this.f1468k0 = null;
            return z3;
        }
        return z2;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        super.onLayout(z2, i3, i4, i5, i6);
        EditText editText = this.f1456e;
        if (editText != null) {
            ThreadLocal threadLocal = n1.c.f2508a;
            int width = editText.getWidth();
            int height = editText.getHeight();
            Rect rect = this.M;
            rect.set(0, 0, width, height);
            ThreadLocal threadLocal2 = n1.c.f2508a;
            Matrix matrix = (Matrix) threadLocal2.get();
            if (matrix == null) {
                matrix = new Matrix();
                threadLocal2.set(matrix);
            } else {
                matrix.reset();
            }
            n1.c.a(this, editText, matrix);
            ThreadLocal threadLocal3 = n1.c.b;
            RectF rectF = (RectF) threadLocal3.get();
            if (rectF == null) {
                rectF = new RectF();
                threadLocal3.set(rectF);
            }
            rectF.set(rect);
            matrix.mapRect(rectF);
            rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
            g gVar = this.C;
            if (gVar != null) {
                int i7 = rect.bottom;
                gVar.setBounds(rect.left, i7 - this.J, rect.right, i7);
            }
            if (this.f1493y) {
                float textSize = this.f1456e.getTextSize();
                b bVar = this.D0;
                if (bVar.f2490i != textSize) {
                    bVar.f2490i = textSize;
                    bVar.g();
                }
                int gravity = this.f1456e.getGravity();
                int i8 = (gravity & (-113)) | 48;
                if (bVar.f2489h != i8) {
                    bVar.f2489h = i8;
                    bVar.g();
                }
                if (bVar.f2488g != gravity) {
                    bVar.f2488g = gravity;
                    bVar.g();
                }
                if (this.f1456e == null) {
                    throw new IllegalStateException();
                }
                WeakHashMap weakHashMap = p0.f727a;
                boolean z3 = b0.d(this) == 1;
                int i9 = rect.bottom;
                Rect rect2 = this.N;
                rect2.bottom = i9;
                int i10 = this.F;
                b1 b1Var = this.f1488v;
                if (i10 == 1) {
                    int compoundPaddingLeft = this.f1456e.getCompoundPaddingLeft() + rect.left;
                    if (this.f1486u != null && !z3) {
                        compoundPaddingLeft = (compoundPaddingLeft - b1Var.getMeasuredWidth()) + b1Var.getPaddingLeft();
                    }
                    rect2.left = compoundPaddingLeft;
                    rect2.top = rect.top + this.G;
                    int compoundPaddingRight = rect.right - this.f1456e.getCompoundPaddingRight();
                    if (this.f1486u != null && z3) {
                        compoundPaddingRight += b1Var.getMeasuredWidth() - b1Var.getPaddingRight();
                    }
                    rect2.right = compoundPaddingRight;
                } else if (i10 != 2) {
                    int compoundPaddingLeft2 = this.f1456e.getCompoundPaddingLeft() + rect.left;
                    if (this.f1486u != null && !z3) {
                        compoundPaddingLeft2 = (compoundPaddingLeft2 - b1Var.getMeasuredWidth()) + b1Var.getPaddingLeft();
                    }
                    rect2.left = compoundPaddingLeft2;
                    rect2.top = getPaddingTop();
                    int compoundPaddingRight2 = rect.right - this.f1456e.getCompoundPaddingRight();
                    if (this.f1486u != null && z3) {
                        compoundPaddingRight2 += b1Var.getMeasuredWidth() - b1Var.getPaddingRight();
                    }
                    rect2.right = compoundPaddingRight2;
                } else {
                    rect2.left = this.f1456e.getPaddingLeft() + rect.left;
                    rect2.top = rect.top - e();
                    rect2.right = rect.right - this.f1456e.getPaddingRight();
                }
                int i11 = rect2.left;
                int i12 = rect2.top;
                int i13 = rect2.right;
                int i14 = rect2.bottom;
                Rect rect3 = bVar.f2487e;
                if (rect3.left != i11 || rect3.top != i12 || rect3.right != i13 || rect3.bottom != i14) {
                    rect3.set(i11, i12, i13, i14);
                    bVar.D = true;
                    bVar.f();
                }
                if (this.f1456e == null) {
                    throw new IllegalStateException();
                }
                TextPaint textPaint = bVar.F;
                textPaint.setTextSize(bVar.f2490i);
                textPaint.setTypeface(bVar.f2501t);
                float f = -textPaint.ascent();
                rect2.left = this.f1456e.getCompoundPaddingLeft() + rect.left;
                rect2.top = (this.F != 1 || this.f1456e.getMinLines() > 1) ? rect.top + this.f1456e.getCompoundPaddingTop() : (int) (rect.centerY() - (f / 2.0f));
                rect2.right = rect.right - this.f1456e.getCompoundPaddingRight();
                int compoundPaddingBottom = (this.F != 1 || this.f1456e.getMinLines() > 1) ? rect.bottom - this.f1456e.getCompoundPaddingBottom() : (int) (rect2.top + f);
                rect2.bottom = compoundPaddingBottom;
                int i15 = rect2.left;
                int i16 = rect2.top;
                int i17 = rect2.right;
                Rect rect4 = bVar.f2486d;
                if (rect4.left != i15 || rect4.top != i16 || rect4.right != i17 || rect4.bottom != compoundPaddingBottom) {
                    rect4.set(i15, i16, i17, compoundPaddingBottom);
                    bVar.D = true;
                    bVar.f();
                }
                bVar.g();
                if (!f() || this.C0) {
                    return;
                }
                i();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i3, int i4) {
        EditText editText;
        int iMax;
        super.onMeasure(i3, i4);
        boolean z2 = false;
        if (this.f1456e != null && this.f1456e.getMeasuredHeight() < (iMax = Math.max(this.f1452c.getMeasuredHeight(), this.b.getMeasuredHeight()))) {
            this.f1456e.setMinimumHeight(iMax);
            z2 = true;
        }
        boolean zO = o();
        if (z2 || zO) {
            this.f1456e.post(new q(this, 1));
        }
        if (this.f1477p != null && (editText = this.f1456e) != null) {
            this.f1477p.setGravity(editText.getGravity());
            this.f1477p.setPadding(this.f1456e.getCompoundPaddingLeft(), this.f1456e.getCompoundPaddingTop(), this.f1456e.getCompoundPaddingRight(), this.f1456e.getCompoundPaddingBottom());
        }
        u();
        x();
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof s)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        s sVar = (s) parcelable;
        super.onRestoreInstanceState(sVar.f1951a);
        setError(sVar.f3306c);
        if (sVar.f3307d) {
            this.f1457e0.post(new q(this, 0));
        }
        requestLayout();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        s sVar = new s(super.onSaveInstanceState());
        if (this.f1459g.e()) {
            sVar.f3306c = getError();
        }
        sVar.f3307d = this.f1453c0 != 0 && this.f1457e0.f1437d;
        return sVar;
    }

    public final void p() {
        Drawable background;
        b1 b1Var;
        EditText editText = this.f1456e;
        if (editText == null || this.F != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        int[] iArr = k1.f2070a;
        Drawable drawableMutate = background.mutate();
        n nVar = this.f1459g;
        if (nVar.e()) {
            b1 b1Var2 = nVar.f3290m;
            drawableMutate.setColorFilter(t.c(b1Var2 != null ? b1Var2.getCurrentTextColor() : -1, PorterDuff.Mode.SRC_IN));
        } else if (this.f1465j && (b1Var = this.f1467k) != null) {
            drawableMutate.setColorFilter(t.c(b1Var.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            drawableMutate.clearColorFilter();
            this.f1456e.refreshDrawableState();
        }
    }

    public final void q(CheckableImageButton checkableImageButton, ColorStateList colorStateList) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (checkableImageButton.getDrawable() == null || colorStateList == null || !colorStateList.isStateful()) {
            return;
        }
        int colorForState = colorStateList.getColorForState(getDrawableState(), colorStateList.getDefaultColor());
        Drawable drawableMutate = drawable.mutate();
        w.b.h(drawableMutate, ColorStateList.valueOf(colorForState));
        checkableImageButton.setImageDrawable(drawableMutate);
    }

    public final void r() {
        if (this.F != 1) {
            FrameLayout frameLayout = this.f1449a;
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) frameLayout.getLayoutParams();
            int iE = e();
            if (iE != layoutParams.topMargin) {
                layoutParams.topMargin = iE;
                frameLayout.requestLayout();
            }
        }
    }

    public final void s(boolean z2, boolean z3) {
        ColorStateList colorStateList;
        b1 b1Var;
        boolean zIsEnabled = isEnabled();
        EditText editText = this.f1456e;
        boolean z4 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.f1456e;
        boolean z5 = editText2 != null && editText2.hasFocus();
        n nVar = this.f1459g;
        boolean zE = nVar.e();
        ColorStateList colorStateList2 = this.f1482r0;
        b bVar = this.D0;
        if (colorStateList2 != null) {
            bVar.h(colorStateList2);
            ColorStateList colorStateList3 = this.f1482r0;
            if (bVar.f2492k != colorStateList3) {
                bVar.f2492k = colorStateList3;
                bVar.g();
            }
        }
        if (!zIsEnabled) {
            ColorStateList colorStateList4 = this.f1482r0;
            int colorForState = colorStateList4 != null ? colorStateList4.getColorForState(new int[]{-16842910}, this.B0) : this.B0;
            bVar.h(ColorStateList.valueOf(colorForState));
            ColorStateList colorStateListValueOf = ColorStateList.valueOf(colorForState);
            if (bVar.f2492k != colorStateListValueOf) {
                bVar.f2492k = colorStateListValueOf;
                bVar.g();
            }
        } else if (zE) {
            b1 b1Var2 = nVar.f3290m;
            bVar.h(b1Var2 != null ? b1Var2.getTextColors() : null);
        } else if (this.f1465j && (b1Var = this.f1467k) != null) {
            bVar.h(b1Var.getTextColors());
        } else if (z5 && (colorStateList = this.f1484s0) != null) {
            bVar.h(colorStateList);
        }
        if (z4 || (isEnabled() && (z5 || zE))) {
            if (z3 || this.C0) {
                ValueAnimator valueAnimator = this.F0;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.F0.cancel();
                }
                if (z2 && this.E0) {
                    a(1.0f);
                } else {
                    bVar.i(1.0f);
                }
                this.C0 = false;
                if (f()) {
                    i();
                }
                EditText editText3 = this.f1456e;
                t(editText3 != null ? editText3.getText().length() : 0);
                v();
                y();
                return;
            }
            return;
        }
        if (z3 || !this.C0) {
            ValueAnimator valueAnimator2 = this.F0;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.F0.cancel();
            }
            if (z2 && this.E0) {
                a(0.0f);
            } else {
                bVar.i(0.0f);
            }
            if (f() && !((u1.g) this.B).f3257y.isEmpty() && f()) {
                ((u1.g) this.B).m(0.0f, 0.0f, 0.0f, 0.0f);
            }
            this.C0 = true;
            b1 b1Var3 = this.f1477p;
            if (b1Var3 != null && this.f1475o) {
                b1Var3.setText((CharSequence) null);
                this.f1477p.setVisibility(4);
            }
            v();
            y();
        }
    }

    public void setBoxBackgroundColor(int i3) {
        if (this.L != i3) {
            this.L = i3;
            this.x0 = i3;
            this.f1495z0 = i3;
            this.A0 = i3;
            b();
        }
    }

    public void setBoxBackgroundColorResource(int i3) {
        setBoxBackgroundColor(c.a(getContext(), i3));
    }

    public void setBoxBackgroundColorStateList(ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.x0 = defaultColor;
        this.L = defaultColor;
        this.y0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.f1495z0 = colorStateList.getColorForState(new int[]{android.R.attr.state_focused, android.R.attr.state_enabled}, -1);
        this.A0 = colorStateList.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, -1);
        b();
    }

    public void setBoxBackgroundMode(int i3) {
        if (i3 == this.F) {
            return;
        }
        this.F = i3;
        if (this.f1456e != null) {
            h();
        }
    }

    public void setBoxStrokeColor(int i3) {
        if (this.f1489v0 != i3) {
            this.f1489v0 = i3;
            z();
        }
    }

    public void setBoxStrokeColorStateList(ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.t0 = colorStateList.getDefaultColor();
            this.B0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.f1487u0 = colorStateList.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, -1);
            this.f1489v0 = colorStateList.getColorForState(new int[]{android.R.attr.state_focused, android.R.attr.state_enabled}, -1);
        } else if (this.f1489v0 != colorStateList.getDefaultColor()) {
            this.f1489v0 = colorStateList.getDefaultColor();
        }
        z();
    }

    public void setBoxStrokeErrorColor(ColorStateList colorStateList) {
        if (this.f1491w0 != colorStateList) {
            this.f1491w0 = colorStateList;
            z();
        }
    }

    public void setBoxStrokeWidth(int i3) {
        this.I = i3;
        z();
    }

    public void setBoxStrokeWidthFocused(int i3) {
        this.J = i3;
        z();
    }

    public void setBoxStrokeWidthFocusedResource(int i3) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i3));
    }

    public void setBoxStrokeWidthResource(int i3) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i3));
    }

    public void setCounterEnabled(boolean z2) {
        if (this.f1461h != z2) {
            n nVar = this.f1459g;
            if (z2) {
                b1 b1Var = new b1(getContext(), null);
                this.f1467k = b1Var;
                b1Var.setId(R.id.textinput_counter);
                Typeface typeface = this.P;
                if (typeface != null) {
                    this.f1467k.setTypeface(typeface);
                }
                this.f1467k.setMaxLines(1);
                nVar.a(this.f1467k, 2);
                c0.l.h((ViewGroup.MarginLayoutParams) this.f1467k.getLayoutParams(), getResources().getDimensionPixelOffset(R.dimen.mtrl_textinput_counter_margin_start));
                n();
                if (this.f1467k != null) {
                    EditText editText = this.f1456e;
                    m(editText == null ? 0 : editText.getText().length());
                }
            } else {
                nVar.h(this.f1467k, 2);
                this.f1467k = null;
            }
            this.f1461h = z2;
        }
    }

    public void setCounterMaxLength(int i3) {
        if (this.f1463i != i3) {
            if (i3 > 0) {
                this.f1463i = i3;
            } else {
                this.f1463i = -1;
            }
            if (!this.f1461h || this.f1467k == null) {
                return;
            }
            EditText editText = this.f1456e;
            m(editText == null ? 0 : editText.getText().length());
        }
    }

    public void setCounterOverflowTextAppearance(int i3) {
        if (this.f1469l != i3) {
            this.f1469l = i3;
            n();
        }
    }

    public void setCounterOverflowTextColor(ColorStateList colorStateList) {
        if (this.f1485t != colorStateList) {
            this.f1485t = colorStateList;
            n();
        }
    }

    public void setCounterTextAppearance(int i3) {
        if (this.f1471m != i3) {
            this.f1471m = i3;
            n();
        }
    }

    public void setCounterTextColor(ColorStateList colorStateList) {
        if (this.f1483s != colorStateList) {
            this.f1483s = colorStateList;
            n();
        }
    }

    public void setDefaultHintTextColor(ColorStateList colorStateList) {
        this.f1482r0 = colorStateList;
        this.f1484s0 = colorStateList;
        if (this.f1456e != null) {
            s(false, false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z2) {
        j(this, z2);
        super.setEnabled(z2);
    }

    public void setEndIconActivated(boolean z2) {
        this.f1457e0.setActivated(z2);
    }

    public void setEndIconCheckable(boolean z2) {
        this.f1457e0.setCheckable(z2);
    }

    public void setEndIconContentDescription(int i3) {
        setEndIconContentDescription(i3 != 0 ? getResources().getText(i3) : null);
    }

    public void setEndIconDrawable(int i3) {
        setEndIconDrawable(i3 != 0 ? a1.b.v(getContext(), i3) : null);
    }

    public void setEndIconMode(int i3) {
        int i4 = this.f1453c0;
        this.f1453c0 = i3;
        for (u1.b bVar : this.f1458f0) {
            switch (bVar.f3247a) {
                case 0:
                    e eVar = (e) bVar.b;
                    EditText editText = getEditText();
                    if (editText != null && i4 == 2) {
                        editText.removeTextChangedListener(eVar.f3250d);
                        if (editText.getOnFocusChangeListener() == eVar.f3251e) {
                            editText.setOnFocusChangeListener(null);
                        }
                    }
                    break;
                case 1:
                    u1.k kVar = (u1.k) bVar.b;
                    AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) getEditText();
                    if (autoCompleteTextView != null && i4 == 3) {
                        autoCompleteTextView.removeTextChangedListener(kVar.f3262d);
                        if (autoCompleteTextView.getOnFocusChangeListener() == kVar.f3263e) {
                            autoCompleteTextView.setOnFocusChangeListener(null);
                        }
                        autoCompleteTextView.setOnTouchListener(null);
                        autoCompleteTextView.setOnDismissListener(null);
                    }
                    break;
                default:
                    EditText editText2 = getEditText();
                    if (editText2 != null && i4 == 1) {
                        editText2.setTransformationMethod(PasswordTransformationMethod.getInstance());
                        editText2.removeTextChangedListener(((p) bVar.b).f3302d);
                    }
                    break;
            }
        }
        setEndIconVisible(i3 != 0);
        if (!getEndIconDelegate().b(this.F)) {
            throw new IllegalStateException("The current box background mode " + this.F + " is not supported by the end icon mode " + i3);
        }
        getEndIconDelegate().a();
        c();
    }

    public void setEndIconOnClickListener(View.OnClickListener onClickListener) {
        View.OnLongClickListener onLongClickListener = this.f1474n0;
        CheckableImageButton checkableImageButton = this.f1457e0;
        checkableImageButton.setOnClickListener(onClickListener);
        k(checkableImageButton, onLongClickListener);
    }

    public void setEndIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f1474n0 = onLongClickListener;
        CheckableImageButton checkableImageButton = this.f1457e0;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        k(checkableImageButton, onLongClickListener);
    }

    public void setEndIconTintList(ColorStateList colorStateList) {
        if (this.f1460g0 != colorStateList) {
            this.f1460g0 = colorStateList;
            this.f1462h0 = true;
            c();
        }
    }

    public void setEndIconTintMode(PorterDuff.Mode mode) {
        if (this.f1464i0 != mode) {
            this.f1464i0 = mode;
            this.f1466j0 = true;
            c();
        }
    }

    public void setEndIconVisible(boolean z2) {
        if (g() != z2) {
            this.f1457e0.setVisibility(z2 ? 0 : 8);
            x();
            o();
        }
    }

    public void setError(CharSequence charSequence) {
        n nVar = this.f1459g;
        if (!nVar.f3289l) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            nVar.g();
            return;
        }
        nVar.c();
        nVar.f3288k = charSequence;
        nVar.f3290m.setText(charSequence);
        int i3 = nVar.f3286i;
        if (i3 != 1) {
            nVar.f3287j = 1;
        }
        nVar.j(i3, nVar.f3287j, nVar.i(nVar.f3290m, charSequence));
    }

    public void setErrorContentDescription(CharSequence charSequence) {
        n nVar = this.f1459g;
        nVar.f3291n = charSequence;
        b1 b1Var = nVar.f3290m;
        if (b1Var != null) {
            b1Var.setContentDescription(charSequence);
        }
    }

    public void setErrorEnabled(boolean z2) {
        n nVar = this.f1459g;
        TextInputLayout textInputLayout = nVar.b;
        if (nVar.f3289l == z2) {
            return;
        }
        nVar.c();
        if (z2) {
            b1 b1Var = new b1(nVar.f3280a, null);
            nVar.f3290m = b1Var;
            b1Var.setId(R.id.textinput_error);
            nVar.f3290m.setTextAlignment(5);
            Typeface typeface = nVar.f3299v;
            if (typeface != null) {
                nVar.f3290m.setTypeface(typeface);
            }
            int i3 = nVar.f3292o;
            nVar.f3292o = i3;
            b1 b1Var2 = nVar.f3290m;
            if (b1Var2 != null) {
                nVar.b.l(b1Var2, i3);
            }
            ColorStateList colorStateList = nVar.f3293p;
            nVar.f3293p = colorStateList;
            b1 b1Var3 = nVar.f3290m;
            if (b1Var3 != null && colorStateList != null) {
                b1Var3.setTextColor(colorStateList);
            }
            CharSequence charSequence = nVar.f3291n;
            nVar.f3291n = charSequence;
            b1 b1Var4 = nVar.f3290m;
            if (b1Var4 != null) {
                b1Var4.setContentDescription(charSequence);
            }
            nVar.f3290m.setVisibility(4);
            c0.f(nVar.f3290m, 1);
            nVar.a(nVar.f3290m, 0);
        } else {
            nVar.g();
            nVar.h(nVar.f3290m, 0);
            nVar.f3290m = null;
            textInputLayout.p();
            textInputLayout.z();
        }
        nVar.f3289l = z2;
    }

    public void setErrorIconDrawable(int i3) {
        setErrorIconDrawable(i3 != 0 ? a1.b.v(getContext(), i3) : null);
    }

    public void setErrorIconOnClickListener(View.OnClickListener onClickListener) {
        View.OnLongClickListener onLongClickListener = this.f1476o0;
        CheckableImageButton checkableImageButton = this.f1478p0;
        checkableImageButton.setOnClickListener(onClickListener);
        k(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f1476o0 = onLongClickListener;
        CheckableImageButton checkableImageButton = this.f1478p0;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        k(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconTintList(ColorStateList colorStateList) {
        this.f1480q0 = colorStateList;
        CheckableImageButton checkableImageButton = this.f1478p0;
        Drawable drawable = checkableImageButton.getDrawable();
        if (drawable != null) {
            drawable = drawable.mutate();
            w.b.h(drawable, colorStateList);
        }
        if (checkableImageButton.getDrawable() != drawable) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    public void setErrorIconTintMode(PorterDuff.Mode mode) {
        CheckableImageButton checkableImageButton = this.f1478p0;
        Drawable drawable = checkableImageButton.getDrawable();
        if (drawable != null) {
            drawable = drawable.mutate();
            w.b.i(drawable, mode);
        }
        if (checkableImageButton.getDrawable() != drawable) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    public void setErrorTextAppearance(int i3) {
        n nVar = this.f1459g;
        nVar.f3292o = i3;
        b1 b1Var = nVar.f3290m;
        if (b1Var != null) {
            nVar.b.l(b1Var, i3);
        }
    }

    public void setErrorTextColor(ColorStateList colorStateList) {
        n nVar = this.f1459g;
        nVar.f3293p = colorStateList;
        b1 b1Var = nVar.f3290m;
        if (b1Var == null || colorStateList == null) {
            return;
        }
        b1Var.setTextColor(colorStateList);
    }

    public void setHelperText(CharSequence charSequence) {
        boolean zIsEmpty = TextUtils.isEmpty(charSequence);
        n nVar = this.f1459g;
        if (zIsEmpty) {
            if (nVar.f3295r) {
                setHelperTextEnabled(false);
                return;
            }
            return;
        }
        if (!nVar.f3295r) {
            setHelperTextEnabled(true);
        }
        nVar.c();
        nVar.f3294q = charSequence;
        nVar.f3296s.setText(charSequence);
        int i3 = nVar.f3286i;
        if (i3 != 2) {
            nVar.f3287j = 2;
        }
        nVar.j(i3, nVar.f3287j, nVar.i(nVar.f3296s, charSequence));
    }

    public void setHelperTextColor(ColorStateList colorStateList) {
        n nVar = this.f1459g;
        nVar.f3298u = colorStateList;
        b1 b1Var = nVar.f3296s;
        if (b1Var == null || colorStateList == null) {
            return;
        }
        b1Var.setTextColor(colorStateList);
    }

    public void setHelperTextEnabled(boolean z2) {
        n nVar = this.f1459g;
        TextInputLayout textInputLayout = nVar.b;
        if (nVar.f3295r == z2) {
            return;
        }
        nVar.c();
        if (z2) {
            b1 b1Var = new b1(nVar.f3280a, null);
            nVar.f3296s = b1Var;
            b1Var.setId(R.id.textinput_helper_text);
            nVar.f3296s.setTextAlignment(5);
            Typeface typeface = nVar.f3299v;
            if (typeface != null) {
                nVar.f3296s.setTypeface(typeface);
            }
            nVar.f3296s.setVisibility(4);
            c0.f(nVar.f3296s, 1);
            int i3 = nVar.f3297t;
            nVar.f3297t = i3;
            b1 b1Var2 = nVar.f3296s;
            if (b1Var2 != null) {
                b1Var2.setTextAppearance(i3);
            }
            ColorStateList colorStateList = nVar.f3298u;
            nVar.f3298u = colorStateList;
            b1 b1Var3 = nVar.f3296s;
            if (b1Var3 != null && colorStateList != null) {
                b1Var3.setTextColor(colorStateList);
            }
            nVar.a(nVar.f3296s, 1);
        } else {
            nVar.c();
            int i4 = nVar.f3286i;
            if (i4 == 2) {
                nVar.f3287j = 0;
            }
            nVar.j(i4, nVar.f3287j, nVar.i(nVar.f3296s, null));
            nVar.h(nVar.f3296s, 1);
            nVar.f3296s = null;
            textInputLayout.p();
            textInputLayout.z();
        }
        nVar.f3295r = z2;
    }

    public void setHelperTextTextAppearance(int i3) {
        n nVar = this.f1459g;
        nVar.f3297t = i3;
        b1 b1Var = nVar.f3296s;
        if (b1Var != null) {
            b1Var.setTextAppearance(i3);
        }
    }

    public void setHint(CharSequence charSequence) {
        if (this.f1493y) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z2) {
        this.E0 = z2;
    }

    public void setHintEnabled(boolean z2) {
        if (z2 != this.f1493y) {
            this.f1493y = z2;
            if (z2) {
                CharSequence hint = this.f1456e.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.f1494z)) {
                        setHint(hint);
                    }
                    this.f1456e.setHint((CharSequence) null);
                }
                this.A = true;
            } else {
                this.A = false;
                if (!TextUtils.isEmpty(this.f1494z) && TextUtils.isEmpty(this.f1456e.getHint())) {
                    this.f1456e.setHint(this.f1494z);
                }
                setHintInternal(null);
            }
            if (this.f1456e != null) {
                r();
            }
        }
    }

    public void setHintTextAppearance(int i3) {
        b bVar = this.D0;
        TextInputLayout textInputLayout = bVar.f2484a;
        d dVar = new d(textInputLayout.getContext(), i3);
        ColorStateList colorStateList = dVar.b;
        if (colorStateList != null) {
            bVar.f2493l = colorStateList;
        }
        float f = dVar.f2692a;
        if (f != 0.0f) {
            bVar.f2491j = f;
        }
        ColorStateList colorStateList2 = dVar.f;
        if (colorStateList2 != null) {
            bVar.L = colorStateList2;
        }
        bVar.J = dVar.f2696g;
        bVar.K = dVar.f2697h;
        bVar.I = dVar.f2698i;
        p1.a aVar = bVar.f2503v;
        if (aVar != null) {
            aVar.f2686e = true;
        }
        m mVar = new m(21, bVar);
        dVar.a();
        bVar.f2503v = new p1.a(mVar, dVar.f2701l);
        dVar.b(textInputLayout.getContext(), bVar.f2503v);
        bVar.g();
        this.f1484s0 = bVar.f2493l;
        if (this.f1456e != null) {
            s(false, false);
            r();
        }
    }

    public void setHintTextColor(ColorStateList colorStateList) {
        if (this.f1484s0 != colorStateList) {
            if (this.f1482r0 == null) {
                this.D0.h(colorStateList);
            }
            this.f1484s0 = colorStateList;
            if (this.f1456e != null) {
                s(false, false);
            }
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(int i3) {
        setPasswordVisibilityToggleContentDescription(i3 != 0 ? getResources().getText(i3) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(int i3) {
        setPasswordVisibilityToggleDrawable(i3 != 0 ? a1.b.v(getContext(), i3) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z2) {
        if (z2 && this.f1453c0 != 1) {
            setEndIconMode(1);
        } else {
            if (z2) {
                return;
            }
            setEndIconMode(0);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(ColorStateList colorStateList) {
        this.f1460g0 = colorStateList;
        this.f1462h0 = true;
        c();
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode mode) {
        this.f1464i0 = mode;
        this.f1466j0 = true;
        c();
    }

    public void setPlaceholderText(CharSequence charSequence) {
        if (this.f1475o && TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.f1475o) {
                setPlaceholderTextEnabled(true);
            }
            this.f1473n = charSequence;
        }
        EditText editText = this.f1456e;
        t(editText != null ? editText.getText().length() : 0);
    }

    public void setPlaceholderTextAppearance(int i3) {
        this.f1481r = i3;
        b1 b1Var = this.f1477p;
        if (b1Var != null) {
            b1Var.setTextAppearance(i3);
        }
    }

    public void setPlaceholderTextColor(ColorStateList colorStateList) {
        if (this.f1479q != colorStateList) {
            this.f1479q = colorStateList;
            b1 b1Var = this.f1477p;
            if (b1Var == null || colorStateList == null) {
                return;
            }
            b1Var.setTextColor(colorStateList);
        }
    }

    public void setPrefixText(CharSequence charSequence) {
        this.f1486u = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.f1488v.setText(charSequence);
        v();
    }

    public void setPrefixTextAppearance(int i3) {
        this.f1488v.setTextAppearance(i3);
    }

    public void setPrefixTextColor(ColorStateList colorStateList) {
        this.f1488v.setTextColor(colorStateList);
    }

    public void setStartIconCheckable(boolean z2) {
        this.Q.setCheckable(z2);
    }

    public void setStartIconContentDescription(int i3) {
        setStartIconContentDescription(i3 != 0 ? getResources().getText(i3) : null);
    }

    public void setStartIconDrawable(int i3) {
        setStartIconDrawable(i3 != 0 ? a1.b.v(getContext(), i3) : null);
    }

    public void setStartIconOnClickListener(View.OnClickListener onClickListener) {
        View.OnLongClickListener onLongClickListener = this.f1450a0;
        CheckableImageButton checkableImageButton = this.Q;
        checkableImageButton.setOnClickListener(onClickListener);
        k(checkableImageButton, onLongClickListener);
    }

    public void setStartIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f1450a0 = onLongClickListener;
        CheckableImageButton checkableImageButton = this.Q;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        k(checkableImageButton, onLongClickListener);
    }

    public void setStartIconTintList(ColorStateList colorStateList) {
        if (this.R != colorStateList) {
            this.R = colorStateList;
            this.S = true;
            d(this.Q, true, colorStateList, this.U, this.T);
        }
    }

    public void setStartIconTintMode(PorterDuff.Mode mode) {
        if (this.T != mode) {
            this.T = mode;
            this.U = true;
            d(this.Q, this.S, this.R, true, mode);
        }
    }

    public void setStartIconVisible(boolean z2) {
        CheckableImageButton checkableImageButton = this.Q;
        if ((checkableImageButton.getVisibility() == 0) != z2) {
            checkableImageButton.setVisibility(z2 ? 0 : 8);
            u();
            o();
        }
    }

    public void setSuffixText(CharSequence charSequence) {
        this.f1490w = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.f1492x.setText(charSequence);
        y();
    }

    public void setSuffixTextAppearance(int i3) {
        this.f1492x.setTextAppearance(i3);
    }

    public void setSuffixTextColor(ColorStateList colorStateList) {
        this.f1492x.setTextColor(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(r rVar) {
        EditText editText = this.f1456e;
        if (editText != null) {
            p0.i(editText, rVar);
        }
    }

    public void setTypeface(Typeface typeface) {
        boolean z2;
        if (typeface != this.P) {
            this.P = typeface;
            b bVar = this.D0;
            p1.a aVar = bVar.f2503v;
            boolean z3 = true;
            if (aVar != null) {
                aVar.f2686e = true;
            }
            if (bVar.f2500s != typeface) {
                bVar.f2500s = typeface;
                z2 = true;
            } else {
                z2 = false;
            }
            if (bVar.f2501t != typeface) {
                bVar.f2501t = typeface;
            } else {
                z3 = false;
            }
            if (z2 || z3) {
                bVar.g();
            }
            n nVar = this.f1459g;
            if (typeface != nVar.f3299v) {
                nVar.f3299v = typeface;
                b1 b1Var = nVar.f3290m;
                if (b1Var != null) {
                    b1Var.setTypeface(typeface);
                }
                b1 b1Var2 = nVar.f3296s;
                if (b1Var2 != null) {
                    b1Var2.setTypeface(typeface);
                }
            }
            b1 b1Var3 = this.f1467k;
            if (b1Var3 != null) {
                b1Var3.setTypeface(typeface);
            }
        }
    }

    public final void t(int i3) {
        if (i3 != 0 || this.C0) {
            b1 b1Var = this.f1477p;
            if (b1Var == null || !this.f1475o) {
                return;
            }
            b1Var.setText((CharSequence) null);
            this.f1477p.setVisibility(4);
            return;
        }
        b1 b1Var2 = this.f1477p;
        if (b1Var2 == null || !this.f1475o) {
            return;
        }
        b1Var2.setText(this.f1473n);
        this.f1477p.setVisibility(0);
        this.f1477p.bringToFront();
    }

    public final void u() {
        int iF;
        if (this.f1456e == null) {
            return;
        }
        if (this.Q.getVisibility() == 0) {
            iF = 0;
        } else {
            EditText editText = this.f1456e;
            WeakHashMap weakHashMap = p0.f727a;
            iF = b0.f(editText);
        }
        int compoundPaddingTop = this.f1456e.getCompoundPaddingTop();
        int compoundPaddingBottom = this.f1456e.getCompoundPaddingBottom();
        WeakHashMap weakHashMap2 = p0.f727a;
        b0.k(this.f1488v, iF, compoundPaddingTop, 0, compoundPaddingBottom);
    }

    public final void v() {
        this.f1488v.setVisibility((this.f1486u == null || this.C0) ? 8 : 0);
        o();
    }

    public final void w(boolean z2, boolean z3) {
        int defaultColor = this.f1491w0.getDefaultColor();
        int colorForState = this.f1491w0.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.f1491w0.getColorForState(new int[]{android.R.attr.state_activated, android.R.attr.state_enabled}, defaultColor);
        if (z2) {
            this.K = colorForState2;
        } else if (z3) {
            this.K = colorForState;
        } else {
            this.K = defaultColor;
        }
    }

    public final void x() {
        int iE;
        if (this.f1456e == null) {
            return;
        }
        if (g() || this.f1478p0.getVisibility() == 0) {
            iE = 0;
        } else {
            EditText editText = this.f1456e;
            WeakHashMap weakHashMap = p0.f727a;
            iE = b0.e(editText);
        }
        int paddingTop = this.f1456e.getPaddingTop();
        int paddingBottom = this.f1456e.getPaddingBottom();
        WeakHashMap weakHashMap2 = p0.f727a;
        b0.k(this.f1492x, 0, paddingTop, iE, paddingBottom);
    }

    public final void y() {
        b1 b1Var = this.f1492x;
        int visibility = b1Var.getVisibility();
        boolean z2 = (this.f1490w == null || this.C0) ? false : true;
        b1Var.setVisibility(z2 ? 0 : 8);
        if (visibility != b1Var.getVisibility()) {
            getEndIconDelegate().c(z2);
        }
        o();
    }

    public final void z() {
        b1 b1Var;
        EditText editText;
        EditText editText2;
        if (this.B == null || this.F == 0) {
            return;
        }
        boolean z2 = false;
        boolean z3 = isFocused() || ((editText2 = this.f1456e) != null && editText2.hasFocus());
        boolean z4 = isHovered() || ((editText = this.f1456e) != null && editText.isHovered());
        boolean zIsEnabled = isEnabled();
        n nVar = this.f1459g;
        if (!zIsEnabled) {
            this.K = this.B0;
        } else if (nVar.e()) {
            if (this.f1491w0 != null) {
                w(z3, z4);
            } else {
                b1 b1Var2 = nVar.f3290m;
                this.K = b1Var2 != null ? b1Var2.getCurrentTextColor() : -1;
            }
        } else if (!this.f1465j || (b1Var = this.f1467k) == null) {
            if (z3) {
                this.K = this.f1489v0;
            } else if (z4) {
                this.K = this.f1487u0;
            } else {
                this.K = this.t0;
            }
        } else if (this.f1491w0 != null) {
            w(z3, z4);
        } else {
            this.K = b1Var.getCurrentTextColor();
        }
        if (getErrorIconDrawable() != null && nVar.f3289l && nVar.e()) {
            z2 = true;
        }
        setErrorIconVisible(z2);
        q(this.f1478p0, this.f1480q0);
        q(this.Q, this.R);
        ColorStateList colorStateList = this.f1460g0;
        CheckableImageButton checkableImageButton = this.f1457e0;
        q(checkableImageButton, colorStateList);
        l endIconDelegate = getEndIconDelegate();
        endIconDelegate.getClass();
        if (endIconDelegate instanceof u1.k) {
            if (!nVar.e() || getEndIconDrawable() == null) {
                c();
            } else {
                Drawable drawableMutate = getEndIconDrawable().mutate();
                b1 b1Var3 = nVar.f3290m;
                w.b.g(drawableMutate, b1Var3 != null ? b1Var3.getCurrentTextColor() : -1);
                checkableImageButton.setImageDrawable(drawableMutate);
            }
        }
        if (z3 && isEnabled()) {
            this.H = this.J;
        } else {
            this.H = this.I;
        }
        if (this.F == 1) {
            if (!isEnabled()) {
                this.L = this.y0;
            } else if (z4 && !z3) {
                this.L = this.A0;
            } else if (z3) {
                this.L = this.f1495z0;
            } else {
                this.L = this.x0;
            }
        }
        b();
    }

    public void setEndIconContentDescription(CharSequence charSequence) {
        if (getEndIconContentDescription() != charSequence) {
            this.f1457e0.setContentDescription(charSequence);
        }
    }

    public void setEndIconDrawable(Drawable drawable) {
        this.f1457e0.setImageDrawable(drawable);
    }

    public void setErrorIconDrawable(Drawable drawable) {
        this.f1478p0.setImageDrawable(drawable);
        setErrorIconVisible(drawable != null && this.f1459g.f3289l);
    }

    public void setStartIconContentDescription(CharSequence charSequence) {
        if (getStartIconContentDescription() != charSequence) {
            this.Q.setContentDescription(charSequence);
        }
    }

    public void setStartIconDrawable(Drawable drawable) {
        CheckableImageButton checkableImageButton = this.Q;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            setStartIconVisible(true);
            d(checkableImageButton, this.S, this.R, this.U, this.T);
        } else {
            setStartIconVisible(false);
            setStartIconOnClickListener(null);
            setStartIconOnLongClickListener(null);
            setStartIconContentDescription((CharSequence) null);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(CharSequence charSequence) {
        this.f1457e0.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(Drawable drawable) {
        this.f1457e0.setImageDrawable(drawable);
    }
}
