package r1;

import android.graphics.Paint;
import android.graphics.Path;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int[] f3081i = new int[3];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final float[] f3082j = {0.0f, 0.5f, 1.0f};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int[] f3083k = new int[4];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final float[] f3084l = {0.0f, 0.0f, 0.5f, 1.0f};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Paint f3085a;
    public final Paint b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Paint f3086c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f3087d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f3088e;
    public final int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Path f3089g = new Path();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Paint f3090h;

    public a() {
        Paint paint = new Paint();
        this.f3090h = paint;
        Paint paint2 = new Paint();
        this.f3085a = paint2;
        this.f3087d = v.a.d(-16777216, 68);
        this.f3088e = v.a.d(-16777216, 20);
        this.f = v.a.d(-16777216, 0);
        paint2.setColor(this.f3087d);
        paint.setColor(0);
        Paint paint3 = new Paint(4);
        this.b = paint3;
        paint3.setStyle(Paint.Style.FILL);
        this.f3086c = new Paint(paint3);
    }
}
