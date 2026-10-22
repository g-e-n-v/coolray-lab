package p;

import com.ecarx.eas.sdk.mediacenter.MusicClient;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class f implements d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final o f2657d;
    public int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2659g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public o f2655a = null;
    public boolean b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2656c = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2658e = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2660h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public g f2661i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f2662j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ArrayList f2663k = new ArrayList();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ArrayList f2664l = new ArrayList();

    public f(o oVar) {
        this.f2657d = oVar;
    }

    @Override // p.d
    public final void a(d dVar) {
        ArrayList arrayList = this.f2664l;
        int size = arrayList.size();
        int i3 = 0;
        int i4 = 0;
        while (i4 < size) {
            Object obj = arrayList.get(i4);
            i4++;
            if (!((f) obj).f2662j) {
                return;
            }
        }
        this.f2656c = true;
        o oVar = this.f2655a;
        if (oVar != null) {
            oVar.a(this);
        }
        if (this.b) {
            this.f2657d.a(this);
            return;
        }
        int size2 = arrayList.size();
        f fVar = null;
        int i5 = 0;
        while (i5 < size2) {
            Object obj2 = arrayList.get(i5);
            i5++;
            f fVar2 = (f) obj2;
            if (!(fVar2 instanceof g)) {
                i3++;
                fVar = fVar2;
            }
        }
        if (fVar != null && i3 == 1 && fVar.f2662j) {
            g gVar = this.f2661i;
            if (gVar != null) {
                if (!gVar.f2662j) {
                    return;
                } else {
                    this.f = this.f2660h * gVar.f2659g;
                }
            }
            d(fVar.f2659g + this.f);
        }
        o oVar2 = this.f2655a;
        if (oVar2 != null) {
            oVar2.a(this);
        }
    }

    public final void b(o oVar) {
        this.f2663k.add(oVar);
        if (this.f2662j) {
            oVar.a(oVar);
        }
    }

    public final void c() {
        this.f2664l.clear();
        this.f2663k.clear();
        this.f2662j = false;
        this.f2659g = 0;
        this.f2656c = false;
        this.b = false;
    }

    public void d(int i3) {
        if (this.f2662j) {
            return;
        }
        this.f2662j = true;
        this.f2659g = i3;
        ArrayList arrayList = this.f2663k;
        int size = arrayList.size();
        int i4 = 0;
        while (i4 < size) {
            Object obj = arrayList.get(i4);
            i4++;
            d dVar = (d) obj;
            dVar.a(dVar);
        }
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f2657d.b.f2566a0);
        sb.append(":");
        switch (this.f2658e) {
            case 1:
                str = "UNKNOWN";
                break;
            case 2:
                str = "HORIZONTAL_DIMENSION";
                break;
            case 3:
                str = "VERTICAL_DIMENSION";
                break;
            case 4:
                str = "LEFT";
                break;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                str = "RIGHT";
                break;
            case MusicClient.TYPE_GESTURE /* 6 */:
                str = "TOP";
                break;
            case PlaybackState.STATE_ERROR /* 7 */:
                str = "BOTTOM";
                break;
            case 8:
                str = "BASELINE";
                break;
            default:
                str = "null";
                break;
        }
        sb.append(str);
        sb.append("(");
        sb.append(this.f2662j ? Integer.valueOf(this.f2659g) : "unresolved");
        sb.append(") <t=");
        sb.append(this.f2664l.size());
        sb.append(":d=");
        sb.append(this.f2663k.size());
        sb.append(">");
        return sb.toString();
    }
}
