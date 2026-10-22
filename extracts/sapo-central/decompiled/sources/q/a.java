package q;

/* JADX INFO: loaded from: classes.dex */
public final class a extends c {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2714h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f2715i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public o.a f2716j;

    public int getMargin() {
        return this.f2716j.f2541n0;
    }

    public int getType() {
        return this.f2714h;
    }

    public void setAllowsGoneWidget(boolean z2) {
        this.f2716j.f2540m0 = z2;
    }

    public void setDpMargin(int i3) {
        this.f2716j.f2541n0 = (int) ((i3 * getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void setMargin(int i3) {
        this.f2716j.f2541n0 = i3;
    }

    public void setType(int i3) {
        this.f2714h = i3;
    }
}
