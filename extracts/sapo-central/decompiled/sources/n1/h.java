package n1;

import android.text.TextPaint;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f2519c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final WeakReference f2521e;
    public p1.d f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextPaint f2518a = new TextPaint(1);
    public final j1.a b = new j1.a(1, this);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2520d = true;

    public h(j1.e eVar) {
        this.f2521e = new WeakReference(null);
        this.f2521e = new WeakReference(eVar);
    }
}
