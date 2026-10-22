package q;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import ecarx.xsf.mediacenter.session.PlaybackState;

/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public static final SparseIntArray f2776j0;
    public int A;
    public int B;
    public int C;
    public int D;
    public int E;
    public int F;
    public int G;
    public int H;
    public int I;
    public int J;
    public int K;
    public int L;
    public int M;
    public int N;
    public float O;
    public float P;
    public int Q;
    public int R;
    public int S;
    public int T;
    public int U;
    public int V;
    public int W;
    public int X;
    public float Y;
    public float Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f2777a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public int f2778a0;
    public int b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public int f2779b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2780c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public int f2781c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2782d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public int[] f2783d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2784e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public String f2785e0;
    public float f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public String f2786f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2787g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public boolean f2788g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2789h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public boolean f2790h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f2791i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public boolean f2792i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f2793j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2794k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2795l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2796m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2797n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f2798o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f2799p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f2800q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f2801r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f2802s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public float f2803t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public float f2804u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public String f2805v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f2806w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f2807x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public float f2808y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f2809z;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f2776j0 = sparseIntArray;
        sparseIntArray.append(39, 24);
        sparseIntArray.append(40, 25);
        sparseIntArray.append(42, 28);
        sparseIntArray.append(43, 29);
        sparseIntArray.append(48, 35);
        sparseIntArray.append(47, 34);
        sparseIntArray.append(21, 4);
        sparseIntArray.append(20, 3);
        sparseIntArray.append(18, 1);
        sparseIntArray.append(56, 6);
        sparseIntArray.append(57, 7);
        sparseIntArray.append(28, 17);
        sparseIntArray.append(29, 18);
        sparseIntArray.append(30, 19);
        sparseIntArray.append(0, 26);
        sparseIntArray.append(44, 31);
        sparseIntArray.append(45, 32);
        sparseIntArray.append(27, 10);
        sparseIntArray.append(26, 9);
        sparseIntArray.append(60, 13);
        sparseIntArray.append(63, 16);
        sparseIntArray.append(61, 14);
        sparseIntArray.append(58, 11);
        sparseIntArray.append(62, 15);
        sparseIntArray.append(59, 12);
        sparseIntArray.append(51, 38);
        sparseIntArray.append(37, 37);
        sparseIntArray.append(36, 39);
        sparseIntArray.append(50, 40);
        sparseIntArray.append(35, 20);
        sparseIntArray.append(49, 36);
        sparseIntArray.append(25, 5);
        sparseIntArray.append(38, 76);
        sparseIntArray.append(46, 76);
        sparseIntArray.append(41, 76);
        sparseIntArray.append(19, 76);
        sparseIntArray.append(17, 76);
        sparseIntArray.append(3, 23);
        sparseIntArray.append(5, 27);
        sparseIntArray.append(7, 30);
        sparseIntArray.append(8, 8);
        sparseIntArray.append(4, 33);
        sparseIntArray.append(6, 2);
        sparseIntArray.append(1, 22);
        sparseIntArray.append(2, 21);
        sparseIntArray.append(22, 61);
        sparseIntArray.append(24, 62);
        sparseIntArray.append(23, 63);
        sparseIntArray.append(55, 69);
        sparseIntArray.append(34, 70);
        sparseIntArray.append(12, 71);
        sparseIntArray.append(10, 72);
        sparseIntArray.append(11, 73);
        sparseIntArray.append(13, 74);
        sparseIntArray.append(9, 75);
    }

    public final void a(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q.f2834d);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i3 = 0; i3 < indexCount; i3++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i3);
            SparseIntArray sparseIntArray = f2776j0;
            int i4 = sparseIntArray.get(index);
            if (i4 == 80) {
                this.f2788g0 = typedArrayObtainStyledAttributes.getBoolean(index, this.f2788g0);
            } else if (i4 != 81) {
                switch (i4) {
                    case 1:
                        this.f2798o = m.e(typedArrayObtainStyledAttributes, index, this.f2798o);
                        break;
                    case 2:
                        this.F = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.F);
                        break;
                    case 3:
                        this.f2797n = m.e(typedArrayObtainStyledAttributes, index, this.f2797n);
                        break;
                    case 4:
                        this.f2796m = m.e(typedArrayObtainStyledAttributes, index, this.f2796m);
                        break;
                    case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                        this.f2805v = typedArrayObtainStyledAttributes.getString(index);
                        break;
                    case MusicClient.TYPE_GESTURE /* 6 */:
                        this.f2809z = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f2809z);
                        break;
                    case PlaybackState.STATE_ERROR /* 7 */:
                        this.A = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.A);
                        break;
                    case 8:
                        this.G = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.G);
                        break;
                    case 9:
                        this.f2802s = m.e(typedArrayObtainStyledAttributes, index, this.f2802s);
                        break;
                    case 10:
                        this.f2801r = m.e(typedArrayObtainStyledAttributes, index, this.f2801r);
                        break;
                    case 11:
                        this.L = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.L);
                        break;
                    case 12:
                        this.M = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.M);
                        break;
                    case 13:
                        this.I = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.I);
                        break;
                    case 14:
                        this.K = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.K);
                        break;
                    case 15:
                        this.N = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.N);
                        break;
                    case 16:
                        this.J = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.J);
                        break;
                    case 17:
                        this.f2782d = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f2782d);
                        break;
                    case 18:
                        this.f2784e = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f2784e);
                        break;
                    case 19:
                        this.f = typedArrayObtainStyledAttributes.getFloat(index, this.f);
                        break;
                    case 20:
                        this.f2803t = typedArrayObtainStyledAttributes.getFloat(index, this.f2803t);
                        break;
                    case 21:
                        this.f2780c = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.f2780c);
                        break;
                    case 22:
                        this.b = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.b);
                        break;
                    case 23:
                        this.C = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.C);
                        break;
                    case 24:
                        this.f2787g = m.e(typedArrayObtainStyledAttributes, index, this.f2787g);
                        break;
                    case 25:
                        this.f2789h = m.e(typedArrayObtainStyledAttributes, index, this.f2789h);
                        break;
                    case 26:
                        this.B = typedArrayObtainStyledAttributes.getInt(index, this.B);
                        break;
                    case 27:
                        this.D = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.D);
                        break;
                    case 28:
                        this.f2791i = m.e(typedArrayObtainStyledAttributes, index, this.f2791i);
                        break;
                    case 29:
                        this.f2793j = m.e(typedArrayObtainStyledAttributes, index, this.f2793j);
                        break;
                    case 30:
                        this.H = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.H);
                        break;
                    case 31:
                        this.f2799p = m.e(typedArrayObtainStyledAttributes, index, this.f2799p);
                        break;
                    case 32:
                        this.f2800q = m.e(typedArrayObtainStyledAttributes, index, this.f2800q);
                        break;
                    case 33:
                        this.E = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.E);
                        break;
                    case 34:
                        this.f2795l = m.e(typedArrayObtainStyledAttributes, index, this.f2795l);
                        break;
                    case 35:
                        this.f2794k = m.e(typedArrayObtainStyledAttributes, index, this.f2794k);
                        break;
                    case 36:
                        this.f2804u = typedArrayObtainStyledAttributes.getFloat(index, this.f2804u);
                        break;
                    case 37:
                        this.P = typedArrayObtainStyledAttributes.getFloat(index, this.P);
                        break;
                    case 38:
                        this.O = typedArrayObtainStyledAttributes.getFloat(index, this.O);
                        break;
                    case 39:
                        this.Q = typedArrayObtainStyledAttributes.getInt(index, this.Q);
                        break;
                    case 40:
                        this.R = typedArrayObtainStyledAttributes.getInt(index, this.R);
                        break;
                    default:
                        switch (i4) {
                            case 54:
                                this.S = typedArrayObtainStyledAttributes.getInt(index, this.S);
                                break;
                            case 55:
                                this.T = typedArrayObtainStyledAttributes.getInt(index, this.T);
                                break;
                            case 56:
                                this.U = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.U);
                                break;
                            case 57:
                                this.V = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.V);
                                break;
                            case 58:
                                this.W = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.W);
                                break;
                            case 59:
                                this.X = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.X);
                                break;
                            default:
                                switch (i4) {
                                    case 61:
                                        this.f2806w = m.e(typedArrayObtainStyledAttributes, index, this.f2806w);
                                        break;
                                    case 62:
                                        this.f2807x = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f2807x);
                                        break;
                                    case 63:
                                        this.f2808y = typedArrayObtainStyledAttributes.getFloat(index, this.f2808y);
                                        break;
                                    default:
                                        switch (i4) {
                                            case 69:
                                                this.Y = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                                                break;
                                            case 70:
                                                this.Z = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                                                break;
                                            case 71:
                                                Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                                                break;
                                            case 72:
                                                this.f2778a0 = typedArrayObtainStyledAttributes.getInt(index, this.f2778a0);
                                                break;
                                            case 73:
                                                this.f2779b0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f2779b0);
                                                break;
                                            case 74:
                                                this.f2785e0 = typedArrayObtainStyledAttributes.getString(index);
                                                break;
                                            case 75:
                                                this.f2792i0 = typedArrayObtainStyledAttributes.getBoolean(index, this.f2792i0);
                                                break;
                                            case 76:
                                                Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                                                break;
                                            case 77:
                                                this.f2786f0 = typedArrayObtainStyledAttributes.getString(index);
                                                break;
                                            default:
                                                Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
            } else {
                this.f2790h0 = typedArrayObtainStyledAttributes.getBoolean(index, this.f2790h0);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
