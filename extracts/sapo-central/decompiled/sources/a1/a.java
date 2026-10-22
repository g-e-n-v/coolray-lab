package a1;

import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f18a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f19c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f20d;

    public a(int i3, int i4, int i5, int i6) {
        this.f18a = i3;
        this.b = i4;
        this.f19c = i5;
        this.f20d = i6;
    }

    public final String a() {
        return String.format(Locale.US, "%d:%02d x%d x%d", Integer.valueOf(this.f18a), Integer.valueOf(this.b), Integer.valueOf(this.f19c), Integer.valueOf(this.f20d));
    }
}
