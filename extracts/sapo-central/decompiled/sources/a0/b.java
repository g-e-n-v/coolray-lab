package a0;

import android.text.SpannableStringBuilder;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f5c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final b f6d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final b f7e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f8a;

    static {
        g gVar = h.f15c;
        b = Character.toString((char) 8206);
        f5c = Character.toString((char) 8207);
        f6d = new b(false);
        f7e = new b(true);
    }

    public b(boolean z2) {
        g gVar = h.f14a;
        this.f8a = z2;
    }

    public static int a(CharSequence charSequence) {
        byte directionality;
        a aVar = new a(charSequence);
        aVar.f3c = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = aVar.f3c;
            if (i6 < aVar.b && i3 == 0) {
                CharSequence charSequence2 = aVar.f2a;
                char cCharAt = charSequence2.charAt(i6);
                aVar.f4d = cCharAt;
                if (Character.isHighSurrogate(cCharAt)) {
                    int iCodePointAt = Character.codePointAt(charSequence2, aVar.f3c);
                    aVar.f3c = Character.charCount(iCodePointAt) + aVar.f3c;
                    directionality = Character.getDirectionality(iCodePointAt);
                } else {
                    aVar.f3c++;
                    char c3 = aVar.f4d;
                    directionality = c3 < 1792 ? a.f1e[c3] : Character.getDirectionality(c3);
                }
                if (directionality != 0) {
                    if (directionality == 1 || directionality == 2) {
                        if (i5 == 0) {
                            return 1;
                        }
                    } else if (directionality != 9) {
                        switch (directionality) {
                            case 14:
                            case 15:
                                i5++;
                                i4 = -1;
                                continue;
                            case 16:
                            case 17:
                                i5++;
                                i4 = 1;
                                continue;
                            case 18:
                                i5--;
                                i4 = 0;
                                continue;
                        }
                    }
                } else if (i5 == 0) {
                    return -1;
                }
                i3 = i5;
            }
        }
        if (i3 != 0) {
            if (i4 == 0) {
                while (aVar.f3c > 0) {
                    switch (aVar.a()) {
                        case 14:
                        case 15:
                            if (i3 == i5) {
                                return -1;
                            }
                            i5--;
                            break;
                        case 16:
                        case 17:
                            if (i3 == i5) {
                                return 1;
                            }
                            i5--;
                            break;
                        case 18:
                            i5++;
                            break;
                        default:
                            break;
                    }
                }
            } else {
                return i4;
            }
        }
        return 0;
    }

    public static int b(CharSequence charSequence) {
        a aVar = new a(charSequence);
        aVar.f3c = aVar.b;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            while (aVar.f3c > 0) {
                byte bA = aVar.a();
                if (bA == 0) {
                    if (i3 == 0) {
                        return -1;
                    }
                    if (i4 == 0) {
                    }
                } else if (bA == 1 || bA == 2) {
                    if (i3 == 0) {
                        return 1;
                    }
                    if (i4 == 0) {
                    }
                } else if (bA != 9) {
                    switch (bA) {
                        case 14:
                        case 15:
                            if (i4 == i3) {
                                return -1;
                            }
                            i3--;
                            break;
                        case 16:
                        case 17:
                            if (i4 == i3) {
                                return 1;
                            }
                            i3--;
                            break;
                        case 18:
                            i3++;
                            break;
                        default:
                            if (i4 != 0) {
                            }
                            break;
                    }
                } else {
                    continue;
                }
            }
            return 0;
        }
    }

    public final SpannableStringBuilder c(CharSequence charSequence) {
        String str;
        g gVar = h.f15c;
        if (charSequence == null) {
            return null;
        }
        boolean zB = gVar.b(charSequence, charSequence.length());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        boolean zB2 = (zB ? h.b : h.f14a).b(charSequence, charSequence.length());
        String str2 = "";
        String str3 = f5c;
        String str4 = b;
        boolean z2 = this.f8a;
        if (z2 || !(zB2 || a(charSequence) == 1)) {
            str = (!z2 || (zB2 && a(charSequence) != -1)) ? "" : str3;
        } else {
            str = str4;
        }
        spannableStringBuilder.append((CharSequence) str);
        if (zB != z2) {
            spannableStringBuilder.append(zB ? (char) 8235 : (char) 8234);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append((char) 8236);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        boolean zB3 = (zB ? h.b : h.f14a).b(charSequence, charSequence.length());
        if (!z2 && (zB3 || b(charSequence) == 1)) {
            str2 = str4;
        } else if (z2 && (!zB3 || b(charSequence) == -1)) {
            str2 = str3;
        }
        spannableStringBuilder.append((CharSequence) str2);
        return spannableStringBuilder;
    }
}
