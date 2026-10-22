package q;

import android.view.ViewGroup;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2772a;
    public final k b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final j f2773c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final i f2774d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final l f2775e;
    public HashMap f;

    public h() {
        k kVar = new k();
        kVar.f2814a = 0;
        kVar.b = 0;
        kVar.f2815c = 1.0f;
        kVar.f2816d = Float.NaN;
        this.b = kVar;
        j jVar = new j();
        jVar.f2811a = -1;
        jVar.b = -1;
        jVar.f2812c = Float.NaN;
        jVar.f2813d = Float.NaN;
        this.f2773c = jVar;
        i iVar = new i();
        iVar.f2777a = false;
        iVar.f2782d = -1;
        iVar.f2784e = -1;
        iVar.f = -1.0f;
        iVar.f2787g = -1;
        iVar.f2789h = -1;
        iVar.f2791i = -1;
        iVar.f2793j = -1;
        iVar.f2794k = -1;
        iVar.f2795l = -1;
        iVar.f2796m = -1;
        iVar.f2797n = -1;
        iVar.f2798o = -1;
        iVar.f2799p = -1;
        iVar.f2800q = -1;
        iVar.f2801r = -1;
        iVar.f2802s = -1;
        iVar.f2803t = 0.5f;
        iVar.f2804u = 0.5f;
        iVar.f2805v = null;
        iVar.f2806w = -1;
        iVar.f2807x = 0;
        iVar.f2808y = 0.0f;
        iVar.f2809z = -1;
        iVar.A = -1;
        iVar.B = -1;
        iVar.C = -1;
        iVar.D = -1;
        iVar.E = -1;
        iVar.F = -1;
        iVar.G = -1;
        iVar.H = -1;
        iVar.I = -1;
        iVar.J = -1;
        iVar.K = -1;
        iVar.L = -1;
        iVar.M = -1;
        iVar.N = -1;
        iVar.O = -1.0f;
        iVar.P = -1.0f;
        iVar.Q = 0;
        iVar.R = 0;
        iVar.S = 0;
        iVar.T = 0;
        iVar.U = -1;
        iVar.V = -1;
        iVar.W = -1;
        iVar.X = -1;
        iVar.Y = 1.0f;
        iVar.Z = 1.0f;
        iVar.f2778a0 = -1;
        iVar.f2779b0 = 0;
        iVar.f2781c0 = -1;
        iVar.f2788g0 = false;
        iVar.f2790h0 = false;
        iVar.f2792i0 = true;
        this.f2774d = iVar;
        l lVar = new l();
        lVar.f2818a = 0.0f;
        lVar.b = 0.0f;
        lVar.f2819c = 0.0f;
        lVar.f2820d = 1.0f;
        lVar.f2821e = 1.0f;
        lVar.f = Float.NaN;
        lVar.f2822g = Float.NaN;
        lVar.f2823h = 0.0f;
        lVar.f2824i = 0.0f;
        lVar.f2825j = 0.0f;
        lVar.f2826k = false;
        lVar.f2827l = 0.0f;
        this.f2775e = lVar;
        this.f = new HashMap();
    }

    public final void a(e eVar) {
        i iVar = this.f2774d;
        eVar.f2732d = iVar.f2787g;
        eVar.f2734e = iVar.f2789h;
        eVar.f = iVar.f2791i;
        eVar.f2737g = iVar.f2793j;
        eVar.f2739h = iVar.f2794k;
        eVar.f2741i = iVar.f2795l;
        eVar.f2743j = iVar.f2796m;
        eVar.f2745k = iVar.f2797n;
        eVar.f2747l = iVar.f2798o;
        eVar.f2751p = iVar.f2799p;
        eVar.f2752q = iVar.f2800q;
        eVar.f2753r = iVar.f2801r;
        eVar.f2754s = iVar.f2802s;
        ((ViewGroup.MarginLayoutParams) eVar).leftMargin = iVar.C;
        ((ViewGroup.MarginLayoutParams) eVar).rightMargin = iVar.D;
        ((ViewGroup.MarginLayoutParams) eVar).topMargin = iVar.E;
        ((ViewGroup.MarginLayoutParams) eVar).bottomMargin = iVar.F;
        eVar.f2759x = iVar.N;
        eVar.f2760y = iVar.M;
        eVar.f2756u = iVar.J;
        eVar.f2758w = iVar.L;
        eVar.f2761z = iVar.f2803t;
        eVar.A = iVar.f2804u;
        eVar.f2748m = iVar.f2806w;
        eVar.f2749n = iVar.f2807x;
        eVar.f2750o = iVar.f2808y;
        eVar.B = iVar.f2805v;
        eVar.P = iVar.f2809z;
        eVar.Q = iVar.A;
        eVar.E = iVar.O;
        eVar.D = iVar.P;
        eVar.G = iVar.R;
        eVar.F = iVar.Q;
        eVar.S = iVar.f2788g0;
        eVar.T = iVar.f2790h0;
        eVar.H = iVar.S;
        eVar.I = iVar.T;
        eVar.L = iVar.U;
        eVar.M = iVar.V;
        eVar.J = iVar.W;
        eVar.K = iVar.X;
        eVar.N = iVar.Y;
        eVar.O = iVar.Z;
        eVar.R = iVar.B;
        eVar.f2730c = iVar.f;
        eVar.f2727a = iVar.f2782d;
        eVar.b = iVar.f2784e;
        ((ViewGroup.MarginLayoutParams) eVar).width = iVar.b;
        ((ViewGroup.MarginLayoutParams) eVar).height = iVar.f2780c;
        String str = iVar.f2786f0;
        if (str != null) {
            eVar.U = str;
        }
        eVar.setMarginStart(iVar.H);
        eVar.setMarginEnd(iVar.G);
        eVar.a();
    }

    public final Object clone() {
        h hVar = new h();
        i iVar = hVar.f2774d;
        iVar.getClass();
        i iVar2 = this.f2774d;
        iVar.f2777a = iVar2.f2777a;
        iVar.b = iVar2.b;
        iVar.f2780c = iVar2.f2780c;
        iVar.f2782d = iVar2.f2782d;
        iVar.f2784e = iVar2.f2784e;
        iVar.f = iVar2.f;
        iVar.f2787g = iVar2.f2787g;
        iVar.f2789h = iVar2.f2789h;
        iVar.f2791i = iVar2.f2791i;
        iVar.f2793j = iVar2.f2793j;
        iVar.f2794k = iVar2.f2794k;
        iVar.f2795l = iVar2.f2795l;
        iVar.f2796m = iVar2.f2796m;
        iVar.f2797n = iVar2.f2797n;
        iVar.f2798o = iVar2.f2798o;
        iVar.f2799p = iVar2.f2799p;
        iVar.f2800q = iVar2.f2800q;
        iVar.f2801r = iVar2.f2801r;
        iVar.f2802s = iVar2.f2802s;
        iVar.f2803t = iVar2.f2803t;
        iVar.f2804u = iVar2.f2804u;
        iVar.f2805v = iVar2.f2805v;
        iVar.f2806w = iVar2.f2806w;
        iVar.f2807x = iVar2.f2807x;
        iVar.f2808y = iVar2.f2808y;
        iVar.f2809z = iVar2.f2809z;
        iVar.A = iVar2.A;
        iVar.B = iVar2.B;
        iVar.C = iVar2.C;
        iVar.D = iVar2.D;
        iVar.E = iVar2.E;
        iVar.F = iVar2.F;
        iVar.G = iVar2.G;
        iVar.H = iVar2.H;
        iVar.I = iVar2.I;
        iVar.J = iVar2.J;
        iVar.K = iVar2.K;
        iVar.L = iVar2.L;
        iVar.M = iVar2.M;
        iVar.N = iVar2.N;
        iVar.O = iVar2.O;
        iVar.P = iVar2.P;
        iVar.Q = iVar2.Q;
        iVar.R = iVar2.R;
        iVar.S = iVar2.S;
        iVar.T = iVar2.T;
        iVar.U = iVar2.U;
        iVar.V = iVar2.V;
        iVar.W = iVar2.W;
        iVar.X = iVar2.X;
        iVar.Y = iVar2.Y;
        iVar.Z = iVar2.Z;
        iVar.f2778a0 = iVar2.f2778a0;
        iVar.f2779b0 = iVar2.f2779b0;
        iVar.f2781c0 = iVar2.f2781c0;
        iVar.f2786f0 = iVar2.f2786f0;
        int[] iArr = iVar2.f2783d0;
        if (iArr != null) {
            iVar.f2783d0 = Arrays.copyOf(iArr, iArr.length);
        } else {
            iVar.f2783d0 = null;
        }
        iVar.f2785e0 = iVar2.f2785e0;
        iVar.f2788g0 = iVar2.f2788g0;
        iVar.f2790h0 = iVar2.f2790h0;
        iVar.f2792i0 = iVar2.f2792i0;
        j jVar = hVar.f2773c;
        jVar.getClass();
        j jVar2 = this.f2773c;
        jVar2.getClass();
        jVar.f2811a = jVar2.f2811a;
        jVar.b = jVar2.b;
        jVar.f2813d = jVar2.f2813d;
        jVar.f2812c = jVar2.f2812c;
        k kVar = this.b;
        int i3 = kVar.f2814a;
        k kVar2 = hVar.b;
        kVar2.f2814a = i3;
        kVar2.f2815c = kVar.f2815c;
        kVar2.f2816d = kVar.f2816d;
        kVar2.b = kVar.b;
        l lVar = hVar.f2775e;
        lVar.getClass();
        l lVar2 = this.f2775e;
        lVar2.getClass();
        lVar.f2818a = lVar2.f2818a;
        lVar.b = lVar2.b;
        lVar.f2819c = lVar2.f2819c;
        lVar.f2820d = lVar2.f2820d;
        lVar.f2821e = lVar2.f2821e;
        lVar.f = lVar2.f;
        lVar.f2822g = lVar2.f2822g;
        lVar.f2823h = lVar2.f2823h;
        lVar.f2824i = lVar2.f2824i;
        lVar.f2825j = lVar2.f2825j;
        lVar.f2826k = lVar2.f2826k;
        lVar.f2827l = lVar2.f2827l;
        hVar.f2772a = this.f2772a;
        return hVar;
    }
}
