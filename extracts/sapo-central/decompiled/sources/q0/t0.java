package q0;

/* JADX INFO: loaded from: classes.dex */
public final class t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3004a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3005c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3006d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3007e;
    public boolean f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f3008g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f3009h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f3010i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f3011j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f3012k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f3013l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f3014m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3015n;

    public final void a(int i3) {
        if ((this.f3006d & i3) != 0) {
            return;
        }
        throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i3) + " but it is " + Integer.toBinaryString(this.f3006d));
    }

    public final int b() {
        return this.f3008g ? this.b - this.f3005c : this.f3007e;
    }

    public final String toString() {
        return "State{mTargetPosition=" + this.f3004a + ", mData=null, mItemCount=" + this.f3007e + ", mIsMeasuring=" + this.f3010i + ", mPreviousLayoutItemCount=" + this.b + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f3005c + ", mStructureChanged=" + this.f + ", mInPreLayout=" + this.f3008g + ", mRunSimpleAnimations=" + this.f3011j + ", mRunPredictiveAnimations=" + this.f3012k + '}';
    }
}
