package androidx.lifecycle;

import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
public final class a0 implements q {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a0 f555i = new a0();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Handler f559e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f556a = 0;
    public int b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f557c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f558d = true;
    public final s f = new s(this);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final androidx.activity.d f560g = new androidx.activity.d(4, this);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final androidx.emoji2.text.m f561h = new androidx.emoji2.text.m(5, this);

    public final void b() {
        int i3 = this.b + 1;
        this.b = i3;
        if (i3 == 1) {
            if (!this.f557c) {
                this.f559e.removeCallbacks(this.f560g);
            } else {
                this.f.d(k.ON_RESUME);
                this.f557c = false;
            }
        }
    }

    @Override // androidx.lifecycle.q
    public final s f() {
        return this.f;
    }
}
