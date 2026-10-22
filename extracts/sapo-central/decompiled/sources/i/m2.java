package i;

/* JADX INFO: loaded from: classes.dex */
public final class m2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2101a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2102c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2103d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2104e;
    public int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2105g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f2106h;

    public final void a(int i3, int i4) {
        this.f2102c = i3;
        this.f2103d = i4;
        this.f2106h = true;
        if (this.f2105g) {
            if (i4 != Integer.MIN_VALUE) {
                this.f2101a = i4;
            }
            if (i3 != Integer.MIN_VALUE) {
                this.b = i3;
                return;
            }
            return;
        }
        if (i3 != Integer.MIN_VALUE) {
            this.f2101a = i3;
        }
        if (i4 != Integer.MIN_VALUE) {
            this.b = i4;
        }
    }
}
