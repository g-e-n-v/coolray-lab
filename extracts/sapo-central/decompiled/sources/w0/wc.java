package w0;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.ex.auto.MainActivity;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class wc extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Paint f4446a;
    public final Paint b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Path f4447c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RectF f4448d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f4449e;
    public Drawable f;

    public wc(MainActivity mainActivity) {
        super(mainActivity, null);
        Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.FILL);
        this.f4446a = paint;
        Paint paint2 = new Paint(1);
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setStrokeCap(Paint.Cap.ROUND);
        paint2.setStrokeJoin(Paint.Join.ROUND);
        this.b = paint2;
        this.f4447c = new Path();
        this.f4448d = new RectF();
        this.f4449e = "";
    }

    public final Drawable getAppIcon() {
        return this.f;
    }

    public final String getAppId() {
        return this.f4449e;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:121:0x0619 A[PHI: r3 r6
      0x0619: PHI (r3v56 int) = 
      (r3v14 int)
      (r3v19 int)
      (r3v23 int)
      (r3v25 int)
      (r3v27 int)
      (r3v28 int)
      (r3v37 int)
      (r3v40 int)
      (r3v42 int)
      (r3v44 int)
      (r3v61 int)
     binds: [B:120:0x0617, B:116:0x05d7, B:112:0x058b, B:108:0x0533, B:104:0x04db, B:100:0x044d, B:96:0x03fd, B:92:0x03c3, B:88:0x032b, B:84:0x02cc, B:66:0x0198] A[DONT_GENERATE, DONT_INLINE]
      0x0619: PHI (r6v18 android.graphics.Paint) = 
      (r6v4 android.graphics.Paint)
      (r6v4 android.graphics.Paint)
      (r6v4 android.graphics.Paint)
      (r6v4 android.graphics.Paint)
      (r6v4 android.graphics.Paint)
      (r6v4 android.graphics.Paint)
      (r6v4 android.graphics.Paint)
      (r6v4 android.graphics.Paint)
      (r6v4 android.graphics.Paint)
      (r6v4 android.graphics.Paint)
      (r6v23 android.graphics.Paint)
     binds: [B:120:0x0617, B:116:0x05d7, B:112:0x058b, B:108:0x0533, B:104:0x04db, B:100:0x044d, B:96:0x03fd, B:92:0x03c3, B:88:0x032b, B:84:0x02cc, B:66:0x0198] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:123:0x061d  */
    /* JADX WARN: Code duplicated, block: B:125:0x0620 A[LOOP:1: B:124:0x061e->B:125:0x0620, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:62:0x0131  */
    /* JADX WARN: Code duplicated, block: B:66:0x0198 A[PHI: r6
      0x0198: PHI (r6v23 android.graphics.Paint) = 
      (r6v4 android.graphics.Paint)
      (r6v4 android.graphics.Paint)
      (r6v17 android.graphics.Paint)
      (r6v4 android.graphics.Paint)
     binds: [B:65:0x0195, B:76:0x0269, B:73:0x01f8, B:68:0x019f] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        String str;
        int i3;
        int i4;
        int i5;
        i2.g.e(canvas, "canvas");
        super.onDraw(canvas);
        int iMin = Math.min((getWidth() - getPaddingLeft()) - getPaddingRight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        if (iMin <= 0) {
            return;
        }
        int width = ((((getWidth() - getPaddingLeft()) - getPaddingRight()) - iMin) / 2) + getPaddingLeft();
        int height = ((((getHeight() - getPaddingTop()) - getPaddingBottom()) - iMin) / 2) + getPaddingTop();
        Drawable drawable = this.f;
        if (drawable != null) {
            int i6 = (int) (iMin * 0.06f);
            drawable.setBounds(width + i6, height + i6, (width + iMin) - i6, (height + iMin) - i6);
            drawable.draw(canvas);
            return;
        }
        canvas.save();
        canvas.translate(width, height);
        float f = iMin / 100.0f;
        canvas.scale(f, f);
        switch (this.f4449e) {
            case "com.geely.connadaptorlogger":
                str = "#626C76";
                break;
            case "org.bromite.chromium":
                str = "#4285F4";
                break;
            case "br.com.central.dualdashcam":
                str = "#425B72";
                break;
            case "com.waze":
                str = "#2DB8E8";
                break;
            case "com.amazon.amazonvideo.livingroom":
                str = "#132B3A";
                break;
            case "app.revanced.android.gms":
                str = "#F3F5F6";
                break;
            case "org.videolan.vlc":
                str = "#253447";
                break;
            case "com.amaze.filemanager":
                str = "#3478F6";
                break;
            case "org.mozilla.firefox":
                str = "#562C82";
                break;
            case "com.timhss.geelybattery":
                str = "#19B84A";
                break;
            case "com.jazibkhan.equalizer":
                str = "#7656D6";
                break;
            case "com.geely.eisapo":
                str = "#A4C95A";
                break;
            case "com.disney.disneyplus":
                str = "#173AA8";
                break;
            default:
                str = "#66717A";
                break;
        }
        int color = Color.parseColor(str);
        Paint paint = this.f4446a;
        paint.setColor(color);
        canvas.drawRoundRect(2.0f, 2.0f, 98.0f, 98.0f, 23.0f, 23.0f, paint);
        Paint paint2 = this.b;
        paint2.setStrokeWidth(5.5f);
        paint2.setColor(-1);
        paint.setColor(-1);
        String str2 = this.f4449e;
        int iHashCode = str2.hashCode();
        RectF rectF = this.f4448d;
        Path path = this.f4447c;
        switch (iHashCode) {
            case -1986191134:
                i3 = 0;
                if (str2.equals("com.geely.connadaptorlogger")) {
                    canvas.drawRoundRect(22.0f, 13.0f, 78.0f, 87.0f, 6.0f, 6.0f, paint2);
                    canvas.drawLine(34.0f, 34.0f, 66.0f, 34.0f, paint2);
                    canvas.drawLine(34.0f, 50.0f, 66.0f, 50.0f, paint2);
                    canvas.drawLine(34.0f, 66.0f, 57.0f, 66.0f, paint2);
                } else {
                    for (i4 = i3; i4 < 2; i4++) {
                        i5 = i3;
                        while (i5 < 2) {
                            float f3 = (i5 * 29.0f) + 25.0f;
                            float f4 = (i4 * 29.0f) + 25.0f;
                            Paint paint3 = paint2;
                            canvas.drawRoundRect(f3, f4, f3 + 21.0f, f4 + 21.0f, 4.0f, 4.0f, paint3);
                            paint2 = paint3;
                            i5++;
                            i3 = i3;
                        }
                    }
                }
                break;
            case -1946457246:
                i3 = 0;
                if (str2.equals("org.bromite.chromium")) {
                    paint2.setStrokeWidth(8.0f);
                    paint2.setColor(-1);
                    canvas.drawCircle(50.0f, 50.0f, 31.0f, paint2);
                    canvas.drawCircle(50.0f, 50.0f, 12.0f, paint);
                    canvas.drawLine(18.0f, 34.0f, 39.0f, 44.0f, paint2);
                    canvas.drawLine(58.0f, 60.0f, 70.0f, 80.0f, paint2);
                    canvas.drawLine(62.0f, 39.0f, 81.0f, 27.0f, paint2);
                } else {
                    while (i4 < 2) {
                        i5 = i3;
                        while (i5 < 2) {
                            float f5 = (i5 * 29.0f) + 25.0f;
                            float f6 = (i4 * 29.0f) + 25.0f;
                            Paint paint4 = paint2;
                            canvas.drawRoundRect(f5, f6, f5 + 21.0f, f6 + 21.0f, 4.0f, 4.0f, paint4);
                            paint2 = paint4;
                            i5++;
                            i3 = i3;
                        }
                    }
                }
                break;
            case -1851640707:
                i3 = 0;
                if (str2.equals("br.com.central.dualdashcam")) {
                    canvas.drawRoundRect(13.0f, 30.0f, 73.0f, 72.0f, 9.0f, 9.0f, paint2);
                    canvas.drawCircle(43.0f, 51.0f, 13.0f, paint2);
                    path.reset();
                    path.moveTo(73.0f, 42.0f);
                    path.lineTo(88.0f, 34.0f);
                    path.lineTo(88.0f, 68.0f);
                    path.lineTo(73.0f, 60.0f);
                    path.close();
                    canvas.drawPath(path, paint2);
                } else {
                    while (i4 < 2) {
                        i5 = i3;
                        while (i5 < 2) {
                            float f7 = (i5 * 29.0f) + 25.0f;
                            float f8 = (i4 * 29.0f) + 25.0f;
                            Paint paint5 = paint2;
                            canvas.drawRoundRect(f7, f8, f7 + 21.0f, f8 + 21.0f, 4.0f, 4.0f, paint5);
                            paint2 = paint5;
                            i5++;
                            i3 = i3;
                        }
                    }
                }
                break;
            case -660073534:
                i3 = 0;
                if (str2.equals("com.waze")) {
                    canvas.drawRoundRect(19.0f, 23.0f, 79.0f, 68.0f, 20.0f, 20.0f, paint2);
                    path.reset();
                    path.moveTo(22.0f, 58.0f);
                    path.lineTo(12.0f, 72.0f);
                    path.lineTo(31.0f, 68.0f);
                    canvas.drawPath(path, paint2);
                    canvas.drawCircle(35.0f, 48.0f, 3.0f, paint);
                    canvas.drawCircle(63.0f, 48.0f, 3.0f, paint);
                    canvas.drawCircle(31.0f, 77.0f, 7.0f, paint);
                    canvas.drawCircle(68.0f, 77.0f, 7.0f, paint);
                } else {
                    while (i4 < 2) {
                        i5 = i3;
                        while (i5 < 2) {
                            float f9 = (i5 * 29.0f) + 25.0f;
                            float f10 = (i4 * 29.0f) + 25.0f;
                            Paint paint6 = paint2;
                            canvas.drawRoundRect(f9, f10, f9 + 21.0f, f10 + 21.0f, 4.0f, 4.0f, paint6);
                            paint2 = paint6;
                            i5++;
                            i3 = i3;
                        }
                    }
                }
                break;
            case -341031976:
                i3 = 0;
                if (str2.equals("com.amazon.amazonvideo.livingroom")) {
                    paint2.setStrokeWidth(6.0f);
                    path.reset();
                    path.moveTo(17.0f, 43.0f);
                    path.cubicTo(35.0f, 53.0f, 60.0f, 56.0f, 82.0f, 47.0f);
                    canvas.drawPath(path, paint2);
                    path.reset();
                    path.moveTo(68.0f, 42.0f);
                    path.lineTo(84.0f, 47.0f);
                    path.lineTo(76.0f, 62.0f);
                    canvas.drawPath(path, paint2);
                } else {
                    while (i4 < 2) {
                        i5 = i3;
                        while (i5 < 2) {
                            float f11 = (i5 * 29.0f) + 25.0f;
                            float f12 = (i4 * 29.0f) + 25.0f;
                            Paint paint7 = paint2;
                            canvas.drawRoundRect(f11, f12, f11 + 21.0f, f12 + 21.0f, 4.0f, 4.0f, paint7);
                            paint2 = paint7;
                            i5++;
                            i3 = i3;
                        }
                    }
                }
                break;
            case 337603647:
                i3 = 0;
                if (str2.equals("app.revanced.android.gms")) {
                    paint2.setStrokeWidth(9.0f);
                    paint2.setColor(Color.rgb(66, 133, 244));
                    rectF.set(22.0f, 22.0f, 78.0f, 78.0f);
                    canvas.drawArc(rectF, -45.0f, 210.0f, false, paint2);
                    paint2.setColor(Color.rgb(52, 168, 83));
                    canvas.drawArc(rectF, 165.0f, 70.0f, false, paint2);
                    paint2.setColor(Color.rgb(251, 188, 5));
                    canvas.drawArc(rectF, 235.0f, 55.0f, false, paint2);
                    paint2.setColor(Color.rgb(234, 67, 53));
                    canvas.drawArc(rectF, 290.0f, 25.0f, false, paint2);
                    paint2.setColor(Color.rgb(66, 133, 244));
                    canvas.drawLine(53.0f, 51.0f, 80.0f, 51.0f, paint2);
                } else {
                    while (i4 < 2) {
                        i5 = i3;
                        while (i5 < 2) {
                            float f13 = (i5 * 29.0f) + 25.0f;
                            float f14 = (i4 * 29.0f) + 25.0f;
                            Paint paint8 = paint2;
                            canvas.drawRoundRect(f13, f14, f13 + 21.0f, f14 + 21.0f, 4.0f, 4.0f, paint8);
                            paint2 = paint8;
                            i5++;
                            i3 = i3;
                        }
                    }
                }
                break;
            case 512338055:
                i3 = 0;
                if (str2.equals("org.videolan.vlc")) {
                    path.reset();
                    path.moveTo(50.0f, 14.0f);
                    path.lineTo(76.0f, 77.0f);
                    path.lineTo(24.0f, 77.0f);
                    path.close();
                    canvas.drawPath(path, paint);
                    paint2.setColor(Color.parseColor("#F47B20"));
                    paint2.setStrokeWidth(7.0f);
                    canvas.drawLine(37.0f, 47.0f, 63.0f, 47.0f, paint2);
                    canvas.drawLine(31.0f, 62.0f, 69.0f, 62.0f, paint2);
                } else {
                    while (i4 < 2) {
                        i5 = i3;
                        while (i5 < 2) {
                            float f15 = (i5 * 29.0f) + 25.0f;
                            float f16 = (i4 * 29.0f) + 25.0f;
                            Paint paint9 = paint2;
                            canvas.drawRoundRect(f15, f16, f15 + 21.0f, f16 + 21.0f, 4.0f, 4.0f, paint9);
                            paint2 = paint9;
                            i5++;
                            i3 = i3;
                        }
                    }
                }
                break;
            case 951947830:
                i3 = 0;
                if (str2.equals("com.amaze.filemanager")) {
                    path.reset();
                    path.moveTo(15.0f, 34.0f);
                    path.lineTo(41.0f, 34.0f);
                    path.lineTo(49.0f, 43.0f);
                    path.lineTo(85.0f, 43.0f);
                    path.lineTo(80.0f, 76.0f);
                    path.lineTo(15.0f, 76.0f);
                    path.close();
                    canvas.drawPath(path, paint2);
                } else {
                    while (i4 < 2) {
                        i5 = i3;
                        while (i5 < 2) {
                            float f17 = (i5 * 29.0f) + 25.0f;
                            float f18 = (i4 * 29.0f) + 25.0f;
                            Paint paint10 = paint2;
                            canvas.drawRoundRect(f17, f18, f17 + 21.0f, f18 + 21.0f, 4.0f, 4.0f, paint10);
                            paint2 = paint10;
                            i5++;
                            i3 = i3;
                        }
                    }
                }
                break;
            case 998473937:
                i3 = 0;
                if (str2.equals("org.mozilla.firefox")) {
                    paint.setColor(Color.rgb(255, 132, 27));
                    path.reset();
                    path.moveTo(76.0f, 23.0f);
                    path.cubicTo(92.0f, 41.0f, 83.0f, 75.0f, 58.0f, 83.0f);
                    path.cubicTo(31.0f, 91.0f, 10.0f, 70.0f, 17.0f, 45.0f);
                    path.cubicTo(22.0f, 27.0f, 35.0f, 17.0f, 48.0f, 14.0f);
                    path.cubicTo(38.0f, 27.0f, 44.0f, 39.0f, 57.0f, 39.0f);
                    path.cubicTo(71.0f, 39.0f, 78.0f, 51.0f, 71.0f, 62.0f);
                    path.cubicTo(63.0f, 75.0f, 39.0f, 72.0f, 35.0f, 57.0f);
                    path.cubicTo(30.0f, 40.0f, 49.0f, 27.0f, 76.0f, 23.0f);
                    path.close();
                    canvas.drawPath(path, paint);
                } else {
                    while (i4 < 2) {
                        i5 = i3;
                        while (i5 < 2) {
                            float f19 = (i5 * 29.0f) + 25.0f;
                            float f110 = (i4 * 29.0f) + 25.0f;
                            Paint paint11 = paint2;
                            canvas.drawRoundRect(f19, f110, f19 + 21.0f, f110 + 21.0f, 4.0f, 4.0f, paint11);
                            paint2 = paint11;
                            i5++;
                            i3 = i3;
                        }
                    }
                }
                break;
            case 1207488650:
                i3 = 0;
                if (str2.equals("com.timhss.geelybattery")) {
                    canvas.drawRoundRect(17.0f, 32.0f, 78.0f, 70.0f, 7.0f, 7.0f, paint2);
                    canvas.drawRoundRect(78.0f, 43.0f, 87.0f, 59.0f, 3.0f, 3.0f, paint);
                    path.reset();
                    path.moveTo(48.0f, 37.0f);
                    path.lineTo(36.0f, 55.0f);
                    path.lineTo(48.0f, 55.0f);
                    path.lineTo(42.0f, 67.0f);
                    path.lineTo(65.0f, 47.0f);
                    path.lineTo(52.0f, 47.0f);
                    path.close();
                    canvas.drawPath(path, paint);
                } else {
                    while (i4 < 2) {
                        i5 = i3;
                        while (i5 < 2) {
                            float f111 = (i5 * 29.0f) + 25.0f;
                            float f112 = (i4 * 29.0f) + 25.0f;
                            Paint paint12 = paint2;
                            canvas.drawRoundRect(f111, f112, f111 + 21.0f, f112 + 21.0f, 4.0f, 4.0f, paint12);
                            paint2 = paint12;
                            i5++;
                            i3 = i3;
                        }
                    }
                }
                break;
            case 1240781245:
                if (!str2.equals("com.jazibkhan.equalizer")) {
                    i3 = 0;
                    while (i4 < 2) {
                        i5 = i3;
                        while (i5 < 2) {
                            float f113 = (i5 * 29.0f) + 25.0f;
                            float f114 = (i4 * 29.0f) + 25.0f;
                            Paint paint13 = paint2;
                            canvas.drawRoundRect(f113, f114, f113 + 21.0f, f114 + 21.0f, 4.0f, 4.0f, paint13);
                            paint2 = paint13;
                            i5++;
                            i3 = i3;
                        }
                    }
                } else {
                    paint2.setStrokeWidth(5.0f);
                    float[] fArr = {25.0f, 50.0f, 75.0f};
                    float[] fArr2 = {36.0f, 65.0f, 45.0f};
                    Iterator it = new l2.c(0, 2, 1).iterator();
                    while (true) {
                        l2.b bVar = (l2.b) it;
                        if (bVar.hasNext()) {
                            int iNextInt = bVar.nextInt();
                            float f20 = fArr[iNextInt];
                            canvas.drawLine(f20, 17.0f, f20, 83.0f, paint2);
                            paint.setColor(-1);
                            canvas.drawCircle(fArr[iNextInt], fArr2[iNextInt], 9.0f, paint);
                            paint.setColor(Color.parseColor("#7656D6"));
                            canvas.drawCircle(fArr[iNextInt], fArr2[iNextInt], 4.0f, paint);
                        }
                    }
                }
                break;
            case 1245060824:
                if (str2.equals("com.geely.eisapo")) {
                    paint.setColor(Color.rgb(244, 250, 228));
                    canvas.drawOval(18.0f, 34.0f, 82.0f, 79.0f, paint);
                    paint.setColor(Color.rgb(64, 82, 30));
                    canvas.drawCircle(32.0f, 34.0f, 12.0f, paint);
                    canvas.drawCircle(68.0f, 34.0f, 12.0f, paint);
                    paint.setColor(-1);
                    canvas.drawCircle(34.0f, 31.0f, 5.0f, paint);
                    canvas.drawCircle(70.0f, 31.0f, 5.0f, paint);
                    paint2.setColor(Color.rgb(64, 82, 30));
                    paint2.setStrokeWidth(4.0f);
                    rectF.set(29.0f, 46.0f, 71.0f, 69.0f);
                    canvas.drawArc(rectF, 18.0f, 144.0f, false, paint2);
                } else {
                    paint2 = paint2;
                    i3 = 0;
                    while (i4 < 2) {
                        i5 = i3;
                        while (i5 < 2) {
                            float f115 = (i5 * 29.0f) + 25.0f;
                            float f116 = (i4 * 29.0f) + 25.0f;
                            Paint paint14 = paint2;
                            canvas.drawRoundRect(f115, f116, f115 + 21.0f, f116 + 21.0f, 4.0f, 4.0f, paint14);
                            paint2 = paint14;
                            i5++;
                            i3 = i3;
                        }
                    }
                }
                break;
            case 1995410075:
                if (str2.equals("com.disney.disneyplus")) {
                    paint2.setStrokeWidth(5.0f);
                    rectF.set(15.0f, 22.0f, 87.0f, 70.0f);
                    canvas.drawArc(rectF, 195.0f, 128.0f, false, paint2);
                    path.reset();
                    path.moveTo(33.0f, 74.0f);
                    path.cubicTo(36.0f, 41.0f, 60.0f, 35.0f, 68.0f, 49.0f);
                    path.cubicTo(76.0f, 65.0f, 59.0f, 78.0f, 33.0f, 74.0f);
                    canvas.drawPath(path, paint2);
                } else {
                    i3 = 0;
                    while (i4 < 2) {
                        i5 = i3;
                        while (i5 < 2) {
                            float f117 = (i5 * 29.0f) + 25.0f;
                            float f118 = (i4 * 29.0f) + 25.0f;
                            Paint paint15 = paint2;
                            canvas.drawRoundRect(f117, f118, f117 + 21.0f, f118 + 21.0f, 4.0f, 4.0f, paint15);
                            paint2 = paint15;
                            i5++;
                            i3 = i3;
                        }
                    }
                }
                break;
            default:
                i3 = 0;
                while (i4 < 2) {
                    i5 = i3;
                    while (i5 < 2) {
                        float f119 = (i5 * 29.0f) + 25.0f;
                        float f1110 = (i4 * 29.0f) + 25.0f;
                        Paint paint16 = paint2;
                        canvas.drawRoundRect(f119, f1110, f119 + 21.0f, f1110 + 21.0f, 4.0f, 4.0f, paint16);
                        paint2 = paint16;
                        i5++;
                        i3 = i3;
                    }
                }
                break;
        }
        canvas.restore();
    }

    public final void setAppIcon(Drawable drawable) {
        this.f = drawable;
        invalidate();
    }

    public final void setAppId(String str) {
        i2.g.e(str, "value");
        this.f4449e = str;
        invalidate();
    }
}
