package androidx.emoji2.text;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.style.ReplacementSpan;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class w extends ReplacementSpan {
    public final o b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Paint.FontMetricsInt f364a = new Paint.FontMetricsInt();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f365c = 1.0f;

    public w(o oVar) {
        a1.b.l(oVar, "metadata cannot be null");
        this.b = oVar;
    }

    @Override // android.text.style.ReplacementSpan
    public final void draw(Canvas canvas, CharSequence charSequence, int i3, int i4, float f, int i5, int i6, int i7, Paint paint) {
        k.a().getClass();
        o oVar = this.b;
        t tVar = oVar.b;
        Typeface typeface = (Typeface) tVar.f361d;
        Typeface typeface2 = paint.getTypeface();
        paint.setTypeface(typeface);
        canvas.drawText((char[]) tVar.b, oVar.f345a * 2, 2, f, i6, paint);
        paint.setTypeface(typeface2);
    }

    @Override // android.text.style.ReplacementSpan
    public final int getSize(Paint paint, CharSequence charSequence, int i3, int i4, Paint.FontMetricsInt fontMetricsInt) {
        Paint.FontMetricsInt fontMetricsInt2 = this.f364a;
        paint.getFontMetricsInt(fontMetricsInt2);
        float fAbs = Math.abs(fontMetricsInt2.descent - fontMetricsInt2.ascent) * 1.0f;
        o oVar = this.b;
        j0.a aVarB = oVar.b();
        int iA = aVarB.a(14);
        this.f365c = fAbs / (iA != 0 ? ((ByteBuffer) aVarB.f741d).getShort(iA + aVarB.f739a) : (short) 0);
        j0.a aVarB2 = oVar.b();
        int iA2 = aVarB2.a(14);
        if (iA2 != 0) {
            ((ByteBuffer) aVarB2.f741d).getShort(iA2 + aVarB2.f739a);
        }
        j0.a aVarB3 = oVar.b();
        int iA3 = aVarB3.a(12);
        short s2 = (short) ((iA3 != 0 ? ((ByteBuffer) aVarB3.f741d).getShort(iA3 + aVarB3.f739a) : (short) 0) * this.f365c);
        if (fontMetricsInt != null) {
            fontMetricsInt.ascent = fontMetricsInt2.ascent;
            fontMetricsInt.descent = fontMetricsInt2.descent;
            fontMetricsInt.top = fontMetricsInt2.top;
            fontMetricsInt.bottom = fontMetricsInt2.bottom;
        }
        return s2;
    }
}
