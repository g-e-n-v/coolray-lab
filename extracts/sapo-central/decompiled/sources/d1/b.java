package d1;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Xml;
import android.view.View;
import java.util.ArrayList;
import q.m;
import q.q;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1536a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f1537c;

    public b(View view) {
        this.f1537c = view;
    }

    public b(Context context, XmlResourceParser xmlResourceParser) {
        this.f1537c = new ArrayList();
        this.b = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), q.f2836g);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i3 = 0; i3 < indexCount; i3++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i3);
            if (index == 0) {
                this.f1536a = typedArrayObtainStyledAttributes.getResourceId(index, this.f1536a);
            } else if (index == 1) {
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.b);
                this.b = resourceId;
                String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                context.getResources().getResourceName(resourceId);
                if ("layout".equals(resourceTypeName)) {
                    new m().a(context, resourceId);
                }
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
