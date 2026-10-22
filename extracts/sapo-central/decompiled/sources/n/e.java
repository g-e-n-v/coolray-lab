package n;

/* JADX INFO: loaded from: classes.dex */
public final class e implements Comparable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public h f2467a;
    public final /* synthetic */ f b;

    public e(f fVar) {
        this.b = fVar;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f2467a.b - ((h) obj).b;
    }

    public final String toString() {
        String str = "[ ";
        if (this.f2467a != null) {
            for (int i3 = 0; i3 < 9; i3++) {
                str = str + this.f2467a.f2476h[i3] + " ";
            }
        }
        return str + "] " + this.f2467a;
    }
}
