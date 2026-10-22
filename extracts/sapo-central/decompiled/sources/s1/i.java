package s1;

/* JADX INFO: loaded from: classes.dex */
public final class i extends k1.a {
    @Override // k1.a
    public final void B(t tVar, float f, float f3) {
        tVar.d(f3 * f, 180.0f, 90.0f);
        float f4 = f3 * 2.0f * f;
        p pVar = new p(0.0f, 0.0f, f4, f4);
        pVar.f = 180.0f;
        pVar.f3198g = 90.0f;
        tVar.f.add(pVar);
        n nVar = new n(pVar);
        tVar.a(180.0f);
        tVar.f3206g.add(nVar);
        tVar.f3204d = 270.0f;
        float f5 = (0.0f + f4) * 0.5f;
        float f6 = (f4 - 0.0f) / 2.0f;
        double d3 = 270.0f;
        tVar.b = (((float) Math.cos(Math.toRadians(d3))) * f6) + f5;
        tVar.f3203c = (f6 * ((float) Math.sin(Math.toRadians(d3)))) + f5;
    }
}
