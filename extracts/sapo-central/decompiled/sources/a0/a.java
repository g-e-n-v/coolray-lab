package a0;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final byte[] f1e = new byte[1792];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CharSequence f2a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public char f4d;

    static {
        for (int i3 = 0; i3 < 1792; i3++) {
            f1e[i3] = Character.getDirectionality(i3);
        }
    }

    public a(CharSequence charSequence) {
        this.f2a = charSequence;
        this.b = charSequence.length();
    }

    public final byte a() {
        int i3 = this.f3c - 1;
        CharSequence charSequence = this.f2a;
        char cCharAt = charSequence.charAt(i3);
        this.f4d = cCharAt;
        if (Character.isLowSurrogate(cCharAt)) {
            int iCodePointBefore = Character.codePointBefore(charSequence, this.f3c);
            this.f3c -= Character.charCount(iCodePointBefore);
            return Character.getDirectionality(iCodePointBefore);
        }
        this.f3c--;
        char c3 = this.f4d;
        return c3 < 1792 ? f1e[c3] : Character.getDirectionality(c3);
    }
}
