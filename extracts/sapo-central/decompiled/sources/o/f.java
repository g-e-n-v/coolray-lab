package o;

import com.ecarx.eas.sdk.mediacenter.MusicClient;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.ArrayList;
import n.h;

/* JADX INFO: loaded from: classes.dex */
public final class f extends d {

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public float f2612j0 = -1.0f;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public int f2613k0 = -1;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public int f2614l0 = -1;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public c f2615m0 = this.C;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public int f2616n0 = 0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public boolean f2617o0;

    public f() {
        this.K.clear();
        this.K.add(this.f2615m0);
        int length = this.J.length;
        for (int i3 = 0; i3 < length; i3++) {
            this.J[i3] = this.f2615m0;
        }
    }

    @Override // o.d
    public final void F(n.c cVar, boolean z2) {
        if (this.M == null) {
            return;
        }
        c cVar2 = this.f2615m0;
        cVar.getClass();
        int iN = n.c.n(cVar2);
        if (this.f2616n0 == 1) {
            this.R = iN;
            this.S = 0;
            A(this.M.i());
            D(0);
            return;
        }
        this.R = 0;
        this.S = iN;
        D(this.M.l());
        A(0);
    }

    public final void G(int i3) {
        this.f2615m0.i(i3);
        this.f2617o0 = true;
    }

    public final void H(int i3) {
        if (this.f2616n0 == i3) {
            return;
        }
        this.f2616n0 = i3;
        ArrayList arrayList = this.K;
        arrayList.clear();
        if (this.f2616n0 == 1) {
            this.f2615m0 = this.B;
        } else {
            this.f2615m0 = this.C;
        }
        arrayList.add(this.f2615m0);
        c[] cVarArr = this.J;
        int length = cVarArr.length;
        for (int i4 = 0; i4 < length; i4++) {
            cVarArr[i4] = this.f2615m0;
        }
    }

    @Override // o.d
    public final void b(n.c cVar, boolean z2) {
        e eVar = (e) this.M;
        if (eVar == null) {
            return;
        }
        Object objG = eVar.g(2);
        Object objG2 = eVar.g(4);
        d dVar = this.M;
        boolean z3 = dVar != null && dVar.f2580i0[0] == 2;
        if (this.f2616n0 == 0) {
            objG = eVar.g(3);
            objG2 = eVar.g(5);
            d dVar2 = this.M;
            z3 = dVar2 != null && dVar2.f2580i0[1] == 2;
        }
        if (this.f2617o0) {
            c cVar2 = this.f2615m0;
            if (cVar2.f2559c) {
                h hVarK = cVar.k(cVar2);
                cVar.d(hVarK, this.f2615m0.c());
                if (this.f2613k0 != -1) {
                    if (z3) {
                        cVar.f(cVar.k(objG2), hVarK, 0, 5);
                    }
                } else if (this.f2614l0 != -1 && z3) {
                    h hVarK2 = cVar.k(objG2);
                    cVar.f(hVarK, cVar.k(objG), 0, 5);
                    cVar.f(hVarK2, hVarK, 0, 5);
                }
                this.f2617o0 = false;
                return;
            }
        }
        if (this.f2613k0 != -1) {
            h hVarK3 = cVar.k(this.f2615m0);
            cVar.e(hVarK3, cVar.k(objG), this.f2613k0, 8);
            if (z3) {
                cVar.f(cVar.k(objG2), hVarK3, 0, 5);
                return;
            }
            return;
        }
        if (this.f2614l0 != -1) {
            h hVarK4 = cVar.k(this.f2615m0);
            h hVarK5 = cVar.k(objG2);
            cVar.e(hVarK4, hVarK5, -this.f2614l0, 8);
            if (z3) {
                cVar.f(hVarK4, cVar.k(objG), 0, 5);
                cVar.f(hVarK5, hVarK4, 0, 5);
                return;
            }
            return;
        }
        if (this.f2612j0 != -1.0f) {
            h hVarK6 = cVar.k(this.f2615m0);
            h hVarK7 = cVar.k(objG2);
            float f = this.f2612j0;
            n.b bVarL = cVar.l();
            bVarL.f2449d.g(hVarK6, -1.0f);
            bVarL.f2449d.g(hVarK7, f);
            cVar.c(bVarL);
        }
    }

    @Override // o.d
    public final boolean c() {
        return true;
    }

    @Override // o.d
    public final c g(int i3) {
        switch (n.g.b(i3)) {
            case 0:
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
            case MusicClient.TYPE_GESTURE /* 6 */:
            case PlaybackState.STATE_ERROR /* 7 */:
            case 8:
                return null;
            case 1:
            case 3:
                if (this.f2616n0 == 1) {
                    return this.f2615m0;
                }
                break;
            case 2:
            case 4:
                if (this.f2616n0 == 0) {
                    return this.f2615m0;
                }
                break;
        }
        throw new AssertionError(androidx.activity.result.b.u(i3));
    }

    @Override // o.d
    public final boolean u() {
        return this.f2617o0;
    }

    @Override // o.d
    public final boolean v() {
        return this.f2617o0;
    }
}
