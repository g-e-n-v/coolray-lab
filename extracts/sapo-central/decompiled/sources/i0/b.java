package i0;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.emoji2.text.m;
import c0.a0;
import c0.b0;
import c0.p0;
import com.google.android.material.chip.Chip;
import d0.f;
import d0.i;
import java.util.ArrayList;
import java.util.Collections;
import java.util.WeakHashMap;
import l.l;

/* JADX INFO: loaded from: classes.dex */
public abstract class b extends c0.c {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final Rect f2239n = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final s1.e f2240o = new s1.e();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final s1.e f2241p = new s1.e();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AccessibilityManager f2245h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Chip f2246i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public a f2247j;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Rect f2242d = new Rect();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Rect f2243e = new Rect();
    public final Rect f = new Rect();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int[] f2244g = new int[2];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2248k = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2249l = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2250m = Integer.MIN_VALUE;

    public b(Chip chip) {
        this.f2246i = chip;
        this.f2245h = (AccessibilityManager) chip.getContext().getSystemService("accessibility");
        chip.setFocusable(true);
        WeakHashMap weakHashMap = p0.f727a;
        if (a0.c(chip) == 0) {
            a0.s(chip, 1);
        }
    }

    @Override // c0.c
    public final m b(View view) {
        if (this.f2247j == null) {
            this.f2247j = new a(this);
        }
        return this.f2247j;
    }

    @Override // c0.c
    public final void d(View view, f fVar) {
        AccessibilityNodeInfo accessibilityNodeInfo = fVar.f1533a;
        this.f701a.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        Chip chip = ((j1.c) this).f2299q;
        accessibilityNodeInfo.setCheckable(chip.d());
        accessibilityNodeInfo.setClickable(chip.isClickable());
        if (chip.d() || chip.isClickable()) {
            accessibilityNodeInfo.setClassName(chip.d() ? "android.widget.CompoundButton" : "android.widget.Button");
        } else {
            accessibilityNodeInfo.setClassName("android.view.View");
        }
        accessibilityNodeInfo.setText(chip.getText());
    }

    public final boolean j(int i3) {
        if (this.f2249l != i3) {
            return false;
        }
        this.f2249l = Integer.MIN_VALUE;
        j1.c cVar = (j1.c) this;
        if (i3 == 1) {
            Chip chip = cVar.f2299q;
            chip.f1369m = false;
            chip.refreshDrawableState();
        }
        q(i3, 8);
        return true;
    }

