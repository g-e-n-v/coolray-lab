package androidx.emoji2.text;

import android.text.TextPaint;

/* JADX INFO: loaded from: classes.dex */
public final class c implements g {
    public static final ThreadLocal b = new ThreadLocal();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextPaint f326a;

    public c() {
        TextPaint textPaint = new TextPaint();
        this.f326a = textPaint;
        textPaint.setTextSize(10.0f);
    }
}
