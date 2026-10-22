package s1;

import android.graphics.Canvas;
import android.graphics.Matrix;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class m extends s {
    public final /* synthetic */ ArrayList b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Matrix f3191c;

    public m(ArrayList arrayList, Matrix matrix) {
        this.b = arrayList;
        this.f3191c = matrix;
    }

    @Override // s1.s
    public final void a(Matrix matrix, r1.a aVar, int i3, Canvas canvas) {
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        int i4 = 0;
        while (i4 < size) {
            Object obj = arrayList.get(i4);
            i4++;
            ((s) obj).a(this.f3191c, aVar, i3, canvas);
        }
    }
}
