package q;

import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConstraintLayout f2762a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2763c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2764d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2765e;
    public int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2766g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ConstraintLayout f2767h;

    public f(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2) {
        this.f2767h = constraintLayout;
        this.f2762a = constraintLayout2;
    }

    public static boolean a(int i3, int i4, int i5) {
        if (i3 == i4) {
            return true;
        }
        int mode = View.MeasureSpec.getMode(i3);
        View.MeasureSpec.getSize(i3);
        int mode2 = View.MeasureSpec.getMode(i4);
        int size = View.MeasureSpec.getSize(i4);
        if (mode2 == 1073741824) {
            return (mode == Integer.MIN_VALUE || mode == 0) && i5 == size;
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x018e  */
    /* JADX WARN: Code duplicated, block: B:105:0x0196  */
    /* JADX WARN: Code duplicated, block: B:111:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:116:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:118:0x01b0 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:119:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:130:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:132:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:133:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:136:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:139:0x01fd  */
    /* JADX WARN: Code duplicated, block: B:141:0x0204  */
    /* JADX WARN: Code duplicated, block: B:144:0x020a  */
    /* JADX WARN: Code duplicated, block: B:147:0x0217  */
    /* JADX WARN: Code duplicated, block: B:149:0x021b A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:151:0x0225 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:152:0x0227 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:155:0x0232 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:159:0x023a  */
    /* JADX WARN: Code duplicated, block: B:161:0x023e  */
    /* JADX WARN: Code duplicated, block: B:163:0x0244  */
    /* JADX WARN: Code duplicated, block: B:164:0x0249  */
    /* JADX WARN: Code duplicated, block: B:167:0x0265  */
    /* JADX WARN: Code duplicated, block: B:168:0x0267  */
    /* JADX WARN: Code duplicated, block: B:175:0x0273  */
    /* JADX WARN: Code duplicated, block: B:178:0x027a  */
    /* JADX WARN: Code duplicated, block: B:179:0x027c  */
    /* JADX WARN: Code duplicated, block: B:41:0x00a5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:42:0x00a7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:43:0x00a9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:44:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:46:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:48:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:49:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:53:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:55:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:56:0x00df  */
    /* JADX WARN: Code duplicated, block: B:59:0x00e4 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:64:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:65:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:66:0x0105  */
    /* JADX WARN: Code duplicated, block: B:90:0x017e  */
    /* JADX WARN: Code duplicated, block: B:91:0x0180  */
    /* JADX WARN: Code duplicated, block: B:93:0x0183  */
    /* JADX WARN: Code duplicated, block: B:94:0x0185  */
    public final void b(o.d dVar, p.b bVar) {
        int iMakeMeasureSpec;
        int iMakeMeasureSpec2;
        int iB;
        int iMakeMeasureSpec3;
        o.e eVar;
        ConstraintLayout constraintLayout;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        e eVar2;
        int i3;
        int measuredWidth;
        int measuredHeight;
        int i4;
        int iMin;
        int i5;
        int i6;
        int iMin2;
        int i7;
        int i8;
        int iMakeMeasureSpec4;
        boolean z8;
        int measuredWidth2;
        int baseline;
        int i9;
        boolean z9;
        boolean z10;
        boolean z11;
        boolean z12;
        int i10;
        boolean z13;
        o.c cVar = dVar.D;
        o.c cVar2 = dVar.B;
        if (dVar.Z == 8) {
            bVar.f2642e = 0;
            bVar.f = 0;
            bVar.f2643g = 0;
            return;
        }
        if (dVar.M == null) {
            return;
        }
        int i11 = bVar.f2639a;
        int i12 = bVar.b;
        int i13 = bVar.f2640c;
        int i14 = bVar.f2641d;
        int i15 = this.b + this.f2763c;
        int i16 = this.f2764d;
        View view = dVar.Y;
        int iB2 = n.g.b(i11);
        if (iB2 == 0) {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i13, 1073741824);
        } else {
            if (iB2 != 1) {
                if (iB2 != 2) {
                    iMakeMeasureSpec2 = iB2 != 3 ? 0 : ViewGroup.getChildMeasureSpec(this.f, cVar2.f2562g + cVar.f2562g + i16, -1);
                } else {
                    iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f, i16, -2);
                    boolean z14 = dVar.f2583l == 1;
                    int i17 = bVar.f2646j;
                    if (i17 == 1 || i17 == 2) {
                        boolean z15 = view.getMeasuredHeight() == dVar.i();
                        if (bVar.f2646j == 2 || !z14 || ((z14 && z15) || dVar.u())) {
                            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(dVar.l(), 1073741824);
                        }
                    }
                }
                iB = n.g.b(i12);
                if (iB != 0) {
                    iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(i14, 1073741824);
                } else if (iB != 1) {
                    iMakeMeasureSpec3 = ViewGroup.getChildMeasureSpec(this.f2766g, i15, -2);
                } else if (iB != 2) {
                    iMakeMeasureSpec3 = ViewGroup.getChildMeasureSpec(this.f2766g, i15, -2);
                    if (dVar.f2584m == 1) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    i10 = bVar.f2646j;
                    if (i10 != 1 || i10 == 2) {
                        if (view.getMeasuredWidth() == dVar.l()) {
                            z13 = true;
                        } else {
                            z13 = false;
                        }
                        if (bVar.f2646j != 2 || !z12 || ((z12 && z13) || dVar.v())) {
                            iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(dVar.i(), 1073741824);
                        }
                    }
                } else if (iB != 3) {
                    iMakeMeasureSpec3 = 0;
                } else {
                    iMakeMeasureSpec3 = ViewGroup.getChildMeasureSpec(this.f2766g, dVar.C.f2562g + dVar.E.f2562g + i15, -1);
                }
                eVar = (o.e) dVar.M;
                constraintLayout = this.f2767h;
                if (eVar == null && o.g.c(constraintLayout.f256i, 256) && view.getMeasuredWidth() == dVar.l() && view.getMeasuredWidth() < eVar.l() && view.getMeasuredHeight() == dVar.i() && view.getMeasuredHeight() < eVar.i() && view.getBaseline() == dVar.T && !dVar.t() && a(dVar.f2597z, iMakeMeasureSpec2, dVar.l()) && a(dVar.A, iMakeMeasureSpec3, dVar.i())) {
                    bVar.f2642e = dVar.l();
                    bVar.f = dVar.i();
                    bVar.f2643g = dVar.T;
                    return;
                }
                if (i11 == 3) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (i12 == 3) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (i12 != 4 || i12 == 1) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (i11 != 4 || i11 == 1) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (z2 || dVar.P <= 0.0f) {
                    z6 = false;
                } else {
                    z6 = true;
                }
                if (z3 || dVar.P <= 0.0f) {
                    z7 = false;
                } else {
                    z7 = true;
                }
                if (view == null) {
                    return;
                }
                eVar2 = (e) view.getLayoutParams();
                i3 = bVar.f2646j;
                if (i3 == 1 && i3 != 2 && z2 && dVar.f2583l == 0 && z3 && dVar.f2584m == 0) {
                    z8 = false;
                    measuredWidth2 = 0;
                    baseline = 0;
                    i9 = -1;
                    iMin2 = 0;
                } else {
                    view.measure(iMakeMeasureSpec2, iMakeMeasureSpec3);
                    dVar.f2597z = iMakeMeasureSpec2;
                    dVar.A = iMakeMeasureSpec3;
                    dVar.f2575g = false;
                    measuredWidth = view.getMeasuredWidth();
                    measuredHeight = view.getMeasuredHeight();
                    int baseline2 = view.getBaseline();
                    i4 = dVar.f2586o;
                    if (i4 > 0) {
                        iMin = Math.max(i4, measuredWidth);
                    } else {
                        iMin = measuredWidth;
                    }
                    i5 = dVar.f2587p;
                    if (i5 > 0) {
                        iMin = Math.min(i5, iMin);
                    }
                    i6 = dVar.f2589r;
                    if (i6 > 0) {
                        iMin2 = Math.max(i6, measuredHeight);
                    } else {
                        iMin2 = measuredHeight;
                    }
                    i7 = iMakeMeasureSpec3;
                    i8 = dVar.f2590s;
                    if (i8 > 0) {
                        iMin2 = Math.min(i8, iMin2);
                    }
                    if (!o.g.c(constraintLayout.f256i, 1)) {
                        if (!z6 && z4) {
                            iMin = (int) ((iMin2 * dVar.P) + 0.5f);
                        } else if (z7 && z5) {
                            iMin2 = (int) ((iMin / dVar.P) + 0.5f);
                        }
                    }
                    if (measuredWidth == iMin || measuredHeight != iMin2) {
                        if (measuredWidth != iMin) {
                            iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
                        }
                        if (measuredHeight != iMin2) {
                            iMakeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(iMin2, 1073741824);
                        } else {
                            iMakeMeasureSpec4 = i7;
                        }
                        view.measure(iMakeMeasureSpec2, iMakeMeasureSpec4);
                        dVar.f2597z = iMakeMeasureSpec2;
                        dVar.A = iMakeMeasureSpec4;
                        z8 = false;
                        dVar.f2575g = false;
                        measuredWidth2 = view.getMeasuredWidth();
                        int measuredHeight2 = view.getMeasuredHeight();
                        baseline = view.getBaseline();
                        iMin2 = measuredHeight2;
                    } else {
                        baseline = baseline2;
                        measuredWidth2 = iMin;
                        z8 = false;
                    }
                    i9 = -1;
                }
                if (baseline != i9) {
                    z9 = true;
                } else {
                    z9 = z8;
                }
                if (measuredWidth2 == bVar.f2640c || iMin2 != bVar.f2641d) {
                    z10 = true;
                } else {
                    z10 = z8;
                }
                bVar.f2645i = z10;
                if (eVar2.X) {
                    z11 = true;
                } else {
                    z11 = z9;
                }
                if (z11 && baseline != -1 && dVar.T != baseline) {
                    bVar.f2645i = true;
                }
                bVar.f2642e = measuredWidth2;
                bVar.f = iMin2;
                bVar.f2644h = z11;
                bVar.f2643g = baseline;
            }
            iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f, i16, -2);
        }
        iMakeMeasureSpec2 = iMakeMeasureSpec;
        iB = n.g.b(i12);
        if (iB != 0) {
            iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(i14, 1073741824);
        } else if (iB != 1) {
            iMakeMeasureSpec3 = ViewGroup.getChildMeasureSpec(this.f2766g, i15, -2);
        } else if (iB != 2) {
            iMakeMeasureSpec3 = ViewGroup.getChildMeasureSpec(this.f2766g, i15, -2);
            if (dVar.f2584m == 1) {
                z12 = true;
            } else {
                z12 = false;
            }
            i10 = bVar.f2646j;
            if (i10 != 1) {
                if (view.getMeasuredWidth() == dVar.l()) {
                    z13 = true;
                } else {
                    z13 = false;
                }
                if (bVar.f2646j != 2) {
                    iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(dVar.i(), 1073741824);
                } else {
                    iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(dVar.i(), 1073741824);
                }
            } else {
                if (view.getMeasuredWidth() == dVar.l()) {
                    z13 = true;
                } else {
                    z13 = false;
                }
                if (bVar.f2646j != 2) {
                    iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(dVar.i(), 1073741824);
                } else {
                    iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(dVar.i(), 1073741824);
                }
            }
        } else if (iB != 3) {
            iMakeMeasureSpec3 = 0;
        } else {
            iMakeMeasureSpec3 = ViewGroup.getChildMeasureSpec(this.f2766g, dVar.C.f2562g + dVar.E.f2562g + i15, -1);
        }
        eVar = (o.e) dVar.M;
        constraintLayout = this.f2767h;
        if (eVar == null) {
        }
        if (i11 == 3) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (i12 == 3) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (i12 != 4) {
            z4 = true;
        } else {
            z4 = true;
        }
        if (i11 != 4) {
            z5 = true;
        } else {
            z5 = true;
        }
        if (z2) {
            z6 = false;
        } else {
            z6 = false;
        }
        if (z3) {
            z7 = false;
        } else {
            z7 = false;
        }
        if (view == null) {
            return;
        }
        eVar2 = (e) view.getLayoutParams();
        i3 = bVar.f2646j;
        if (i3 == 1) {
            view.measure(iMakeMeasureSpec2, iMakeMeasureSpec3);
            dVar.f2597z = iMakeMeasureSpec2;
            dVar.A = iMakeMeasureSpec3;
            dVar.f2575g = false;
            measuredWidth = view.getMeasuredWidth();
            measuredHeight = view.getMeasuredHeight();
            int baseline3 = view.getBaseline();
            i4 = dVar.f2586o;
            if (i4 > 0) {
                iMin = Math.max(i4, measuredWidth);
            } else {
                iMin = measuredWidth;
            }
            i5 = dVar.f2587p;
            if (i5 > 0) {
                iMin = Math.min(i5, iMin);
            }
            i6 = dVar.f2589r;
            if (i6 > 0) {
                iMin2 = Math.max(i6, measuredHeight);
            } else {
                iMin2 = measuredHeight;
            }
            i7 = iMakeMeasureSpec3;
            i8 = dVar.f2590s;
            if (i8 > 0) {
                iMin2 = Math.min(i8, iMin2);
            }
            if (!o.g.c(constraintLayout.f256i, 1)) {
                if (!z6) {
                    if (z7) {
                        iMin2 = (int) ((iMin / dVar.P) + 0.5f);
                    }
                } else if (z7) {
                    iMin2 = (int) ((iMin / dVar.P) + 0.5f);
                }
            }
            if (measuredWidth == iMin) {
                if (measuredWidth != iMin) {
                    iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
                }
                if (measuredHeight != iMin2) {
                    iMakeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(iMin2, 1073741824);
                } else {
                    iMakeMeasureSpec4 = i7;
                }
                view.measure(iMakeMeasureSpec2, iMakeMeasureSpec4);
                dVar.f2597z = iMakeMeasureSpec2;
                dVar.A = iMakeMeasureSpec4;
                z8 = false;
                dVar.f2575g = false;
                measuredWidth2 = view.getMeasuredWidth();
                int measuredHeight3 = view.getMeasuredHeight();
                baseline = view.getBaseline();
                iMin2 = measuredHeight3;
            } else {
                if (measuredWidth != iMin) {
                    iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
                }
                if (measuredHeight != iMin2) {
                    iMakeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(iMin2, 1073741824);
                } else {
                    iMakeMeasureSpec4 = i7;
                }
                view.measure(iMakeMeasureSpec2, iMakeMeasureSpec4);
                dVar.f2597z = iMakeMeasureSpec2;
                dVar.A = iMakeMeasureSpec4;
                z8 = false;
                dVar.f2575g = false;
                measuredWidth2 = view.getMeasuredWidth();
                int measuredHeight4 = view.getMeasuredHeight();
                baseline = view.getBaseline();
                iMin2 = measuredHeight4;
            }
            i9 = -1;
        } else {
            view.measure(iMakeMeasureSpec2, iMakeMeasureSpec3);
            dVar.f2597z = iMakeMeasureSpec2;
            dVar.A = iMakeMeasureSpec3;
            dVar.f2575g = false;
            measuredWidth = view.getMeasuredWidth();
            measuredHeight = view.getMeasuredHeight();
            int baseline4 = view.getBaseline();
            i4 = dVar.f2586o;
            if (i4 > 0) {
                iMin = Math.max(i4, measuredWidth);
            } else {
                iMin = measuredWidth;
            }
            i5 = dVar.f2587p;
            if (i5 > 0) {
                iMin = Math.min(i5, iMin);
            }
            i6 = dVar.f2589r;
            if (i6 > 0) {
                iMin2 = Math.max(i6, measuredHeight);
            } else {
                iMin2 = measuredHeight;
            }
            i7 = iMakeMeasureSpec3;
            i8 = dVar.f2590s;
            if (i8 > 0) {
                iMin2 = Math.min(i8, iMin2);
            }
            if (!o.g.c(constraintLayout.f256i, 1)) {
                if (!z6) {
                    if (z7) {
                        iMin2 = (int) ((iMin / dVar.P) + 0.5f);
                    }
                } else if (z7) {
                    iMin2 = (int) ((iMin / dVar.P) + 0.5f);
                }
            }
            if (measuredWidth == iMin) {
                if (measuredWidth != iMin) {
                    iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
                }
                if (measuredHeight != iMin2) {
                    iMakeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(iMin2, 1073741824);
                } else {
                    iMakeMeasureSpec4 = i7;
                }
                view.measure(iMakeMeasureSpec2, iMakeMeasureSpec4);
                dVar.f2597z = iMakeMeasureSpec2;
                dVar.A = iMakeMeasureSpec4;
                z8 = false;
                dVar.f2575g = false;
                measuredWidth2 = view.getMeasuredWidth();
                int measuredHeight5 = view.getMeasuredHeight();
                baseline = view.getBaseline();
                iMin2 = measuredHeight5;
            } else {
                if (measuredWidth != iMin) {
                    iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
                }
                if (measuredHeight != iMin2) {
                    iMakeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(iMin2, 1073741824);
                } else {
                    iMakeMeasureSpec4 = i7;
                }
                view.measure(iMakeMeasureSpec2, iMakeMeasureSpec4);
                dVar.f2597z = iMakeMeasureSpec2;
                dVar.A = iMakeMeasureSpec4;
                z8 = false;
                dVar.f2575g = false;
                measuredWidth2 = view.getMeasuredWidth();
                int measuredHeight6 = view.getMeasuredHeight();
                baseline = view.getBaseline();
                iMin2 = measuredHeight6;
            }
            i9 = -1;
        }
        if (baseline != i9) {
            z9 = true;
        } else {
            z9 = z8;
        }
        if (measuredWidth2 == bVar.f2640c) {
            z10 = true;
        } else {
            z10 = true;
        }
        bVar.f2645i = z10;
        if (eVar2.X) {
            z11 = true;
        } else {
            z11 = z9;
        }
        if (z11) {
            bVar.f2645i = true;
        }
        bVar.f2642e = measuredWidth2;
        bVar.f = iMin2;
        bVar.f2644h = z11;
        bVar.f2643g = baseline;
    }
}
