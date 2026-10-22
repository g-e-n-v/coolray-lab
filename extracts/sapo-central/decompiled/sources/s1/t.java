package s1;

import android.graphics.Matrix;
import android.graphics.Path;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f3202a;
    public float b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f3203c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f3204d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f3205e;
    public final ArrayList f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayList f3206g = new ArrayList();

    public t() {
        d(0.0f, 270.0f, 0.0f);
    }

    public final void a(float f) {
        float f3 = this.f3204d;
        if (f3 == f) {
            return;
        }
        float f4 = ((f - f3) + 360.0f) % 360.0f;
        if (f4 > 180.0f) {
            return;
        }
        float f5 = this.b;
        float f6 = this.f3203c;
        p pVar = new p(f5, f6, f5, f6);
        pVar.f = this.f3204d;
        pVar.f3198g = f4;
        this.f3206g.add(new n(pVar));
        this.f3204d = f;
    }

    public final void b(Matrix matrix, Path path) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            ((r) arrayList.get(i3)).a(matrix, path);
        }
    }

    public final void c(float f, float f3) {
        q qVar = new q();
        qVar.b = f;
        qVar.f3199c = f3;
        this.f.add(qVar);
        o oVar = new o(qVar, this.b, this.f3203c);
        float fB = oVar.b() + 270.0f;
        float fB2 = oVar.b() + 270.0f;
        a(fB);
        this.f3206g.add(oVar);
        this.f3204d = fB2;
        this.b = f;
        this.f3203c = f3;
    }

    public final void d(float f, float f3, float f4) {
        this.f3202a = f;
        this.b = 0.0f;
        this.f3203c = f;
        this.f3204d = f3;
        this.f3205e = (f3 + f4) % 360.0f;
        this.f.clear();
        this.f3206g.clear();
    }
}
