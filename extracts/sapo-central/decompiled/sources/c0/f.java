package c0;

import android.content.ClipData;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContentInfo;
import com.ex.auto.HomeFloatingWidgetsService;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Locale;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class f implements e, g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f712a = 0;
    public Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f713c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f714d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f715e;
    public Object f;

    public /* synthetic */ f() {
    }

    public static Integer a(Object obj, String str, int[] iArr) {
        Method[] methods = obj.getClass().getMethods();
        i2.g.e(methods, "array");
        int i3 = 0;
        while (true) {
            if (!(i3 < methods.length)) {
                return null;
            }
            int i4 = i3 + 1;
            try {
                Method method = methods[i3];
                if (i2.g.a(method.getName(), str)) {
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    if (parameterTypes.length == iArr.length) {
                        int length = parameterTypes.length;
                        int i5 = 0;
                        while (true) {
                            if (i5 >= length) {
                                try {
                                    int length2 = iArr.length;
                                    Integer[] numArr = new Integer[length2];
                                    int length3 = iArr.length;
                                    for (int i6 = 0; i6 < length3; i6++) {
                                        numArr[i6] = Integer.valueOf(iArr[i6]);
                                    }
                                    Object objInvoke = method.invoke(obj, Arrays.copyOf(numArr, length2));
                                    if (objInvoke instanceof Integer) {
                                        return (Integer) objInvoke;
                                    }
                                    return null;
                                } catch (Throwable unused) {
                                    return null;
                                }
                            }
                            if (!i2.g.a(parameterTypes[i5], Integer.TYPE)) {
                                break;
                            }
                            i5++;
                        }
                    } else {
                        continue;
                    }
                }
                i3 = i4;
            } catch (ArrayIndexOutOfBoundsException e3) {
                throw new NoSuchElementException(e3.getMessage());
            }
        }
    }

    public static boolean b(Object obj, int[] iArr) {
        Method[] methods = obj.getClass().getMethods();
        i2.g.e(methods, "array");
        int i3 = 0;
        while (true) {
            if (!(i3 < methods.length)) {
                break;
            }
            int i4 = i3 + 1;
            try {
                Method method = methods[i3];
                if (i2.g.a(method.getName(), "setGroupVolume")) {
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    if (parameterTypes.length == iArr.length) {
                        int length = parameterTypes.length;
                        int i5 = 0;
                        while (true) {
                            if (i5 >= length) {
                                try {
                                    int length2 = iArr.length;
                                    Integer[] numArr = new Integer[length2];
                                    int length3 = iArr.length;
                                    for (int i6 = 0; i6 < length3; i6++) {
                                        numArr[i6] = Integer.valueOf(iArr[i6]);
                                    }
                                    method.invoke(obj, Arrays.copyOf(numArr, length2));
                                    return true;
                                } catch (Throwable unused) {
                                }
                            } else {
                                if (!i2.g.a(parameterTypes[i5], Integer.TYPE)) {
                                    break;
                                }
                                i5++;
                            }
                        }
                    } else {
                        continue;
                    }
                }
                i3 = i4;
            } catch (ArrayIndexOutOfBoundsException e3) {
                throw new NoSuchElementException(e3.getMessage());
            }
        }
        return false;
    }

    @Override // c0.e
    public h build() {
        return new h(new f(this));
    }

    @Override // c0.g
    public ClipData c() {
        return (ClipData) this.b;
    }

    public int d() {
        Integer numG;
        if (e() && (numG = g("getGroupMaxVolume")) != null) {
            return numG.intValue();
        }
        try {
            return ((AudioManager) this.b).getStreamMaxVolume(3);
        } catch (Throwable unused) {
            return 39;
        }
    }

    public boolean e() {
        return this.f != null && this.f713c >= 0;
    }

    public int f() {
        Integer numG;
        if (e() && (numG = g("getGroupVolume")) != null) {
            return numG.intValue();
        }
        try {
            return ((AudioManager) this.b).getStreamVolume(3);
        } catch (Throwable unused) {
            return 0;
        }
    }

    public Integer g(String str) {
        Object obj = this.f;
        if (obj == null) {
            return null;
        }
        Integer numA = a(obj, str, new int[]{this.f713c});
        if (numA != null) {
            return Integer.valueOf(numA.intValue());
        }
        Integer numA2 = a(obj, str, new int[]{0, this.f713c});
        if (numA2 != null) {
            return Integer.valueOf(numA2.intValue());
        }
        return null;
    }

    @Override // c0.g
    public int h() {
        return this.f714d;
    }

    @Override // c0.g
    public ContentInfo i() {
        return null;
    }

    @Override // c0.e
    public void j(Uri uri) {
        this.f715e = uri;
    }

    @Override // c0.g
    public int k() {
        return this.f713c;
    }

    public boolean l() {
        if (!e()) {
            try {
                return ((AudioManager) this.b).isStreamMute(3);
            } catch (Throwable unused) {
                return false;
            }
        }
        Integer numG = g("getGroupMuteState");
        if (numG != null) {
            return numG.intValue() != 0;
        }
        return this.f714d >= 0 || f() == 0;
    }

    @Override // c0.e
    public void m(int i3) {
        this.f714d = i3;
    }

    public void n(int i3) {
        Object obj;
        int iK = k1.a.k(i3, 0, d());
        if (e() && (obj = this.f) != null && (b(obj, new int[]{this.f713c, iK, 0}) || b(obj, new int[]{0, this.f713c, iK, 0}))) {
            return;
        }
        try {
            ((AudioManager) this.b).setStreamVolume(3, iK, 0);
        } catch (Throwable unused) {
        }
    }

    @Override // c0.e
    public void setExtras(Bundle bundle) {
        this.f = bundle;
    }

    public String toString() {
        String strValueOf;
        String str;
        switch (this.f712a) {
            case 1:
                Uri uri = (Uri) this.f715e;
                StringBuilder sb = new StringBuilder("ContentInfoCompat{clip=");
                sb.append(((ClipData) this.b).getDescription());
                sb.append(", source=");
                int i3 = this.f713c;
                if (i3 == 0) {
                    strValueOf = "SOURCE_APP";
                } else if (i3 == 1) {
                    strValueOf = "SOURCE_CLIPBOARD";
                } else if (i3 == 2) {
                    strValueOf = "SOURCE_INPUT_METHOD";
                } else if (i3 == 3) {
                    strValueOf = "SOURCE_DRAG_AND_DROP";
                } else if (i3 != 4) {
                    strValueOf = i3 != 5 ? String.valueOf(i3) : "SOURCE_PROCESS_TEXT";
                } else {
                    strValueOf = "SOURCE_AUTOFILL";
                }
                sb.append(strValueOf);
                sb.append(", flags=");
                int i4 = this.f714d;
                sb.append((i4 & 1) != 0 ? "FLAG_CONVERT_TO_PLAIN_TEXT" : String.valueOf(i4));
                if (uri == null) {
                    str = "";
                } else {
                    str = ", hasLinkUri(" + uri.toString().length() + ")";
                }
                sb.append(str);
                sb.append(((Bundle) this.f) != null ? ", hasExtras" : "");
                sb.append("}");
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public f(HomeFloatingWidgetsService homeFloatingWidgetsService) {
        Object systemService = homeFloatingWidgetsService.getSystemService("audio");
        i2.g.c(systemService, "null cannot be cast to non-null type android.media.AudioManager");
        this.b = (AudioManager) systemService;
        this.f713c = -1;
        this.f714d = -1;
    }

    public f(f fVar) {
        ClipData clipData = (ClipData) fVar.b;
        clipData.getClass();
        this.b = clipData;
        int i3 = fVar.f713c;
        if (i3 < 0) {
            Locale locale = Locale.US;
            throw new IllegalArgumentException("source is out of range of [0, 5] (too low)");
        }
        if (i3 <= 5) {
            this.f713c = i3;
            int i4 = fVar.f714d;
            if ((i4 & 1) == i4) {
                this.f714d = i4;
                this.f715e = (Uri) fVar.f715e;
                this.f = (Bundle) fVar.f;
                return;
            } else {
                throw new IllegalArgumentException("Requested flags 0x" + Integer.toHexString(i4) + ", but only 0x" + Integer.toHexString(1) + " are allowed");
            }
        }
        Locale locale2 = Locale.US;
        throw new IllegalArgumentException("source is out of range of [0, 5] (too high)");
    }
}
