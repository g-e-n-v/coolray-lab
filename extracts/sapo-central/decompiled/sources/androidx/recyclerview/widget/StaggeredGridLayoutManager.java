package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.activity.d;
import androidx.activity.result.c;
import androidx.emoji2.text.f;
import c0.a0;
import c0.b0;
import c0.p0;
import d0.e;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.WeakHashMap;
import k1.a;
import q0.b1;
import q0.c1;
import q0.d1;
import q0.e1;
import q0.f1;
import q0.h0;
import q0.i0;
import q0.j0;
import q0.n;
import q0.o0;
import q0.r;
import q0.s0;
import q0.t0;
import q0.w;

/* JADX INFO: loaded from: classes.dex */
public class StaggeredGridLayoutManager extends i0 implements s0 {
    public final c B;
    public final int C;
    public boolean D;
    public boolean E;
    public e1 F;
    public final Rect G;
    public final b1 H;
    public final boolean I;
    public int[] J;
    public final d K;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f657p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final f1[] f658q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final f f659r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final f f660s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f661t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f662u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final r f663v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f664w;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final BitSet f666y;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f665x = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f667z = -1;
    public int A = Integer.MIN_VALUE;

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i3, int i4) {
        this.f657p = -1;
        this.f664w = false;
        c cVar = new c();
        this.B = cVar;
        this.C = 2;
        this.G = new Rect();
        this.H = new b1(this);
        this.I = true;
        this.K = new d(11, this);
        h0 h0VarE = i0.E(context, attributeSet, i3, i4);
        int i5 = h0VarE.f2897a;
        if (i5 != 0 && i5 != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        c(null);
        if (i5 != this.f661t) {
            this.f661t = i5;
            f fVar = this.f659r;
            this.f659r = this.f660s;
            this.f660s = fVar;
            g0();
        }
        int i6 = h0VarE.b;
        c(null);
        if (i6 != this.f657p) {
            int[] iArr = (int[]) cVar.f100a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            cVar.b = null;
            g0();
            this.f657p = i6;
            this.f666y = new BitSet(this.f657p);
            this.f658q = new f1[this.f657p];
            for (int i7 = 0; i7 < this.f657p; i7++) {
                this.f658q[i7] = new f1(this, i7);
            }
            g0();
        }
        boolean z2 = h0VarE.f2898c;
        c(null);
        e1 e1Var = this.F;
        if (e1Var != null && e1Var.f2873h != z2) {
            e1Var.f2873h = z2;
        }
        this.f664w = z2;
        g0();
        r rVar = new r();
        rVar.f2985a = true;
        rVar.f = 0;
        rVar.f2989g = 0;
        this.f663v = rVar;
        this.f659r = f.a(this, this.f661t);
        this.f660s = f.a(this, 1 - this.f661t);
    }

    public static int V0(int i3, int i4, int i5) {
        int mode;
        return (!(i4 == 0 && i5 == 0) && ((mode = View.MeasureSpec.getMode(i3)) == Integer.MIN_VALUE || mode == 1073741824)) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i3) - i4) - i5), mode) : i3;
    }

    public final void A0(o0 o0Var, t0 t0Var, boolean z2) {
        int iG;
        int iE0 = E0(Integer.MIN_VALUE);
        if (iE0 != Integer.MIN_VALUE && (iG = this.f659r.g() - iE0) > 0) {
            int i3 = iG - (-R0(-iG, o0Var, t0Var));
            if (!z2 || i3 <= 0) {
                return;
            }
            this.f659r.o(i3);
        }
    }

    public final void B0(o0 o0Var, t0 t0Var, boolean z2) {
        int iK;
        int iF0 = F0(Integer.MAX_VALUE);
        if (iF0 != Integer.MAX_VALUE && (iK = iF0 - this.f659r.k()) > 0) {
            int iR0 = iK - R0(iK, o0Var, t0Var);
            if (!z2 || iR0 <= 0) {
                return;
            }
            this.f659r.o(-iR0);
        }
    }

    public final int C0() {
        if (v() == 0) {
            return 0;
        }
        return i0.D(u(0));
    }

    public final int D0() {
        int iV = v();
        if (iV == 0) {
            return 0;
        }
        return i0.D(u(iV - 1));
    }

    public final int E0(int i3) {
        int iF = this.f658q[0].f(i3);
        for (int i4 = 1; i4 < this.f657p; i4++) {
            int iF2 = this.f658q[i4].f(i3);
            if (iF2 > iF) {
                iF = iF2;
            }
        }
        return iF;
    }

    @Override // q0.i0
    public final int F(o0 o0Var, t0 t0Var) {
        return this.f661t == 0 ? this.f657p : super.F(o0Var, t0Var);
    }

    public final int F0(int i3) {
        int iH = this.f658q[0].h(i3);
        for (int i4 = 1; i4 < this.f657p; i4++) {
            int iH2 = this.f658q[i4].h(i3);
            if (iH2 < iH) {
                iH = iH2;
            }
        }
        return iH;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0034  */
    /* JADX WARN: Code duplicated, block: B:22:0x0036 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x0039  */
    /* JADX WARN: Code duplicated, block: B:26:0x0041  */
    /* JADX WARN: Code duplicated, block: B:29:0x0050 A[LOOP:0: B:25:0x003f->B:29:0x0050, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:30:0x0053 A[EDGE_INSN: B:30:0x0053->B:31:0x0054 BREAK  A[LOOP:0: B:25:0x003f->B:29:0x0050]] */
    /* JADX WARN: Code duplicated, block: B:32:0x0056  */
    /* JADX WARN: Code duplicated, block: B:35:0x0068  */
    /* JADX WARN: Code duplicated, block: B:38:0x0077 A[LOOP:1: B:34:0x0066->B:38:0x0077, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:41:0x007d  */
    /* JADX WARN: Code duplicated, block: B:43:0x0092  */
    /* JADX WARN: Code duplicated, block: B:44:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:47:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:49:0x00af A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:51:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:52:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:53:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:56:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:58:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:59:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:61:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:63:0x0053 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x0054 A[EDGE_INSN: B:64:0x0054->B:31:0x0054 BREAK  A[LOOP:0: B:25:0x003f->B:29:0x0050], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x007a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x007b A[EDGE_INSN: B:66:0x007b->B:40:0x007b BREAK  A[LOOP:1: B:34:0x0066->B:38:0x0077], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:? A[RETURN, SYNTHETIC] */
    public final void G0(int i3, int i4, int i5) {
        int i6;
        int i7;
        c cVar;
        int[] iArr;
        int iD0;
        ArrayList arrayList;
        d1 d1Var;
        int size;
        int i8;
        int i9;
        int size2;
        int iD1 = this.f665x ? D0() : C0();
        if (i5 == 8) {
            if (i3 < i4) {
                i6 = i4 + 1;
            } else {
                i6 = i3 + 1;
                i7 = i4;
            }
            cVar = this.B;
            iArr = (int[]) cVar.f100a;
            if (iArr != null && i7 < iArr.length) {
                arrayList = (ArrayList) cVar.b;
                if (arrayList != null) {
                    if (arrayList == null) {
                        size2 = arrayList.size() - 1;
                        while (true) {
                            if (size2 >= 0) {
                                d1Var = null;
                                break;
                            }
                            d1Var = (d1) ((ArrayList) cVar.b).get(size2);
                            if (d1Var.f2857a == i7) {
                                break;
                            } else {
                                size2--;
                            }
                        }
                    } else {
                        d1Var = null;
                        break;
                    }
                    if (d1Var != null) {
                        ((ArrayList) cVar.b).remove(d1Var);
                    }
                    size = ((ArrayList) cVar.b).size();
                    i8 = 0;
                    while (true) {
                        if (i8 < size) {
                            i8 = -1;
                            break;
                        } else if (((d1) ((ArrayList) cVar.b).get(i8)).f2857a >= i7) {
                            break;
                        } else {
                            i8++;
                        }
                    }
                    if (i8 != -1) {
                        d1 d1Var2 = (d1) ((ArrayList) cVar.b).get(i8);
                        ((ArrayList) cVar.b).remove(i8);
                        i9 = d1Var2.f2857a;
                    } else {
                        i9 = -1;
                    }
                } else {
                    i9 = -1;
                }
                if (i9 == -1) {
                    int[] iArr2 = (int[]) cVar.f100a;
                    Arrays.fill(iArr2, i7, iArr2.length, -1);
                    int length = ((int[]) cVar.f100a).length;
                } else {
                    Arrays.fill((int[]) cVar.f100a, i7, i9 + 1, -1);
                }
            }
            if (i5 != 1) {
                cVar.w(i3, i4);
            } else if (i5 != 2) {
                cVar.x(i3, i4);
            } else if (i5 == 8) {
                cVar.x(i3, 1);
                cVar.w(i4, 1);
            }
            if (i6 <= iD1) {
                return;
            }
            if (this.f665x) {
                iD0 = C0();
            } else {
                iD0 = D0();
            }
            if (i7 <= iD0) {
                g0();
            }
        }
        i6 = i3 + i4;
        i7 = i3;
        cVar = this.B;
        iArr = (int[]) cVar.f100a;
        if (iArr != null) {
            arrayList = (ArrayList) cVar.b;
            if (arrayList != null) {
                if (arrayList == null) {
                    size2 = arrayList.size() - 1;
                    while (true) {
                        if (size2 >= 0) {
                            d1Var = null;
                            break;
                        }
                        d1Var = (d1) ((ArrayList) cVar.b).get(size2);
                        if (d1Var.f2857a == i7) {
                            break;
                            break;
                        }
                        size2--;
                    }
                } else {
                    d1Var = null;
                    break;
                }
                if (d1Var != null) {
                    ((ArrayList) cVar.b).remove(d1Var);
                }
                size = ((ArrayList) cVar.b).size();
                i8 = 0;
                while (true) {
                    if (i8 < size) {
                        i8 = -1;
                        break;
                    } else {
                        if (((d1) ((ArrayList) cVar.b).get(i8)).f2857a >= i7) {
                            break;
                            break;
                        }
                        i8++;
                    }
                }
                if (i8 != -1) {
                    d1 d1Var3 = (d1) ((ArrayList) cVar.b).get(i8);
                    ((ArrayList) cVar.b).remove(i8);
                    i9 = d1Var3.f2857a;
                } else {
                    i9 = -1;
                }
            } else {
                i9 = -1;
            }
            if (i9 == -1) {
                int[] iArr3 = (int[]) cVar.f100a;
                Arrays.fill(iArr3, i7, iArr3.length, -1);
                int length2 = ((int[]) cVar.f100a).length;
            } else {
                Arrays.fill((int[]) cVar.f100a, i7, i9 + 1, -1);
            }
        }
        if (i5 != 1) {
            cVar.w(i3, i4);
        } else if (i5 != 2) {
            cVar.x(i3, i4);
        } else if (i5 == 8) {
            cVar.x(i3, 1);
            cVar.w(i4, 1);
        }
        if (i6 <= iD1) {
            return;
        }
        if (this.f665x) {
            iD0 = C0();
        } else {
            iD0 = D0();
        }
        if (i7 <= iD0) {
            g0();
        }
    }

    @Override // q0.i0
    public final boolean H() {
        return this.C != 0;
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:52:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:54:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:55:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:68:0x00fd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:0x002c A[SYNTHETIC] */
    public final View H0() {
        boolean z2;
        boolean z3;
        int iV = v();
        int i3 = iV - 1;
        BitSet bitSet = new BitSet(this.f657p);
        bitSet.set(0, this.f657p, true);
        byte b = (this.f661t == 1 && I0()) ? (byte) 1 : (byte) -1;
        if (this.f665x) {
            iV = -1;
        } else {
            i3 = 0;
        }
        int i4 = i3 < iV ? 1 : -1;
        while (i3 != iV) {
            View viewU = u(i3);
            c1 c1Var = (c1) viewU.getLayoutParams();
            if (bitSet.get(c1Var.f2854e.f2883e)) {
                f1 f1Var = c1Var.f2854e;
                if (this.f665x) {
                    int i5 = f1Var.f2881c;
                    if (i5 == Integer.MIN_VALUE) {
                        f1Var.a();
                        i5 = f1Var.f2881c;
                    }
                    if (i5 < this.f659r.g()) {
                        ArrayList arrayList = f1Var.f2880a;
                        ((c1) ((View) arrayList.get(arrayList.size() - 1)).getLayoutParams()).getClass();
                        return viewU;
                    }
                } else {
                    int i6 = f1Var.b;
                    ArrayList arrayList2 = f1Var.f2880a;
                    if (i6 == Integer.MIN_VALUE) {
                        View view = (View) arrayList2.get(0);
                        c1 c1Var2 = (c1) view.getLayoutParams();
                        f1Var.b = f1Var.f.f659r.e(view);
                        c1Var2.getClass();
                        i6 = f1Var.b;
                    }
                    if (i6 > this.f659r.k()) {
                        ((c1) ((View) arrayList2.get(0)).getLayoutParams()).getClass();
                        return viewU;
                    }
                }
                bitSet.clear(c1Var.f2854e.f2883e);
            }
            i3 += i4;
            if (i3 != iV) {
                View viewU2 = u(i3);
                if (this.f665x) {
                    int iB = this.f659r.b(viewU);
                    int iB2 = this.f659r.b(viewU2);
                    if (iB >= iB2) {
                        if (iB == iB2) {
                            if (c1Var.f2854e.f2883e - ((c1) viewU2.getLayoutParams()).f2854e.f2883e < 0) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (b < 0) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (z2 != z3) {
                            }
                        } else {
                            continue;
                        }
                    }
                    return viewU;
                }
                int iE = this.f659r.e(viewU);
                int iE2 = this.f659r.e(viewU2);
                if (iE <= iE2) {
                    if (iE == iE2) {
                        if (c1Var.f2854e.f2883e - ((c1) viewU2.getLayoutParams()).f2854e.f2883e < 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (b < 0) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (z2 != z3) {
                        }
                    } else {
                        continue;
                    }
                }
                return viewU;
            }
        }
        return null;
    }

    public final boolean I0() {
        RecyclerView recyclerView = this.b;
        WeakHashMap weakHashMap = p0.f727a;
        return b0.d(recyclerView) == 1;
    }

    public final void J0(View view, int i3, int i4) {
        RecyclerView recyclerView = this.b;
        Rect rect = this.G;
        if (recyclerView == null) {
            rect.set(0, 0, 0, 0);
        } else {
            rect.set(recyclerView.J(view));
        }
        c1 c1Var = (c1) view.getLayoutParams();
        int iV0 = V0(i3, ((ViewGroup.MarginLayoutParams) c1Var).leftMargin + rect.left, ((ViewGroup.MarginLayoutParams) c1Var).rightMargin + rect.right);
        int iV1 = V0(i4, ((ViewGroup.MarginLayoutParams) c1Var).topMargin + rect.top, ((ViewGroup.MarginLayoutParams) c1Var).bottomMargin + rect.bottom);
        if (p0(view, iV0, iV1, c1Var)) {
            view.measure(iV0, iV1);
        }
    }

    @Override // q0.i0
    public final void K(int i3) {
        super.K(i3);
        for (int i4 = 0; i4 < this.f657p; i4++) {
            f1 f1Var = this.f658q[i4];
            int i5 = f1Var.b;
            if (i5 != Integer.MIN_VALUE) {
                f1Var.b = i5 + i3;
            }
            int i6 = f1Var.f2881c;
            if (i6 != Integer.MIN_VALUE) {
                f1Var.f2881c = i6 + i3;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:108:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:109:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:123:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:125:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:131:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:133:0x0209  */
    /* JADX WARN: Code duplicated, block: B:257:0x041f  */
    /* JADX WARN: Code duplicated, block: B:268:0x01fc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:272:0x01fc A[SYNTHETIC] */
    public final void K0(o0 o0Var, t0 t0Var, boolean z2) {
        boolean z3;
        e1 e1Var;
        int iV;
        int i3;
        int iD;
        int iD2;
        int iV2;
        int i4;
        boolean z4;
        e1 e1Var2 = this.F;
        b1 b1Var = this.H;
        if (!(e1Var2 == null && this.f667z == -1) && t0Var.b() == 0) {
            b0(o0Var);
            b1Var.a();
            return;
        }
        boolean z5 = b1Var.f2850e;
        StaggeredGridLayoutManager staggeredGridLayoutManager = b1Var.f2851g;
        boolean z6 = (z5 && this.f667z == -1 && this.F == null) ? false : true;
        c cVar = this.B;
        if (z6) {
            b1Var.a();
            e1 e1Var3 = this.F;
            if (e1Var3 != null) {
                int i5 = e1Var3.f2869c;
                if (i5 > 0) {
                    if (i5 == this.f657p) {
                        for (int i6 = 0; i6 < this.f657p; i6++) {
                            this.f658q[i6].b();
                            e1 e1Var4 = this.F;
                            int iG = e1Var4.f2870d[i6];
                            if (iG != Integer.MIN_VALUE) {
                                iG += e1Var4.f2874i ? this.f659r.g() : this.f659r.k();
                            }
                            f1 f1Var = this.f658q[i6];
                            f1Var.b = iG;
                            f1Var.f2881c = iG;
                        }
                    } else {
                        e1Var3.f2870d = null;
                        e1Var3.f2869c = 0;
                        e1Var3.f2871e = 0;
                        e1Var3.f = null;
                        e1Var3.f2872g = null;
                        e1Var3.f2868a = e1Var3.b;
                    }
                }
                e1 e1Var5 = this.F;
                this.E = e1Var5.f2875j;
                boolean z7 = e1Var5.f2873h;
                c(null);
                e1 e1Var6 = this.F;
                if (e1Var6 != null && e1Var6.f2873h != z7) {
                    e1Var6.f2873h = z7;
                }
                this.f664w = z7;
                g0();
                Q0();
                e1 e1Var7 = this.F;
                int i7 = e1Var7.f2868a;
                if (i7 != -1) {
                    this.f667z = i7;
                    b1Var.f2848c = e1Var7.f2874i;
                } else {
                    b1Var.f2848c = this.f665x;
                }
                if (e1Var7.f2871e > 1) {
                    cVar.f100a = e1Var7.f;
                    cVar.b = e1Var7.f2872g;
                }
            } else {
                Q0();
                b1Var.f2848c = this.f665x;
            }
            if (t0Var.f3008g || (i4 = this.f667z) == -1) {
                if (this.D) {
                    int iB = t0Var.b();
                    iV2 = v() - 1;
                    while (true) {
                        if (iV2 < 0) {
                            iD2 = 0;
                            break;
                        }
                        iD2 = i0.D(u(iV2));
                        if (iD2 < 0 && iD2 < iB) {
                            break;
                        } else {
                            iV2--;
                        }
                    }
                } else {
                    int iB2 = t0Var.b();
                    iV = v();
                    i3 = 0;
                    while (true) {
                        if (i3 >= iV) {
                            iD2 = 0;
                            break;
                        }
                        iD = i0.D(u(i3));
                        if (iD < 0 && iD < iB2) {
                            iD2 = iD;
                            break;
                        }
                        i3++;
                    }
                }
                b1Var.f2847a = iD2;
                b1Var.b = Integer.MIN_VALUE;
            } else if (i4 < 0 || i4 >= t0Var.b()) {
                this.f667z = -1;
                this.A = Integer.MIN_VALUE;
                if (this.D) {
                    int iB3 = t0Var.b();
                    iV2 = v() - 1;
                    while (true) {
                        if (iV2 < 0) {
                            iD2 = 0;
                            break;
                        } else {
                            iD2 = i0.D(u(iV2));
                            if (iD2 < 0) {
                            }
                            iV2--;
                        }
                    }
                } else {
                    int iB4 = t0Var.b();
                    iV = v();
                    i3 = 0;
                    while (true) {
                        if (i3 >= iV) {
                            iD2 = 0;
                            break;
                        } else {
                            iD = i0.D(u(i3));
                            if (iD < 0) {
                            }
                            i3++;
                        }
                    }
                }
                b1Var.f2847a = iD2;
                b1Var.b = Integer.MIN_VALUE;
            } else {
                e1 e1Var8 = this.F;
                if (e1Var8 == null || e1Var8.f2868a == -1 || e1Var8.f2869c < 1) {
                    View viewQ = q(this.f667z);
                    if (viewQ != null) {
                        b1Var.f2847a = this.f665x ? D0() : C0();
                        if (this.A != Integer.MIN_VALUE) {
                            if (b1Var.f2848c) {
                                b1Var.b = (this.f659r.g() - this.A) - this.f659r.b(viewQ);
                            } else {
                                b1Var.b = (this.f659r.k() + this.A) - this.f659r.e(viewQ);
                            }
                        } else if (this.f659r.c(viewQ) > this.f659r.l()) {
                            b1Var.b = b1Var.f2848c ? this.f659r.g() : this.f659r.k();
                        } else {
                            int iE = this.f659r.e(viewQ) - this.f659r.k();
                            if (iE < 0) {
                                b1Var.b = -iE;
                            } else {
                                int iG2 = this.f659r.g() - this.f659r.b(viewQ);
                                if (iG2 < 0) {
                                    b1Var.b = iG2;
                                } else {
                                    b1Var.b = Integer.MIN_VALUE;
                                }
                            }
                        }
                    } else {
                        int i8 = this.f667z;
                        b1Var.f2847a = i8;
                        int i9 = this.A;
                        if (i9 == Integer.MIN_VALUE) {
                            if (v() != 0) {
                                if ((i8 < C0()) != this.f665x) {
                                    z4 = false;
                                } else {
                                    z4 = true;
                                }
                            } else if (this.f665x) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            b1Var.f2848c = z4;
                            b1Var.b = z4 ? staggeredGridLayoutManager.f659r.g() : staggeredGridLayoutManager.f659r.k();
                        } else if (b1Var.f2848c) {
                            b1Var.b = staggeredGridLayoutManager.f659r.g() - i9;
                        } else {
                            b1Var.b = staggeredGridLayoutManager.f659r.k() + i9;
                        }
                        b1Var.f2849d = true;
                    }
                } else {
                    b1Var.b = Integer.MIN_VALUE;
                    b1Var.f2847a = this.f667z;
                }
            }
            b1Var.f2850e = true;
        }
        if (this.F == null && this.f667z == -1 && (b1Var.f2848c != this.D || I0() != this.E)) {
            int[] iArr = (int[]) cVar.f100a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            cVar.b = null;
            b1Var.f2849d = true;
        }
        if (v() > 0 && ((e1Var = this.F) == null || e1Var.f2869c < 1)) {
            if (b1Var.f2849d) {
                for (int i10 = 0; i10 < this.f657p; i10++) {
                    this.f658q[i10].b();
                    int i11 = b1Var.b;
                    if (i11 != Integer.MIN_VALUE) {
                        f1 f1Var2 = this.f658q[i10];
                        f1Var2.b = i11;
                        f1Var2.f2881c = i11;
                    }
                }
            } else if (z6 || b1Var.f == null) {
                for (int i12 = 0; i12 < this.f657p; i12++) {
                    f1 f1Var3 = this.f658q[i12];
                    boolean z8 = this.f665x;
                    int i13 = b1Var.b;
                    StaggeredGridLayoutManager staggeredGridLayoutManager2 = f1Var3.f;
                    int iF = z8 ? f1Var3.f(Integer.MIN_VALUE) : f1Var3.h(Integer.MIN_VALUE);
                    f1Var3.b();
                    if (iF != Integer.MIN_VALUE && ((!z8 || iF >= staggeredGridLayoutManager2.f659r.g()) && (z8 || iF <= staggeredGridLayoutManager2.f659r.k()))) {
                        if (i13 != Integer.MIN_VALUE) {
                            iF += i13;
                        }
                        f1Var3.f2881c = iF;
                        f1Var3.b = iF;
                    }
                }
                f1[] f1VarArr = this.f658q;
                int length = f1VarArr.length;
                int[] iArr2 = b1Var.f;
                if (iArr2 == null || iArr2.length < length) {
                    b1Var.f = new int[staggeredGridLayoutManager.f658q.length];
                }
                for (int i14 = 0; i14 < length; i14++) {
                    b1Var.f[i14] = f1VarArr[i14].h(Integer.MIN_VALUE);
                }
            } else {
                for (int i15 = 0; i15 < this.f657p; i15++) {
                    f1 f1Var4 = this.f658q[i15];
                    f1Var4.b();
                    int i16 = b1Var.f[i15];
                    f1Var4.b = i16;
                    f1Var4.f2881c = i16;
                }
            }
        }
        p(o0Var);
        r rVar = this.f663v;
        rVar.f2985a = false;
        int iL = this.f660s.l();
        this.f662u = iL / this.f657p;
        View.MeasureSpec.makeMeasureSpec(iL, this.f660s.i());
        T0(b1Var.f2847a, t0Var);
        if (b1Var.f2848c) {
            S0(-1);
            x0(o0Var, rVar, t0Var);
            S0(1);
            rVar.f2986c = b1Var.f2847a + rVar.f2987d;
            x0(o0Var, rVar, t0Var);
        } else {
            S0(1);
            x0(o0Var, rVar, t0Var);
            S0(-1);
            rVar.f2986c = b1Var.f2847a + rVar.f2987d;
            x0(o0Var, rVar, t0Var);
        }
        if (this.f660s.i() != 1073741824) {
            int iV3 = v();
            float fMax = 0.0f;
            for (int i17 = 0; i17 < iV3; i17++) {
                View viewU = u(i17);
                float fC = this.f660s.c(viewU);
                if (fC >= fMax) {
                    ((c1) viewU.getLayoutParams()).getClass();
                    fMax = Math.max(fMax, fC);
                }
            }
            int i18 = this.f662u;
            int iRound = Math.round(fMax * this.f657p);
            if (this.f660s.i() == Integer.MIN_VALUE) {
                iRound = Math.min(iRound, this.f660s.l());
            }
            this.f662u = iRound / this.f657p;
            View.MeasureSpec.makeMeasureSpec(iRound, this.f660s.i());
            if (this.f662u != i18) {
                for (int i19 = 0; i19 < iV3; i19++) {
                    View viewU2 = u(i19);
                    c1 c1Var = (c1) viewU2.getLayoutParams();
                    c1Var.getClass();
                    if (I0() && this.f661t == 1) {
                        int i20 = -((this.f657p - 1) - c1Var.f2854e.f2883e);
                        viewU2.offsetLeftAndRight((this.f662u * i20) - (i20 * i18));
                    } else {
                        int i21 = c1Var.f2854e.f2883e;
                        int i22 = this.f662u * i21;
                        int i23 = i21 * i18;
                        if (this.f661t == 1) {
                            viewU2.offsetLeftAndRight(i22 - i23);
                        } else {
                            viewU2.offsetTopAndBottom(i22 - i23);
                        }
                    }
                }
            }
        }
        if (v() > 0) {
            if (this.f665x) {
                A0(o0Var, t0Var, true);
                B0(o0Var, t0Var, false);
            } else {
                B0(o0Var, t0Var, true);
                A0(o0Var, t0Var, false);
            }
        }
        if (z2 && !t0Var.f3008g && this.C != 0 && v() > 0 && H0() != null) {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                recyclerView.removeCallbacks(this.K);
            }
            z3 = v0();
        }
        if (t0Var.f3008g) {
            b1Var.a();
        }
        this.D = b1Var.f2848c;
        this.E = I0();
        if (z3) {
            b1Var.a();
            K0(o0Var, t0Var, false);
        }
    }

    @Override // q0.i0
    public final void L(int i3) {
        super.L(i3);
        for (int i4 = 0; i4 < this.f657p; i4++) {
            f1 f1Var = this.f658q[i4];
            int i5 = f1Var.b;
            if (i5 != Integer.MIN_VALUE) {
                f1Var.b = i5 + i3;
            }
            int i6 = f1Var.f2881c;
            if (i6 != Integer.MIN_VALUE) {
                f1Var.f2881c = i6 + i3;
            }
        }
    }

    public final boolean L0(int i3) {
        if (this.f661t == 0) {
            return (i3 == -1) != this.f665x;
        }
        return ((i3 == -1) == this.f665x) == I0();
    }

    @Override // q0.i0
    public final void M(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.b;
        if (recyclerView2 != null) {
            recyclerView2.removeCallbacks(this.K);
        }
        for (int i3 = 0; i3 < this.f657p; i3++) {
            this.f658q[i3].b();
        }
        recyclerView.requestLayout();
    }

    public final void M0(int i3, t0 t0Var) {
        int iC0;
        int i4;
        if (i3 > 0) {
            iC0 = D0();
            i4 = 1;
        } else {
            iC0 = C0();
            i4 = -1;
        }
        r rVar = this.f663v;
        rVar.f2985a = true;
        T0(iC0, t0Var);
        S0(i4);
        rVar.f2986c = iC0 + rVar.f2987d;
        rVar.b = Math.abs(i3);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0048  */
    /* JADX WARN: Code duplicated, block: B:37:0x0053  */
    @Override // q0.i0
    public final View N(View view, int i3, o0 o0Var, t0 t0Var) {
        View viewA;
        int i4;
        if (v() != 0) {
            RecyclerView recyclerView = this.b;
            if (recyclerView == null || (viewA = recyclerView.A(view)) == null || ((ArrayList) this.f2907a.f414d).contains(viewA)) {
                viewA = null;
            }
            if (viewA != null) {
                Q0();
                if (i3 != 1) {
                    if (i3 != 2) {
                        if (i3 != 17) {
                            if (i3 != 33) {
                                if (i3 == 66 ? this.f661t == 0 : !(i3 != 130 || this.f661t != 1)) {
                                    i4 = 1;
                                }
                            } else if (this.f661t == 1) {
                                i4 = -1;
                            }
                            i4 = Integer.MIN_VALUE;
                        } else if (this.f661t == 0) {
                            i4 = -1;
                        } else {
                            i4 = Integer.MIN_VALUE;
                        }
                    } else if (this.f661t != 1 && I0()) {
                        i4 = -1;
                    } else {
                        i4 = 1;
                    }
                } else if (this.f661t != 1 && I0()) {
                    i4 = 1;
                } else {
                    i4 = -1;
                }
                if (i4 != Integer.MIN_VALUE) {
                    c1 c1Var = (c1) viewA.getLayoutParams();
                    c1Var.getClass();
                    f1 f1Var = c1Var.f2854e;
                    int iD0 = i4 == 1 ? D0() : C0();
                    T0(iD0, t0Var);
                    S0(i4);
                    r rVar = this.f663v;
                    rVar.f2986c = rVar.f2987d + iD0;
                    rVar.b = (int) (this.f659r.l() * 0.33333334f);
                    rVar.f2990h = true;
                    rVar.f2985a = false;
                    x0(o0Var, rVar, t0Var);
                    this.D = this.f665x;
                    View viewG = f1Var.g(iD0, i4);
                    if (viewG != null && viewG != viewA) {
                        return viewG;
                    }
                    if (L0(i4)) {
                        for (int i5 = this.f657p - 1; i5 >= 0; i5--) {
                            View viewG2 = this.f658q[i5].g(iD0, i4);
                            if (viewG2 != null && viewG2 != viewA) {
                                return viewG2;
                            }
                        }
                    } else {
                        for (int i6 = 0; i6 < this.f657p; i6++) {
                            View viewG3 = this.f658q[i6].g(iD0, i4);
                            if (viewG3 != null && viewG3 != viewA) {
                                return viewG3;
                            }
                        }
                    }
                    boolean z2 = (this.f664w ^ true) == (i4 == -1);
                    View viewQ = q(z2 ? f1Var.c() : f1Var.d());
                    if (viewQ != null && viewQ != viewA) {
                        return viewQ;
                    }
                    if (L0(i4)) {
                        for (int i7 = this.f657p - 1; i7 >= 0; i7--) {
                            if (i7 != f1Var.f2883e) {
                                View viewQ2 = q(z2 ? this.f658q[i7].c() : this.f658q[i7].d());
                                if (viewQ2 != null && viewQ2 != viewA) {
                                    return viewQ2;
                                }
                            }
                        }
                    } else {
                        for (int i8 = 0; i8 < this.f657p; i8++) {
                            View viewQ3 = q(z2 ? this.f658q[i8].c() : this.f658q[i8].d());
                            if (viewQ3 != null && viewQ3 != viewA) {
                                return viewQ3;
                            }
                        }
                    }
                }
            }
        }
        return null;
    }

    public final void N0(o0 o0Var, r rVar) {
        int iMin;
        if (!rVar.f2985a || rVar.f2991i) {
            return;
        }
        if (rVar.b == 0) {
            if (rVar.f2988e == -1) {
                O0(o0Var, rVar.f2989g);
                return;
            } else {
                P0(o0Var, rVar.f);
                return;
            }
        }
        int i3 = 1;
        if (rVar.f2988e == -1) {
            int i4 = rVar.f;
            int iH = this.f658q[0].h(i4);
            while (i3 < this.f657p) {
                int iH2 = this.f658q[i3].h(i4);
                if (iH2 > iH) {
                    iH = iH2;
                }
                i3++;
            }
            int i5 = i4 - iH;
            O0(o0Var, i5 < 0 ? rVar.f2989g : rVar.f2989g - Math.min(i5, rVar.b));
            return;
        }
        int i6 = rVar.f2989g;
        int iF = this.f658q[0].f(i6);
        while (i3 < this.f657p) {
            int iF2 = this.f658q[i3].f(i6);
            if (iF2 < iF) {
                iF = iF2;
            }
            i3++;
        }
        int i7 = iF - rVar.f2989g;
        if (i7 < 0) {
            iMin = rVar.f;
        } else {
            iMin = Math.min(i7, rVar.b) + rVar.f;
        }
        P0(o0Var, iMin);
    }

    @Override // q0.i0
    public final void O(AccessibilityEvent accessibilityEvent) {
        super.O(accessibilityEvent);
        if (v() > 0) {
            View viewZ0 = z0(false);
            View viewY0 = y0(false);
            if (viewZ0 == null || viewY0 == null) {
                return;
            }
            int iD = i0.D(viewZ0);
            int iD2 = i0.D(viewY0);
            if (iD < iD2) {
                accessibilityEvent.setFromIndex(iD);
                accessibilityEvent.setToIndex(iD2);
            } else {
                accessibilityEvent.setFromIndex(iD2);
                accessibilityEvent.setToIndex(iD);
            }
        }
    }

    public final void O0(o0 o0Var, int i3) {
        for (int iV = v() - 1; iV >= 0; iV--) {
            View viewU = u(iV);
            if (this.f659r.e(viewU) < i3 || this.f659r.n(viewU) < i3) {
                return;
            }
            c1 c1Var = (c1) viewU.getLayoutParams();
            c1Var.getClass();
            if (c1Var.f2854e.f2880a.size() == 1) {
                return;
            }
            f1 f1Var = c1Var.f2854e;
            ArrayList arrayList = f1Var.f2880a;
            int size = arrayList.size();
            View view = (View) arrayList.remove(size - 1);
            c1 c1Var2 = (c1) view.getLayoutParams();
            c1Var2.f2854e = null;
            if (c1Var2.f2933a.h() || c1Var2.f2933a.k()) {
                f1Var.f2882d -= f1Var.f.f659r.c(view);
            }
            if (size == 1) {
                f1Var.b = Integer.MIN_VALUE;
            }
            f1Var.f2881c = Integer.MIN_VALUE;
            d0(viewU, o0Var);
        }
    }

    public final void P0(o0 o0Var, int i3) {
        while (v() > 0) {
            View viewU = u(0);
            if (this.f659r.b(viewU) > i3 || this.f659r.m(viewU) > i3) {
                return;
            }
            c1 c1Var = (c1) viewU.getLayoutParams();
            c1Var.getClass();
            if (c1Var.f2854e.f2880a.size() == 1) {
                return;
            }
            f1 f1Var = c1Var.f2854e;
            ArrayList arrayList = f1Var.f2880a;
            View view = (View) arrayList.remove(0);
            c1 c1Var2 = (c1) view.getLayoutParams();
            c1Var2.f2854e = null;
            if (arrayList.size() == 0) {
                f1Var.f2881c = Integer.MIN_VALUE;
            }
            if (c1Var2.f2933a.h() || c1Var2.f2933a.k()) {
                f1Var.f2882d -= f1Var.f.f659r.c(view);
            }
            f1Var.b = Integer.MIN_VALUE;
            d0(viewU, o0Var);
        }
    }

    @Override // q0.i0
    public final void Q(o0 o0Var, t0 t0Var, View view, d0.f fVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof c1)) {
            P(view, fVar);
            return;
        }
        c1 c1Var = (c1) layoutParams;
        if (this.f661t == 0) {
            f1 f1Var = c1Var.f2854e;
            fVar.f(e.a(false, f1Var == null ? -1 : f1Var.f2883e, 1, -1, -1));
        } else {
            f1 f1Var2 = c1Var.f2854e;
            fVar.f(e.a(false, -1, -1, f1Var2 == null ? -1 : f1Var2.f2883e, 1));
        }
    }

    public final void Q0() {
        if (this.f661t == 1 || !I0()) {
            this.f665x = this.f664w;
        } else {
            this.f665x = !this.f664w;
        }
    }

    @Override // q0.i0
    public final void R(int i3, int i4) {
        G0(i3, i4, 1);
    }

    public final int R0(int i3, o0 o0Var, t0 t0Var) {
        if (v() == 0 || i3 == 0) {
            return 0;
        }
        M0(i3, t0Var);
        r rVar = this.f663v;
        int iX0 = x0(o0Var, rVar, t0Var);
        if (rVar.b >= iX0) {
            i3 = i3 < 0 ? -iX0 : iX0;
        }
        this.f659r.o(-i3);
        this.D = this.f665x;
        rVar.b = 0;
        N0(o0Var, rVar);
        return i3;
    }

    @Override // q0.i0
    public final void S() {
        c cVar = this.B;
        int[] iArr = (int[]) cVar.f100a;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        cVar.b = null;
        g0();
    }

    public final void S0(int i3) {
        r rVar = this.f663v;
        rVar.f2988e = i3;
        rVar.f2987d = this.f665x != (i3 == -1) ? -1 : 1;
    }

    @Override // q0.i0
    public final void T(int i3, int i4) {
        G0(i3, i4, 8);
    }

    public final void T0(int i3, t0 t0Var) {
        int iL;
        int iL2;
        int i4;
        r rVar = this.f663v;
        boolean z2 = false;
        rVar.b = 0;
        rVar.f2986c = i3;
        w wVar = this.f2910e;
        if (wVar == null || !wVar.f3036e || (i4 = t0Var.f3004a) == -1) {
            iL = 0;
            iL2 = 0;
        } else {
            if (this.f665x == (i4 < i3)) {
                iL = this.f659r.l();
                iL2 = 0;
            } else {
                iL2 = this.f659r.l();
                iL = 0;
            }
        }
        RecyclerView recyclerView = this.b;
        if (recyclerView == null || !recyclerView.f625g) {
            rVar.f2989g = this.f659r.f() + iL;
            rVar.f = -iL2;
        } else {
            rVar.f = this.f659r.k() - iL2;
            rVar.f2989g = this.f659r.g() + iL;
        }
        rVar.f2990h = false;
        rVar.f2985a = true;
        if (this.f659r.i() == 0 && this.f659r.f() == 0) {
            z2 = true;
        }
        rVar.f2991i = z2;
    }

    @Override // q0.i0
    public final void U(int i3, int i4) {
        G0(i3, i4, 2);
    }

    public final void U0(f1 f1Var, int i3, int i4) {
        int i5 = f1Var.f2882d;
        int i6 = f1Var.f2883e;
        if (i3 != -1) {
            int i7 = f1Var.f2881c;
            if (i7 == Integer.MIN_VALUE) {
                f1Var.a();
                i7 = f1Var.f2881c;
            }
            if (i7 - i5 >= i4) {
                this.f666y.set(i6, false);
                return;
            }
            return;
        }
        int i8 = f1Var.b;
        if (i8 == Integer.MIN_VALUE) {
            View view = (View) f1Var.f2880a.get(0);
            c1 c1Var = (c1) view.getLayoutParams();
            f1Var.b = f1Var.f.f659r.e(view);
            c1Var.getClass();
            i8 = f1Var.b;
        }
        if (i8 + i5 <= i4) {
            this.f666y.set(i6, false);
        }
    }

    @Override // q0.i0
    public final void V(int i3, int i4) {
        G0(i3, i4, 4);
    }

    @Override // q0.i0
    public final void W(o0 o0Var, t0 t0Var) {
        K0(o0Var, t0Var, true);
    }

    @Override // q0.i0
    public final void X(t0 t0Var) {
        this.f667z = -1;
        this.A = Integer.MIN_VALUE;
        this.F = null;
        this.H.a();
    }

    @Override // q0.i0
    public final void Y(Parcelable parcelable) {
        if (parcelable instanceof e1) {
            this.F = (e1) parcelable;
            g0();
        }
    }

    @Override // q0.i0
    public final Parcelable Z() {
        int iH;
        int iK;
        int[] iArr;
        e1 e1Var = this.F;
        if (e1Var != null) {
            e1 e1Var2 = new e1();
            e1Var2.f2869c = e1Var.f2869c;
            e1Var2.f2868a = e1Var.f2868a;
            e1Var2.b = e1Var.b;
            e1Var2.f2870d = e1Var.f2870d;
            e1Var2.f2871e = e1Var.f2871e;
            e1Var2.f = e1Var.f;
            e1Var2.f2873h = e1Var.f2873h;
            e1Var2.f2874i = e1Var.f2874i;
            e1Var2.f2875j = e1Var.f2875j;
            e1Var2.f2872g = e1Var.f2872g;
            return e1Var2;
        }
        e1 e1Var3 = new e1();
        e1Var3.f2873h = this.f664w;
        e1Var3.f2874i = this.D;
        e1Var3.f2875j = this.E;
        c cVar = this.B;
        if (cVar == null || (iArr = (int[]) cVar.f100a) == null) {
            e1Var3.f2871e = 0;
        } else {
            e1Var3.f = iArr;
            e1Var3.f2871e = iArr.length;
            e1Var3.f2872g = (ArrayList) cVar.b;
        }
        if (v() <= 0) {
            e1Var3.f2868a = -1;
            e1Var3.b = -1;
            e1Var3.f2869c = 0;
            return e1Var3;
        }
        e1Var3.f2868a = this.D ? D0() : C0();
        View viewY0 = this.f665x ? y0(true) : z0(true);
        e1Var3.b = viewY0 != null ? i0.D(viewY0) : -1;
        int i3 = this.f657p;
        e1Var3.f2869c = i3;
        e1Var3.f2870d = new int[i3];
        for (int i4 = 0; i4 < this.f657p; i4++) {
            if (this.D) {
                iH = this.f658q[i4].f(Integer.MIN_VALUE);
                if (iH != Integer.MIN_VALUE) {
                    iK = this.f659r.g();
                    iH -= iK;
                }
            } else {
                iH = this.f658q[i4].h(Integer.MIN_VALUE);
                if (iH != Integer.MIN_VALUE) {
                    iK = this.f659r.k();
                    iH -= iK;
                }
            }
            e1Var3.f2870d[i4] = iH;
        }
        return e1Var3;
    }

    /* JADX WARN: Code duplicated, block: B:6:0x000c  */
    @Override // q0.s0
    public final PointF a(int i3) {
        int i4 = -1;
        if (v() != 0) {
            if ((i3 < C0()) == this.f665x) {
                i4 = 1;
            }
        } else if (this.f665x) {
            i4 = 1;
        }
        PointF pointF = new PointF();
        if (i4 == 0) {
            return null;
        }
        if (this.f661t == 0) {
            pointF.x = i4;
            pointF.y = 0.0f;
            return pointF;
        }
        pointF.x = 0.0f;
        pointF.y = i4;
        return pointF;
    }

    @Override // q0.i0
    public final void a0(int i3) {
        if (i3 == 0) {
            v0();
        }
    }

    @Override // q0.i0
    public final void c(String str) {
        RecyclerView recyclerView;
        if (this.F != null || (recyclerView = this.b) == null) {
            return;
        }
        recyclerView.i(str);
    }

    @Override // q0.i0
    public final boolean d() {
        return this.f661t == 0;
    }

    @Override // q0.i0
    public final boolean e() {
        return this.f661t == 1;
    }

    @Override // q0.i0
    public final boolean f(j0 j0Var) {
        return j0Var instanceof c1;
    }

    @Override // q0.i0
    public final void h(int i3, int i4, t0 t0Var, n nVar) {
        r rVar;
        int iF;
        int iH;
        if (this.f661t != 0) {
            i3 = i4;
        }
        if (v() == 0 || i3 == 0) {
            return;
        }
        M0(i3, t0Var);
        int[] iArr = this.J;
        if (iArr == null || iArr.length < this.f657p) {
            this.J = new int[this.f657p];
        }
        int i5 = 0;
        int i6 = 0;
        while (true) {
            int i7 = this.f657p;
            rVar = this.f663v;
            if (i5 >= i7) {
                break;
            }
            if (rVar.f2987d == -1) {
                iF = rVar.f;
                iH = this.f658q[i5].h(iF);
            } else {
                iF = this.f658q[i5].f(rVar.f2989g);
                iH = rVar.f2989g;
            }
            int i8 = iF - iH;
            if (i8 >= 0) {
                this.J[i6] = i8;
                i6++;
            }
            i5++;
        }
        Arrays.sort(this.J, 0, i6);
        for (int i9 = 0; i9 < i6; i9++) {
            int i10 = rVar.f2986c;
            if (i10 < 0 || i10 >= t0Var.b()) {
                return;
            }
            nVar.a(rVar.f2986c, this.J[i9]);
            rVar.f2986c += rVar.f2987d;
        }
    }

    @Override // q0.i0
    public final int h0(int i3, o0 o0Var, t0 t0Var) {
        return R0(i3, o0Var, t0Var);
    }

    @Override // q0.i0
    public final void i0(int i3) {
        e1 e1Var = this.F;
        if (e1Var != null && e1Var.f2868a != i3) {
            e1Var.f2870d = null;
            e1Var.f2869c = 0;
            e1Var.f2868a = -1;
            e1Var.b = -1;
        }
        this.f667z = i3;
        this.A = Integer.MIN_VALUE;
        g0();
    }

    @Override // q0.i0
    public final int j(t0 t0Var) {
        if (v() == 0) {
            return 0;
        }
        boolean z2 = !this.I;
        return a.m(t0Var, this.f659r, z0(z2), y0(z2), this, this.I);
    }

    @Override // q0.i0
    public final int j0(int i3, o0 o0Var, t0 t0Var) {
        return R0(i3, o0Var, t0Var);
    }

    @Override // q0.i0
    public final int k(t0 t0Var) {
        return w0(t0Var);
    }

    @Override // q0.i0
    public final int l(t0 t0Var) {
        if (v() == 0) {
            return 0;
        }
        boolean z2 = !this.I;
        return a.o(t0Var, this.f659r, z0(z2), y0(z2), this, this.I);
    }

    @Override // q0.i0
    public final int m(t0 t0Var) {
        if (v() == 0) {
            return 0;
        }
        boolean z2 = !this.I;
        return a.m(t0Var, this.f659r, z0(z2), y0(z2), this, this.I);
    }

    @Override // q0.i0
    public final void m0(Rect rect, int i3, int i4) {
        int iG;
        int iG2;
        int iB = B() + A();
        int iZ = z() + C();
        int i5 = this.f661t;
        int i6 = this.f657p;
        if (i5 == 1) {
            int iHeight = rect.height() + iZ;
            RecyclerView recyclerView = this.b;
            WeakHashMap weakHashMap = p0.f727a;
            iG2 = i0.g(i4, iHeight, a0.d(recyclerView));
            iG = i0.g(i3, (this.f662u * i6) + iB, a0.e(this.b));
        } else {
            int iWidth = rect.width() + iB;
            RecyclerView recyclerView2 = this.b;
            WeakHashMap weakHashMap2 = p0.f727a;
            iG = i0.g(i3, iWidth, a0.e(recyclerView2));
            iG2 = i0.g(i4, (this.f662u * i6) + iZ, a0.d(this.b));
        }
        this.b.setMeasuredDimension(iG, iG2);
    }

    @Override // q0.i0
    public final int n(t0 t0Var) {
        return w0(t0Var);
    }

    @Override // q0.i0
    public final int o(t0 t0Var) {
        if (v() == 0) {
            return 0;
        }
        boolean z2 = !this.I;
        return a.o(t0Var, this.f659r, z0(z2), y0(z2), this, this.I);
    }

    @Override // q0.i0
    public final j0 r() {
        return this.f661t == 0 ? new c1(-2, -1) : new c1(-1, -2);
    }

    @Override // q0.i0
    public final j0 s(Context context, AttributeSet attributeSet) {
        return new c1(context, attributeSet);
    }

    @Override // q0.i0
    public final void s0(RecyclerView recyclerView, int i3) {
        w wVar = new w(recyclerView.getContext());
        wVar.f3033a = i3;
        t0(wVar);
    }

    @Override // q0.i0
    public final j0 t(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new c1((ViewGroup.MarginLayoutParams) layoutParams) : new c1(layoutParams);
    }

    @Override // q0.i0
    public final boolean u0() {
        return this.F == null;
    }

    public final boolean v0() {
        int iC0;
        if (v() != 0 && this.C != 0 && this.f2911g) {
            if (this.f665x) {
                iC0 = D0();
                C0();
            } else {
                iC0 = C0();
                D0();
            }
            if (iC0 == 0 && H0() != null) {
                c cVar = this.B;
                int[] iArr = (int[]) cVar.f100a;
                if (iArr != null) {
                    Arrays.fill(iArr, -1);
                }
                cVar.b = null;
                this.f = true;
                g0();
                return true;
            }
        }
        return false;
    }

    public final int w0(t0 t0Var) {
        if (v() == 0) {
            return 0;
        }
        boolean z2 = !this.I;
        return a.n(t0Var, this.f659r, z0(z2), y0(z2), this, this.I, this.f665x);
    }

    @Override // q0.i0
    public final int x(o0 o0Var, t0 t0Var) {
        return this.f661t == 1 ? this.f657p : super.x(o0Var, t0Var);
    }

    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v24 */
    /* JADX WARN: Type inference failed for: r8v3, types: [boolean, int] */
    public final int x0(o0 o0Var, r rVar, t0 t0Var) {
        f1 f1Var;
        ?? r8;
        int iH;
        int iC;
        int iK;
        int iC2;
        int i3;
        int i4;
        int i5;
        int i6 = 0;
        int i7 = 1;
        this.f666y.set(0, this.f657p, true);
        r rVar2 = this.f663v;
        int i8 = rVar2.f2991i ? rVar.f2988e == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE : rVar.f2988e == 1 ? rVar.f2989g + rVar.b : rVar.f - rVar.b;
        int i9 = rVar.f2988e;
        for (int i10 = 0; i10 < this.f657p; i10++) {
            if (!this.f658q[i10].f2880a.isEmpty()) {
                U0(this.f658q[i10], i9, i8);
            }
        }
        int iG = this.f665x ? this.f659r.g() : this.f659r.k();
        boolean z2 = false;
        while (true) {
            int i11 = rVar.f2986c;
            if (i11 < 0 || i11 >= t0Var.b() || (!rVar2.f2991i && this.f666y.isEmpty())) {
                break;
            }
            View view = o0Var.i(rVar.f2986c, Long.MAX_VALUE).f3048a;
            rVar.f2986c += rVar.f2987d;
            c1 c1Var = (c1) view.getLayoutParams();
            int iB = c1Var.f2933a.b();
            c cVar = this.B;
            int[] iArr = (int[]) cVar.f100a;
            int i12 = (iArr == null || iB >= iArr.length) ? -1 : iArr[iB];
            if (i12 == -1) {
                if (L0(rVar.f2988e)) {
                    i5 = this.f657p - i7;
                    i4 = -1;
                    i3 = -1;
                } else {
                    i3 = i7;
                    i4 = this.f657p;
                    i5 = i6;
                }
                f1 f1Var2 = null;
                if (rVar.f2988e == i7) {
                    int iK2 = this.f659r.k();
                    int i13 = Integer.MAX_VALUE;
                    while (i5 != i4) {
                        f1 f1Var3 = this.f658q[i5];
                        int iF = f1Var3.f(iK2);
                        if (iF < i13) {
                            i13 = iF;
                            f1Var2 = f1Var3;
                        }
                        i5 += i3;
                    }
                } else {
                    int iG2 = this.f659r.g();
                    int i14 = Integer.MIN_VALUE;
                    while (i5 != i4) {
                        f1 f1Var4 = this.f658q[i5];
                        int iH2 = f1Var4.h(iG2);
                        if (iH2 > i14) {
                            f1Var2 = f1Var4;
                            i14 = iH2;
                        }
                        i5 += i3;
                    }
                }
                f1Var = f1Var2;
                cVar.q(iB);
                ((int[]) cVar.f100a)[iB] = f1Var.f2883e;
            } else {
                f1Var = this.f658q[i12];
            }
            c1Var.f2854e = f1Var;
            if (rVar.f2988e == 1) {
                r8 = 0;
                b(view, -1, false);
            } else {
                r8 = 0;
                b(view, 0, false);
            }
            if (this.f661t == 1) {
                J0(view, i0.w(r8, this.f662u, this.f2916l, r8, ((ViewGroup.MarginLayoutParams) c1Var).width), i0.w(true, this.f2919o, this.f2917m, z() + C(), ((ViewGroup.MarginLayoutParams) c1Var).height));
            } else {
                J0(view, i0.w(true, this.f2918n, this.f2916l, B() + A(), ((ViewGroup.MarginLayoutParams) c1Var).width), i0.w(false, this.f662u, this.f2917m, 0, ((ViewGroup.MarginLayoutParams) c1Var).height));
            }
            if (rVar.f2988e == 1) {
                iC = f1Var.f(iG);
                iH = this.f659r.c(view) + iC;
            } else {
                iH = f1Var.h(iG);
                iC = iH - this.f659r.c(view);
            }
            if (rVar.f2988e == 1) {
                f1 f1Var5 = c1Var.f2854e;
                f1Var5.getClass();
                c1 c1Var2 = (c1) view.getLayoutParams();
                c1Var2.f2854e = f1Var5;
                ArrayList arrayList = f1Var5.f2880a;
                arrayList.add(view);
                f1Var5.f2881c = Integer.MIN_VALUE;
                if (arrayList.size() == 1) {
                    f1Var5.b = Integer.MIN_VALUE;
                }
                if (c1Var2.f2933a.h() || c1Var2.f2933a.k()) {
                    f1Var5.f2882d = f1Var5.f.f659r.c(view) + f1Var5.f2882d;
                }
            } else {
                f1 f1Var6 = c1Var.f2854e;
                f1Var6.getClass();
                c1 c1Var3 = (c1) view.getLayoutParams();
                c1Var3.f2854e = f1Var6;
                ArrayList arrayList2 = f1Var6.f2880a;
                arrayList2.add(0, view);
                f1Var6.b = Integer.MIN_VALUE;
                if (arrayList2.size() == 1) {
                    f1Var6.f2881c = Integer.MIN_VALUE;
                }
                if (c1Var3.f2933a.h() || c1Var3.f2933a.k()) {
                    f1Var6.f2882d = f1Var6.f.f659r.c(view) + f1Var6.f2882d;
                }
            }
            if (I0() && this.f661t == 1) {
                iC2 = this.f660s.g() - (((this.f657p - 1) - f1Var.f2883e) * this.f662u);
                iK = iC2 - this.f660s.c(view);
            } else {
                iK = this.f660s.k() + (f1Var.f2883e * this.f662u);
                iC2 = this.f660s.c(view) + iK;
            }
            if (this.f661t == 1) {
                i0.J(view, iK, iC, iC2, iH);
            } else {
                i0.J(view, iC, iK, iH, iC2);
            }
            U0(f1Var, rVar2.f2988e, i8);
            N0(o0Var, rVar2);
            if (rVar2.f2990h && view.hasFocusable()) {
                this.f666y.set(f1Var.f2883e, false);
            }
            i7 = 1;
            z2 = true;
            i6 = 0;
        }
        if (!z2) {
            N0(o0Var, rVar2);
        }
        int iK3 = rVar2.f2988e == -1 ? this.f659r.k() - F0(this.f659r.k()) : E0(this.f659r.g()) - this.f659r.g();
        if (iK3 > 0) {
            return Math.min(rVar.b, iK3);
        }
        return 0;
    }

    public final View y0(boolean z2) {
        int iK = this.f659r.k();
        int iG = this.f659r.g();
        View view = null;
        for (int iV = v() - 1; iV >= 0; iV--) {
            View viewU = u(iV);
            int iE = this.f659r.e(viewU);
            int iB = this.f659r.b(viewU);
            if (iB > iK && iE < iG) {
                if (iB <= iG || !z2) {
                    return viewU;
                }
                if (view == null) {
                    view = viewU;
                }
            }
        }
        return view;
    }

    public final View z0(boolean z2) {
        int iK = this.f659r.k();
        int iG = this.f659r.g();
        int iV = v();
        View view = null;
        for (int i3 = 0; i3 < iV; i3++) {
            View viewU = u(i3);
            int iE = this.f659r.e(viewU);
            if (this.f659r.b(viewU) > iK && iE < iG) {
                if (iE >= iK || !z2) {
                    return viewU;
                }
                if (view == null) {
                    view = viewU;
                }
            }
        }
        return view;
    }
}
