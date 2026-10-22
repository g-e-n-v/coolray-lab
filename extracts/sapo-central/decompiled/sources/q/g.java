package q;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.Xml;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f2768a;
    public final float b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f2769c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f2770d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f2771e;

    public g(Context context, XmlResourceParser xmlResourceParser) {
        this.f2768a = Float.NaN;
        this.b = Float.NaN;
        this.f2769c = Float.NaN;
        this.f2770d = Float.NaN;
        this.f2771e = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), q.f2838i);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i3 = 0; i3 < indexCount; i3++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i3);
            if (index == 0) {
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.f2771e);
                this.f2771e = resourceId;
                String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                context.getResources().getResourceName(resourceId);
                if ("layout".equals(resourceTypeName)) {
                    new m().a(context, resourceId);
                }
            } else if (index == 1) {
                this.f2770d = typedArrayObtainStyledAttributes.getDimension(index, this.f2770d);
            } else if (index == 2) {
                this.b = typedArrayObtainStyledAttributes.getDimension(index, this.b);
            } else if (index == 3) {
                this.f2769c = typedArrayObtainStyledAttributes.getDimension(index, this.f2769c);
            } else if (index == 4) {
                this.f2768a = typedArrayObtainStyledAttributes.getDimension(index, this.f2768a);
            } else {
                Log.v("ConstraintLayoutStates", "Unknown tag");
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
