package s1;

import android.graphics.RectF;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class h implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f3162a;

    public h(float f) {
        this.f3162a = f;
    }

    @Override // s1.c
    public final float a(RectF rectF) {
        return rectF.height() * this.f3162a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof h) && this.f3162a == ((h) obj).f3162a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f3162a)});
    }
}
