package w0;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.view.View;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class bd extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f3395a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3396c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3397d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Paint f3398e;
    public final Paint f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Paint f3399g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Paint f3400h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Path f3401i;

    public bd(MainActivity mainActivity) {
        super(mainActivity, null);
        this.f3395a = "drive_regen";
        this.b = 100;
        this.f3396c = 100;
        this.f3397d = 100;
        this.f3398e = new Paint(1);
        Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(b(1.4f));
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeJoin(Paint.Join.ROUND);
        this.f = paint;
        Paint paint2 = new Paint(1);
        paint2.setTypeface(Typeface.create("sans-serif", 0));
        paint2.setTextAlign(Paint.Align.CENTER);
        this.f3399g = paint2;
        Paint paint3 = new Paint(paint2);
        paint3.setTypeface(Typeface.create("sans-serif-medium", 0));
        this.f3400h = paint3;
        new RectF();
        this.f3401i = new Path();
    }

    public final RectF a() {
        return new RectF(b(22.0f), b(16.0f), getWidth() - b(22.0f), getHeight() - b(16.0f));
    }

    public final float b(float f) {
        return f * getResources().getDisplayMetrics().density;
    }

    public final void c(Canvas canvas, int i3, int i4, int i5, boolean z2) {
        String str;
        boolean z3;
        bd bdVar = this;
        RectF rectFA = bdVar.a();
        float fCenterY = z2 ? rectFA.top : rectFA.centerY() - bdVar.b(18.0f);
        List listU = y1.f.U(new String[]{"Vidro", "Rosto", "Pés"});
        float fB = bdVar.b(6.0f);
        float fWidth = (rectFA.width() - (2 * fB)) / 3.0f;
        Iterator it = listU.iterator();
        int i6 = 0;
        while (true) {
            boolean z4 = true;
            if (!it.hasNext()) {
                if (z2) {
                    float fB2 = fCenterY + bdVar.b(48.0f);
                    float fWidth2 = (rectFA.width() - (3 * fB)) / 4.0f;
                    int i7 = 0;
                    for (Object obj : y1.f.U(new String[]{"0", "1", "2", "3"})) {
                        int i8 = i7 + 1;
                        if (i7 < 0) {
                            y1.h.W();
                            throw null;
                        }
                        String str2 = (String) obj;
                        boolean z5 = z4;
                        float f = ((fWidth2 + fB) * i7) + rectFA.left;
                        RectF rectF = new RectF(f, fB2, f + fWidth2, bdVar.b(28.0f) + fB2);
                        if (i7 != 2) {
                            z5 = false;
                        }
                        bdVar.d(canvas, rectF, str2, z5, i3, i4, i5);
                        bdVar = this;
                        i7 = i8;
                        z4 = z5;
                    }
                    return;
                }
                return;
            }
            Object next = it.next();
            int i9 = i6 + 1;
            if (i6 < 0) {
                y1.h.W();
                throw null;
            }
            String str3 = (String) next;
            float f3 = ((fWidth + fB) * i6) + rectFA.left;
            RectF rectF2 = new RectF(f3, fCenterY, f3 + fWidth, bdVar.b(36.0f) + fCenterY);
            if (i6 == 1) {
                z3 = true;
                str = str3;
            } else {
                str = str3;
                z3 = false;
            }
            bdVar.d(canvas, rectF2, str, z3, i3, i4, i5);
            i6 = i9;
        }
    }

    public final void d(Canvas canvas, RectF rectF, String str, boolean z2, int i3, int i4, int i5) {
        if (z2) {
            i3 = i4;
        }
        Paint paint = this.f3398e;
        paint.setColor(i3);
        canvas.drawRoundRect(rectF, b(9.0f), b(9.0f), paint);
        float fB = b(10.5f);
        Paint paint2 = this.f3399g;
        paint2.setTextSize(fB);
        if (z2) {
            i5 = -1;
        }
        paint2.setColor(i5);
        canvas.drawText(str, rectF.centerX(), rectF.centerY() - ((paint2.descent() + paint2.ascent()) / 2.0f), paint2);
    }

    public final int getBackgroundPercent() {
        return this.f3396c;
    }

    public final int getGlobalBackgroundPercent() {
        return this.f3397d;
    }

    public final int getSizePercent() {
        return this.b;
    }

    public final String getWidgetKey() {
        return this.f3395a;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        bd bdVar = this;
        i2.g.e(canvas, "canvas");
        super.onDraw(canvas);
        if (bdVar.getWidth() == 0 || bdVar.getHeight() == 0) {
            return;
        }
        int iA = androidx.core.content.c.a(bdVar.getContext(), R.color.master_surface);
        int iA2 = androidx.core.content.c.a(bdVar.getContext(), R.color.master_surface_inset);
        int iA3 = androidx.core.content.c.a(bdVar.getContext(), R.color.master_divider);
        int iA4 = androidx.core.content.c.a(bdVar.getContext(), R.color.master_text);
        int iA5 = androidx.core.content.c.a(bdVar.getContext(), R.color.master_text_secondary);
        int iA6 = androidx.core.content.c.a(bdVar.getContext(), R.color.master_green);
        RectF rectF = new RectF(bdVar.b(8.0f), bdVar.b(6.0f), bdVar.getWidth() - bdVar.b(8.0f), bdVar.getHeight() - bdVar.b(6.0f));
        int i3 = iA2;
        Paint paint = bdVar.f3398e;
        paint.setColor(iA);
        paint.setAlpha(k1.a.k((int) (((bdVar.f3396c * bdVar.f3397d) / 100.0f) * 2.55f), 0, 255));
        canvas.drawRoundRect(rectF, bdVar.b(15.0f), bdVar.b(15.0f), paint);
        Paint paint2 = bdVar.f;
        paint2.setColor(iA3);
        paint2.setAlpha(Math.max(45, paint.getAlpha()));
        canvas.drawRoundRect(rectF, bdVar.b(15.0f), bdVar.b(15.0f), paint2);
        float fJ = k1.a.j((((bdVar.b - 50) / 150.0f) * 0.28f) + 0.72f, 0.72f, 1.0f);
        canvas.save();
        canvas.scale(fJ, fJ, bdVar.getWidth() / 2.0f, bdVar.getHeight() / 2.0f);
        Paint paint3 = bdVar.f3399g;
        paint3.setColor(iA4);
        Paint paint4 = bdVar.f3400h;
        paint4.setColor(iA4);
        paint2.setColor(iA4);
        paint.setAlpha(255);
        String str = bdVar.f3395a;
        switch (str.hashCode()) {
            case -2098953079:
                if (str.equals("vent_fan")) {
                    bdVar.c(canvas, i3, iA6, iA5, true);
                }
                canvas.restore();
                return;
            case -1737689861:
                if (str.equals("sysinfo")) {
                    RectF rectFA = bdVar.a();
                    paint.setColor(i3);
                    canvas.drawRoundRect(rectFA, bdVar.b(12.0f), bdVar.b(12.0f), paint);
                    paint4.setTextSize(bdVar.b(16.0f));
                    paint4.setColor(iA6);
                    canvas.drawText("CPU 42%", rectFA.centerX(), rectFA.centerY() - bdVar.b(7.0f), paint4);
                    paint3.setTextSize(bdVar.b(12.0f));
                    paint3.setColor(iA5);
                    canvas.drawText("58 °C  •  Central", rectFA.centerX(), bdVar.b(17.0f) + rectFA.centerY(), paint3);
                }
                canvas.restore();
                return;
            case -810883302:
                if (str.equals("volume")) {
                    RectF rectFA2 = bdVar.a();
                    float fCenterY = rectFA2.centerY();
                    float fB = rectFA2.left + bdVar.b(18.0f);
                    paint.setColor(iA5);
                    canvas.drawRect(fB, fCenterY - bdVar.b(7.0f), bdVar.b(9.0f) + fB, bdVar.b(7.0f) + fCenterY, paint);
                    Path path = bdVar.f3401i;
                    path.reset();
                    path.moveTo(bdVar.b(9.0f) + fB, fCenterY - bdVar.b(7.0f));
                    path.lineTo(bdVar.b(22.0f) + fB, fCenterY - bdVar.b(17.0f));
                    path.lineTo(bdVar.b(22.0f) + fB, bdVar.b(17.0f) + fCenterY);
                    path.lineTo(bdVar.b(9.0f) + fB, bdVar.b(7.0f) + fCenterY);
                    path.close();
                    canvas.drawPath(path, paint);
                    float fB2 = bdVar.b(40.0f) + fB;
                    float f = rectFA2.right;
                    paint.setColor(i3);
                    canvas.drawRoundRect(new RectF(fB2, fCenterY - bdVar.b(5.0f), f, bdVar.b(5.0f) + fCenterY), bdVar.b(5.0f), bdVar.b(5.0f), paint);
                    paint.setColor(iA6);
                    float fB3 = fCenterY - bdVar.b(5.0f);
                    float fD = androidx.activity.result.b.d(f, fB2, 0.62f, fB2);
                    canvas.drawRoundRect(new RectF(fB2, fB3, fD, bdVar.b(5.0f) + fCenterY), bdVar.b(5.0f), bdVar.b(5.0f), paint);
                    canvas.drawCircle(fD, fCenterY, bdVar.b(9.0f), paint);
                }
                canvas.restore();
                return;
            case 101139:
                int i4 = i3;
                if (str.equals("fan")) {
                    RectF rectFA3 = bdVar.a();
                    float fB4 = bdVar.b(42.0f) + rectFA3.left;
                    float fCenterY2 = rectFA3.centerY();
                    paint2.setStrokeWidth(bdVar.b(3.0f));
                    for (int i5 = 0; i5 < 4; i5++) {
                        canvas.save();
                        canvas.rotate(i5 * 90.0f, fB4, fCenterY2);
                        Path path2 = bdVar.f3401i;
                        path2.reset();
                        path2.moveTo(fB4, fCenterY2 - bdVar.b(5.0f));
                        path2.cubicTo(bdVar.b(7.0f) + fB4, fCenterY2 - bdVar.b(26.0f), bdVar.b(22.0f) + fB4, fCenterY2 - bdVar.b(18.0f), bdVar.b(10.0f) + fB4, fCenterY2 - bdVar.b(4.0f));
                        canvas.drawPath(path2, paint2);
                        canvas.restore();
                    }
                    paint.setColor(iA6);
                    canvas.drawCircle(fB4, fCenterY2, bdVar.b(5.0f), paint);
                    float fB5 = bdVar.b(87.0f) + rectFA3.left;
                    float fB6 = bdVar.b(6.0f);
                    float f3 = ((rectFA3.right - fB5) - (3 * fB6)) / 4.0f;
                    int i6 = 0;
                    for (Object obj : y1.h.V("0", "1", "2", "3")) {
                        int i7 = i6 + 1;
                        if (i6 < 0) {
                            y1.h.W();
                            throw null;
                        }
                        String str2 = (String) obj;
                        float f4 = ((f3 + fB6) * i6) + fB5;
                        RectF rectF2 = new RectF(f4, fCenterY2 - bdVar.b(16.0f), f4 + f3, bdVar.b(16.0f) + fCenterY2);
                        int i8 = i4;
                        bdVar.d(canvas, rectF2, str2, i6 == 2, i8, iA6, iA5);
                        i4 = i8;
                        i6 = i7;
                        iA6 = iA6;
                    }
                }
                canvas.restore();
                return;
            case 3000946:
                int i9 = i3;
                if (str.equals("apps")) {
                    RectF rectFA4 = bdVar.a();
                    float fB7 = bdVar.b(8.0f);
                    float f5 = 2 * fB7;
                    float fMin = Math.min((rectFA4.width() - f5) / 3.0f, bdVar.b(38.0f));
                    float fCenterX = rectFA4.centerX() - (((3 * fMin) + f5) / 2.0f);
                    float fCenterY3 = (rectFA4.centerY() - fMin) - (fB7 / 2.0f);
                    int i10 = 0;
                    while (i10 < 6) {
                        float f6 = fMin + fB7;
                        float f7 = ((i10 % 3) * f6) + fCenterX;
                        float f8 = ((i10 / 3) * f6) + fCenterY3;
                        paint.setColor(i10 == 0 ? iA6 : i9);
                        float f9 = fCenterY3;
                        int i11 = i9;
                        canvas.drawRoundRect(new RectF(f7, f8, f7 + fMin, f8 + fMin), bdVar.b(10.0f), bdVar.b(10.0f), paint);
                        paint3.setTextSize(bdVar.b(12.0f));
                        paint3.setColor(i10 == 0 ? -1 : iA5);
                        i10++;
                        float f10 = fMin / 2.0f;
                        canvas.drawText(String.valueOf(i10), f7 + f10, (f8 + f10) - ((paint3.descent() + paint3.ascent()) / 2.0f), paint3);
                        fCenterY3 = f9;
                        i9 = i11;
                    }
                }
                canvas.restore();
                return;
            case 3556308:
                if (str.equals("temp")) {
                    RectF rectFA5 = bdVar.a();
                    float fCenterY4 = rectFA5.centerY();
                    bdVar.d(canvas, new RectF(rectFA5.left, fCenterY4 - bdVar.b(20.0f), bdVar.b(46.0f) + rectFA5.left, bdVar.b(20.0f) + fCenterY4), "−", false, i3, iA6, iA5);
                    paint4.setTextSize(bdVar.b(25.0f));
                    paint4.setColor(iA6);
                    canvas.drawText("22°", rectFA5.centerX(), fCenterY4 - ((paint4.descent() + paint4.ascent()) / 2.0f), paint4);
                    bdVar.d(canvas, new RectF(rectFA5.right - bdVar.b(46.0f), fCenterY4 - bdVar.b(20.0f), rectFA5.right, bdVar.b(20.0f) + fCenterY4), "+", true, i3, iA6, iA5);
                }
                canvas.restore();
                return;
            case 3615925:
                if (str.equals("vent")) {
                    c(canvas, i3, iA6, iA5, false);
                }
                canvas.restore();
                return;
            case 726539592:
                int i12 = iA6;
                bd bdVar2 = bdVar;
                if (str.equals("drive_regen")) {
                    RectF rectFA6 = bdVar2.a();
                    paint4.setTextSize(bdVar2.b(12.0f));
                    paint4.setTextAlign(Paint.Align.LEFT);
                    canvas.drawText("Condução", rectFA6.left, bdVar2.b(12.0f) + rectFA6.top, paint4);
                    canvas.drawText("Regeneração", bdVar2.b(9.0f) + rectFA6.centerX(), bdVar2.b(12.0f) + rectFA6.top, paint4);
                    paint4.setTextAlign(Paint.Align.CENTER);
                    paint.setColor(iA3);
                    canvas.drawRect(rectFA6.centerX() - bdVar2.b(0.5f), rectFA6.top, bdVar2.b(0.5f) + rectFA6.centerX(), rectFA6.bottom, paint);
                    float fB8 = bdVar2.b(23.0f) + rectFA6.top;
                    float fB9 = bdVar2.b(4.0f);
                    float fWidth = (((rectFA6.width() / 2.0f) - bdVar2.b(9.0f)) - (2 * fB9)) / 3.0f;
                    Iterator it = y1.h.V("Eco", "Conforto", "Sport").iterator();
                    int i13 = 0;
                    while (true) {
                        float f11 = 30.0f;
                        if (it.hasNext()) {
                            Object next = it.next();
                            int i14 = i13 + 1;
                            if (i13 < 0) {
                                y1.h.W();
                                throw null;
                            }
                            String str3 = (String) next;
                            float f12 = ((fWidth + fB9) * i13) + rectFA6.left;
                            RectF rectF3 = new RectF(f12, fB8, f12 + fWidth, bdVar2.b(30.0f) + fB8);
                            boolean z2 = i13 == 1;
                            bd bdVar3 = bdVar2;
                            int i15 = i3;
                            int i16 = i12;
                            bdVar3.d(canvas, rectF3, str3, z2, i15, i16, iA5);
                            i3 = i15;
                            i12 = i16;
                            bdVar2 = bdVar3;
                            i13 = i14;
                        } else {
                            bd bdVar4 = bdVar2;
                            int i17 = i3;
                            int i18 = i12;
                            float fB10 = bdVar4.b(9.0f) + rectFA6.centerX();
                            int i19 = 0;
                            for (Object obj2 : y1.h.V("Baixa", "Média", "Alta")) {
                                int i20 = i19 + 1;
                                if (i19 < 0) {
                                    y1.h.W();
                                    throw null;
                                }
                                float f13 = ((fWidth + fB9) * i19) + fB10;
                                bdVar4.d(canvas, new RectF(f13, fB8, f13 + fWidth, bdVar4.b(f11) + fB8), (String) obj2, i19 == 1, i17, i18, iA5);
                                f11 = 30.0f;
                                bdVar4 = this;
                                i19 = i20;
                            }
                        }
                    }
                }
                canvas.restore();
                return;
            case 795788274:
                if (str.equals("heating")) {
                    RectF rectFA7 = bdVar.a();
                    List listV = y1.h.V("Volante", "Frente", "Traseiro", "Bancos");
                    float fB11 = bdVar.b(6.0f);
                    float fWidth2 = (rectFA7.width() - fB11) / 2.0f;
                    float fB12 = bdVar.b(29.0f);
                    int i21 = 0;
                    for (Object obj3 : listV) {
                        int i22 = i21 + 1;
                        if (i21 < 0) {
                            y1.h.W();
                            throw null;
                        }
                        String str4 = (String) obj3;
                        float f14 = ((fWidth2 + fB11) * (i21 % 2)) + rectFA7.left;
                        float f15 = ((fB12 + fB11) * (i21 / 2)) + rectFA7.top;
                        RectF rectF4 = new RectF(f14, f15, f14 + fWidth2, f15 + fB12);
                        bdVar = this;
                        int i23 = i3;
                        bdVar.d(canvas, rectF4, str4, i21 == 0 || i21 == 3, i23, iA6, iA5);
                        i3 = i23;
                        i21 = i22;
                    }
                }
                canvas.restore();
                return;
            default:
                canvas.restore();
                return;
        }
    }

    public final void setBackgroundPercent(int i3) {
        this.f3396c = k1.a.k(i3, 0, 100);
        invalidate();
    }

    public final void setGlobalBackgroundPercent(int i3) {
        this.f3397d = k1.a.k(i3, 0, 100);
        invalidate();
    }

    public final void setSizePercent(int i3) {
        this.b = k1.a.k(i3, 50, 200);
        invalidate();
    }

    public final void setWidgetKey(String str) {
        i2.g.e(str, "value");
        this.f3395a = str;
        invalidate();
    }
}
