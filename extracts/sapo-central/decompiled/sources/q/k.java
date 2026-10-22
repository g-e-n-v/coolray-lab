package q;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2814a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f2815c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f2816d;

    public final void a(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q.f);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i3 = 0; i3 < indexCount; i3++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i3);
            if (index == 1) {
                this.f2815c = typedArrayObtainStyledAttributes.getFloat(index, this.f2815c);
            } else if (index == 0) {
                int i4 = typedArrayObtainStyledAttributes.getInt(index, this.f2814a);
                this.f2814a = i4;
                this.f2814a = m.f2828d[i4];
            } else if (index == 4) {
                this.b = typedArrayObtainStyledAttributes.getInt(index, this.b);
            } else if (index == 3) {
                this.f2816d = typedArrayObtainStyledAttributes.getFloat(index, this.f2816d);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
