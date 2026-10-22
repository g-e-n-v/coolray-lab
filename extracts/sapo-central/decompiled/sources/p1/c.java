package p1;

import android.graphics.Typeface;
import android.text.TextPaint;

/* JADX INFO: loaded from: classes.dex */
public final class c extends k1.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TextPaint f2689c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ k1.a f2690d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ d f2691e;

    public c(d dVar, TextPaint textPaint, k1.a aVar) {
        this.f2691e = dVar;
        this.f2689c = textPaint;
        this.f2690d = aVar;
    }

    @Override // k1.a
    public final void K(int i3) {
        this.f2690d.K(i3);
    }

    @Override // k1.a
    public final void L(Typeface typeface, boolean z2) {
        this.f2691e.d(this.f2689c, typeface);
        this.f2690d.L(typeface, z2);
    }
}
