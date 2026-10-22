package q;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import ecarx.xsf.mediacenter.session.PlaybackState;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final SparseIntArray f2817m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f2818a;
    public float b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f2819c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f2820d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f2821e;
    public float f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f2822g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f2823h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f2824i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f2825j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f2826k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public float f2827l;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f2817m = sparseIntArray;
        sparseIntArray.append(6, 1);
        sparseIntArray.append(7, 2);
        sparseIntArray.append(8, 3);
        sparseIntArray.append(4, 4);
        sparseIntArray.append(5, 5);
        sparseIntArray.append(0, 6);
        sparseIntArray.append(1, 7);
        sparseIntArray.append(2, 8);
        sparseIntArray.append(3, 9);
        sparseIntArray.append(9, 10);
        sparseIntArray.append(10, 11);
    }

    public final void a(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q.f2837h);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i3 = 0; i3 < indexCount; i3++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i3);
            switch (f2817m.get(index)) {
                case 1:
                    this.f2818a = typedArrayObtainStyledAttributes.getFloat(index, this.f2818a);
                    break;
                case 2:
                    this.b = typedArrayObtainStyledAttributes.getFloat(index, this.b);
                    break;
                case 3:
                    this.f2819c = typedArrayObtainStyledAttributes.getFloat(index, this.f2819c);
                    break;
                case 4:
                    this.f2820d = typedArrayObtainStyledAttributes.getFloat(index, this.f2820d);
                    break;
                case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                    this.f2821e = typedArrayObtainStyledAttributes.getFloat(index, this.f2821e);
                    break;
                case MusicClient.TYPE_GESTURE /* 6 */:
                    this.f = typedArrayObtainStyledAttributes.getDimension(index, this.f);
                    break;
                case PlaybackState.STATE_ERROR /* 7 */:
                    this.f2822g = typedArrayObtainStyledAttributes.getDimension(index, this.f2822g);
                    break;
                case 8:
                    this.f2823h = typedArrayObtainStyledAttributes.getDimension(index, this.f2823h);
                    break;
                case 9:
                    this.f2824i = typedArrayObtainStyledAttributes.getDimension(index, this.f2824i);
                    break;
                case 10:
                    this.f2825j = typedArrayObtainStyledAttributes.getDimension(index, this.f2825j);
                    break;
                case 11:
                    this.f2826k = true;
                    this.f2827l = typedArrayObtainStyledAttributes.getDimension(index, this.f2827l);
                    break;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
