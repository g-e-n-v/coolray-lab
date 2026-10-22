package q0;

import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class b1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2847a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2848c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2849d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2850e;
    public int[] f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ StaggeredGridLayoutManager f2851g;

    public b1(StaggeredGridLayoutManager staggeredGridLayoutManager) {
        this.f2851g = staggeredGridLayoutManager;
        a();
    }

    public final void a() {
        this.f2847a = -1;
        this.b = Integer.MIN_VALUE;
        this.f2848c = false;
        this.f2849d = false;
        this.f2850e = false;
        int[] iArr = this.f;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
    }
}
