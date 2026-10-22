package i;

import android.content.Context;
import android.graphics.RectF;
import android.os.Build;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class f1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2021a = 0;
    public float b = -1.0f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f2022c = -1.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f2023d = -1.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f2024e = new int[0];
    public boolean f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TextView f2025g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Context f2026h;

    static {
        new RectF();
        new ConcurrentHashMap();
        new ConcurrentHashMap();
    }

    public f1(TextView textView) {
        this.f2025g = textView;
        this.f2026h = textView.getContext();
        if (Build.VERSION.SDK_INT >= 29) {
            new d1();
        } else {
            new c1();
        }
    }

    public static int[] a(int[] iArr) {
        int length = iArr.length;
        if (length != 0) {
            Arrays.sort(iArr);
            ArrayList arrayList = new ArrayList();
            for (int i3 : iArr) {
                if (i3 > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i3)) < 0) {
                    arrayList.add(Integer.valueOf(i3));
                }
            }
            if (length != arrayList.size()) {
                int size = arrayList.size();
                int[] iArr2 = new int[size];
                for (int i4 = 0; i4 < size; i4++) {
                    iArr2[i4] = ((Integer) arrayList.get(i4)).intValue();
                }
                return iArr2;
            }
        }
        return iArr;
    }

    public final boolean b() {
        return !(this.f2025g instanceof v);
    }
}
