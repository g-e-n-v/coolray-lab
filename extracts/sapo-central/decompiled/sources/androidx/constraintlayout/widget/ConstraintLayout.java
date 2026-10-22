package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.result.c;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import o.a;
import o.d;
import o.e;
import org.xmlpull.v1.XmlPullParserException;
import p.b;
import p.i;
import p.k;
import p.o;
import q.f;
import q.g;
import q.h;
import q.l;
import q.m;
import q.n;
import q.q;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintLayout extends ViewGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SparseArray f250a;
    public final ArrayList b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final e f251c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f252d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f253e;
    public int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f254g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f255h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f256i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public m f257j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public c f258k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f259l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public HashMap f260m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final SparseArray f261n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final f f262o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f263p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f264q;

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        SparseArray sparseArray = new SparseArray();
        this.f250a = sparseArray;
        this.b = new ArrayList(4);
        e eVar = new e();
        eVar.f2598j0 = new ArrayList();
        eVar.f2599k0 = new androidx.fragment.app.f(eVar);
        p.e eVar2 = new p.e();
        eVar2.b = true;
        eVar2.f2650c = true;
        eVar2.f2652e = new ArrayList();
        new ArrayList();
        eVar2.f = null;
        eVar2.f2653g = new b();
        eVar2.f2654h = new ArrayList();
        eVar2.f2649a = eVar;
        eVar2.f2651d = eVar;
        eVar.f2600l0 = eVar2;
        eVar.f2601m0 = null;
        eVar.f2602n0 = false;
        eVar.f2603o0 = new n.c();
        eVar.f2606r0 = 0;
        eVar.f2607s0 = 0;
        eVar.t0 = new o.b[4];
        eVar.f2608u0 = new o.b[4];
        eVar.f2609v0 = 257;
        eVar.f2610w0 = false;
        eVar.x0 = false;
        eVar.y0 = null;
        eVar.f2611z0 = null;
        eVar.A0 = null;
        eVar.B0 = null;
        eVar.C0 = new b();
        this.f251c = eVar;
        this.f252d = 0;
        this.f253e = 0;
        this.f = Integer.MAX_VALUE;
        this.f254g = Integer.MAX_VALUE;
        this.f255h = true;
        this.f256i = 257;
        this.f257j = null;
        this.f258k = null;
        this.f259l = -1;
        this.f260m = new HashMap();
        this.f261n = new SparseArray();
        f fVar = new f(this, this);
        this.f262o = fVar;
        this.f263p = 0;
        this.f264q = 0;
        eVar.Y = this;
        eVar.f2601m0 = fVar;
        eVar2.f = fVar;
        sparseArray.put(getId(), this);
        this.f257j = null;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, q.b, 0, 0);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i3);
                if (index == 9) {
                    this.f252d = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f252d);
                } else if (index == 10) {
                    this.f253e = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f253e);
                } else if (index == 7) {
                    this.f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f);
                } else if (index == 8) {
                    this.f254g = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f254g);
                } else if (index == 90) {
                    this.f256i = typedArrayObtainStyledAttributes.getInt(index, this.f256i);
                } else if (index == 39) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            c(resourceId);
                        } catch (Resources.NotFoundException unused) {
                            this.f258k = null;
                        }
                    }
                } else if (index == 18) {
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    try {
                        m mVar = new m();
                        this.f257j = mVar;
                        mVar.d(getContext(), resourceId2);
                    } catch (Resources.NotFoundException unused2) {
                        this.f257j = null;
                    }
                    this.f259l = resourceId2;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        eVar.f2609v0 = this.f256i;
        n.c.f2451p = eVar.M(512);
    }

    public static q.e a() {
        q.e eVar = new q.e(-2, -2);
        eVar.f2727a = -1;
        eVar.b = -1;
        eVar.f2730c = -1.0f;
        eVar.f2732d = -1;
        eVar.f2734e = -1;
        eVar.f = -1;
        eVar.f2737g = -1;
        eVar.f2739h = -1;
        eVar.f2741i = -1;
        eVar.f2743j = -1;
        eVar.f2745k = -1;
        eVar.f2747l = -1;
        eVar.f2748m = -1;
        eVar.f2749n = 0;
        eVar.f2750o = 0.0f;
        eVar.f2751p = -1;
        eVar.f2752q = -1;
        eVar.f2753r = -1;
        eVar.f2754s = -1;
        eVar.f2755t = -1;
        eVar.f2756u = -1;
        eVar.f2757v = -1;
        eVar.f2758w = -1;
        eVar.f2759x = -1;
        eVar.f2760y = -1;
        eVar.f2761z = 0.5f;
        eVar.A = 0.5f;
        eVar.B = null;
        eVar.C = 1;
        eVar.D = -1.0f;
        eVar.E = -1.0f;
        eVar.F = 0;
        eVar.G = 0;
        eVar.H = 0;
        eVar.I = 0;
        eVar.J = 0;
        eVar.K = 0;
        eVar.L = 0;
        eVar.M = 0;
        eVar.N = 1.0f;
        eVar.O = 1.0f;
        eVar.P = -1;
        eVar.Q = -1;
        eVar.R = -1;
        eVar.S = false;
        eVar.T = false;
        eVar.U = null;
        eVar.V = true;
        eVar.W = true;
        eVar.X = false;
        eVar.Y = false;
        eVar.Z = false;
        eVar.f2728a0 = -1;
        eVar.f2729b0 = -1;
        eVar.f2731c0 = -1;
        eVar.f2733d0 = -1;
        eVar.f2735e0 = -1;
        eVar.f2736f0 = -1;
        eVar.f2738g0 = 0.5f;
        eVar.f2746k0 = new d();
        return eVar;
    }

    private int getPaddingWidth() {
        int iMax = Math.max(0, getPaddingRight()) + Math.max(0, getPaddingLeft());
        int iMax2 = Math.max(0, getPaddingEnd()) + Math.max(0, getPaddingStart());
        return iMax2 > 0 ? iMax2 : iMax;
    }

    public final d b(View view) {
        if (view == this) {
            return this.f251c;
        }
        if (view == null) {
            return null;
        }
        return ((q.e) view.getLayoutParams()).f2746k0;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x008a A[Catch: IOException -> 0x0051, XmlPullParserException -> 0x0053, TryCatch #2 {IOException -> 0x0051, XmlPullParserException -> 0x0053, blocks: (B:3:0x001f, B:36:0x00a4, B:10:0x002e, B:11:0x0036, B:34:0x008a, B:13:0x003a, B:15:0x0042, B:17:0x0049, B:22:0x0055, B:25:0x005e, B:28:0x0067, B:30:0x006f, B:31:0x007e, B:33:0x0086, B:35:0x00a1), top: B:42:0x001f }] */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Instruction removed from duplicated block: B:34:0x008a, please report this as an issue */
    public final void c(int i3) {
        Context context = getContext();
        c cVar = new c();
        cVar.f100a = new SparseArray();
        cVar.b = new SparseArray();
        XmlResourceParser xml = context.getResources().getXml(i3);
        try {
            d1.b bVar = null;
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    switch (name.hashCode()) {
                        case -1349929691:
                            if (name.equals("ConstraintSet")) {
                                cVar.B(context, xml);
                            } else {
                                Log.v("ConstraintLayoutStates", "unknown tag " + name);
                            }
                            break;
                        case 80204913:
                            if (name.equals("State")) {
                                bVar = new d1.b(context, xml);
                                ((SparseArray) cVar.f100a).put(bVar.f1536a, bVar);
                            } else {
                                Log.v("ConstraintLayoutStates", "unknown tag " + name);
                            }
                            break;
                        case 1382829617:
                            if (!name.equals("StateSet")) {
                                Log.v("ConstraintLayoutStates", "unknown tag " + name);
                            }
                            break;
                        case 1657696882:
                            if (!name.equals("layoutDescription")) {
                                Log.v("ConstraintLayoutStates", "unknown tag " + name);
                            }
                            break;
                        case 1901439077:
                            if (name.equals("Variant")) {
                                g gVar = new g(context, xml);
                                if (bVar != null) {
                                    ((ArrayList) bVar.f1537c).add(gVar);
                                }
                            } else {
                                Log.v("ConstraintLayoutStates", "unknown tag " + name);
                            }
                            break;
                        default:
                            Log.v("ConstraintLayoutStates", "unknown tag " + name);
                            break;
                    }
                }
            }
        } catch (IOException e3) {
            e3.printStackTrace();
        } catch (XmlPullParserException e4) {
            e4.printStackTrace();
        }
        this.f258k = cVar;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof q.e;
    }

    public final void d(int i3, int i4, int i5, int i6, boolean z2, boolean z3) {
        f fVar = this.f262o;
        int i7 = fVar.f2765e;
        int iResolveSizeAndState = View.resolveSizeAndState(i5 + fVar.f2764d, i3, 0);
        int iResolveSizeAndState2 = View.resolveSizeAndState(i6 + i7, i4, 0) & 16777215;
        int iMin = Math.min(this.f, iResolveSizeAndState & 16777215);
        int iMin2 = Math.min(this.f254g, iResolveSizeAndState2);
        if (z2) {
            iMin |= 16777216;
        }
        if (z3) {
            iMin2 |= 16777216;
        }
        setMeasuredDimension(iMin, iMin2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList arrayList = this.b;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i3 = 0; i3 < size; i3++) {
                ((q.c) arrayList.get(i3)).getClass();
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            int childCount = getChildCount();
            float width = getWidth();
            float height = getHeight();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] strArrSplit = ((String) tag).split(",");
                    if (strArrSplit.length == 4) {
                        int i5 = Integer.parseInt(strArrSplit[0]);
                        int i6 = Integer.parseInt(strArrSplit[1]);
                        int i7 = Integer.parseInt(strArrSplit[2]);
                        int i8 = (int) ((i5 / 1080.0f) * width);
                        int i9 = (int) ((i6 / 1920.0f) * height);
                        int i10 = (int) ((Integer.parseInt(strArrSplit[3]) / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f = i8;
                        float f3 = i9;
                        float f4 = i8 + ((int) ((i7 / 1080.0f) * width));
                        canvas.drawLine(f, f3, f4, f3, paint);
                        float f5 = i9 + i10;
                        canvas.drawLine(f4, f3, f4, f5, paint);
                        canvas.drawLine(f4, f5, f, f5, paint);
                        canvas.drawLine(f, f5, f, f3, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f, f3, f4, f5, paint);
                        canvas.drawLine(f, f5, f4, f3, paint);
                    }
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:157:0x0307  */
    /* JADX WARN: Code duplicated, block: B:159:0x0325  */
    /* JADX WARN: Code duplicated, block: B:161:0x0328  */
    /* JADX WARN: Code duplicated, block: B:165:0x0347  */
    /* JADX WARN: Code duplicated, block: B:173:0x0363  */
    /* JADX WARN: Code duplicated, block: B:228:0x046d  */
    /* JADX WARN: Code duplicated, block: B:379:0x0394 A[SYNTHETIC] */
    public final void e(e eVar, int i3, int i4, int i5) {
        int iMin;
        int iMax;
        int iMin2;
        int iMax2;
        int i6;
        char c3;
        boolean z2;
        int i7;
        int i8;
        ArrayList arrayList;
        f fVar;
        int i9;
        boolean zJ;
        boolean z3;
        boolean z4;
        int i10;
        boolean z5;
        int i11;
        int i12;
        boolean zU;
        k kVar;
        p.m mVar;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        boolean z6;
        int size;
        int i20;
        int size2;
        int i21;
        o oVar;
        o oVar2;
        int mode = View.MeasureSpec.getMode(i4);
        int size3 = View.MeasureSpec.getSize(i4);
        int mode2 = View.MeasureSpec.getMode(i5);
        int size4 = View.MeasureSpec.getSize(i5);
        int iMax3 = Math.max(0, getPaddingTop());
        int iMax4 = Math.max(0, getPaddingBottom());
        int i22 = iMax3 + iMax4;
        int paddingWidth = getPaddingWidth();
        f fVar2 = this.f262o;
        fVar2.b = iMax3;
        fVar2.f2763c = iMax4;
        fVar2.f2764d = paddingWidth;
        fVar2.f2765e = i22;
        fVar2.f = i4;
        fVar2.f2766g = i5;
        int iMax5 = Math.max(0, getPaddingStart());
        int iMax6 = Math.max(0, getPaddingEnd());
        int i23 = 1;
        if (iMax5 <= 0 && iMax6 <= 0) {
            iMax5 = Math.max(0, getPaddingLeft());
        } else if ((getContext().getApplicationInfo().flags & 4194304) != 0 && 1 == getLayoutDirection()) {
            iMax5 = iMax6;
        }
        int i24 = size3 - paddingWidth;
        int i25 = size4 - i22;
        int i26 = fVar2.f2765e;
        int i27 = fVar2.f2764d;
        int childCount = getChildCount();
        if (mode == Integer.MIN_VALUE) {
            if (childCount == 0) {
                iMax = Math.max(0, this.f252d);
                iMin = iMax;
            } else {
                iMin = i24;
            }
            i23 = 2;
        } else if (mode == 0) {
            if (childCount == 0) {
                iMax = Math.max(0, this.f252d);
                iMin = iMax;
            } else {
                iMin = 0;
            }
            i23 = 2;
        } else if (mode != 1073741824) {
            iMin = 0;
        } else {
            iMin = Math.min(this.f - i27, i24);
            i23 = 1;
        }
        if (mode2 == Integer.MIN_VALUE) {
            if (childCount == 0) {
                iMax2 = Math.max(0, this.f253e);
                iMin2 = iMax2;
            } else {
                iMin2 = i25;
            }
            i6 = 2;
        } else if (mode2 != 0) {
            iMin2 = mode2 != 1073741824 ? 0 : Math.min(this.f254g - i26, i25);
            i6 = 1;
        } else {
            if (childCount == 0) {
                iMax2 = Math.max(0, this.f253e);
                iMin2 = iMax2;
            } else {
                iMin2 = 0;
            }
            i6 = 2;
        }
        int iL = eVar.l();
        p.e eVar2 = eVar.f2600l0;
        int[] iArr = eVar.f2594w;
        int i28 = iMin;
        if (i28 == iL && iMin2 == eVar.i()) {
            c3 = 1;
        } else {
            eVar2.f2650c = true;
            c3 = 1;
        }
        eVar.R = 0;
        eVar.S = 0;
        iArr[0] = this.f - i27;
        iArr[c3] = this.f254g - i26;
        eVar.U = 0;
        eVar.V = 0;
        eVar.B(i23);
        eVar.D(i28);
        eVar.C(i6);
        eVar.A(iMin2);
        int i29 = this.f252d - i27;
        if (i29 < 0) {
            eVar.U = 0;
        } else {
            eVar.U = i29;
        }
        int i30 = this.f253e - i26;
        if (i30 < 0) {
            eVar.V = 0;
        } else {
            eVar.V = i30;
        }
        eVar.f2604p0 = iMax5;
        eVar.f2605q0 = iMax3;
        androidx.fragment.app.f fVar3 = eVar.f2599k0;
        e eVar3 = (e) fVar3.f414d;
        ArrayList arrayList2 = (ArrayList) fVar3.b;
        f fVar4 = eVar.f2601m0;
        int size5 = eVar.f2598j0.size();
        int iL2 = eVar.l();
        int i31 = eVar.i();
        boolean zC = o.g.c(i3, 128);
        boolean z7 = zC || o.g.c(i3, 64);
        if (z7) {
            int i32 = 0;
            while (true) {
                if (i32 < size5) {
                    boolean z8 = z7;
                    d dVar = (d) eVar.f2598j0.get(i32);
                    int i33 = i32;
                    int[] iArr2 = dVar.f2580i0;
                    i7 = size5;
                    boolean z9 = (iArr2[0] == 3) && (iArr2[1] == 3) && dVar.P > 0.0f;
                    if ((dVar.r() && z9) || ((dVar.s() && z9) || dVar.r() || dVar.s())) {
                        i8 = 1073741824;
                        z2 = false;
                    } else {
                        i32 = i33 + 1;
                        z7 = z8;
                        size5 = i7;
                    }
                } else {
                    z2 = z7;
                    i7 = size5;
                    i8 = 1073741824;
                }
            }
        } else {
            z2 = z7;
            i7 = size5;
            i8 = 1073741824;
        }
        boolean z10 = z2 & ((mode == i8 && mode2 == i8) || zC);
        if (z10) {
            int iMin3 = Math.min(iArr[0], i24);
            int iMin4 = Math.min(iArr[1], i25);
            int i34 = 1073741824;
            if (mode == 1073741824) {
                if (eVar.l() != iMin3) {
                    eVar.D(iMin3);
                    eVar2.b = true;
                }
                i34 = 1073741824;
            }
            if (mode2 == i34 && eVar.i() != iMin4) {
                eVar.A(iMin4);
                eVar2.b = true;
            }
            if (mode == i34 && mode2 == i34) {
                ArrayList arrayList3 = eVar2.f2652e;
                e eVar4 = eVar2.f2649a;
                if (eVar2.b || eVar2.f2650c) {
                    ArrayList arrayList4 = eVar4.f2598j0;
                    int size6 = arrayList4.size();
                    int i35 = 0;
                    while (i35 < size6) {
                        Object obj = arrayList4.get(i35);
                        int i36 = i35 + 1;
                        d dVar2 = (d) obj;
                        dVar2.f();
                        dVar2.f2565a = false;
                        dVar2.f2570d.n();
                        dVar2.f2572e.m();
                        arrayList4 = arrayList4;
                        i35 = i36;
                    }
                    eVar4.f();
                    i15 = 0;
                    eVar4.f2565a = false;
                    eVar4.f2570d.n();
                    eVar4.f2572e.m();
                    eVar2.f2650c = false;
                } else {
                    i15 = 0;
                }
                eVar2.b(eVar2.f2651d);
                eVar4.R = i15;
                int[] iArr3 = eVar4.f2580i0;
                eVar4.S = i15;
                int iH = eVar4.h(i15);
                int iH2 = eVar4.h(1);
                if (eVar2.b) {
                    eVar2.c();
                }
                int iM = eVar4.m();
                fVar = fVar4;
                int iN = eVar4.n();
                arrayList = arrayList2;
                eVar4.f2570d.f2680h.d(iM);
                eVar4.f2572e.f2680h.d(iN);
                eVar2.g();
                if (iH == 2 || iH2 == 2) {
                    if (zC) {
                        int size7 = arrayList3.size();
                        i16 = iM;
                        int i37 = 0;
                        while (i37 < size7) {
                            Object obj2 = arrayList3.get(i37);
                            i37++;
                            if (!((o) obj2).k()) {
                                zC = false;
                                break;
                            }
                        }
                    } else {
                        i16 = iM;
                    }
                    if (zC && iH == 2) {
                        eVar4.B(1);
                        eVar4.D(eVar2.d(eVar4, 0));
                        eVar4.f2570d.f2678e.d(eVar4.l());
                    }
                    if (zC && iH2 == 2) {
                        i17 = 1;
                        eVar4.C(1);
                        eVar4.A(eVar2.d(eVar4, 1));
                        eVar4.f2572e.f2678e.d(eVar4.i());
                    }
                    i18 = iArr3[0];
                    if (i18 != i17 || i18 == 4) {
                        int iL3 = eVar4.l() + i16;
                        eVar4.f2570d.f2681i.d(iL3);
                        eVar4.f2570d.f2678e.d(iL3 - i16);
                        eVar2.g();
                        i19 = iArr3[1];
                        if (i19 != 1 || i19 == 4) {
                            int i38 = eVar4.i() + iN;
                            eVar4.f2572e.f2681i.d(i38);
                            eVar4.f2572e.f2678e.d(i38 - iN);
                        }
                        eVar2.g();
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    size = arrayList3.size();
                    i20 = 0;
                    while (i20 < size) {
                        Object obj3 = arrayList3.get(i20);
                        i20++;
                        oVar2 = (o) obj3;
                        if (oVar2.b == eVar4 || oVar2.f2679g) {
                            oVar2.e();
                        }
                    }
                    size2 = arrayList3.size();
                    i21 = 0;
                    while (true) {
                        if (i21 < size2) {
                            zJ = true;
                            break;
                        }
                        Object obj4 = arrayList3.get(i21);
                        i21++;
                        oVar = (o) obj4;
                        if (!z6 || oVar.b != eVar4) {
                            if (oVar.f2680h.f2662j || ((!oVar.f2681i.f2662j && !(oVar instanceof i)) || (!oVar.f2678e.f2662j && !(oVar instanceof p.c) && !(oVar instanceof i)))) {
                                zJ = false;
                                break;
                            }
                        }
                    }
                    eVar4.B(iH);
                    eVar4.C(iH2);
                    i9 = 2;
                    i14 = 1073741824;
                } else {
                    i16 = iM;
                }
                i17 = 1;
                i18 = iArr3[0];
                if (i18 != i17) {
                    int iL4 = eVar4.l() + i16;
                    eVar4.f2570d.f2681i.d(iL4);
                    eVar4.f2570d.f2678e.d(iL4 - i16);
                    eVar2.g();
                    i19 = iArr3[1];
                    if (i19 != 1) {
                        int i39 = eVar4.i() + iN;
                        eVar4.f2572e.f2681i.d(i39);
                        eVar4.f2572e.f2678e.d(i39 - iN);
                    } else {
                        int i310 = eVar4.i() + iN;
                        eVar4.f2572e.f2681i.d(i310);
                        eVar4.f2572e.f2678e.d(i310 - iN);
                    }
                    eVar2.g();
                    z6 = true;
                } else {
                    int iL5 = eVar4.l() + i16;
                    eVar4.f2570d.f2681i.d(iL5);
                    eVar4.f2570d.f2678e.d(iL5 - i16);
                    eVar2.g();
                    i19 = iArr3[1];
                    if (i19 != 1) {
                        int i311 = eVar4.i() + iN;
                        eVar4.f2572e.f2681i.d(i311);
                        eVar4.f2572e.f2678e.d(i311 - iN);
                    } else {
                        int i312 = eVar4.i() + iN;
                        eVar4.f2572e.f2681i.d(i312);
                        eVar4.f2572e.f2678e.d(i312 - iN);
                    }
                    eVar2.g();
                    z6 = true;
                }
                size = arrayList3.size();
                i20 = 0;
                while (i20 < size) {
                    Object obj5 = arrayList3.get(i20);
                    i20++;
                    oVar2 = (o) obj5;
                    if (oVar2.b == eVar4) {
                    }
                    oVar2.e();
                }
                size2 = arrayList3.size();
                i21 = 0;
                while (true) {
                    if (i21 < size2) {
                        zJ = true;
                        break;
                    }
                    Object obj6 = arrayList3.get(i21);
                    i21++;
                    oVar = (o) obj6;
                    if (!z6) {
                    }
                    if (oVar.f2680h.f2662j) {
                    }
                    zJ = false;
                    break;
                }
                eVar4.B(iH);
                eVar4.C(iH2);
                i9 = 2;
                i14 = 1073741824;
            } else {
                z10 = z10;
                arrayList = arrayList2;
                fVar = fVar4;
                e eVar5 = eVar2.f2649a;
                if (eVar2.b) {
                    ArrayList arrayList5 = eVar5.f2598j0;
                    int size8 = arrayList5.size();
                    int i40 = 0;
                    while (i40 < size8) {
                        Object obj7 = arrayList5.get(i40);
                        i40++;
                        d dVar3 = (d) obj7;
                        dVar3.f();
                        dVar3.f2565a = false;
                        k kVar2 = dVar3.f2570d;
                        ArrayList arrayList6 = arrayList5;
                        kVar2.f2678e.f2662j = false;
                        kVar2.f2679g = false;
                        kVar2.n();
                        p.m mVar2 = dVar3.f2572e;
                        mVar2.f2678e.f2662j = false;
                        mVar2.f2679g = false;
                        mVar2.m();
                        arrayList5 = arrayList6;
                    }
                    i13 = 0;
                    eVar5.f();
                    eVar5.f2565a = false;
                    k kVar3 = eVar5.f2570d;
                    kVar3.f2678e.f2662j = false;
                    kVar3.f2679g = false;
                    kVar3.n();
                    p.m mVar3 = eVar5.f2572e;
                    mVar3.f2678e.f2662j = false;
                    mVar3.f2679g = false;
                    mVar3.m();
                    eVar2.c();
                } else {
                    i13 = 0;
                }
                eVar2.b(eVar2.f2651d);
                eVar5.R = i13;
                eVar5.S = i13;
                eVar5.f2570d.f2680h.d(i13);
                eVar5.f2572e.f2680h.d(i13);
                i14 = 1073741824;
                if (mode == 1073741824) {
                    zJ = eVar.J(i13, zC);
                    i9 = 1;
                } else {
                    i9 = 0;
                    zJ = true;
                }
                if (mode2 == 1073741824) {
                    zJ &= eVar.J(1, zC);
                    i9++;
                }
            }
            if (zJ) {
                eVar.E(mode == i14, mode2 == i14);
            }
        } else {
            z10 = z10;
            arrayList = arrayList2;
            fVar = fVar4;
            i9 = 0;
            zJ = false;
        }
        if (zJ && i9 == 2) {
            return;
        }
        int i41 = eVar.f2609v0;
        if (i7 > 0) {
            int size9 = eVar.f2598j0.size();
            boolean zM = eVar.M(64);
            f fVar5 = eVar.f2601m0;
            for (int i42 = 0; i42 < size9; i42++) {
                d dVar4 = (d) eVar.f2598j0.get(i42);
                if (!(dVar4 instanceof o.f) && !(dVar4 instanceof a)) {
                    dVar4.getClass();
                    if (!zM || (kVar = dVar4.f2570d) == null || (mVar = dVar4.f2572e) == null || !kVar.f2678e.f2662j || !mVar.f2678e.f2662j) {
                        int iH3 = dVar4.h(0);
                        int iH4 = dVar4.h(1);
                        boolean z11 = iH3 == 3 && dVar4.f2583l != 1 && iH4 == 3 && dVar4.f2584m != 1;
                        if (!z11 && eVar.M(1)) {
                            if (iH3 == 3 && dVar4.f2583l == 0 && iH4 != 3 && !dVar4.r()) {
                                z11 = true;
                            }
                            if (iH4 == 3 && dVar4.f2584m == 0 && iH3 != 3 && !dVar4.r()) {
                                z11 = true;
                            }
                            if ((iH3 == 3 || iH4 == 3) && dVar4.P > 0.0f) {
                                z11 = true;
                            }
                        }
                        if (!z11) {
                            fVar3.u(fVar5, dVar4, 0);
                        }
                    }
                }
            }
            ConstraintLayout constraintLayout = fVar5.f2762a;
            int childCount2 = constraintLayout.getChildCount();
            ArrayList arrayList7 = constraintLayout.b;
            for (int i43 = 0; i43 < childCount2; i43++) {
                constraintLayout.getChildAt(i43);
            }
            int size10 = arrayList7.size();
            if (size10 > 0) {
                for (int i44 = 0; i44 < size10; i44++) {
                    ((q.c) arrayList7.get(i44)).getClass();
                }
            }
        }
        fVar3.A(eVar);
        int size11 = arrayList.size();
        if (i7 > 0) {
            fVar3.y(eVar, iL2, i31);
        }
        if (size11 > 0) {
            int[] iArr4 = eVar.f2580i0;
            boolean z12 = iArr4[0] == 2;
            boolean z13 = iArr4[1] == 2;
            int iMax7 = Math.max(eVar.l(), eVar3.U);
            int iMax8 = Math.max(eVar.i(), eVar3.V);
            for (int i45 = 0; i45 < size11; i45++) {
            }
            ArrayList arrayList8 = arrayList;
            int i46 = 0;
            while (true) {
                if (i46 >= 2) {
                    z3 = false;
                    break;
                }
                int i47 = 0;
                boolean z14 = false;
                while (i47 < size11) {
                    d dVar5 = (d) arrayList8.get(i47);
                    if ((dVar5 instanceof a) || (dVar5 instanceof o.f)) {
                        i10 = size11;
                    } else {
                        i10 = size11;
                        if (dVar5.Z != 8 && (!z10 || !dVar5.f2570d.f2678e.f2662j || !dVar5.f2572e.f2678e.f2662j)) {
                            int iL6 = dVar5.l();
                            int i48 = dVar5.i();
                            z5 = z13;
                            int i49 = dVar5.T;
                            i11 = i47;
                            int i50 = i46 == 1 ? 2 : 1;
                            i12 = i46;
                            f fVar6 = fVar;
                            zU = fVar3.u(fVar6, dVar5, i50) | z14;
                            int iL7 = dVar5.l();
                            fVar = fVar6;
                            int i51 = dVar5.i();
                            if (iL7 != iL6) {
                                dVar5.D(iL7);
                                if (z12 && dVar5.m() + dVar5.N > iMax7) {
                                    iMax7 = Math.max(iMax7, dVar5.g(4).d() + dVar5.m() + dVar5.N);
                                }
                                zU = true;
                            }
                            if (i51 != i48) {
                                dVar5.A(i51);
                                if (z5 && dVar5.n() + dVar5.O > iMax8) {
                                    iMax8 = Math.max(iMax8, dVar5.g(5).d() + dVar5.n() + dVar5.O);
                                }
                                zU = true;
                            }
                            if (dVar5.f2596y && i49 != dVar5.T) {
                                zU = true;
                            }
                        }
                        z14 = zU;
                        z13 = z5;
                        i46 = i12;
                        i47 = i11 + 1;
                        size11 = i10;
                    }
                    z5 = z13;
                    i12 = i46;
                    i11 = i47;
                    zU = z14;
                    z14 = zU;
                    z13 = z5;
                    i46 = i12;
                    i47 = i11 + 1;
                    size11 = i10;
                }
                int i52 = size11;
                boolean z15 = z13;
                int i53 = i46;
                if (!z14) {
                    z3 = z14;
                    break;
                }
                fVar3.y(eVar, iL2, i31);
                i46 = i53 + 1;
                size11 = i52;
                z13 = z15;
            }
            if (z3) {
                fVar3.y(eVar, iL2, i31);
                if (eVar.l() < iMax7) {
                    eVar.D(iMax7);
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (eVar.i() < iMax8) {
                    eVar.A(iMax8);
                    z4 = true;
                }
                if (z4) {
                    fVar3.y(eVar, iL2, i31);
                }
            }
        }
        eVar.f2609v0 = i41;
        n.c.f2451p = eVar.M(512);
    }

    @Override // android.view.View
    public final void forceLayout() {
        this.f255h = true;
        super.forceLayout();
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return a();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        int i3;
        Context context = getContext();
        q.e eVar = new q.e(context, attributeSet);
        eVar.f2727a = -1;
        eVar.b = -1;
        eVar.f2730c = -1.0f;
        eVar.f2732d = -1;
        eVar.f2734e = -1;
        eVar.f = -1;
        eVar.f2737g = -1;
        eVar.f2739h = -1;
        eVar.f2741i = -1;
        eVar.f2743j = -1;
        eVar.f2745k = -1;
        eVar.f2747l = -1;
        eVar.f2748m = -1;
        eVar.f2749n = 0;
        eVar.f2750o = 0.0f;
        eVar.f2751p = -1;
        eVar.f2752q = -1;
        eVar.f2753r = -1;
        eVar.f2754s = -1;
        eVar.f2755t = -1;
        eVar.f2756u = -1;
        eVar.f2757v = -1;
        eVar.f2758w = -1;
        eVar.f2759x = -1;
        eVar.f2760y = -1;
        eVar.f2761z = 0.5f;
        eVar.A = 0.5f;
        eVar.B = null;
        eVar.C = 1;
        eVar.D = -1.0f;
        eVar.E = -1.0f;
        eVar.F = 0;
        eVar.G = 0;
        eVar.H = 0;
        eVar.I = 0;
        eVar.J = 0;
        eVar.K = 0;
        eVar.L = 0;
        eVar.M = 0;
        eVar.N = 1.0f;
        eVar.O = 1.0f;
        eVar.P = -1;
        eVar.Q = -1;
        eVar.R = -1;
        eVar.S = false;
        eVar.T = false;
        eVar.U = null;
        eVar.V = true;
        eVar.W = true;
        eVar.X = false;
        eVar.Y = false;
        eVar.Z = false;
        eVar.f2728a0 = -1;
        eVar.f2729b0 = -1;
        eVar.f2731c0 = -1;
        eVar.f2733d0 = -1;
        eVar.f2735e0 = -1;
        eVar.f2736f0 = -1;
        eVar.f2738g0 = 0.5f;
        eVar.f2746k0 = new d();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q.b);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i4 = 0; i4 < indexCount; i4++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i4);
            int i5 = q.d.f2726a.get(index);
            switch (i5) {
                case 1:
                    eVar.R = typedArrayObtainStyledAttributes.getInt(index, eVar.R);
                    break;
                case 2:
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f2748m);
                    eVar.f2748m = resourceId;
                    if (resourceId == -1) {
                        eVar.f2748m = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 3:
                    eVar.f2749n = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f2749n);
                    break;
                case 4:
                    float f = typedArrayObtainStyledAttributes.getFloat(index, eVar.f2750o) % 360.0f;
                    eVar.f2750o = f;
                    if (f < 0.0f) {
                        eVar.f2750o = (360.0f - f) % 360.0f;
                    }
                    break;
                case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                    eVar.f2727a = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, eVar.f2727a);
                    break;
                case MusicClient.TYPE_GESTURE /* 6 */:
                    eVar.b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, eVar.b);
                    break;
                case PlaybackState.STATE_ERROR /* 7 */:
                    eVar.f2730c = typedArrayObtainStyledAttributes.getFloat(index, eVar.f2730c);
                    break;
                case 8:
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f2732d);
                    eVar.f2732d = resourceId2;
                    if (resourceId2 == -1) {
                        eVar.f2732d = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 9:
                    int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f2734e);
                    eVar.f2734e = resourceId3;
                    if (resourceId3 == -1) {
                        eVar.f2734e = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 10:
                    int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f);
                    eVar.f = resourceId4;
                    if (resourceId4 == -1) {
                        eVar.f = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 11:
                    int resourceId5 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f2737g);
                    eVar.f2737g = resourceId5;
                    if (resourceId5 == -1) {
                        eVar.f2737g = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 12:
                    int resourceId6 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f2739h);
                    eVar.f2739h = resourceId6;
                    if (resourceId6 == -1) {
                        eVar.f2739h = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 13:
                    int resourceId7 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f2741i);
                    eVar.f2741i = resourceId7;
                    if (resourceId7 == -1) {
                        eVar.f2741i = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 14:
                    int resourceId8 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f2743j);
                    eVar.f2743j = resourceId8;
                    if (resourceId8 == -1) {
                        eVar.f2743j = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 15:
                    int resourceId9 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f2745k);
                    eVar.f2745k = resourceId9;
                    if (resourceId9 == -1) {
                        eVar.f2745k = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 16:
                    int resourceId10 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f2747l);
                    eVar.f2747l = resourceId10;
                    if (resourceId10 == -1) {
                        eVar.f2747l = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 17:
                    int resourceId11 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f2751p);
                    eVar.f2751p = resourceId11;
                    if (resourceId11 == -1) {
                        eVar.f2751p = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 18:
                    int resourceId12 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f2752q);
                    eVar.f2752q = resourceId12;
                    if (resourceId12 == -1) {
                        eVar.f2752q = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 19:
                    int resourceId13 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f2753r);
                    eVar.f2753r = resourceId13;
                    if (resourceId13 == -1) {
                        eVar.f2753r = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 20:
                    int resourceId14 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f2754s);
                    eVar.f2754s = resourceId14;
                    if (resourceId14 == -1) {
                        eVar.f2754s = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 21:
                    eVar.f2755t = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f2755t);
                    break;
                case 22:
                    eVar.f2756u = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f2756u);
                    break;
                case 23:
                    eVar.f2757v = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f2757v);
                    break;
                case 24:
                    eVar.f2758w = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f2758w);
                    break;
                case 25:
                    eVar.f2759x = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f2759x);
                    break;
                case 26:
                    eVar.f2760y = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f2760y);
                    break;
                case 27:
                    eVar.S = typedArrayObtainStyledAttributes.getBoolean(index, eVar.S);
                    break;
                case 28:
                    eVar.T = typedArrayObtainStyledAttributes.getBoolean(index, eVar.T);
                    break;
                case 29:
                    eVar.f2761z = typedArrayObtainStyledAttributes.getFloat(index, eVar.f2761z);
                    break;
                case 30:
                    eVar.A = typedArrayObtainStyledAttributes.getFloat(index, eVar.A);
                    break;
                case 31:
                    int i6 = typedArrayObtainStyledAttributes.getInt(index, 0);
                    eVar.H = i6;
                    if (i6 == 1) {
                        Log.e("ConstraintLayout", "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                    }
                    break;
                case 32:
                    int i7 = typedArrayObtainStyledAttributes.getInt(index, 0);
                    eVar.I = i7;
                    if (i7 == 1) {
                        Log.e("ConstraintLayout", "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                    }
                    break;
                case 33:
                    try {
                        eVar.J = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.J);
                    } catch (Exception unused) {
                        if (typedArrayObtainStyledAttributes.getInt(index, eVar.J) == -2) {
                            eVar.J = -2;
                        }
                    }
                    break;
                case 34:
                    try {
                        eVar.L = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.L);
                    } catch (Exception unused2) {
                        if (typedArrayObtainStyledAttributes.getInt(index, eVar.L) == -2) {
                            eVar.L = -2;
                        }
                    }
                    break;
                case 35:
                    eVar.N = Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, eVar.N));
                    eVar.H = 2;
                    break;
                case 36:
                    try {
                        eVar.K = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.K);
                    } catch (Exception unused3) {
                        if (typedArrayObtainStyledAttributes.getInt(index, eVar.K) == -2) {
                            eVar.K = -2;
                        }
                    }
                    break;
                case 37:
                    try {
                        eVar.M = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.M);
                    } catch (Exception unused4) {
                        if (typedArrayObtainStyledAttributes.getInt(index, eVar.M) == -2) {
                            eVar.M = -2;
                        }
                    }
                    break;
                case 38:
                    eVar.O = Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, eVar.O));
                    eVar.I = 2;
                    break;
                default:
                    switch (i5) {
                        case 44:
                            String string = typedArrayObtainStyledAttributes.getString(index);
                            eVar.B = string;
                            eVar.C = -1;
                            if (string != null) {
                                int length = string.length();
                                int iIndexOf = eVar.B.indexOf(44);
                                if (iIndexOf <= 0 || iIndexOf >= length - 1) {
                                    i3 = 0;
                                } else {
                                    String strSubstring = eVar.B.substring(0, iIndexOf);
                                    if (strSubstring.equalsIgnoreCase("W")) {
                                        eVar.C = 0;
                                    } else if (strSubstring.equalsIgnoreCase("H")) {
                                        eVar.C = 1;
                                    }
                                    i3 = iIndexOf + 1;
                                }
                                int iIndexOf2 = eVar.B.indexOf(58);
                                if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
                                    String strSubstring2 = eVar.B.substring(i3);
                                    if (strSubstring2.length() > 0) {
                                        Float.parseFloat(strSubstring2);
                                    }
                                } else {
                                    String strSubstring3 = eVar.B.substring(i3, iIndexOf2);
                                    String strSubstring4 = eVar.B.substring(iIndexOf2 + 1);
                                    if (strSubstring3.length() > 0 && strSubstring4.length() > 0) {
                                        try {
                                            float f3 = Float.parseFloat(strSubstring3);
                                            float f4 = Float.parseFloat(strSubstring4);
                                            if (f3 > 0.0f && f4 > 0.0f) {
                                                if (eVar.C == 1) {
                                                    Math.abs(f4 / f3);
                                                } else {
                                                    Math.abs(f3 / f4);
                                                }
                                            }
                                        } catch (NumberFormatException unused5) {
                                        }
                                    }
                                }
                            }
                            break;
                        case 45:
                            eVar.D = typedArrayObtainStyledAttributes.getFloat(index, eVar.D);
                            break;
                        case 46:
                            eVar.E = typedArrayObtainStyledAttributes.getFloat(index, eVar.E);
                            break;
                        case 47:
                            eVar.F = typedArrayObtainStyledAttributes.getInt(index, 0);
                            break;
                        case 48:
                            eVar.G = typedArrayObtainStyledAttributes.getInt(index, 0);
                            break;
                        case 49:
                            eVar.P = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, eVar.P);
                            break;
                        case 50:
                            eVar.Q = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, eVar.Q);
                            break;
                        case 51:
                            eVar.U = typedArrayObtainStyledAttributes.getString(index);
                            break;
                    }
                    break;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        eVar.a();
        return eVar;
    }

    public int getMaxHeight() {
        return this.f254g;
    }

    public int getMaxWidth() {
        return this.f;
    }

    public int getMinHeight() {
        return this.f253e;
    }

    public int getMinWidth() {
        return this.f252d;
    }

    public int getOptimizationLevel() {
        return this.f251c.f2609v0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        int childCount = getChildCount();
        boolean zIsInEditMode = isInEditMode();
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            q.e eVar = (q.e) childAt.getLayoutParams();
            d dVar = eVar.f2746k0;
            if (childAt.getVisibility() != 8 || eVar.Y || eVar.Z || zIsInEditMode) {
                int iM = dVar.m();
                int iN = dVar.n();
                childAt.layout(iM, iN, dVar.l() + iM, dVar.i() + iN);
            }
        }
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        if (size > 0) {
            for (int i8 = 0; i8 < size; i8++) {
                ((q.c) arrayList.get(i8)).getClass();
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:239:0x0618  */
    /* JADX WARN: Code duplicated, block: B:293:0x0742  */
    /* JADX WARN: Code duplicated, block: B:295:0x074c  */
    /* JADX WARN: Code duplicated, block: B:298:0x075a  */
    /* JADX WARN: Code duplicated, block: B:305:0x0778  */
    /* JADX WARN: Code duplicated, block: B:307:0x0782  */
    /* JADX WARN: Code duplicated, block: B:308:0x0792  */
    /* JADX WARN: Code duplicated, block: B:310:0x079a  */
    /* JADX WARN: Code duplicated, block: B:315:0x07bf  */
    /* JADX WARN: Code duplicated, block: B:318:0x07c7  */
    /* JADX WARN: Code duplicated, block: B:320:0x07d1  */
    /* JADX WARN: Code duplicated, block: B:323:0x07e3  */
    /* JADX WARN: Code duplicated, block: B:330:0x0806  */
    /* JADX WARN: Code duplicated, block: B:338:0x0851  */
    /* JADX WARN: Code duplicated, block: B:341:0x0859  */
    /* JADX WARN: Code duplicated, block: B:414:0x0981  */
    @Override // android.view.View
    public final void onMeasure(int i3, int i4) {
        boolean z2;
        boolean z3;
        boolean z4;
        int i5;
        SparseArray sparseArray;
        d dVar;
        int i6;
        d dVar2;
        int i7;
        int i8;
        d dVar3;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        d dVar4;
        int i14;
        int i15;
        int i16;
        d dVar5;
        d dVar6;
        int i17;
        int i18;
        float f;
        View view;
        d dVar7;
        d dVar8;
        d dVar9;
        int i19;
        d dVar10;
        int i20;
        int i21;
        int i22;
        float fAbs;
        int i23;
        SparseArray sparseArray2;
        String str;
        int iD;
        int i24;
        boolean z5;
        int i25;
        SparseArray sparseArray3;
        int i26;
        int i27;
        HashSet hashSet;
        SparseArray sparseArray4;
        String resourceEntryName;
        d dVar11;
        if (!this.f255h) {
            int childCount = getChildCount();
            for (int i28 = 0; i28 < childCount; i28++) {
                if (getChildAt(i28).isLayoutRequested()) {
                    this.f255h = true;
                    break;
                }
            }
        }
        boolean z6 = this.f255h;
        e eVar = this.f251c;
        if (!z6) {
            int i29 = this.f263p;
            if (i29 == i3 && this.f264q == i4) {
                d(i3, i4, eVar.l(), eVar.i(), eVar.f2610w0, eVar.x0);
                return;
            }
            if (i29 == i3 && View.MeasureSpec.getMode(i3) == 1073741824 && View.MeasureSpec.getMode(i4) == Integer.MIN_VALUE && View.MeasureSpec.getMode(this.f264q) == Integer.MIN_VALUE && View.MeasureSpec.getSize(i4) >= eVar.i()) {
                this.f263p = i3;
                this.f264q = i4;
                d(i3, i4, eVar.l(), eVar.i(), eVar.f2610w0, eVar.x0);
                return;
            }
        }
        this.f263p = i3;
        this.f264q = i4;
        eVar.f2602n0 = (getContext().getApplicationInfo().flags & 4194304) != 0 && 1 == getLayoutDirection();
        if (this.f255h) {
            this.f255h = false;
            int childCount2 = getChildCount();
            int i30 = 0;
            while (true) {
                if (i30 >= childCount2) {
                    z2 = false;
                    break;
                } else {
                    if (getChildAt(i30).isLayoutRequested()) {
                        z2 = true;
                        break;
                    }
                    i30++;
                }
            }
            if (z2) {
                boolean zIsInEditMode = isInEditMode();
                int childCount3 = getChildCount();
                for (int i31 = 0; i31 < childCount3; i31++) {
                    d dVarB = b(getChildAt(i31));
                    if (dVarB != null) {
                        dVarB.w();
                    }
                }
                SparseArray sparseArray5 = this.f250a;
                if (zIsInEditMode) {
                    for (int i32 = 0; i32 < childCount3; i32++) {
                        View childAt = getChildAt(i32);
                        try {
                            String resourceName = getResources().getResourceName(childAt.getId());
                            Integer numValueOf = Integer.valueOf(childAt.getId());
                            if (resourceName != null) {
                                if (this.f260m == null) {
                                    this.f260m = new HashMap();
                                }
                                int iIndexOf = resourceName.indexOf("/");
                                this.f260m.put(iIndexOf != -1 ? resourceName.substring(iIndexOf + 1) : resourceName, numValueOf);
                            }
                            int iIndexOf2 = resourceName.indexOf(47);
                            if (iIndexOf2 != -1) {
                                resourceName = resourceName.substring(iIndexOf2 + 1);
                            }
                            int id = childAt.getId();
                            if (id != 0) {
                                View viewFindViewById = (View) sparseArray5.get(id);
                                if (viewFindViewById == null && (viewFindViewById = findViewById(id)) != null && viewFindViewById != this && viewFindViewById.getParent() == this) {
                                    onViewAdded(viewFindViewById);
                                }
                                dVar11 = viewFindViewById == this ? eVar : viewFindViewById == null ? null : ((q.e) viewFindViewById.getLayoutParams()).f2746k0;
                            }
                            dVar11.f2566a0 = resourceName;
                        } catch (Resources.NotFoundException unused) {
                        }
                    }
                }
                if (this.f259l != -1) {
                    for (int i33 = 0; i33 < childCount3; i33++) {
                        getChildAt(i33).getId();
                    }
                }
                m mVar = this.f257j;
                if (mVar != null) {
                    int childCount4 = getChildCount();
                    HashMap map = mVar.f2831c;
                    HashSet<Integer> hashSet2 = new HashSet(map.keySet());
                    int i34 = 0;
                    while (i34 < childCount4) {
                        View childAt2 = getChildAt(i34);
                        int id2 = childAt2.getId();
                        boolean z7 = z2;
                        if (map.containsKey(Integer.valueOf(id2))) {
                            if (mVar.b) {
                                i24 = -1;
                                if (id2 == -1) {
                                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                                }
                            } else {
                                i24 = -1;
                            }
                            if (id2 != i24) {
                                if (map.containsKey(Integer.valueOf(id2))) {
                                    hashSet2.remove(Integer.valueOf(id2));
                                    h hVar = (h) map.get(Integer.valueOf(id2));
                                    if (childAt2 instanceof q.a) {
                                        hVar.f2774d.f2781c0 = 1;
                                    }
                                    q.i iVar = hVar.f2774d;
                                    q.k kVar = hVar.b;
                                    z5 = zIsInEditMode;
                                    l lVar = hVar.f2775e;
                                    i26 = i34;
                                    int i35 = iVar.f2781c0;
                                    i27 = childCount4;
                                    if (i35 != -1 && i35 == 1) {
                                        q.a aVar = (q.a) childAt2;
                                        aVar.setId(id2);
                                        aVar.setType(iVar.f2778a0);
                                        aVar.setMargin(iVar.f2779b0);
                                        aVar.setAllowsGoneWidget(iVar.f2792i0);
                                        int[] iArr = iVar.f2783d0;
                                        if (iArr != null) {
                                            aVar.setReferencedIds(iArr);
                                        } else {
                                            String str2 = iVar.f2785e0;
                                            if (str2 != null) {
                                                int[] iArrB = m.b(aVar, str2);
                                                iVar.f2783d0 = iArrB;
                                                aVar.setReferencedIds(iArrB);
                                            }
                                        }
                                    }
                                    q.e eVar2 = (q.e) childAt2.getLayoutParams();
                                    eVar2.a();
                                    hVar.a(eVar2);
                                    HashMap map2 = hVar.f;
                                    hashSet = hashSet2;
                                    Class<?> cls = childAt2.getClass();
                                    for (String str3 : map2.keySet()) {
                                        q.b bVar = (q.b) map2.get(str3);
                                        HashMap map3 = map2;
                                        int i36 = childCount3;
                                        String str4 = "set" + str3;
                                        try {
                                            int iB = n.g.b(bVar.f2717a);
                                            Class cls2 = Integer.TYPE;
                                            Class cls3 = Float.TYPE;
                                            switch (iB) {
                                                case 0:
                                                    sparseArray4 = sparseArray5;
                                                    cls.getMethod(str4, cls2).invoke(childAt2, Integer.valueOf(bVar.b));
                                                    break;
                                                case 1:
                                                    sparseArray4 = sparseArray5;
                                                    cls.getMethod(str4, cls3).invoke(childAt2, Float.valueOf(bVar.f2718c));
                                                    break;
                                                case 2:
                                                    sparseArray4 = sparseArray5;
                                                    cls.getMethod(str4, cls2).invoke(childAt2, Integer.valueOf(bVar.f));
                                                    break;
                                                case 3:
                                                    Method method = cls.getMethod(str4, Drawable.class);
                                                    sparseArray4 = sparseArray5;
                                                    try {
                                                        ColorDrawable colorDrawable = new ColorDrawable();
                                                        colorDrawable.setColor(bVar.f);
                                                        method.invoke(childAt2, colorDrawable);
                                                    } catch (IllegalAccessException e3) {
                                                        e = e3;
                                                        StringBuilder sbL = androidx.activity.result.b.l(" Custom Attribute \"", str3, "\" not found on ");
                                                        sbL.append(cls.getName());
                                                        Log.e("TransitionLayout", sbL.toString());
                                                        e.printStackTrace();
                                                    } catch (NoSuchMethodException e4) {
                                                        e = e4;
                                                        Log.e("TransitionLayout", e.getMessage());
                                                        Log.e("TransitionLayout", " Custom Attribute \"" + str3 + "\" not found on " + cls.getName());
                                                        Log.e("TransitionLayout", cls.getName() + " must have a method " + str4);
                                                    } catch (InvocationTargetException e5) {
                                                        e = e5;
                                                        StringBuilder sbL2 = androidx.activity.result.b.l(" Custom Attribute \"", str3, "\" not found on ");
                                                        sbL2.append(cls.getName());
                                                        Log.e("TransitionLayout", sbL2.toString());
                                                        e.printStackTrace();
                                                    }
                                                    break;
                                                case 4:
                                                    cls.getMethod(str4, CharSequence.class).invoke(childAt2, bVar.f2719d);
                                                    sparseArray4 = sparseArray5;
                                                    break;
                                                case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                                                    cls.getMethod(str4, Boolean.TYPE).invoke(childAt2, Boolean.valueOf(bVar.f2720e));
                                                    sparseArray4 = sparseArray5;
                                                    break;
                                                case MusicClient.TYPE_GESTURE /* 6 */:
                                                    cls.getMethod(str4, cls3).invoke(childAt2, Float.valueOf(bVar.f2718c));
                                                    sparseArray4 = sparseArray5;
                                                    break;
                                                default:
                                                    sparseArray4 = sparseArray5;
                                                    break;
                                            }
                                        } catch (IllegalAccessException e6) {
                                            e = e6;
                                            sparseArray4 = sparseArray5;
                                        } catch (NoSuchMethodException e7) {
                                            e = e7;
                                            sparseArray4 = sparseArray5;
                                        } catch (InvocationTargetException e8) {
                                            e = e8;
                                            sparseArray4 = sparseArray5;
                                        }
                                        map2 = map3;
                                        childCount3 = i36;
                                        sparseArray5 = sparseArray4;
                                    }
                                    i25 = childCount3;
                                    sparseArray3 = sparseArray5;
                                    childAt2.setLayoutParams(eVar2);
                                    if (kVar.b == 0) {
                                        childAt2.setVisibility(kVar.f2814a);
                                    }
                                    childAt2.setAlpha(kVar.f2815c);
                                    childAt2.setRotation(lVar.f2818a);
                                    childAt2.setRotationX(lVar.b);
                                    childAt2.setRotationY(lVar.f2819c);
                                    childAt2.setScaleX(lVar.f2820d);
                                    childAt2.setScaleY(lVar.f2821e);
                                    if (!Float.isNaN(lVar.f)) {
                                        childAt2.setPivotX(lVar.f);
                                    }
                                    if (!Float.isNaN(lVar.f2822g)) {
                                        childAt2.setPivotY(lVar.f2822g);
                                    }
                                    childAt2.setTranslationX(lVar.f2823h);
                                    childAt2.setTranslationY(lVar.f2824i);
                                    childAt2.setTranslationZ(lVar.f2825j);
                                    if (lVar.f2826k) {
                                        childAt2.setElevation(lVar.f2827l);
                                    }
                                } else {
                                    mVar = mVar;
                                    z5 = zIsInEditMode;
                                    i25 = childCount3;
                                    sparseArray3 = sparseArray5;
                                    i26 = i34;
                                    i27 = childCount4;
                                    hashSet = hashSet2;
                                    Log.v("ConstraintSet", "WARNING NO CONSTRAINTS for view " + id2);
                                }
                            }
                            i34 = i26 + 1;
                            z2 = z7;
                            mVar = mVar;
                            zIsInEditMode = z5;
                            childCount4 = i27;
                            hashSet2 = hashSet;
                            childCount3 = i25;
                            sparseArray5 = sparseArray3;
                        } else {
                            StringBuilder sb = new StringBuilder("id unknown ");
                            try {
                                resourceEntryName = childAt2.getContext().getResources().getResourceEntryName(childAt2.getId());
                            } catch (Exception unused2) {
                                resourceEntryName = "UNKNOWN";
                            }
                            sb.append(resourceEntryName);
                            Log.w("ConstraintSet", sb.toString());
                        }
                        mVar = mVar;
                        z5 = zIsInEditMode;
                        i25 = childCount3;
                        sparseArray3 = sparseArray5;
                        i26 = i34;
                        i27 = childCount4;
                        hashSet = hashSet2;
                        i34 = i26 + 1;
                        z2 = z7;
                        mVar = mVar;
                        zIsInEditMode = z5;
                        childCount4 = i27;
                        hashSet2 = hashSet;
                        childCount3 = i25;
                        sparseArray5 = sparseArray3;
                    }
                    z3 = z2;
                    z4 = zIsInEditMode;
                    i5 = childCount3;
                    sparseArray = sparseArray5;
                    for (Integer num : hashSet2) {
                        h hVar2 = (h) map.get(num);
                        q.i iVar2 = hVar2.f2774d;
                        int i37 = iVar2.f2781c0;
                        if (i37 != -1 && i37 == 1) {
                            Context context = getContext();
                            q.a aVar2 = new q.a(context);
                            aVar2.f2721a = new int[32];
                            aVar2.f2725g = new HashMap();
                            aVar2.f2722c = context;
                            a aVar3 = new a();
                            aVar3.f2537j0 = new d[4];
                            aVar3.f2538k0 = 0;
                            aVar3.f2539l0 = 0;
                            aVar3.f2540m0 = true;
                            aVar3.f2541n0 = 0;
                            aVar3.f2542o0 = false;
                            aVar2.f2716j = aVar3;
                            aVar2.f2723d = aVar3;
                            aVar2.e();
                            aVar2.setVisibility(8);
                            aVar2.setId(num.intValue());
                            int[] iArr2 = iVar2.f2783d0;
                            if (iArr2 != null) {
                                aVar2.setReferencedIds(iArr2);
                            } else {
                                String str5 = iVar2.f2785e0;
                                if (str5 != null) {
                                    int[] iArrB2 = m.b(aVar2, str5);
                                    iVar2.f2783d0 = iArrB2;
                                    aVar2.setReferencedIds(iArrB2);
                                }
                            }
                            aVar2.setType(iVar2.f2778a0);
                            aVar2.setMargin(iVar2.f2779b0);
                            q.e eVarA = a();
                            aVar2.e();
                            hVar2.a(eVarA);
                            addView(aVar2, eVarA);
                        }
                        if (iVar2.f2777a) {
                            View oVar = new q.o(getContext());
                            oVar.setId(num.intValue());
                            q.e eVarA2 = a();
                            hVar2.a(eVarA2);
                            addView(oVar, eVarA2);
                        }
                    }
                } else {
                    z3 = z2;
                    z4 = zIsInEditMode;
                    i5 = childCount3;
                    sparseArray = sparseArray5;
                }
                eVar.f2598j0.clear();
                ArrayList arrayList = this.b;
                int size = arrayList.size();
                char c3 = 2;
                if (size > 0) {
                    int i38 = 0;
                    while (i38 < size) {
                        q.c cVar = (q.c) arrayList.get(i38);
                        HashMap map4 = cVar.f2725g;
                        if (cVar.isInEditMode()) {
                            cVar.setIds(cVar.f2724e);
                        }
                        a aVar4 = cVar.f2723d;
                        if (aVar4 == null) {
                            sparseArray2 = sparseArray;
                        } else {
                            aVar4.f2538k0 = 0;
                            Arrays.fill(aVar4.f2537j0, (Object) null);
                            int i39 = 0;
                            while (i39 < cVar.b) {
                                int i40 = cVar.f2721a[i39];
                                SparseArray sparseArray6 = sparseArray;
                                View view2 = (View) sparseArray6.get(i40);
                                if (view2 == null && (iD = cVar.d(this, (str = (String) map4.get(Integer.valueOf(i40))))) != 0) {
                                    cVar.f2721a[i39] = iD;
                                    map4.put(Integer.valueOf(iD), str);
                                    view2 = (View) sparseArray6.get(iD);
                                }
                                if (view2 != null) {
                                    a aVar5 = cVar.f2723d;
                                    d dVarB2 = b(view2);
                                    aVar5.getClass();
                                    if (dVarB2 != aVar5 && dVarB2 != null) {
                                        int i41 = aVar5.f2538k0 + 1;
                                        d[] dVarArr = aVar5.f2537j0;
                                        if (i41 > dVarArr.length) {
                                            aVar5.f2537j0 = (d[]) Arrays.copyOf(dVarArr, dVarArr.length * 2);
                                        }
                                        d[] dVarArr2 = aVar5.f2537j0;
                                        int i42 = aVar5.f2538k0;
                                        dVarArr2[i42] = dVarB2;
                                        aVar5.f2538k0 = i42 + 1;
                                    }
                                }
                                i39++;
                                sparseArray = sparseArray6;
                            }
                            sparseArray2 = sparseArray;
                            cVar.f2723d.getClass();
                        }
                        i38++;
                        sparseArray = sparseArray2;
                    }
                }
                SparseArray sparseArray7 = sparseArray;
                int i43 = i5;
                for (int i44 = 0; i44 < i43; i44++) {
                    getChildAt(i44);
                }
                SparseArray sparseArray8 = this.f261n;
                sparseArray8.clear();
                sparseArray8.put(0, eVar);
                sparseArray8.put(getId(), eVar);
                for (int i45 = 0; i45 < i43; i45++) {
                    View childAt3 = getChildAt(i45);
                    sparseArray8.put(childAt3.getId(), b(childAt3));
                }
                int i46 = 0;
                while (i46 < i43) {
                    View childAt4 = getChildAt(i46);
                    d dVarB3 = b(childAt4);
                    if (dVarB3 != null) {
                        q.e eVar3 = (q.e) childAt4.getLayoutParams();
                        eVar.f2598j0.add(dVarB3);
                        d dVar12 = dVarB3.M;
                        if (dVar12 != null) {
                            ((e) dVar12).f2598j0.remove(dVarB3);
                            dVarB3.w();
                        }
                        dVarB3.M = eVar;
                        eVar3.a();
                        dVarB3.Z = childAt4.getVisibility();
                        dVarB3.Y = childAt4;
                        if (childAt4 instanceof q.c) {
                            boolean z8 = eVar.f2602n0;
                            q.a aVar6 = (q.a) ((q.c) childAt4);
                            int i47 = aVar6.f2714h;
                            aVar6.f2715i = i47;
                            if (z8) {
                                if (i47 == 5) {
                                    aVar6.f2715i = 1;
                                } else if (i47 == 6) {
                                    aVar6.f2715i = 0;
                                }
                            } else if (i47 == 5) {
                                aVar6.f2715i = 0;
                            } else if (i47 == 6) {
                                aVar6.f2715i = 1;
                            }
                            if (dVarB3 instanceof a) {
                                ((a) dVarB3).f2539l0 = aVar6.f2715i;
                            }
                        }
                        if (eVar3.Y) {
                            o.f fVar = (o.f) dVarB3;
                            int i48 = eVar3.f2740h0;
                            int i49 = eVar3.f2742i0;
                            float f3 = eVar3.f2744j0;
                            if (f3 != -1.0f) {
                                if (f3 > -1.0f) {
                                    fVar.f2612j0 = f3;
                                    fVar.f2613k0 = -1;
                                    fVar.f2614l0 = -1;
                                }
                            } else if (i48 != -1) {
                                if (i48 > -1) {
                                    fVar.f2612j0 = -1.0f;
                                    fVar.f2613k0 = i48;
                                    fVar.f2614l0 = -1;
                                }
                            } else if (i49 != -1 && i49 > -1) {
                                fVar.f2612j0 = -1.0f;
                                fVar.f2613k0 = -1;
                                fVar.f2614l0 = i49;
                            }
                        } else {
                            int i50 = eVar3.f2728a0;
                            int i51 = eVar3.f2729b0;
                            int i52 = eVar3.f2731c0;
                            int i53 = eVar3.f2733d0;
                            int i54 = eVar3.f2735e0;
                            int i55 = eVar3.f2736f0;
                            float f4 = eVar3.f2738g0;
                            int i56 = eVar3.f2748m;
                            i43 = i43;
                            if (i56 != -1) {
                                d dVar13 = (d) sparseArray8.get(i56);
                                if (dVar13 != null) {
                                    float f5 = eVar3.f2750o;
                                    dVarB3.p(7, 7, eVar3.f2749n, 0, dVar13);
                                    dVarB3.f2595x = f5;
                                }
                                dVar6 = dVarB3;
                                i17 = 5;
                                i15 = 3;
                            } else {
                                if (i50 != -1) {
                                    d dVar14 = (d) sparseArray8.get(i50);
                                    if (dVar14 != null) {
                                        dVar = dVarB3;
                                        i6 = 2;
                                        dVar.p(2, 2, ((ViewGroup.MarginLayoutParams) eVar3).leftMargin, i54, dVar14);
                                    } else {
                                        dVar = dVarB3;
                                        i6 = 2;
                                    }
                                } else {
                                    dVar = dVarB3;
                                    i6 = 2;
                                    if (i51 != -1 && (dVar2 = (d) sparseArray8.get(i51)) != null) {
                                        dVar.p(2, 4, ((ViewGroup.MarginLayoutParams) eVar3).leftMargin, i54, dVar2);
                                        i7 = 2;
                                        i8 = 4;
                                    }
                                    if (i52 != -1) {
                                        dVar10 = (d) sparseArray8.get(i52);
                                        if (dVar10 != null) {
                                            dVar.p(i8, i7, ((ViewGroup.MarginLayoutParams) eVar3).rightMargin, i55, dVar10);
                                        }
                                    } else if (i53 != -1 && (dVar3 = (d) sparseArray8.get(i53)) != null) {
                                        dVar.p(i8, i8, ((ViewGroup.MarginLayoutParams) eVar3).rightMargin, i55, dVar3);
                                    }
                                    i9 = eVar3.f2739h;
                                    if (i9 != -1) {
                                        dVar9 = (d) sparseArray8.get(i9);
                                        if (dVar9 != null) {
                                            i19 = 3;
                                            dVar.p(3, 3, ((ViewGroup.MarginLayoutParams) eVar3).topMargin, eVar3.f2756u, dVar9);
                                        } else {
                                            i19 = 3;
                                        }
                                        i12 = i19;
                                        i13 = 5;
                                        i11 = -1;
                                    } else {
                                        i10 = eVar3.f2741i;
                                        i11 = -1;
                                        if (i10 != -1 || (dVar4 = (d) sparseArray8.get(i10)) == null) {
                                            i12 = 3;
                                            i13 = 5;
                                        } else {
                                            dVar.p(3, 5, ((ViewGroup.MarginLayoutParams) eVar3).topMargin, eVar3.f2756u, dVar4);
                                            i12 = 3;
                                            i13 = 5;
                                        }
                                    }
                                    i14 = eVar3.f2743j;
                                    if (i14 != i11) {
                                        dVar8 = (d) sparseArray8.get(i14);
                                        if (dVar8 != null) {
                                            dVar.p(i13, i12, ((ViewGroup.MarginLayoutParams) eVar3).bottomMargin, eVar3.f2758w, dVar8);
                                        }
                                        i15 = i12;
                                    } else {
                                        i15 = i12;
                                        i16 = eVar3.f2745k;
                                        if (i16 != i11 && (dVar5 = (d) sparseArray8.get(i16)) != null) {
                                            dVar.p(i13, i13, ((ViewGroup.MarginLayoutParams) eVar3).bottomMargin, eVar3.f2758w, dVar5);
                                        }
                                    }
                                    dVar6 = dVar;
                                    i17 = i13;
                                    i18 = eVar3.f2747l;
                                    if (i18 != -1) {
                                        view = (View) sparseArray7.get(i18);
                                        dVar7 = (d) sparseArray8.get(eVar3.f2747l);
                                        if (dVar7 != null && view != null && (view.getLayoutParams() instanceof q.e)) {
                                            q.e eVar4 = (q.e) view.getLayoutParams();
                                            eVar3.X = true;
                                            eVar4.X = true;
                                            dVar6.g(6).a(dVar7.g(6), 0, -1);
                                            dVar6.f2596y = true;
                                            eVar4.f2746k0.f2596y = true;
                                            dVar6.g(i15).g();
                                            dVar6.g(i17).g();
                                        }
                                    }
                                    if (f4 >= 0.0f) {
                                        dVar6.W = f4;
                                    }
                                    f = eVar3.A;
                                    if (f >= 0.0f) {
                                        dVar6.X = f;
                                    }
                                }
                                i7 = i6;
                                i8 = 4;
                                if (i52 != -1) {
                                    dVar10 = (d) sparseArray8.get(i52);
                                    if (dVar10 != null) {
                                        dVar.p(i8, i7, ((ViewGroup.MarginLayoutParams) eVar3).rightMargin, i55, dVar10);
                                    }
                                } else if (i53 != -1) {
                                    dVar.p(i8, i8, ((ViewGroup.MarginLayoutParams) eVar3).rightMargin, i55, dVar3);
                                }
                                i9 = eVar3.f2739h;
                                if (i9 != -1) {
                                    dVar9 = (d) sparseArray8.get(i9);
                                    if (dVar9 != null) {
                                        i19 = 3;
                                        dVar.p(3, 3, ((ViewGroup.MarginLayoutParams) eVar3).topMargin, eVar3.f2756u, dVar9);
                                    } else {
                                        i19 = 3;
                                    }
                                    i12 = i19;
                                    i13 = 5;
                                    i11 = -1;
                                } else {
                                    i10 = eVar3.f2741i;
                                    i11 = -1;
                                    if (i10 != -1) {
                                        i12 = 3;
                                        i13 = 5;
                                    } else {
                                        i12 = 3;
                                        i13 = 5;
                                    }
                                }
                                i14 = eVar3.f2743j;
                                if (i14 != i11) {
                                    dVar8 = (d) sparseArray8.get(i14);
                                    if (dVar8 != null) {
                                        dVar.p(i13, i12, ((ViewGroup.MarginLayoutParams) eVar3).bottomMargin, eVar3.f2758w, dVar8);
                                    }
                                    i15 = i12;
                                } else {
                                    i15 = i12;
                                    i16 = eVar3.f2745k;
                                    if (i16 != i11) {
                                        dVar.p(i13, i13, ((ViewGroup.MarginLayoutParams) eVar3).bottomMargin, eVar3.f2758w, dVar5);
                                    }
                                }
                                dVar6 = dVar;
                                i17 = i13;
                                i18 = eVar3.f2747l;
                                if (i18 != -1) {
                                    view = (View) sparseArray7.get(i18);
                                    dVar7 = (d) sparseArray8.get(eVar3.f2747l);
                                    if (dVar7 != null) {
                                        q.e eVar5 = (q.e) view.getLayoutParams();
                                        eVar3.X = true;
                                        eVar5.X = true;
                                        dVar6.g(6).a(dVar7.g(6), 0, -1);
                                        dVar6.f2596y = true;
                                        eVar5.f2746k0.f2596y = true;
                                        dVar6.g(i15).g();
                                        dVar6.g(i17).g();
                                    }
                                }
                                if (f4 >= 0.0f) {
                                    dVar6.W = f4;
                                }
                                f = eVar3.A;
                                if (f >= 0.0f) {
                                    dVar6.X = f;
                                }
                            }
                            if (z4 && ((i23 = eVar3.P) != -1 || eVar3.Q != -1)) {
                                int i57 = eVar3.Q;
                                dVar6.R = i23;
                                dVar6.S = i57;
                            }
                            if (eVar3.V) {
                                dVar6.B(1);
                                dVar6.D(((ViewGroup.MarginLayoutParams) eVar3).width);
                                if (((ViewGroup.MarginLayoutParams) eVar3).width == -2) {
                                    dVar6.B(2);
                                }
                            } else if (((ViewGroup.MarginLayoutParams) eVar3).width == -1) {
                                if (eVar3.S) {
                                    dVar6.B(3);
                                } else {
                                    dVar6.B(4);
                                }
                                dVar6.g(2).f2562g = ((ViewGroup.MarginLayoutParams) eVar3).leftMargin;
                                dVar6.g(4).f2562g = ((ViewGroup.MarginLayoutParams) eVar3).rightMargin;
                            } else {
                                dVar6.B(3);
                                dVar6.D(0);
                            }
                            if (eVar3.W) {
                                i20 = -1;
                                dVar6.C(1);
                                dVar6.A(((ViewGroup.MarginLayoutParams) eVar3).height);
                                if (((ViewGroup.MarginLayoutParams) eVar3).height == -2) {
                                    dVar6.C(2);
                                }
                            } else {
                                i20 = -1;
                                if (((ViewGroup.MarginLayoutParams) eVar3).height == -1) {
                                    if (eVar3.T) {
                                        dVar6.C(3);
                                    } else {
                                        dVar6.C(4);
                                    }
                                    dVar6.g(i15).f2562g = ((ViewGroup.MarginLayoutParams) eVar3).topMargin;
                                    dVar6.g(i17).f2562g = ((ViewGroup.MarginLayoutParams) eVar3).bottomMargin;
                                } else {
                                    dVar6.C(3);
                                    dVar6.A(0);
                                }
                            }
                            String str6 = eVar3.B;
                            if (str6 == null || str6.length() == 0) {
                                dVar6.P = 0.0f;
                            } else {
                                int length = str6.length();
                                int iIndexOf3 = str6.indexOf(44);
                                if (iIndexOf3 <= 0 || iIndexOf3 >= length - 1) {
                                    i21 = i20;
                                    i22 = 0;
                                } else {
                                    String strSubstring = str6.substring(0, iIndexOf3);
                                    i22 = iIndexOf3 + 1;
                                    i21 = strSubstring.equalsIgnoreCase("W") ? 0 : strSubstring.equalsIgnoreCase("H") ? 1 : i20;
                                }
                                int iIndexOf4 = str6.indexOf(58);
                                if (iIndexOf4 < 0 || iIndexOf4 >= length - 1) {
                                    String strSubstring2 = str6.substring(i22);
                                    if (strSubstring2.length() > 0) {
                                        fAbs = Float.parseFloat(strSubstring2);
                                    } else {
                                        fAbs = 0.0f;
                                    }
                                } else {
                                    String strSubstring3 = str6.substring(i22, iIndexOf4);
                                    String strSubstring4 = str6.substring(iIndexOf4 + 1);
                                    if (strSubstring3.length() <= 0 || strSubstring4.length() <= 0) {
                                        fAbs = 0.0f;
                                    } else {
                                        try {
                                            float f6 = Float.parseFloat(strSubstring3);
                                            float f7 = Float.parseFloat(strSubstring4);
                                            if (f6 <= 0.0f || f7 <= 0.0f) {
                                                fAbs = 0.0f;
                                            } else {
                                                fAbs = i21 == 1 ? Math.abs(f7 / f6) : Math.abs(f6 / f7);
                                            }
                                        } catch (NumberFormatException unused3) {
                                        }
                                    }
                                }
                                if (fAbs > 0.0f) {
                                    dVar6.P = fAbs;
                                    dVar6.Q = i21;
                                }
                            }
                            float f8 = eVar3.D;
                            float[] fArr = dVar6.f2571d0;
                            fArr[0] = f8;
                            fArr[1] = eVar3.E;
                            dVar6.f2567b0 = eVar3.F;
                            dVar6.f2569c0 = eVar3.G;
                            int i58 = eVar3.H;
                            int i59 = eVar3.J;
                            int i60 = eVar3.L;
                            float f9 = eVar3.N;
                            dVar6.f2583l = i58;
                            dVar6.f2586o = i59;
                            if (i60 == Integer.MAX_VALUE) {
                                i60 = 0;
                            }
                            dVar6.f2587p = i60;
                            dVar6.f2588q = f9;
                            if (f9 > 0.0f && f9 < 1.0f && i58 == 0) {
                                dVar6.f2583l = 2;
                            }
                            int i61 = eVar3.I;
                            int i62 = eVar3.K;
                            int i63 = eVar3.M;
                            float f10 = eVar3.O;
                            dVar6.f2584m = i61;
                            dVar6.f2589r = i62;
                            if (i63 == Integer.MAX_VALUE) {
                                i63 = 0;
                            }
                            dVar6.f2590s = i63;
                            dVar6.f2591t = f10;
                            if (f10 <= 0.0f || f10 >= 1.0f || i61 != 0) {
                                c3 = 2;
                            } else {
                                c3 = 2;
                                dVar6.f2584m = 2;
                            }
                        }
                    }
                    i46++;
                    c3 = c3;
                    i43 = i43;
                }
            } else {
                z3 = z2;
            }
            if (z3) {
                eVar.f2599k0.A(eVar);
            }
        }
        e(eVar, this.f256i, i3, i4);
        d(i3, i4, eVar.l(), eVar.i(), eVar.f2610w0, eVar.x0);
    }

    @Override // android.view.ViewGroup
    public final void onViewAdded(View view) {
        super.onViewAdded(view);
        d dVarB = b(view);
        if ((view instanceof q.o) && !(dVarB instanceof o.f)) {
            q.e eVar = (q.e) view.getLayoutParams();
            o.f fVar = new o.f();
            eVar.f2746k0 = fVar;
            eVar.Y = true;
            fVar.H(eVar.R);
        }
        if (view instanceof q.c) {
            q.c cVar = (q.c) view;
            cVar.e();
            ((q.e) view.getLayoutParams()).Z = true;
            ArrayList arrayList = this.b;
            if (!arrayList.contains(cVar)) {
                arrayList.add(cVar);
            }
        }
        this.f250a.put(view.getId(), view);
        this.f255h = true;
    }

    @Override // android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.f250a.remove(view.getId());
        d dVarB = b(view);
        this.f251c.f2598j0.remove(dVarB);
        dVarB.w();
        this.b.remove(view);
        this.f255h = true;
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        this.f255h = true;
        super.requestLayout();
    }

    public void setConstraintSet(m mVar) {
        this.f257j = mVar;
    }

    @Override // android.view.View
    public void setId(int i3) {
        int id = getId();
        SparseArray sparseArray = this.f250a;
        sparseArray.remove(id);
        super.setId(i3);
        sparseArray.put(getId(), this);
    }

    public void setMaxHeight(int i3) {
        if (i3 == this.f254g) {
            return;
        }
        this.f254g = i3;
        requestLayout();
    }

    public void setMaxWidth(int i3) {
        if (i3 == this.f) {
            return;
        }
        this.f = i3;
        requestLayout();
    }

    public void setMinHeight(int i3) {
        if (i3 == this.f253e) {
            return;
        }
        this.f253e = i3;
        requestLayout();
    }

    public void setMinWidth(int i3) {
        if (i3 == this.f252d) {
            return;
        }
        this.f252d = i3;
        requestLayout();
    }

    public void setOnConstraintsChanged(n nVar) {
        c cVar = this.f258k;
        if (cVar != null) {
            cVar.getClass();
        }
    }

    public void setOptimizationLevel(int i3) {
        this.f256i = i3;
        e eVar = this.f251c;
        eVar.f2609v0 = i3;
        n.c.f2451p = eVar.M(512);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        q.e eVar = new q.e(layoutParams);
        eVar.f2727a = -1;
        eVar.b = -1;
        eVar.f2730c = -1.0f;
        eVar.f2732d = -1;
        eVar.f2734e = -1;
        eVar.f = -1;
        eVar.f2737g = -1;
        eVar.f2739h = -1;
        eVar.f2741i = -1;
        eVar.f2743j = -1;
        eVar.f2745k = -1;
        eVar.f2747l = -1;
        eVar.f2748m = -1;
        eVar.f2749n = 0;
        eVar.f2750o = 0.0f;
        eVar.f2751p = -1;
        eVar.f2752q = -1;
        eVar.f2753r = -1;
        eVar.f2754s = -1;
        eVar.f2755t = -1;
        eVar.f2756u = -1;
        eVar.f2757v = -1;
        eVar.f2758w = -1;
        eVar.f2759x = -1;
        eVar.f2760y = -1;
        eVar.f2761z = 0.5f;
        eVar.A = 0.5f;
        eVar.B = null;
        eVar.C = 1;
        eVar.D = -1.0f;
        eVar.E = -1.0f;
        eVar.F = 0;
        eVar.G = 0;
        eVar.H = 0;
        eVar.I = 0;
        eVar.J = 0;
        eVar.K = 0;
        eVar.L = 0;
        eVar.M = 0;
        eVar.N = 1.0f;
        eVar.O = 1.0f;
        eVar.P = -1;
        eVar.Q = -1;
        eVar.R = -1;
        eVar.S = false;
        eVar.T = false;
        eVar.U = null;
        eVar.V = true;
        eVar.W = true;
        eVar.X = false;
        eVar.Y = false;
        eVar.Z = false;
        eVar.f2728a0 = -1;
        eVar.f2729b0 = -1;
        eVar.f2731c0 = -1;
        eVar.f2733d0 = -1;
        eVar.f2735e0 = -1;
        eVar.f2736f0 = -1;
        eVar.f2738g0 = 0.5f;
        eVar.f2746k0 = new d();
        return eVar;
    }
}
