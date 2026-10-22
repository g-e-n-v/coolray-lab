package q0;

import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2965a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2966c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f2967d;

    public void a(int i3, int i4) {
        if (i3 < 0) {
            throw new IllegalArgumentException("Layout positions must be non-negative");
        }
        if (i4 < 0) {
            throw new IllegalArgumentException("Pixel distance must be non-negative");
        }
        int i5 = this.f2966c;
        int i6 = i5 * 2;
        int[] iArr = (int[]) this.f2967d;
        if (iArr == null) {
            int[] iArr2 = new int[4];
            this.f2967d = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i6 >= iArr.length) {
            int[] iArr3 = new int[i5 * 4];
            this.f2967d = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
        }
        int[] iArr4 = (int[]) this.f2967d;
        iArr4[i6] = i3;
        iArr4[i6 + 1] = i4;
        this.f2966c++;
    }

    public void b(RecyclerView recyclerView, boolean z2) {
        this.f2966c = 0;
        int[] iArr = (int[]) this.f2967d;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        i0 i0Var = recyclerView.f635l;
        if (recyclerView.f633k == null || i0Var == null || !i0Var.f2913i) {
            return;
        }
        if (z2) {
            if (!recyclerView.f620d.f()) {
                i0Var.i(recyclerView.f633k.a(), this);
            }
        } else if (!recyclerView.K()) {
            i0Var.h(this.f2965a, this.b, recyclerView.f619c0, this);
        }
        int i3 = this.f2966c;
        if (i3 > i0Var.f2914j) {
            i0Var.f2914j = i3;
            i0Var.f2915k = z2;
            recyclerView.b.k();
        }
    }
}
