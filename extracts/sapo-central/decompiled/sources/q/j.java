package q;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import com.ecarx.eas.sdk.mediacenter.MusicClient;

/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final SparseIntArray f2810e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2811a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f2812c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f2813d;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f2810e = sparseIntArray;
        sparseIntArray.append(2, 1);
        sparseIntArray.append(4, 2);
        sparseIntArray.append(5, 3);
        sparseIntArray.append(1, 4);
        sparseIntArray.append(0, 5);
        sparseIntArray.append(3, 6);
    }

    public final void a(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q.f2835e);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i3 = 0; i3 < indexCount; i3++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i3);
            switch (f2810e.get(index)) {
                case 1:
                    this.f2813d = typedArrayObtainStyledAttributes.getFloat(index, this.f2813d);
                    break;
                case 2:
                    this.b = typedArrayObtainStyledAttributes.getInt(index, this.b);
                    break;
                case 3:
                    if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                        typedArrayObtainStyledAttributes.getString(index);
                    } else {
                        String str = m.a.f2431a[typedArrayObtainStyledAttributes.getInteger(index, 0)];
                    }
                    break;
                case 4:
                    typedArrayObtainStyledAttributes.getInt(index, 0);
                    break;
                case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                    this.f2811a = m.e(typedArrayObtainStyledAttributes, index, this.f2811a);
                    break;
                case MusicClient.TYPE_GESTURE /* 6 */:
                    this.f2812c = typedArrayObtainStyledAttributes.getFloat(index, this.f2812c);
                    break;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
