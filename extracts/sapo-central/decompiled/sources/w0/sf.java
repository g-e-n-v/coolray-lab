package w0;

import android.content.ContextWrapper;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Typeface;
import com.ex.auto.R;

/* JADX INFO: loaded from: classes.dex */
public final class sf extends i.b1 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Paint f4238g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Paint f4239h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Paint f4240i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Path f4241j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final RectF f4242k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f4243l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Integer f4244m;

    public sf(ContextWrapper contextWrapper) {
        super(contextWrapper, null);
        Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeJoin(Paint.Join.ROUND);
        this.f4238g = paint;
        Paint paint2 = new Paint(1);
        Paint.Style style = Paint.Style.FILL;
        paint2.setStyle(style);
        this.f4239h = paint2;
        Paint paint3 = new Paint(1);
        paint3.setStyle(style);
        paint3.setTextAlign(Paint.Align.CENTER);
        paint3.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
        this.f4240i = paint3;
        this.f4241j = new Path();
        this.f4242k = new RectF();
        this.f4243l = "wifi";
        setClickable(false);
        setFocusable(false);
        setImportantForAccessibility(2);
    }

    public final void f(Canvas canvas) {
        canvas.save();
        canvas.translate(0.0f, 25.0f);
        canvas.scale(0.48f, 0.48f);
        Path path = this.f4241j;
        path.reset();
        path.moveTo(29.0f, 76.0f);
        path.lineTo(14.0f, 76.0f);
        path.quadTo(10.0f, 76.0f, 13.0f, 71.0f);
        path.lineTo(47.0f, 13.0f);
        path.quadTo(50.0f, 8.0f, 53.0f, 13.0f);
        path.lineTo(87.0f, 71.0f);
        path.quadTo(90.0f, 76.0f, 86.0f, 76.0f);
        path.lineTo(71.0f, 76.0f);
        Paint paint = this.f4238g;
        canvas.drawPath(path, paint);
        path.reset();
        path.moveTo(22.0f, 89.0f);
        path.lineTo(50.0f, 41.0f);
        path.lineTo(78.0f, 89.0f);
        path.lineTo(50.0f, 76.0f);
        path.close();
        canvas.drawPath(path, paint);
        canvas.restore();
        canvas.drawRoundRect(54.0f, 27.0f, 94.0f, 73.0f, 9.0f, 9.0f, paint);
        canvas.drawCircle(74.0f, 50.0f, 11.5f, paint);
        path.reset();
        path.moveTo(71.0f, 43.0f);
        path.lineTo(82.0f, 50.0f);
        path.lineTo(71.0f, 57.0f);
        path.close();
        canvas.drawPath(path, this.f4239h);
    }

    public final Integer getIconColor() {
        return this.f4244m;
    }

    public final String getIconId() {
        return this.f4243l;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:12:0x009e A[PHI: r1
      0x009e: PHI (r1v39 android.graphics.Canvas) = 
      (r1v0 android.graphics.Canvas)
      (r1v0 android.graphics.Canvas)
      (r1v0 android.graphics.Canvas)
      (r1v0 android.graphics.Canvas)
      (r1v0 android.graphics.Canvas)
      (r1v0 android.graphics.Canvas)
      (r1v0 android.graphics.Canvas)
      (r1v27 android.graphics.Canvas)
      (r1v0 android.graphics.Canvas)
      (r1v0 android.graphics.Canvas)
     binds: [B:11:0x009b, B:82:0x05bf, B:74:0x04fc, B:70:0x048f, B:66:0x0456, B:50:0x03bc, B:46:0x0363, B:23:0x010a, B:18:0x00e4, B:14:0x00a7] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:23:0x010a  */
    /* JADX WARN: Code duplicated, block: B:31:0x01fd A[PHI: r7
      0x01fd: PHI (r7v15 android.graphics.Path) = 
      (r7v10 android.graphics.Path)
      (r7v11 android.graphics.Path)
      (r7v12 android.graphics.Path)
      (r7v16 android.graphics.Path)
     binds: [B:42:0x02e4, B:38:0x0295, B:34:0x0242, B:30:0x01fb] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:95:0x064b A[PHI: r1 r3
      0x064b: PHI (r1v38 android.graphics.Canvas) = 
      (r1v0 android.graphics.Canvas)
      (r1v0 android.graphics.Canvas)
      (r1v7 android.graphics.Canvas)
      (r1v0 android.graphics.Canvas)
      (r1v26 android.graphics.Canvas)
      (r1v39 android.graphics.Canvas)
     binds: [B:94:0x0649, B:90:0x063a, B:87:0x05f2, B:31:0x01fd, B:27:0x0159, B:12:0x009e] A[DONT_GENERATE, DONT_INLINE]
      0x064b: PHI (r3v107 android.graphics.Path) = 
      (r3v11 android.graphics.Path)
      (r3v18 android.graphics.Path)
      (r3v19 android.graphics.Path)
      (r3v89 android.graphics.Path)
      (r3v96 android.graphics.Path)
      (r3v109 android.graphics.Path)
     binds: [B:94:0x0649, B:90:0x063a, B:87:0x05f2, B:31:0x01fd, B:27:0x0159, B:12:0x009e] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        Path path;
        Path path2;
        Canvas canvas2 = canvas;
        i2.g.e(canvas2, "canvas");
        int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
        int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
        if (width <= 0 || height <= 0) {
            return;
        }
        float fMin = Math.min(width, height);
        float f = fMin / 100.0f;
        float paddingLeft = ((width - fMin) / 2.0f) + getPaddingLeft();
        float paddingTop = ((height - fMin) / 2.0f) + getPaddingTop();
        Integer num = this.f4244m;
        int iIntValue = num != null ? num.intValue() : androidx.core.content.c.a(getContext(), R.color.master_text);
        Paint paint = this.f4238g;
        paint.setColor(iIntValue);
        paint.setStrokeWidth(5.5f);
        Paint paint2 = this.f4239h;
        paint2.setColor(iIntValue);
        this.f4240i.setColor(iIntValue);
        canvas2.save();
        canvas2.translate(paddingLeft, paddingTop);
        canvas2.scale(f, f);
        String str = this.f4243l;
        int iHashCode = str.hashCode();
        RectF rectF = this.f4242k;
        Path path3 = this.f4241j;
        switch (iHashCode) {
            case -2062114727:
                path = path3;
                if (str.equals("close_apps")) {
                    RectF[] rectFArr = {new RectF(14.0f, 14.0f, 43.0f, 43.0f), new RectF(57.0f, 14.0f, 86.0f, 43.0f), new RectF(14.0f, 57.0f, 43.0f, 86.0f), new RectF(57.0f, 57.0f, 86.0f, 86.0f)};
                    for (int i3 = 0; i3 < 4; i3++) {
                        canvas2.drawRoundRect(rectFArr[i3], 4.0f, 4.0f, paint);
                    }
                    canvas2.drawLine(63.0f, 63.0f, 80.0f, 80.0f, paint);
                    canvas.drawLine(80.0f, 63.0f, 63.0f, 80.0f, paint);
                } else {
                    canvas2.drawCircle(50.0f, 50.0f, 37.0f, paint);
                    path.reset();
                    path.moveTo(37.0f, 38.0f);
                    Path path4 = path;
                    path4.cubicTo(38.0f, 24.0f, 63.0f, 24.0f, 64.0f, 39.0f);
                    path4.cubicTo(64.0f, 49.0f, 51.0f, 50.0f, 50.0f, 62.0f);
                    canvas2.drawPath(path4, paint);
                    canvas2.drawCircle(50.0f, 76.0f, 4.0f, paint2);
                }
                break;
            case -1658020302:
                path = path3;
                if (str.equals("aa_activate")) {
                    f(canvas);
                } else {
                    canvas2.drawCircle(50.0f, 50.0f, 37.0f, paint);
                    path.reset();
                    path.moveTo(37.0f, 38.0f);
                    Path path5 = path;
                    path5.cubicTo(38.0f, 24.0f, 63.0f, 24.0f, 64.0f, 39.0f);
                    path5.cubicTo(64.0f, 49.0f, 51.0f, 50.0f, 50.0f, 62.0f);
                    canvas2.drawPath(path5, paint);
                    canvas2.drawCircle(50.0f, 76.0f, 4.0f, paint2);
                }
                break;
            case -936045084:
                path = path3;
                if (str.equals("karaoke")) {
                    canvas.drawRoundRect(35.0f, 12.0f, 65.0f, 61.0f, 15.0f, 15.0f, paint);
                    rectF.set(23.0f, 35.0f, 77.0f, 79.0f);
                    canvas.drawArc(rectF, 0.0f, 180.0f, false, paint);
                    canvas.drawLine(50.0f, 79.0f, 50.0f, 90.0f, paint);
                    canvas.drawLine(35.0f, 90.0f, 65.0f, 90.0f, paint);
                } else {
                    canvas2 = canvas;
                    canvas2.drawCircle(50.0f, 50.0f, 37.0f, paint);
                    path.reset();
                    path.moveTo(37.0f, 38.0f);
                    Path path6 = path;
                    path6.cubicTo(38.0f, 24.0f, 63.0f, 24.0f, 64.0f, 39.0f);
                    path6.cubicTo(64.0f, 49.0f, 51.0f, 50.0f, 50.0f, 62.0f);
                    canvas2.drawPath(path6, paint);
                    canvas2.drawCircle(50.0f, 76.0f, 4.0f, paint2);
                }
                break;
            case -793615751:
                if (str.equals("app_pip")) {
                    canvas2.drawRoundRect(13.0f, 27.0f, 68.0f, 81.0f, 6.0f, 6.0f, paint);
                    canvas.drawRoundRect(33.0f, 12.0f, 87.0f, 65.0f, 6.0f, 6.0f, paint);
                } else {
                    path = path3;
                    canvas2.drawCircle(50.0f, 50.0f, 37.0f, paint);
                    path.reset();
                    path.moveTo(37.0f, 38.0f);
                    Path path7 = path;
                    path7.cubicTo(38.0f, 24.0f, 63.0f, 24.0f, 64.0f, 39.0f);
                    path7.cubicTo(64.0f, 49.0f, 51.0f, 50.0f, 50.0f, 62.0f);
                    canvas2.drawPath(path7, paint);
                    canvas2.drawCircle(50.0f, 76.0f, 4.0f, paint2);
                }
                break;
            case -753149968:
                if (str.equals("recirc_guard")) {
                    rectF.set(13.0f, 17.0f, 87.0f, 83.0f);
                    canvas.drawArc(rectF, 198.0f, 170.0f, false, paint);
                    canvas.drawArc(rectF, 18.0f, 170.0f, false, paint);
                    path3.reset();
                    path3.moveTo(16.0f, 35.0f);
                    path3.lineTo(13.0f, 20.0f);
                    path3.lineTo(29.0f, 22.0f);
                    canvas.drawPath(path3, paint);
                    path3.reset();
                    path3.moveTo(84.0f, 65.0f);
                    path3.lineTo(87.0f, 80.0f);
                    path3.lineTo(71.0f, 78.0f);
                    canvas.drawPath(path3, paint);
                } else {
                    canvas2 = canvas;
                    path = path3;
                    canvas2.drawCircle(50.0f, 50.0f, 37.0f, paint);
                    path.reset();
                    path.moveTo(37.0f, 38.0f);
                    Path path8 = path;
                    path8.cubicTo(38.0f, 24.0f, 63.0f, 24.0f, 64.0f, 39.0f);
                    path8.cubicTo(64.0f, 49.0f, 51.0f, 50.0f, 50.0f, 62.0f);
                    canvas2.drawPath(path8, paint);
                    canvas2.drawCircle(50.0f, 76.0f, 4.0f, paint2);
                }
                break;
            case -417036516:
                if (str.equals("screen_off")) {
                    path3.reset();
                    path3.moveTo(12.0f, 29.0f);
                    path3.quadTo(12.0f, 22.0f, 20.0f, 22.0f);
                    path3.lineTo(83.0f, 18.0f);
                    path3.quadTo(91.0f, 18.0f, 90.0f, 26.0f);
                    path3.lineTo(87.0f, 71.0f);
                    path3.quadTo(87.0f, 78.0f, 79.0f, 78.0f);
                    path3.lineTo(17.0f, 82.0f);
                    path3.quadTo(9.0f, 82.0f, 10.0f, 74.0f);
                    path3.close();
                    canvas2.drawPath(path3, paint);
                    rectF.set(35.0f, 32.0f, 65.0f, 62.0f);
                    canvas2.drawArc(rectF, -48.0f, 276.0f, false, paint);
                    canvas.drawLine(50.0f, 28.0f, 50.0f, 48.0f, paint);
                } else {
                    path = path3;
                    canvas2.drawCircle(50.0f, 50.0f, 37.0f, paint);
                    path.reset();
                    path.moveTo(37.0f, 38.0f);
                    Path path9 = path;
                    path9.cubicTo(38.0f, 24.0f, 63.0f, 24.0f, 64.0f, 39.0f);
                    path9.cubicTo(64.0f, 49.0f, 51.0f, 50.0f, 50.0f, 62.0f);
                    canvas2.drawPath(path9, paint);
                    canvas2.drawCircle(50.0f, 76.0f, 4.0f, paint2);
                }
                break;
            case -179908303:
                if (str.equals("split_screen")) {
                    path3.reset();
                    path3.moveTo(14.0f, 25.0f);
                    path3.quadTo(14.0f, 19.0f, 20.0f, 19.0f);
                    path3.lineTo(85.0f, 15.0f);
                    path3.quadTo(91.0f, 15.0f, 90.0f, 21.0f);
                    path3.lineTo(86.0f, 73.0f);
                    path3.quadTo(86.0f, 79.0f, 80.0f, 79.0f);
                    path3.lineTo(16.0f, 83.0f);
                    path3.quadTo(10.0f, 83.0f, 11.0f, 77.0f);
                    path3.close();
                    canvas2.drawPath(path3, paint);
                    canvas2.drawLine(50.0f, 21.0f, 48.0f, 79.0f, paint);
                    canvas.drawLine(19.0f, 70.0f, 82.0f, 67.0f, paint);
                    canvas.drawCircle(26.0f, 76.0f, 2.5f, paint2);
                    canvas.drawCircle(36.0f, 75.5f, 2.5f, paint2);
                } else {
                    path = path3;
                    canvas2.drawCircle(50.0f, 50.0f, 37.0f, paint);
                    path.reset();
                    path.moveTo(37.0f, 38.0f);
                    Path path10 = path;
                    path10.cubicTo(38.0f, 24.0f, 63.0f, 24.0f, 64.0f, 39.0f);
                    path10.cubicTo(64.0f, 49.0f, 51.0f, 50.0f, 50.0f, 62.0f);
                    canvas2.drawPath(path10, paint);
                    canvas2.drawCircle(50.0f, 76.0f, 4.0f, paint2);
                }
                break;
            case -43141177:
                if (str.equals("screen_rest")) {
                    canvas2.drawCircle(50.0f, 51.0f, 36.0f, paint);
                    canvas2.drawLine(50.0f, 51.0f, 50.0f, 28.0f, paint);
                    canvas.drawLine(50.0f, 51.0f, 66.0f, 61.0f, paint);
                    canvas.drawLine(34.0f, 9.0f, 42.0f, 15.0f, paint);
                    canvas.drawLine(66.0f, 9.0f, 58.0f, 15.0f, paint);
                } else {
                    path = path3;
                    canvas2.drawCircle(50.0f, 50.0f, 37.0f, paint);
                    path.reset();
                    path.moveTo(37.0f, 38.0f);
                    Path path11 = path;
                    path11.cubicTo(38.0f, 24.0f, 63.0f, 24.0f, 64.0f, 39.0f);
                    path11.cubicTo(64.0f, 49.0f, 51.0f, 50.0f, 50.0f, 62.0f);
                    canvas2.drawPath(path11, paint);
                    canvas2.drawCircle(50.0f, 76.0f, 4.0f, paint2);
                }
                break;
            case 96446:
                if (str.equals("aeb")) {
                    path3.reset();
                    path3.moveTo(14.0f, 63.0f);
                    path3.lineTo(20.0f, 45.0f);
                    path3.quadTo(22.0f, 39.0f, 30.0f, 38.0f);
                    path3.lineTo(64.0f, 38.0f);
                    path3.quadTo(71.0f, 39.0f, 76.0f, 50.0f);
                    path3.lineTo(83.0f, 53.0f);
                    path3.lineTo(87.0f, 67.0f);
                    path3.lineTo(14.0f, 67.0f);
                    path3.close();
                    canvas2.drawPath(path3, paint);
                    canvas2.drawCircle(29.0f, 69.0f, 8.0f, paint);
                    canvas2.drawCircle(70.0f, 69.0f, 8.0f, paint);
                    path3.reset();
                    for (int i4 = 0; i4 < 8; i4++) {
                        double radians = Math.toRadians((((double) i4) * 45.0d) - 90.0d);
                        double d3 = i4 % 2 == 0 ? 11.0d : 5.0d;
                        float fCos = ((float) (Math.cos(radians) * d3)) + 79.0f;
                        float fSin = ((float) (Math.sin(radians) * d3)) + 23.0f;
                        if (i4 == 0) {
                            path3.moveTo(fCos, fSin);
                        } else {
                            path3.lineTo(fCos, fSin);
                        }
                    }
                    path3.close();
                    canvas2.drawPath(path3, paint);
                } else {
                    path = path3;
                    canvas2.drawCircle(50.0f, 50.0f, 37.0f, paint);
                    path.reset();
                    path.moveTo(37.0f, 38.0f);
                    Path path12 = path;
                    path12.cubicTo(38.0f, 24.0f, 63.0f, 24.0f, 64.0f, 39.0f);
                    path12.cubicTo(64.0f, 49.0f, 51.0f, 50.0f, 50.0f, 62.0f);
                    canvas2.drawPath(path12, paint);
                    canvas2.drawCircle(50.0f, 76.0f, 4.0f, paint2);
                }
                break;
            case 3006247:
                if (str.equals("avas")) {
                    canvas2.drawCircle(50.0f, 51.0f, 6.0f, paint2);
                    canvas2.drawLine(50.0f, 57.0f, 50.0f, 86.0f, paint);
                    canvas.drawLine(38.0f, 86.0f, 62.0f, 86.0f, paint);
                    rectF.set(33.0f, 34.0f, 67.0f, 68.0f);
                    canvas.drawArc(rectF, -64.0f, 128.0f, false, paint);
                    rectF.set(18.0f, 19.0f, 82.0f, 83.0f);
                    canvas.drawArc(rectF, -56.0f, 112.0f, false, paint);
                    canvas.drawArc(rectF, 124.0f, 112.0f, false, paint);
                } else {
                    path = path3;
                    canvas2.drawCircle(50.0f, 50.0f, 37.0f, paint);
                    path.reset();
                    path.moveTo(37.0f, 38.0f);
                    Path path13 = path;
                    path13.cubicTo(38.0f, 24.0f, 63.0f, 24.0f, 64.0f, 39.0f);
                    path13.cubicTo(64.0f, 49.0f, 51.0f, 50.0f, 50.0f, 62.0f);
                    canvas2.drawPath(path13, paint);
                    canvas2.drawCircle(50.0f, 76.0f, 4.0f, paint2);
                }
                break;
            case 3649301:
                path2 = path3;
                if (str.equals("wifi")) {
                    float strokeWidth = paint.getStrokeWidth();
                    canvas2.save();
                    canvas2.translate(11.0f, 11.0f);
                    canvas2.scale(0.78f, 0.78f);
                    paint.setStrokeWidth(9.5f);
                    path2.reset();
                    path2.moveTo(5.0f, 39.0f);
                    path2.cubicTo(29.0f, 14.0f, 71.0f, 14.0f, 95.0f, 39.0f);
                    canvas2.drawPath(path2, paint);
                    path2.reset();
                    path2.moveTo(23.0f, 60.0f);
                    path2.cubicTo(38.0f, 44.0f, 62.0f, 44.0f, 77.0f, 60.0f);
                    canvas2.drawPath(path2, paint);
                    path2.reset();
                    path2.moveTo(39.0f, 78.0f);
                    path2.cubicTo(45.0f, 71.0f, 55.0f, 71.0f, 61.0f, 78.0f);
                    canvas2.drawPath(path2, paint);
                    canvas2.drawCircle(50.0f, 91.0f, 7.0f, paint2);
                    canvas2.restore();
                    paint.setStrokeWidth(strokeWidth);
                } else {
                    path = path2;
                    canvas2.drawCircle(50.0f, 50.0f, 37.0f, paint);
                    path.reset();
                    path.moveTo(37.0f, 38.0f);
                    Path path14 = path;
                    path14.cubicTo(38.0f, 24.0f, 63.0f, 24.0f, 64.0f, 39.0f);
                    path14.cubicTo(64.0f, 49.0f, 51.0f, 50.0f, 50.0f, 62.0f);
                    canvas2.drawPath(path14, paint);
                    canvas2.drawCircle(50.0f, 76.0f, 4.0f, paint2);
                }
                break;
            case 110066619:
                path2 = path3;
                if (str.equals("fullscreen")) {
                    canvas2.drawLine(14.0f, 38.0f, 14.0f, 15.0f, paint);
                    canvas.drawLine(14.0f, 15.0f, 37.0f, 15.0f, paint);
                    canvas.drawLine(63.0f, 15.0f, 86.0f, 15.0f, paint);
                    canvas.drawLine(86.0f, 15.0f, 86.0f, 38.0f, paint);
                    canvas.drawLine(14.0f, 62.0f, 14.0f, 85.0f, paint);
                    canvas.drawLine(14.0f, 85.0f, 37.0f, 85.0f, paint);
                    canvas.drawLine(63.0f, 85.0f, 86.0f, 85.0f, paint);
                    canvas.drawLine(86.0f, 85.0f, 86.0f, 62.0f, paint);
                } else {
                    path = path2;
                    canvas2.drawCircle(50.0f, 50.0f, 37.0f, paint);
                    path.reset();
                    path.moveTo(37.0f, 38.0f);
                    Path path15 = path;
                    path15.cubicTo(38.0f, 24.0f, 63.0f, 24.0f, 64.0f, 39.0f);
                    path15.cubicTo(64.0f, 49.0f, 51.0f, 50.0f, 50.0f, 62.0f);
                    canvas2.drawPath(path15, paint);
                    canvas2.drawCircle(50.0f, 76.0f, 4.0f, paint2);
                }
                break;
            case 134853144:
                path2 = path3;
                if (str.equals("cronometro")) {
                    canvas2.drawRoundRect(40.0f, 7.0f, 60.0f, 17.0f, 3.0f, 3.0f, paint);
                    canvas.drawLine(50.0f, 17.0f, 50.0f, 23.0f, paint);
                    canvas.drawLine(70.0f, 22.0f, 79.0f, 31.0f, paint);
                    canvas.drawCircle(50.0f, 57.0f, 32.0f, paint);
                    canvas.drawLine(50.0f, 57.0f, 50.0f, 34.0f, paint);
                    canvas.drawLine(50.0f, 57.0f, 66.0f, 66.0f, paint);
                    canvas.drawCircle(50.0f, 57.0f, 3.5f, paint2);
                } else {
                    path = path2;
                    canvas2.drawCircle(50.0f, 50.0f, 37.0f, paint);
                    path.reset();
                    path.moveTo(37.0f, 38.0f);
                    Path path16 = path;
                    path16.cubicTo(38.0f, 24.0f, 63.0f, 24.0f, 64.0f, 39.0f);
                    path16.cubicTo(64.0f, 49.0f, 51.0f, 50.0f, 50.0f, 62.0f);
                    canvas2.drawPath(path16, paint);
                    canvas2.drawCircle(50.0f, 76.0f, 4.0f, paint2);
                }
                break;
            case 270595184:
                path2 = path3;
                if (str.equals("aa_reset")) {
                    canvas2.save();
                    canvas2.translate(21.0f, 21.0f);
                    canvas2.scale(0.58f, 0.58f);
                    f(canvas);
                    canvas2.restore();
                    rectF.set(8.0f, 8.0f, 92.0f, 92.0f);
                    canvas2.drawArc(rectF, -48.0f, 282.0f, false, paint);
                    path2.reset();
                    path2.moveTo(78.0f, 9.0f);
                    path2.lineTo(92.0f, 10.0f);
                    path2.lineTo(88.0f, 24.0f);
                    canvas2.drawPath(path2, paint);
                } else {
                    path = path2;
                    canvas2.drawCircle(50.0f, 50.0f, 37.0f, paint);
                    path.reset();
                    path.moveTo(37.0f, 38.0f);
                    Path path17 = path;
                    path17.cubicTo(38.0f, 24.0f, 63.0f, 24.0f, 64.0f, 39.0f);
                    path17.cubicTo(64.0f, 49.0f, 51.0f, 50.0f, 50.0f, 62.0f);
                    canvas2.drawPath(path17, paint);
                    canvas2.drawCircle(50.0f, 76.0f, 4.0f, paint2);
                }
                break;
            case 726539592:
                if (str.equals("drive_regen")) {
                    path3.reset();
                    path3.moveTo(11.0f, 48.0f);
                    path3.cubicTo(11.0f, 25.0f, 27.0f, 12.0f, 50.0f, 12.0f);
                    path3.cubicTo(73.0f, 12.0f, 89.0f, 25.0f, 89.0f, 48.0f);
                    path3.cubicTo(89.0f, 68.0f, 75.0f, 84.0f, 58.0f, 88.0f);
                    path3.cubicTo(53.0f, 89.0f, 47.0f, 89.0f, 42.0f, 88.0f);
                    path3.cubicTo(25.0f, 84.0f, 11.0f, 68.0f, 11.0f, 48.0f);
                    path3.close();
                    canvas2.drawPath(path3, paint);
                    canvas.drawRoundRect(29.0f, 37.0f, 71.0f, 63.0f, 9.0f, 9.0f, paint);
                    canvas.drawLine(12.0f, 43.0f, 29.0f, 48.0f, paint);
                    canvas.drawLine(88.0f, 43.0f, 71.0f, 48.0f, paint);
                    canvas.drawLine(36.0f, 63.0f, 31.0f, 80.0f, paint);
                    canvas.drawLine(64.0f, 63.0f, 69.0f, 80.0f, paint);
                } else {
                    path = path3;
                    canvas2 = canvas2;
                    canvas2.drawCircle(50.0f, 50.0f, 37.0f, paint);
                    path.reset();
                    path.moveTo(37.0f, 38.0f);
                    Path path18 = path;
                    path18.cubicTo(38.0f, 24.0f, 63.0f, 24.0f, 64.0f, 39.0f);
                    path18.cubicTo(64.0f, 49.0f, 51.0f, 50.0f, 50.0f, 62.0f);
                    canvas2.drawPath(path18, paint);
                    canvas2.drawCircle(50.0f, 76.0f, 4.0f, paint2);
                }
                break;
            case 780346297:
                if (str.equals("telemetry")) {
                    canvas.drawRoundRect(14.0f, 58.0f, 27.0f, 84.0f, 2.0f, 2.0f, paint);
                    canvas.drawRoundRect(36.0f, 40.0f, 49.0f, 84.0f, 2.0f, 2.0f, paint);
                    canvas.drawRoundRect(58.0f, 20.0f, 71.0f, 84.0f, 2.0f, 2.0f, paint);
                    canvas.drawRoundRect(80.0f, 48.0f, 88.0f, 84.0f, 2.0f, 2.0f, paint);
                } else {
                    canvas2 = canvas;
                    path = path3;
                    canvas2.drawCircle(50.0f, 50.0f, 37.0f, paint);
                    path.reset();
                    path.moveTo(37.0f, 38.0f);
                    Path path19 = path;
                    path19.cubicTo(38.0f, 24.0f, 63.0f, 24.0f, 64.0f, 39.0f);
                    path19.cubicTo(64.0f, 49.0f, 51.0f, 50.0f, 50.0f, 62.0f);
                    canvas2.drawPath(path19, paint);
                    canvas2.drawCircle(50.0f, 76.0f, 4.0f, paint2);
                }
                break;
            case 845503285:
                if (str.equals("power_off")) {
                    rectF.set(14.0f, 14.0f, 86.0f, 86.0f);
                    canvas2.drawArc(rectF, -48.0f, 276.0f, false, paint);
                    canvas.drawLine(50.0f, 9.0f, 50.0f, 51.0f, paint);
                } else {
                    path = path3;
                    canvas2.drawCircle(50.0f, 50.0f, 37.0f, paint);
                    path.reset();
                    path.moveTo(37.0f, 38.0f);
                    Path path110 = path;
                    path110.cubicTo(38.0f, 24.0f, 63.0f, 24.0f, 64.0f, 39.0f);
                    path110.cubicTo(64.0f, 49.0f, 51.0f, 50.0f, 50.0f, 62.0f);
                    canvas2.drawPath(path110, paint);
                    canvas2.drawCircle(50.0f, 76.0f, 4.0f, paint2);
                }
                break;
            case 1421312269:
                if (str.equals("regressiva")) {
                    rectF.set(14.0f, 14.0f, 86.0f, 86.0f);
                    canvas2.drawArc(rectF, 45.0f, 275.0f, false, paint);
                    path3.reset();
                    path3.moveTo(78.0f, 27.0f);
                    path3.lineTo(89.0f, 26.0f);
                    path3.lineTo(84.0f, 37.0f);
                    canvas2.drawPath(path3, paint);
                    Paint paint3 = this.f4240i;
                    paint3.setTextSize(34.0f);
                    canvas2.drawText("10", 50.0f, 62.0f, paint3);
                } else {
                    path = path3;
                    canvas2.drawCircle(50.0f, 50.0f, 37.0f, paint);
                    path.reset();
                    path.moveTo(37.0f, 38.0f);
                    Path path111 = path;
                    path111.cubicTo(38.0f, 24.0f, 63.0f, 24.0f, 64.0f, 39.0f);
                    path111.cubicTo(64.0f, 49.0f, 51.0f, 50.0f, 50.0f, 62.0f);
                    canvas2.drawPath(path111, paint);
                    canvas2.drawCircle(50.0f, 76.0f, 4.0f, paint2);
                }
                break;
            default:
                path = path3;
                canvas2.drawCircle(50.0f, 50.0f, 37.0f, paint);
                path.reset();
                path.moveTo(37.0f, 38.0f);
                Path path112 = path;
                path112.cubicTo(38.0f, 24.0f, 63.0f, 24.0f, 64.0f, 39.0f);
                path112.cubicTo(64.0f, 49.0f, 51.0f, 50.0f, 50.0f, 62.0f);
                canvas2.drawPath(path112, paint);
                canvas2.drawCircle(50.0f, 76.0f, 4.0f, paint2);
                break;
        }
        canvas.restore();
    }

    public final void setIconColor(Integer num) {
        this.f4244m = num;
        invalidate();
    }

    public final void setIconId(String str) {
        i2.g.e(str, "value");
        this.f4243l = str;
        invalidate();
    }
}
