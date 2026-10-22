package com.google.android.material.chip;

import a0.g;
import a0.h;
import a0.j;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import android.widget.TextView;
import c0.a0;
import c0.b0;
import c0.f0;
import c0.p0;
import c1.b;
import i.p;
import j1.a;
import j1.c;
import j1.d;
import j1.e;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Locale;
import java.util.WeakHashMap;
import n1.i;
import s1.k;
import s1.u;

/* JADX INFO: loaded from: classes.dex */
public class Chip extends p implements d, u {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final Rect f1359u = new Rect();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int[] f1360v = {R.attr.state_selected};

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int[] f1361w = {R.attr.state_checkable};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public e f1362e;
    public InsetDrawable f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public RippleDrawable f1363g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public View.OnClickListener f1364h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public CompoundButton.OnCheckedChangeListener f1365i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f1366j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f1367k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f1368l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f1369m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f1370n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f1371o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f1372p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final c f1373q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final Rect f1374r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final RectF f1375s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final a f1376t;

    public Chip(Context context, AttributeSet attributeSet) {
        int resourceId;
        int resourceId2;
        int resourceId3;
        super(v1.a.a(context, attributeSet, com.ex.auto.R.attr.chipStyle, com.ex.auto.R.style.Widget_MaterialComponents_Chip_Action), attributeSet, com.ex.auto.R.attr.chipStyle);
        this.f1374r = new Rect();
        this.f1375s = new RectF();
        this.f1376t = new a(0, this);
        Context context2 = getContext();
        if (attributeSet != null) {
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background") != null) {
                Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") != null) {
                throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") != null) {
                throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            }
            if (!attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) != 1) {
                throw new UnsupportedOperationException("Chip does not support multi-line text");
            }
            if (attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627) != 8388627) {
                Log.w("Chip", "Chip text must be vertically center and start aligned");
            }
        }
        e eVar = new e(context2, attributeSet);
        Context context3 = eVar.f2304e0;
        int[] iArr = b1.a.b;
        TypedArray typedArrayD = i.d(context3, attributeSet, iArr, com.ex.auto.R.attr.chipStyle, com.ex.auto.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        eVar.E0 = typedArrayD.hasValue(36);
        Context context4 = eVar.f2304e0;
        ColorStateList colorStateListZ = k1.a.z(context4, typedArrayD, 23);
        if (eVar.f2322x != colorStateListZ) {
            eVar.f2322x = colorStateListZ;
            eVar.onStateChange(eVar.getState());
        }
        ColorStateList colorStateListZ2 = k1.a.z(context4, typedArrayD, 10);
        if (eVar.f2323y != colorStateListZ2) {
            eVar.f2323y = colorStateListZ2;
            eVar.onStateChange(eVar.getState());
        }
        float dimension = typedArrayD.getDimension(18, 0.0f);
        if (eVar.f2324z != dimension) {
            eVar.f2324z = dimension;
            eVar.invalidateSelf();
            eVar.t();
        }
        if (typedArrayD.hasValue(11)) {
            eVar.z(typedArrayD.getDimension(11, 0.0f));
        }
        eVar.E(k1.a.z(context4, typedArrayD, 21));
        eVar.F(typedArrayD.getDimension(22, 0.0f));
        eVar.O(k1.a.z(context4, typedArrayD, 35));
        String text = typedArrayD.getText(4);
        text = text == null ? "" : text;
        if (!TextUtils.equals(eVar.E, text)) {
            eVar.E = text;
            eVar.f2310k0.f2520d = true;
            eVar.invalidateSelf();
            eVar.t();
        }
        eVar.P((!typedArrayD.hasValue(0) || (resourceId3 = typedArrayD.getResourceId(0, 0)) == 0) ? null : new p1.d(context4, resourceId3));
        int i3 = typedArrayD.getInt(2, 0);
        if (i3 == 1) {
            eVar.B0 = TextUtils.TruncateAt.START;
        } else if (i3 == 2) {
            eVar.B0 = TextUtils.TruncateAt.MIDDLE;
        } else if (i3 == 3) {
            eVar.B0 = TextUtils.TruncateAt.END;
        }
        eVar.D(typedArrayD.getBoolean(17, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            eVar.D(typedArrayD.getBoolean(14, false));
        }
        eVar.A(k1.a.C(context4, typedArrayD, 13));
        if (typedArrayD.hasValue(16)) {
            eVar.C(k1.a.z(context4, typedArrayD, 16));
        }
        eVar.B(typedArrayD.getDimension(15, 0.0f));
        eVar.L(typedArrayD.getBoolean(30, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            eVar.L(typedArrayD.getBoolean(25, false));
        }
        eVar.G(k1.a.C(context4, typedArrayD, 24));
        eVar.K(k1.a.z(context4, typedArrayD, 29));
        eVar.I(typedArrayD.getDimension(27, 0.0f));
        eVar.v(typedArrayD.getBoolean(5, false));
        eVar.y(typedArrayD.getBoolean(9, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            eVar.y(typedArrayD.getBoolean(7, false));
        }
        eVar.w(k1.a.C(context4, typedArrayD, 6));
        if (typedArrayD.hasValue(8)) {
            eVar.x(k1.a.z(context4, typedArrayD, 8));
        }
        eVar.U = (!typedArrayD.hasValue(38) || (resourceId2 = typedArrayD.getResourceId(38, 0)) == 0) ? null : b.a(context4, resourceId2);
        eVar.V = (!typedArrayD.hasValue(32) || (resourceId = typedArrayD.getResourceId(32, 0)) == 0) ? null : b.a(context4, resourceId);
        float dimension2 = typedArrayD.getDimension(20, 0.0f);
        if (eVar.W != dimension2) {
            eVar.W = dimension2;
            eVar.invalidateSelf();
            eVar.t();
        }
        eVar.N(typedArrayD.getDimension(34, 0.0f));
        eVar.M(typedArrayD.getDimension(33, 0.0f));
        float dimension3 = typedArrayD.getDimension(40, 0.0f);
        if (eVar.Z != dimension3) {
            eVar.Z = dimension3;
            eVar.invalidateSelf();
            eVar.t();
        }
        float dimension4 = typedArrayD.getDimension(39, 0.0f);
        if (eVar.f2300a0 != dimension4) {
            eVar.f2300a0 = dimension4;
            eVar.invalidateSelf();
            eVar.t();
        }
        eVar.J(typedArrayD.getDimension(28, 0.0f));
        eVar.H(typedArrayD.getDimension(26, 0.0f));
        float dimension5 = typedArrayD.getDimension(12, 0.0f);
        if (eVar.f2303d0 != dimension5) {
            eVar.f2303d0 = dimension5;
            eVar.invalidateSelf();
            eVar.t();
        }
        eVar.D0 = typedArrayD.getDimensionPixelSize(3, Integer.MAX_VALUE);
        typedArrayD.recycle();
        i.a(context2, attributeSet, com.ex.auto.R.attr.chipStyle, com.ex.auto.R.style.Widget_MaterialComponents_Chip_Action);
        i.b(context2, attributeSet, iArr, com.ex.auto.R.attr.chipStyle, com.ex.auto.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, com.ex.auto.R.attr.chipStyle, com.ex.auto.R.style.Widget_MaterialComponents_Chip_Action);
        this.f1370n = typedArrayObtainStyledAttributes.getBoolean(31, false);
        this.f1372p = (int) Math.ceil(typedArrayObtainStyledAttributes.getDimension(19, (float) Math.ceil(TypedValue.applyDimension(1, 48, getContext().getResources().getDisplayMetrics()))));
        typedArrayObtainStyledAttributes.recycle();
        setChipDrawable(eVar);
        eVar.h(f0.i(this));
        i.a(context2, attributeSet, com.ex.auto.R.attr.chipStyle, com.ex.auto.R.style.Widget_MaterialComponents_Chip_Action);
        i.b(context2, attributeSet, iArr, com.ex.auto.R.attr.chipStyle, com.ex.auto.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        TypedArray typedArrayObtainStyledAttributes2 = context2.obtainStyledAttributes(attributeSet, iArr, com.ex.auto.R.attr.chipStyle, com.ex.auto.R.style.Widget_MaterialComponents_Chip_Action);
        boolean zHasValue = typedArrayObtainStyledAttributes2.hasValue(36);
        typedArrayObtainStyledAttributes2.recycle();
        this.f1373q = new c(this, this);
        e();
        if (!zHasValue) {
            setOutlineProvider(new j1.b(this));
        }
        setChecked(this.f1366j);
        setText(eVar.E);
        setEllipsize(eVar.B0);
        h();
        if (!this.f1362e.C0) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        g();
        if (this.f1370n) {
            setMinHeight(this.f1372p);
        }
        this.f1371o = b0.d(this);
    }

    private RectF getCloseIconTouchBounds() {
        RectF rectF = this.f1375s;
        rectF.setEmpty();
        if (c()) {
            e eVar = this.f1362e;
            Rect bounds = eVar.getBounds();
            rectF.setEmpty();
            if (eVar.S()) {
                float f = eVar.f2303d0 + eVar.f2302c0 + eVar.O + eVar.f2301b0 + eVar.f2300a0;
                if (w.c.a(eVar) == 0) {
                    float f3 = bounds.right;
                    rectF.right = f3;
                    rectF.left = f3 - f;
                } else {
                    float f4 = bounds.left;
                    rectF.left = f4;
                    rectF.right = f4 + f;
                }
                rectF.top = bounds.top;
                rectF.bottom = bounds.bottom;
            }
        }
        return rectF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        int i3 = (int) closeIconTouchBounds.left;
        int i4 = (int) closeIconTouchBounds.top;
        int i5 = (int) closeIconTouchBounds.right;
        int i6 = (int) closeIconTouchBounds.bottom;
        Rect rect = this.f1374r;
        rect.set(i3, i4, i5, i6);
        return rect;
    }

    private p1.d getTextAppearance() {
        e eVar = this.f1362e;
        if (eVar != null) {
            return eVar.f2310k0.f;
        }
        return null;
    }

    private void setCloseIconHovered(boolean z2) {
        if (this.f1368l != z2) {
            this.f1368l = z2;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z2) {
        if (this.f1367k != z2) {
            this.f1367k = z2;
            refreshDrawableState();
        }
    }

    public final void b(int i3) {
        this.f1372p = i3;
        if (!this.f1370n) {
            InsetDrawable insetDrawable = this.f;
            if (insetDrawable == null) {
                f();
                return;
            } else {
                if (insetDrawable != null) {
                    this.f = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    f();
                    return;
                }
                return;
            }
        }
        int iMax = Math.max(0, i3 - ((int) this.f1362e.f2324z));
        int iMax2 = Math.max(0, i3 - this.f1362e.getIntrinsicWidth());
        if (iMax2 <= 0 && iMax <= 0) {
            InsetDrawable insetDrawable2 = this.f;
            if (insetDrawable2 == null) {
                f();
                return;
            } else {
                if (insetDrawable2 != null) {
                    this.f = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    f();
                    return;
                }
                return;
            }
        }
        int i4 = iMax2 > 0 ? iMax2 / 2 : 0;
        int i5 = iMax > 0 ? iMax / 2 : 0;
        if (this.f != null) {
            Rect rect = new Rect();
            this.f.getPadding(rect);
            if (rect.top == i5 && rect.bottom == i5 && rect.left == i4 && rect.right == i4) {
                f();
                return;
            }
        }
        if (getMinHeight() != i3) {
            setMinHeight(i3);
        }
        if (getMinWidth() != i3) {
            setMinWidth(i3);
        }
        this.f = new InsetDrawable((Drawable) this.f1362e, i4, i5, i4, i5);
        f();
    }

    public final boolean c() {
        e eVar = this.f1362e;
        if (eVar == null) {
            return false;
        }
        Object obj = eVar.L;
        if (obj == null) {
            obj = null;
        } else if (obj instanceof w.e) {
            obj = null;
        }
        return obj != null;
    }

    public final boolean d() {
        e eVar = this.f1362e;
        return eVar != null && eVar.Q;
    }

    @Override // android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        c cVar = this.f1373q;
        if (action == 10) {
            try {
                Field declaredField = i0.b.class.getDeclaredField("m");
                declaredField.setAccessible(true);
                if (((Integer) declaredField.get(cVar)).intValue() != Integer.MIN_VALUE) {
                    Method declaredMethod = i0.b.class.getDeclaredMethod("r", Integer.TYPE);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(cVar, Integer.MIN_VALUE);
                    return true;
                }
            } catch (IllegalAccessException e3) {
                Log.e("Chip", "Unable to send Accessibility Exit event", e3);
            } catch (NoSuchFieldException e4) {
                Log.e("Chip", "Unable to send Accessibility Exit event", e4);
            } catch (NoSuchMethodException e5) {
                Log.e("Chip", "Unable to send Accessibility Exit event", e5);
            } catch (InvocationTargetException e6) {
                Log.e("Chip", "Unable to send Accessibility Exit event", e6);
            }
        }
        AccessibilityManager accessibilityManager = cVar.f2245h;
        int i3 = 0;
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            int action2 = motionEvent.getAction();
            if (action2 == 7 || action2 == 9) {
                float x2 = motionEvent.getX();
                float y2 = motionEvent.getY();
                Chip chip = cVar.f2299q;
                if (chip.c() && chip.getCloseIconTouchBounds().contains(x2, y2)) {
                    i3 = 1;
                }
                cVar.r(i3);
                return true;
            }
            if (action2 == 10 && cVar.f2250m != Integer.MIN_VALUE) {
                cVar.r(Integer.MIN_VALUE);
                return true;
            }
        }
        return super.dispatchHoverEvent(motionEvent);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x004f  */
    /* JADX WARN: Code duplicated, block: B:33:0x005f  */
    /* JADX WARN: Code duplicated, block: B:35:0x0063  */
    /* JADX WARN: Code duplicated, block: B:36:0x0067 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:37:0x0069  */
    /* JADX WARN: Code duplicated, block: B:39:0x0070  */
    @Override // android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int i3;
        Chip chip;
        View.OnClickListener onClickListener;
        c cVar = this.f1373q;
        cVar.getClass();
        boolean zM = false;
        int i4 = 0;
        zM = false;
        zM = false;
        zM = false;
        zM = false;
        zM = false;
        if (keyEvent.getAction() != 1) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 61) {
                int i5 = 66;
                if (keyCode != 66) {
                    switch (keyCode) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                            if (keyEvent.hasNoModifiers()) {
                                if (keyCode == 19) {
                                    i5 = 33;
                                } else if (keyCode == 21) {
                                    i5 = 17;
                                } else if (keyCode != 22) {
                                    i5 = 130;
                                }
                                int repeatCount = keyEvent.getRepeatCount() + 1;
                                boolean z2 = false;
                                while (i4 < repeatCount && cVar.m(i5, null)) {
                                    i4++;
                                    z2 = true;
                                }
                                zM = z2;
                            }
                            break;
                        case 23:
                            if (keyEvent.hasNoModifiers() && keyEvent.getRepeatCount() == 0) {
                                i3 = cVar.f2249l;
                                if (i3 != Integer.MIN_VALUE) {
                                    chip = cVar.f2299q;
                                    if (i3 == 0) {
                                        chip.performClick();
                                    } else if (i3 == 1) {
                                        chip.playSoundEffect(0);
                                        onClickListener = chip.f1364h;
                                        if (onClickListener != null) {
                                            onClickListener.onClick(chip);
                                        }
                                        chip.f1373q.q(1, 1);
                                    }
                                }
                                zM = true;
                            }
                            break;
                    }
                } else if (keyEvent.hasNoModifiers()) {
                    i3 = cVar.f2249l;
                    if (i3 != Integer.MIN_VALUE) {
                        chip = cVar.f2299q;
                        if (i3 == 0) {
                            chip.performClick();
                        } else if (i3 == 1) {
                            chip.playSoundEffect(0);
                            onClickListener = chip.f1364h;
                            if (onClickListener != null) {
                                onClickListener.onClick(chip);
                            }
                            chip.f1373q.q(1, 1);
                        }
                    }
                    zM = true;
                }
            } else if (keyEvent.hasNoModifiers()) {
                zM = cVar.m(2, null);
            } else if (keyEvent.hasModifiers(1)) {
                zM = cVar.m(1, null);
            }
        }
        if (!zM || cVar.f2249l == Integer.MIN_VALUE) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean, int] */
    @Override // i.p, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        int i3;
        int i4;
        super.drawableStateChanged();
        e eVar = this.f1362e;
        boolean zU = false;
        if (eVar != null && e.s(eVar.L)) {
            e eVar2 = this.f1362e;
            ?? IsEnabled = isEnabled();
            if (this.f1369m) {
                i3 = IsEnabled;
                i3 = IsEnabled + 1;
            }
            i3 = IsEnabled;
            int i5 = i3;
            if (this.f1368l) {
                i5 = i3 + 1;
            }
            int i6 = i5;
            if (this.f1367k) {
                i6 = i5 + 1;
            }
            int i7 = i6;
            if (isChecked()) {
                i7 = i6 + 1;
            }
            int[] iArr = new int[i7];
            if (isEnabled()) {
                iArr[0] = 16842910;
                i4 = 1;
            } else {
                i4 = 0;
            }
            if (this.f1369m) {
                iArr[i4] = 16842908;
                i4++;
            }
            if (this.f1368l) {
                iArr[i4] = 16843623;
                i4++;
            }
            if (this.f1367k) {
                iArr[i4] = 16842919;
                i4++;
            }
            if (isChecked()) {
                iArr[i4] = 16842913;
            }
            if (!Arrays.equals(eVar2.y0, iArr)) {
                eVar2.y0 = iArr;
                if (eVar2.S()) {
                    zU = eVar2.u(eVar2.getState(), iArr);
                }
            }
        }
        if (zU) {
            invalidate();
        }
    }

    public final void e() {
        e eVar;
        if (!c() || (eVar = this.f1362e) == null || !eVar.K || this.f1364h == null) {
            p0.i(this, null);
        } else {
            p0.i(this, this.f1373q);
        }
    }

    public final void f() {
        ColorStateList colorStateListValueOf = this.f1362e.D;
        if (colorStateListValueOf == null) {
            colorStateListValueOf = ColorStateList.valueOf(0);
        }
        this.f1363g = new RippleDrawable(colorStateListValueOf, getBackgroundDrawable(), null);
        this.f1362e.getClass();
        RippleDrawable rippleDrawable = this.f1363g;
        WeakHashMap weakHashMap = p0.f727a;
        a0.q(this, rippleDrawable);
        g();
    }

    public final void g() {
        e eVar;
        if (TextUtils.isEmpty(getText()) || (eVar = this.f1362e) == null) {
            return;
        }
        int iP = (int) (eVar.p() + eVar.f2303d0 + eVar.f2300a0);
        e eVar2 = this.f1362e;
        int iO = (int) (eVar2.o() + eVar2.W + eVar2.Z);
        if (this.f != null) {
            Rect rect = new Rect();
            this.f.getPadding(rect);
            iO += rect.left;
            iP += rect.right;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        WeakHashMap weakHashMap = p0.f727a;
        b0.k(this, iO, paddingTop, iP, paddingBottom);
    }

    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.f;
        return insetDrawable == null ? this.f1362e : insetDrawable;
    }

    public Drawable getCheckedIcon() {
        e eVar = this.f1362e;
        if (eVar != null) {
            return eVar.S;
        }
        return null;
    }

    public ColorStateList getCheckedIconTint() {
        e eVar = this.f1362e;
        if (eVar != null) {
            return eVar.T;
        }
        return null;
    }

    public ColorStateList getChipBackgroundColor() {
        e eVar = this.f1362e;
        if (eVar != null) {
            return eVar.f2323y;
        }
        return null;
    }

    public float getChipCornerRadius() {
        e eVar = this.f1362e;
        if (eVar != null) {
            return Math.max(0.0f, eVar.q());
        }
        return 0.0f;
    }

    public Drawable getChipDrawable() {
        return this.f1362e;
    }

    public float getChipEndPadding() {
        e eVar = this.f1362e;
        if (eVar != null) {
            return eVar.f2303d0;
        }
        return 0.0f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Drawable getChipIcon() {
        Drawable drawable;
        e eVar = this.f1362e;
        if (eVar == null || (drawable = eVar.G) == 0) {
            return null;
        }
        if (!(drawable instanceof w.e)) {
            return drawable;
        }
        return null;
    }

    public float getChipIconSize() {
        e eVar = this.f1362e;
        if (eVar != null) {
            return eVar.I;
        }
        return 0.0f;
    }

    public ColorStateList getChipIconTint() {
        e eVar = this.f1362e;
        if (eVar != null) {
            return eVar.H;
        }
        return null;
    }

    public float getChipMinHeight() {
        e eVar = this.f1362e;
        if (eVar != null) {
            return eVar.f2324z;
        }
        return 0.0f;
    }

    public float getChipStartPadding() {
        e eVar = this.f1362e;
        if (eVar != null) {
            return eVar.W;
        }
        return 0.0f;
    }

    public ColorStateList getChipStrokeColor() {
        e eVar = this.f1362e;
        if (eVar != null) {
            return eVar.B;
        }
        return null;
    }

    public float getChipStrokeWidth() {
        e eVar = this.f1362e;
        if (eVar != null) {
            return eVar.C;
        }
        return 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Drawable getCloseIcon() {
        Drawable drawable;
        e eVar = this.f1362e;
        if (eVar == null || (drawable = eVar.L) == 0) {
            return null;
        }
        if (!(drawable instanceof w.e)) {
            return drawable;
        }
        return null;
    }

    public CharSequence getCloseIconContentDescription() {
        e eVar = this.f1362e;
        if (eVar != null) {
            return eVar.P;
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        e eVar = this.f1362e;
        if (eVar != null) {
            return eVar.f2302c0;
        }
        return 0.0f;
    }

    public float getCloseIconSize() {
        e eVar = this.f1362e;
        if (eVar != null) {
            return eVar.O;
        }
        return 0.0f;
    }

    public float getCloseIconStartPadding() {
        e eVar = this.f1362e;
        if (eVar != null) {
            return eVar.f2301b0;
        }
        return 0.0f;
    }

    public ColorStateList getCloseIconTint() {
        e eVar = this.f1362e;
        if (eVar != null) {
            return eVar.N;
        }
        return null;
    }

    @Override // android.widget.TextView
    public TextUtils.TruncateAt getEllipsize() {
        e eVar = this.f1362e;
        if (eVar != null) {
            return eVar.B0;
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public final void getFocusedRect(Rect rect) {
        c cVar = this.f1373q;
        if (cVar.f2249l == 1 || cVar.f2248k == 1) {
            rect.set(getCloseIconTouchBoundsInt());
        } else {
            super.getFocusedRect(rect);
        }
    }

    public b getHideMotionSpec() {
        e eVar = this.f1362e;
        if (eVar != null) {
            return eVar.V;
        }
        return null;
    }

    public float getIconEndPadding() {
        e eVar = this.f1362e;
        if (eVar != null) {
            return eVar.Y;
        }
        return 0.0f;
    }

    public float getIconStartPadding() {
        e eVar = this.f1362e;
        if (eVar != null) {
            return eVar.X;
        }
        return 0.0f;
    }

    public ColorStateList getRippleColor() {
        e eVar = this.f1362e;
        if (eVar != null) {
            return eVar.D;
        }
        return null;
    }

    public k getShapeAppearanceModel() {
        return this.f1362e.f3142a.f3127a;
    }

    public b getShowMotionSpec() {
        e eVar = this.f1362e;
        if (eVar != null) {
            return eVar.U;
        }
        return null;
    }

    public float getTextEndPadding() {
        e eVar = this.f1362e;
        if (eVar != null) {
            return eVar.f2300a0;
        }
        return 0.0f;
    }

    public float getTextStartPadding() {
        e eVar = this.f1362e;
        if (eVar != null) {
            return eVar.Z;
        }
        return 0.0f;
    }

    public final void h() {
        TextPaint paint = getPaint();
        e eVar = this.f1362e;
        if (eVar != null) {
            paint.drawableState = eVar.getState();
        }
        p1.d textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.c(getContext(), paint, this.f1376t);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        k1.a.Q(this, this.f1362e);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i3) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i3 + 2);
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f1360v);
        }
        if (d()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f1361w);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onFocusChanged(boolean z2, int i3, Rect rect) {
        super.onFocusChanged(z2, i3, rect);
        c cVar = this.f1373q;
        int i4 = cVar.f2249l;
        if (i4 != Integer.MIN_VALUE) {
            cVar.j(i4);
        }
        if (z2) {
            cVar.m(i3, rect);
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            setCloseIconHovered(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        int i3;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (d() || isClickable()) {
            accessibilityNodeInfo.setClassName(d() ? "android.widget.CompoundButton" : "android.widget.Button");
        } else {
            accessibilityNodeInfo.setClassName("android.view.View");
        }
        accessibilityNodeInfo.setCheckable(d());
        accessibilityNodeInfo.setClickable(isClickable());
        if (getParent() instanceof ChipGroup) {
            ChipGroup chipGroup = (ChipGroup) getParent();
            if (!chipGroup.f2510c) {
                i3 = -1;
                break;
            }
            int i4 = 0;
            i3 = 0;
            while (true) {
                if (i4 >= chipGroup.getChildCount()) {
                    i3 = -1;
                    break;
                }
                if (chipGroup.getChildAt(i4) instanceof Chip) {
                    if (((Chip) chipGroup.getChildAt(i4)) == this) {
                        break;
                    } else {
                        i3++;
                    }
                }
                i4++;
            }
            Object tag = getTag(com.ex.auto.R.id.row_index_key);
            accessibilityNodeInfo.setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) d0.e.a(isChecked(), tag instanceof Integer ? ((Integer) tag).intValue() : -1, 1, i3, 1).f1532a);
        }
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    public final PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i3) {
        if (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) {
            return PointerIcon.getSystemIcon(getContext(), 1002);
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRtlPropertiesChanged(int i3) {
        super.onRtlPropertiesChanged(i3);
        if (this.f1371o != i3) {
            this.f1371o = i3;
            g();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        int actionMasked = motionEvent.getActionMasked();
        boolean zContains = getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY());
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                    }
                } else if (this.f1367k) {
                    if (!zContains) {
                        setCloseIconPressed(false);
                    }
                    z2 = true;
                }
                z2 = false;
            } else {
                if (this.f1367k) {
                    playSoundEffect(0);
                    View.OnClickListener onClickListener = this.f1364h;
                    if (onClickListener != null) {
                        onClickListener.onClick(this);
                    }
                    this.f1373q.q(1, 1);
                    z2 = true;
                }
                setCloseIconPressed(false);
            }
            z2 = false;
            setCloseIconPressed(false);
        } else if (zContains) {
            setCloseIconPressed(true);
            z2 = true;
        } else {
            z2 = false;
        }
        return z2 || super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f1363g) {
            super.setBackground(drawable);
        } else {
            Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i3) {
        Log.w("Chip", "Do not set the background color; Chip manages its own background drawable.");
    }

    @Override // i.p, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f1363g) {
            super.setBackgroundDrawable(drawable);
        } else {
            Log.w("Chip", "Do not set the background drawable; Chip manages its own background drawable.");
        }
    }

    @Override // i.p, android.view.View
    public void setBackgroundResource(int i3) {
        Log.w("Chip", "Do not set the background resource; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        Log.w("Chip", "Do not set the background tint list; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        Log.w("Chip", "Do not set the background tint mode; Chip manages its own background drawable.");
    }

    public void setCheckable(boolean z2) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.v(z2);
        }
    }

    public void setCheckableResource(int i3) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.v(eVar.f2304e0.getResources().getBoolean(i3));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z2) {
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        e eVar = this.f1362e;
        if (eVar == null) {
            this.f1366j = z2;
            return;
        }
        if (eVar.Q) {
            boolean zIsChecked = isChecked();
            super.setChecked(z2);
            if (zIsChecked == z2 || (onCheckedChangeListener = this.f1365i) == null) {
                return;
            }
            onCheckedChangeListener.onCheckedChanged(this, z2);
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.w(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z2) {
        setCheckedIconVisible(z2);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(int i3) {
        setCheckedIconVisible(i3);
    }

    public void setCheckedIconResource(int i3) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.w(a1.b.v(eVar.f2304e0, i3));
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.x(colorStateList);
        }
    }

    public void setCheckedIconTintResource(int i3) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.x(a1.b.t(eVar.f2304e0, i3));
        }
    }

    public void setCheckedIconVisible(int i3) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.y(eVar.f2304e0.getResources().getBoolean(i3));
        }
    }

    public void setChipBackgroundColor(ColorStateList colorStateList) {
        e eVar = this.f1362e;
        if (eVar == null || eVar.f2323y == colorStateList) {
            return;
        }
        eVar.f2323y = colorStateList;
        eVar.onStateChange(eVar.getState());
    }

    public void setChipBackgroundColorResource(int i3) {
        ColorStateList colorStateListT;
        e eVar = this.f1362e;
        if (eVar == null || eVar.f2323y == (colorStateListT = a1.b.t(eVar.f2304e0, i3))) {
            return;
        }
        eVar.f2323y = colorStateListT;
        eVar.onStateChange(eVar.getState());
    }

    @Deprecated
    public void setChipCornerRadius(float f) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.z(f);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(int i3) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.z(eVar.f2304e0.getResources().getDimension(i3));
        }
    }

    public void setChipDrawable(e eVar) {
        e eVar2 = this.f1362e;
        if (eVar2 != eVar) {
            if (eVar2 != null) {
                eVar2.A0 = new WeakReference(null);
            }
            this.f1362e = eVar;
            eVar.C0 = false;
            eVar.A0 = new WeakReference(this);
            b(this.f1372p);
        }
    }

    public void setChipEndPadding(float f) {
        e eVar = this.f1362e;
        if (eVar == null || eVar.f2303d0 == f) {
            return;
        }
        eVar.f2303d0 = f;
        eVar.invalidateSelf();
        eVar.t();
    }

    public void setChipEndPaddingResource(int i3) {
        e eVar = this.f1362e;
        if (eVar != null) {
            float dimension = eVar.f2304e0.getResources().getDimension(i3);
            if (eVar.f2303d0 != dimension) {
                eVar.f2303d0 = dimension;
                eVar.invalidateSelf();
                eVar.t();
            }
        }
    }

    public void setChipIcon(Drawable drawable) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.A(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z2) {
        setChipIconVisible(z2);
    }

    @Deprecated
    public void setChipIconEnabledResource(int i3) {
        setChipIconVisible(i3);
    }

    public void setChipIconResource(int i3) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.A(a1.b.v(eVar.f2304e0, i3));
        }
    }

    public void setChipIconSize(float f) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.B(f);
        }
    }

    public void setChipIconSizeResource(int i3) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.B(eVar.f2304e0.getResources().getDimension(i3));
        }
    }

    public void setChipIconTint(ColorStateList colorStateList) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.C(colorStateList);
        }
    }

    public void setChipIconTintResource(int i3) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.C(a1.b.t(eVar.f2304e0, i3));
        }
    }

    public void setChipIconVisible(int i3) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.D(eVar.f2304e0.getResources().getBoolean(i3));
        }
    }

    public void setChipMinHeight(float f) {
        e eVar = this.f1362e;
        if (eVar == null || eVar.f2324z == f) {
            return;
        }
        eVar.f2324z = f;
        eVar.invalidateSelf();
        eVar.t();
    }

    public void setChipMinHeightResource(int i3) {
        e eVar = this.f1362e;
        if (eVar != null) {
            float dimension = eVar.f2304e0.getResources().getDimension(i3);
            if (eVar.f2324z != dimension) {
                eVar.f2324z = dimension;
                eVar.invalidateSelf();
                eVar.t();
            }
        }
    }

    public void setChipStartPadding(float f) {
        e eVar = this.f1362e;
        if (eVar == null || eVar.W == f) {
            return;
        }
        eVar.W = f;
        eVar.invalidateSelf();
        eVar.t();
    }

    public void setChipStartPaddingResource(int i3) {
        e eVar = this.f1362e;
        if (eVar != null) {
            float dimension = eVar.f2304e0.getResources().getDimension(i3);
            if (eVar.W != dimension) {
                eVar.W = dimension;
                eVar.invalidateSelf();
                eVar.t();
            }
        }
    }

    public void setChipStrokeColor(ColorStateList colorStateList) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.E(colorStateList);
        }
    }

    public void setChipStrokeColorResource(int i3) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.E(a1.b.t(eVar.f2304e0, i3));
        }
    }

    public void setChipStrokeWidth(float f) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.F(f);
        }
    }

    public void setChipStrokeWidthResource(int i3) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.F(eVar.f2304e0.getResources().getDimension(i3));
        }
    }

    @Deprecated
    public void setChipText(CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(int i3) {
        setText(getResources().getString(i3));
    }

    public void setCloseIcon(Drawable drawable) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.G(drawable);
        }
        e();
    }

    public void setCloseIconContentDescription(CharSequence charSequence) {
        e eVar = this.f1362e;
        if (eVar == null || eVar.P == charSequence) {
            return;
        }
        String str = a0.b.b;
        Locale locale = Locale.getDefault();
        int i3 = j.f17a;
        a0.b bVar = a0.i.a(locale) == 1 ? a0.b.f7e : a0.b.f6d;
        bVar.getClass();
        g gVar = h.f14a;
        eVar.P = bVar.c(charSequence);
        eVar.invalidateSelf();
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z2) {
        setCloseIconVisible(z2);
    }

    @Deprecated
    public void setCloseIconEnabledResource(int i3) {
        setCloseIconVisible(i3);
    }

    public void setCloseIconEndPadding(float f) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.H(f);
        }
    }

    public void setCloseIconEndPaddingResource(int i3) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.H(eVar.f2304e0.getResources().getDimension(i3));
        }
    }

    public void setCloseIconResource(int i3) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.G(a1.b.v(eVar.f2304e0, i3));
        }
        e();
    }

    public void setCloseIconSize(float f) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.I(f);
        }
    }

    public void setCloseIconSizeResource(int i3) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.I(eVar.f2304e0.getResources().getDimension(i3));
        }
    }

    public void setCloseIconStartPadding(float f) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.J(f);
        }
    }

    public void setCloseIconStartPaddingResource(int i3) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.J(eVar.f2304e0.getResources().getDimension(i3));
        }
    }

    public void setCloseIconTint(ColorStateList colorStateList) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.K(colorStateList);
        }
    }

    public void setCloseIconTintResource(int i3) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.K(a1.b.t(eVar.f2304e0, i3));
        }
    }

    public void setCloseIconVisible(int i3) {
        setCloseIconVisible(getResources().getBoolean(i3));
    }

    @Override // i.p, android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    @Override // i.p, android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i3, int i4, int i5, int i6) {
        if (i3 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i5 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(i3, i4, i5, i6);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i3, int i4, int i5, int i6) {
        if (i3 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i5 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesWithIntrinsicBounds(i3, i4, i5, i6);
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.h(f);
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f1362e == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
        super.setEllipsize(truncateAt);
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.B0 = truncateAt;
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z2) {
        this.f1370n = z2;
        b(this.f1372p);
    }

    @Override // android.widget.TextView
    public void setGravity(int i3) {
        if (i3 != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i3);
        }
    }

    public void setHideMotionSpec(b bVar) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.V = bVar;
        }
    }

    public void setHideMotionSpecResource(int i3) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.V = b.a(eVar.f2304e0, i3);
        }
    }

    public void setIconEndPadding(float f) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.M(f);
        }
    }

    public void setIconEndPaddingResource(int i3) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.M(eVar.f2304e0.getResources().getDimension(i3));
        }
    }

    public void setIconStartPadding(float f) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.N(f);
        }
    }

    public void setIconStartPaddingResource(int i3) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.N(eVar.f2304e0.getResources().getDimension(i3));
        }
    }

    @Override // android.view.View
    public void setLayoutDirection(int i3) {
        if (this.f1362e == null) {
            return;
        }
        super.setLayoutDirection(i3);
    }

    @Override // android.widget.TextView
    public void setLines(int i3) {
        if (i3 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setLines(i3);
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i3) {
        if (i3 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMaxLines(i3);
    }

    @Override // android.widget.TextView
    public void setMaxWidth(int i3) {
        super.setMaxWidth(i3);
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.D0 = i3;
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i3) {
        if (i3 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMinLines(i3);
    }

    public void setOnCheckedChangeListenerInternal(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f1365i = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.f1364h = onClickListener;
        e();
    }

    public void setRippleColor(ColorStateList colorStateList) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.O(colorStateList);
        }
        this.f1362e.getClass();
        f();
    }

    public void setRippleColorResource(int i3) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.O(a1.b.t(eVar.f2304e0, i3));
            this.f1362e.getClass();
            f();
        }
    }

    @Override // s1.u
    public void setShapeAppearanceModel(k kVar) {
        this.f1362e.setShapeAppearanceModel(kVar);
    }

    public void setShowMotionSpec(b bVar) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.U = bVar;
        }
    }

    public void setShowMotionSpecResource(int i3) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.U = b.a(eVar.f2304e0, i3);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z2) {
        if (!z2) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setSingleLine(z2);
    }

    @Override // android.widget.TextView
    public final void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        e eVar = this.f1362e;
        if (eVar == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        super.setText(eVar.C0 ? null : charSequence, bufferType);
        e eVar2 = this.f1362e;
        if (eVar2 == null || TextUtils.equals(eVar2.E, charSequence)) {
            return;
        }
        eVar2.E = charSequence;
        eVar2.f2310k0.f2520d = true;
        eVar2.invalidateSelf();
        eVar2.t();
    }

    public void setTextAppearance(p1.d dVar) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.P(dVar);
        }
        h();
    }

    public void setTextAppearanceResource(int i3) {
        setTextAppearance(getContext(), i3);
    }

    public void setTextEndPadding(float f) {
        e eVar = this.f1362e;
        if (eVar == null || eVar.f2300a0 == f) {
            return;
        }
        eVar.f2300a0 = f;
        eVar.invalidateSelf();
        eVar.t();
    }

    public void setTextEndPaddingResource(int i3) {
        e eVar = this.f1362e;
        if (eVar != null) {
            float dimension = eVar.f2304e0.getResources().getDimension(i3);
            if (eVar.f2300a0 != dimension) {
                eVar.f2300a0 = dimension;
                eVar.invalidateSelf();
                eVar.t();
            }
        }
    }

    public void setTextStartPadding(float f) {
        e eVar = this.f1362e;
        if (eVar == null || eVar.Z == f) {
            return;
        }
        eVar.Z = f;
        eVar.invalidateSelf();
        eVar.t();
    }

    public void setTextStartPaddingResource(int i3) {
        e eVar = this.f1362e;
        if (eVar != null) {
            float dimension = eVar.f2304e0.getResources().getDimension(i3);
            if (eVar.Z != dimension) {
                eVar.Z = dimension;
                eVar.invalidateSelf();
                eVar.t();
            }
        }
    }

    public void setCloseIconVisible(boolean z2) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.L(z2);
        }
        e();
    }

    public void setCheckedIconVisible(boolean z2) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.y(z2);
        }
    }

    public void setChipIconVisible(boolean z2) {
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.D(z2);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i3) {
        super.setTextAppearance(context, i3);
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.P(new p1.d(eVar.f2304e0, i3));
        }
        h();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i3) {
        super.setTextAppearance(i3);
        e eVar = this.f1362e;
        if (eVar != null) {
            eVar.P(new p1.d(eVar.f2304e0, i3));
        }
        h();
    }
}
