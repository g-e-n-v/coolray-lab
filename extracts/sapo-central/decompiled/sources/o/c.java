package o;

import com.ecarx.eas.sdk.mediacenter.MusicClient;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import n.h;
import p.n;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2559c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final d f2560d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f2561e;
    public c f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public h f2564i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public HashSet f2558a = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2562g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2563h = -1;

    public c(d dVar, int i3) {
        this.f2560d = dVar;
        this.f2561e = i3;
    }

    public final void a(c cVar, int i3, int i4) {
        if (cVar == null) {
            g();
            return;
        }
        this.f = cVar;
        if (cVar.f2558a == null) {
            cVar.f2558a = new HashSet();
        }
        HashSet hashSet = this.f.f2558a;
        if (hashSet != null) {
            hashSet.add(this);
        }
        if (i3 > 0) {
            this.f2562g = i3;
        } else {
            this.f2562g = 0;
        }
        this.f2563h = i4;
    }

    public final void b(int i3, ArrayList arrayList, n nVar) {
        HashSet hashSet = this.f2558a;
        if (hashSet != null) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                p.h.b(((c) it.next()).f2560d, i3, arrayList, nVar);
            }
        }
    }

    public final int c() {
        if (this.f2559c) {
            return this.b;
        }
        return 0;
    }

    public final int d() {
        c cVar;
        if (this.f2560d.Z == 8) {
            return 0;
        }
        int i3 = this.f2563h;
        return (i3 <= -1 || (cVar = this.f) == null || cVar.f2560d.Z != 8) ? this.f2562g : i3;
    }

    public final boolean e() {
        c cVar;
        HashSet<c> hashSet = this.f2558a;
        if (hashSet == null) {
            return false;
        }
        for (c cVar2 : hashSet) {
            d dVar = cVar2.f2560d;
            int i3 = cVar2.f2561e;
            switch (n.g.b(i3)) {
                case 0:
                case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                case MusicClient.TYPE_GESTURE /* 6 */:
                case PlaybackState.STATE_ERROR /* 7 */:
                case 8:
                    cVar = null;
                    break;
                case 1:
                    cVar = dVar.D;
                    break;
                case 2:
                    cVar = dVar.E;
                    break;
                case 3:
                    cVar = dVar.B;
                    break;
                case 4:
                    cVar = dVar.C;
                    break;
                default:
                    throw new AssertionError(androidx.activity.result.b.u(i3));
            }
            if (cVar.f()) {
                return true;
            }
        }
        return false;
    }

    public final boolean f() {
        return this.f != null;
    }

    public final void g() {
        HashSet hashSet;
        c cVar = this.f;
        if (cVar != null && (hashSet = cVar.f2558a) != null) {
            hashSet.remove(this);
            if (this.f.f2558a.size() == 0) {
                this.f.f2558a = null;
            }
        }
        this.f2558a = null;
        this.f = null;
        this.f2562g = 0;
        this.f2563h = -1;
        this.f2559c = false;
        this.b = 0;
    }

    public final void h() {
        h hVar = this.f2564i;
        if (hVar == null) {
            this.f2564i = new h(1);
        } else {
            hVar.c();
        }
    }

    public final void i(int i3) {
        this.b = i3;
        this.f2559c = true;
    }

    public final String toString() {
        return this.f2560d.f2566a0 + ":" + androidx.activity.result.b.u(this.f2561e);
    }
}
