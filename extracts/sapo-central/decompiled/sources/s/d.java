package s;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class d extends ViewGroup.MarginLayoutParams {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public a f3104a;
    public boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3105c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f3106d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f3107e;
    public final int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f3108g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3109h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f3110i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3111j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public View f3112k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public View f3113l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f3114m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f3115n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Rect f3116o;

    public d() {
        super(-2, -2);
        this.b = false;
        this.f3105c = 0;
        this.f3106d = 0;
        this.f3107e = -1;
        this.f = -1;
        this.f3108g = 0;
        this.f3109h = 0;
        this.f3116o = new Rect();
    }

    public final boolean a(int i3) {
        if (i3 == 0) {
            return this.f3114m;
        }
        if (i3 != 1) {
            return false;
        }
        return this.f3115n;
    }

    public d(Context context, AttributeSet attributeSet) {
        a aVar;
        super(context, attributeSet);
        this.b = false;
        this.f3105c = 0;
        this.f3106d = 0;
        this.f3107e = -1;
        this.f = -1;
        this.f3108g = 0;
        this.f3109h = 0;
        this.f3116o = new Rect();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, r.a.b);
        this.f3105c = typedArrayObtainStyledAttributes.getInteger(0, 0);
        this.f = typedArrayObtainStyledAttributes.getResourceId(1, -1);
        this.f3106d = typedArrayObtainStyledAttributes.getInteger(2, 0);
        this.f3107e = typedArrayObtainStyledAttributes.getInteger(6, -1);
        this.f3108g = typedArrayObtainStyledAttributes.getInt(5, 0);
        this.f3109h = typedArrayObtainStyledAttributes.getInt(4, 0);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(3);
        this.b = zHasValue;
        if (zHasValue) {
            String string = typedArrayObtainStyledAttributes.getString(3);
            String str = CoordinatorLayout.f265t;
            if (TextUtils.isEmpty(string)) {
                aVar = null;
            } else {
                if (string.startsWith(".")) {
                    string = context.getPackageName() + string;
                } else if (string.indexOf(46) < 0) {
                    String str2 = CoordinatorLayout.f265t;
                    if (!TextUtils.isEmpty(str2)) {
                        string = str2 + '.' + string;
                    }
                }
                try {
                    ThreadLocal threadLocal = CoordinatorLayout.f267v;
                    Map map = (Map) threadLocal.get();
                    if (map == null) {
                        map = new HashMap();
                        threadLocal.set(map);
                    }
                    Constructor<?> constructor = (Constructor) map.get(string);
                    if (constructor == null) {
                        constructor = Class.forName(string, false, context.getClassLoader()).getConstructor(CoordinatorLayout.f266u);
                        constructor.setAccessible(true);
                        map.put(string, constructor);
                    }
                    aVar = (a) constructor.newInstance(context, attributeSet);
                } catch (Exception e3) {
                    throw new RuntimeException("Could not inflate Behavior subclass " + string, e3);
                }
            }
            this.f3104a = aVar;
        }
        typedArrayObtainStyledAttributes.recycle();
        a aVar2 = this.f3104a;
        if (aVar2 != null) {
            aVar2.c(this);
        }
    }

    public d(d dVar) {
        super((ViewGroup.MarginLayoutParams) dVar);
        this.b = false;
        this.f3105c = 0;
        this.f3106d = 0;
        this.f3107e = -1;
        this.f = -1;
        this.f3108g = 0;
        this.f3109h = 0;
        this.f3116o = new Rect();
    }

    public d(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.b = false;
        this.f3105c = 0;
        this.f3106d = 0;
        this.f3107e = -1;
        this.f = -1;
        this.f3108g = 0;
        this.f3109h = 0;
        this.f3116o = new Rect();
    }

    public d(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.b = false;
        this.f3105c = 0;
        this.f3106d = 0;
        this.f3107e = -1;
        this.f = -1;
        this.f3108g = 0;
        this.f3109h = 0;
        this.f3116o = new Rect();
    }
}