    public final f k(int i3) {
        AccessibilityNodeInfo accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain();
        f fVar = new f(accessibilityNodeInfoObtain);
        accessibilityNodeInfoObtain.setEnabled(true);
        accessibilityNodeInfoObtain.setFocusable(true);
        accessibilityNodeInfoObtain.setClassName("android.view.View");
        Rect rect = f2239n;
        accessibilityNodeInfoObtain.setBoundsInParent(rect);
        accessibilityNodeInfoObtain.setBoundsInScreen(rect);
        Chip chip = this.f2246i;
        accessibilityNodeInfoObtain.setParent(chip);
        o(i3, fVar);
        if (fVar.e() == null && accessibilityNodeInfoObtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        Rect rect2 = this.f2243e;
        fVar.d(rect2);
        if (rect2.equals(rect)) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int actions = accessibilityNodeInfoObtain.getActions();
        if ((actions & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        if ((actions & 128) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        accessibilityNodeInfoObtain.setPackageName(chip.getContext().getPackageName());
        fVar.b = i3;
        accessibilityNodeInfoObtain.setSource(chip, i3);
        if (this.f2248k == i3) {
            accessibilityNodeInfoObtain.setAccessibilityFocused(true);
            fVar.a(128);
        } else {
            accessibilityNodeInfoObtain.setAccessibilityFocused(false);
            fVar.a(64);
        }
        boolean z2 = this.f2249l == i3;
        if (z2) {
            fVar.a(2);
        } else if (accessibilityNodeInfoObtain.isFocusable()) {
            fVar.a(1);
        }
        accessibilityNodeInfoObtain.setFocused(z2);
        int[] iArr = this.f2244g;
        chip.getLocationOnScreen(iArr);
        Rect rect3 = this.f2242d;
        accessibilityNodeInfoObtain.getBoundsInScreen(rect3);
        if (rect3.equals(rect)) {
            fVar.d(rect3);
            rect3.offset(iArr[0] - chip.getScrollX(), iArr[1] - chip.getScrollY());
        }
        Rect rect4 = this.f;
        if (chip.getLocalVisibleRect(rect4)) {
            rect4.offset(iArr[0] - chip.getScrollX(), iArr[1] - chip.getScrollY());
            if (rect3.intersect(rect4)) {
                accessibilityNodeInfoObtain.setBoundsInScreen(rect3);
                if (!rect3.isEmpty() && chip.getWindowVisibility() == 0) {
                    Object parent = chip.getParent();
                    while (parent instanceof View) {
                        View view = (View) parent;
                        if (view.getAlpha() > 0.0f && view.getVisibility() == 0) {
                            parent = view.getParent();
                        }
                    }
                    if (parent != null) {
                        accessibilityNodeInfoObtain.setVisibleToUser(true);
                    }
                }
            }
        }
        return fVar;
    }

    public abstract void l(ArrayList arrayList);

    /* JADX WARN: Code duplicated, block: B:116:0x013e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:117:0x013e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:118:0x013e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:119:0x013e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x00a8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:41:0x00aa A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:42:0x00ac A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:43:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:46:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:47:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:48:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:51:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:54:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:57:0x0106  */
    /* JADX WARN: Code duplicated, block: B:66:0x011b  */
    /* JADX WARN: Code duplicated, block: B:68:0x0139  */
    /* JADX WARN: Code duplicated, block: B:89:0x0191  */
    public final boolean m(int i3, Rect rect) {
        int i4;
        int i5;
        Object obj;
        f fVar;
        int i6;
        int i7;
        int i8;
        Rect rect2;
        int i9;
        Rect rect3;
        int i10;
        f fVar2;
        int i11;
        int iH;
        int I;
        ArrayList arrayList = new ArrayList();
        l(arrayList);
        l lVar = new l();
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            lVar.c(i12, k(i12));
        }
        int i13 = this.f2249l;
        f fVar3 = i13 == Integer.MIN_VALUE ? null : (f) lVar.b(i13, null);
        s1.e eVar = f2240o;
        s1.e eVar2 = f2241p;
        Chip chip = this.f2246i;
        if (i3 == 1 || i3 == 2) {
            i4 = -1;
            i5 = 0;
            WeakHashMap weakHashMap = p0.f727a;
            boolean z2 = b0.d(chip) == 1;
            eVar2.getClass();
            int i14 = lVar.f2421c;
            ArrayList arrayList2 = new ArrayList(i14);
            for (int i15 = 0; i15 < i14; i15++) {
                arrayList2.add((f) lVar.b[i15]);
            }
            Collections.sort(arrayList2, new c(z2, eVar));
            if (i3 == 1) {
                int size = arrayList2.size();
                if (fVar3 != null) {
                    size = arrayList2.indexOf(fVar3);
                }
                int i16 = size - 1;
                if (i16 >= 0) {
                    obj = arrayList2.get(i16);
                } else {
                    obj = null;
                }
            } else {
                if (i3 != 2) {
                    throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
                }
                int size2 = arrayList2.size();
                int iLastIndexOf = (fVar3 == null ? -1 : arrayList2.lastIndexOf(fVar3)) + 1;
                if (iLastIndexOf < size2) {
                    obj = arrayList2.get(iLastIndexOf);
                } else {
                    obj = null;
                }
            }
            fVar = (f) obj;
        } else {
            if (i3 != 17 && i3 != 33 && i3 != 66 && i3 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            Rect rect4 = new Rect();
            int i17 = this.f2249l;
            if (i17 != Integer.MIN_VALUE) {
                n(i17).d(rect4);
            } else {
                if (rect != null) {
                    rect4.set(rect);
                } else {
                    int width = chip.getWidth();
                    int height = chip.getHeight();
                    if (i3 == 17) {
                        i8 = -1;
                        rect4.set(width, 0, width, height);
                    } else if (i3 == 33) {
                        i8 = -1;
                        rect4.set(0, height, width, height);
                    } else if (i3 == 66) {
                        i8 = -1;
                        rect4.set(-1, 0, -1, height);
                    } else {
                        if (i3 != 130) {
                            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                        }
                        i8 = -1;
                        rect4.set(0, -1, width, -1);
                    }
                }
                rect2 = new Rect(rect4);
                if (i3 != 17) {
                    i5 = 0;
                    rect2.offset(rect4.width() + 1, 0);
                } else if (i3 != 33) {
                    i5 = 0;
                    rect2.offset(0, rect4.height() + 1);
                } else if (i3 != 66) {
                    i5 = 0;
                    rect2.offset(-(rect4.width() + 1), 0);
                } else {
                    if (i3 == 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                    i5 = 0;
                    rect2.offset(0, -(rect4.height() + 1));
                }
                eVar2.getClass();
                i9 = lVar.f2421c;
                rect3 = new Rect();
                fVar = null;
                for (i10 = i5; i10 < i9; i10++) {
                    fVar2 = (f) lVar.b[i10];
                    if (fVar2 == fVar3) {
                        eVar.getClass();
                        fVar2.d(rect3);
                        if (a1.b.D(i3, rect4, rect3)) {
                            if (a1.b.D(i3, rect4, rect2) || a1.b.h(i3, rect4, rect3, rect2)) {
                                rect2.set(rect3);
                                fVar = fVar2;
                            } else if (a1.b.h(i3, rect4, rect2, rect3)) {
                                int iH2 = a1.b.H(i3, rect4, rect3);
                                int I2 = a1.b.I(i3, rect4, rect3);
                                i11 = (I2 * I2) + (iH2 * 13 * iH2);
                                iH = a1.b.H(i3, rect4, rect2);
                                I = a1.b.I(i3, rect4, rect2);
                                if (i11 < (I * I) + (iH * 13 * iH)) {
                                    rect2.set(rect3);
                                    fVar = fVar2;
                                }
                            }
                        }
                    }
                }
                i4 = i8;
            }
            i8 = -1;
            rect2 = new Rect(rect4);
            if (i3 != 17) {
                i5 = 0;
                rect2.offset(rect4.width() + 1, 0);
            } else if (i3 != 33) {
                i5 = 0;
                rect2.offset(0, rect4.height() + 1);
            } else if (i3 != 66) {
                i5 = 0;
                rect2.offset(-(rect4.width() + 1), 0);
            } else {
                if (i3 == 130) {
                    throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                }
                i5 = 0;
                rect2.offset(0, -(rect4.height() + 1));
            }
            eVar2.getClass();
            i9 = lVar.f2421c;
            rect3 = new Rect();
            fVar = null;
            while (i10 < i9) {
                fVar2 = (f) lVar.b[i10];
                if (fVar2 == fVar3) {
                    eVar.getClass();
                    fVar2.d(rect3);
                    if (a1.b.D(i3, rect4, rect3)) {
                        if (a1.b.D(i3, rect4, rect2)) {
                            rect2.set(rect3);
                            fVar = fVar2;
                        } else if (a1.b.h(i3, rect4, rect2, rect3)) {
                            int iH3 = a1.b.H(i3, rect4, rect3);
                            int I3 = a1.b.I(i3, rect4, rect3);
                            i11 = (I3 * I3) + (iH3 * 13 * iH3);
                            iH = a1.b.H(i3, rect4, rect2);
                            I = a1.b.I(i3, rect4, rect2);
                            if (i11 < (I * I) + (iH * 13 * iH)) {
                                rect2.set(rect3);
                                fVar = fVar2;
                            }
                        }
                    }
                }
            }
            i4 = i8;
        }
        f fVar4 = fVar;
        if (fVar4 == null) {
            i7 = Integer.MIN_VALUE;
        } else {
            int i18 = i5;
            while (true) {
                if (i18 >= lVar.f2421c) {
                    i6 = i4;
                    break;
                }
                if (lVar.b[i18] == fVar4) {
                    i6 = i18;
                    break;
                }
                i18++;
            }
            i7 = lVar.f2420a[i6];
        }
        return p(i7);
    }

    public final f n(int i3) {
        if (i3 != -1) {
            return k(i3);
        }
        Chip chip = this.f2246i;
        AccessibilityNodeInfo accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain(chip);
        f fVar = new f(accessibilityNodeInfoObtain);
        WeakHashMap weakHashMap = p0.f727a;
        chip.onInitializeAccessibilityNodeInfo(accessibilityNodeInfoObtain);
        ArrayList arrayList = new ArrayList();
        l(arrayList);
        if (accessibilityNodeInfoObtain.getChildCount() > 0 && arrayList.size() > 0) {
            throw new RuntimeException("Views cannot have both real and virtual children");
        }
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            fVar.f1533a.addChild(chip, ((Integer) arrayList.get(i4)).intValue());
        }
        return fVar;
    }

    public abstract void o(int i3, f fVar);

    public final boolean p(int i3) {
        int i4;
        Chip chip = this.f2246i;
        if ((!chip.isFocused() && !chip.requestFocus()) || (i4 = this.f2249l) == i3) {
            return false;
        }
        if (i4 != Integer.MIN_VALUE) {
            j(i4);
        }
        this.f2249l = i3;
        j1.c cVar = (j1.c) this;
        if (i3 == 1) {
            Chip chip2 = cVar.f2299q;
            chip2.f1369m = true;
            chip2.refreshDrawableState();
        }
        q(i3, 8);
        return true;
    }

    public final void q(int i3, int i4) {
        View view;
        ViewParent parent;
        AccessibilityEvent accessibilityEventObtain;
        if (i3 == Integer.MIN_VALUE || !this.f2245h.isEnabled() || (parent = (view = this.f2246i).getParent()) == null) {
            return;
        }
        if (i3 != -1) {
            accessibilityEventObtain = AccessibilityEvent.obtain(i4);
            f fVarN = n(i3);
            accessibilityEventObtain.getText().add(fVarN.e());
            AccessibilityNodeInfo accessibilityNodeInfo = fVarN.f1533a;
            accessibilityEventObtain.setContentDescription(accessibilityNodeInfo.getContentDescription());
            accessibilityEventObtain.setScrollable(accessibilityNodeInfo.isScrollable());
            accessibilityEventObtain.setPassword(accessibilityNodeInfo.isPassword());
            accessibilityEventObtain.setEnabled(accessibilityNodeInfo.isEnabled());
            accessibilityEventObtain.setChecked(accessibilityNodeInfo.isChecked());
            if (accessibilityEventObtain.getText().isEmpty() && accessibilityEventObtain.getContentDescription() == null) {
                throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
            }
            accessibilityEventObtain.setClassName(accessibilityNodeInfo.getClassName());
            i.a(accessibilityEventObtain, view, i3);
            accessibilityEventObtain.setPackageName(view.getContext().getPackageName());
        } else {
            accessibilityEventObtain = AccessibilityEvent.obtain(i4);
            view.onInitializeAccessibilityEvent(accessibilityEventObtain);
        }
        parent.requestSendAccessibilityEvent(view, accessibilityEventObtain);
    }

    public final void r(int i3) {
        int i4 = this.f2250m;
        if (i4 == i3) {
            return;
        }
        this.f2250m = i3;
        q(i3, 128);
        q(i4, 256);
    }
}
