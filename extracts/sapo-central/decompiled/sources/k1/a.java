package k1;

import a1.b;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.StrictMode;
import android.os.Trace;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewParent;
import androidx.fragment.app.f;
import c0.f0;
import c0.p0;
import h2.l;
import i2.g;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Matcher;
import l2.c;
import o2.e;
import q0.i0;
import q0.t0;
import r2.h;
import s1.t;
import v.i;
import y1.d;
import y1.r;
import y1.s;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static long f2353a;
    public static Method b;

    public a() {
        new ConcurrentHashMap();
    }

    public static ColorStateList A(Context context, f fVar, int i3) {
        int resourceId;
        ColorStateList colorStateListT;
        TypedArray typedArray = (TypedArray) fVar.f413c;
        return (!typedArray.hasValue(i3) || (resourceId = typedArray.getResourceId(i3, 0)) == 0 || (colorStateListT = b.t(context, resourceId)) == null) ? fVar.j(i3) : colorStateListT;
    }

    public static Drawable C(Context context, TypedArray typedArray, int i3) {
        int resourceId;
        Drawable drawableV;
        return (!typedArray.hasValue(i3) || (resourceId = typedArray.getResourceId(i3, 0)) == 0 || (drawableV = b.v(context, resourceId)) == null) ? typedArray.getDrawable(i3) : drawableV;
    }

    public static File D(Context context) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        String str = ".font" + Process.myPid() + "-" + Process.myTid() + "-";
        for (int i3 = 0; i3 < 100; i3++) {
            File file = new File(cacheDir, str + i3);
            try {
                if (file.createNewFile()) {
                    return file;
                }
            } catch (IOException unused) {
            }
        }
        return null;
    }

    public static boolean E() {
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 33) {
            return true;
        }
        if (i3 < 32) {
            return false;
        }
        String str = Build.VERSION.CODENAME;
        if ("REL".equals(str)) {
            return false;
        }
        Locale locale = Locale.ROOT;
        return str.toUpperCase(locale).compareTo("Tiramisu".toUpperCase(locale)) >= 0;
    }

    public static boolean F() {
        try {
            if (b == null) {
                return Trace.isEnabled();
            }
        } catch (NoClassDefFoundError | NoSuchMethodError unused) {
        }
        try {
            if (b == null) {
                f2353a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                b = Trace.class.getMethod("isTagEnabled", Long.TYPE);
            }
            return ((Boolean) b.invoke(null, Long.valueOf(f2353a))).booleanValue();
        } catch (Exception e3) {
            if (!(e3 instanceof InvocationTargetException)) {
                Log.v("Trace", "Unable to call isTagEnabled via reflection", e3);
                return false;
            }
            Throwable cause = e3.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new RuntimeException(cause);
        }
    }

    public static boolean G(char c3) {
        return Character.isWhitespace(c3) || Character.isSpaceChar(c3);
    }

    public static int H(int i3, int i4, float f) {
        return v.a.b(v.a.d(i4, Math.round(Color.alpha(i4) * f)), i3);
    }

    public static List I(Object obj) {
        List listSingletonList = Collections.singletonList(obj);
        g.d(listSingletonList, "singletonList(...)");
        return listSingletonList;
    }

    public static MappedByteBuffer J(Context context, Uri uri) {
        try {
            ParcelFileDescriptor parcelFileDescriptorA = i.a(context.getContentResolver(), uri, "r", null);
            if (parcelFileDescriptorA == null) {
                if (parcelFileDescriptorA != null) {
                    parcelFileDescriptorA.close();
                    return null;
                }
                return null;
            }
            try {
                FileInputStream fileInputStream = new FileInputStream(parcelFileDescriptorA.getFileDescriptor());
                try {
                    FileChannel channel = fileInputStream.getChannel();
                    MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                    fileInputStream.close();
                    parcelFileDescriptorA.close();
                    return map;
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                        throw th;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                        throw th;
                    }
                }
            } catch (Throwable th3) {
                try {
                    parcelFileDescriptorA.close();
                    throw th3;
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                    throw th3;
                }
            }
        } catch (IOException unused) {
        }
    }

    public static void M(Context context) {
        try {
            Intent intent = new Intent("android.settings.WIFI_SETTINGS");
            intent.addFlags(268435456);
            context.startActivity(intent);
        } catch (Exception e3) {
            Log.e("WifiApHelper", "openWifiMenu fail", e3);
        }
    }

    public static TypedValue N(Context context, int i3) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i3, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    public static int O(int i3, Context context, String str) {
        TypedValue typedValueN = N(context, i3);
        if (typedValueN != null) {
            return typedValueN.data;
        }
        throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", str, context.getResources().getResourceName(i3)));
    }

    public static Set P(Object... objArr) {
        int length = objArr.length;
        if (length == 0) {
            return r.f4665a;
        }
        if (length == 1) {
            Set setSingleton = Collections.singleton(objArr[0]);
            g.d(setSingleton, "singleton(...)");
            return setSingleton;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(s.V(objArr.length));
        for (Object obj : objArr) {
            linkedHashSet.add(obj);
        }
        return linkedHashSet;
    }

    public static void Q(View view, s1.g gVar) {
        m1.a aVar = gVar.f3142a.b;
        if (aVar == null || !aVar.f2436a) {
            return;
        }
        float fI = 0.0f;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            WeakHashMap weakHashMap = p0.f727a;
            fI += f0.i((View) parent);
        }
        s1.f fVar = gVar.f3142a;
        if (fVar.f3136l != fI) {
            fVar.f3136l = fI;
            gVar.l();
        }
    }

    public static final long R(String str, long j3, long j4, long j5) {
        String property;
        int i3 = h.f3102a;
        try {
            property = System.getProperty(str);
        } catch (SecurityException unused) {
            property = null;
        }
        if (property == null) {
            return j3;
        }
        Long lY = o2.s.Y(property);
        if (lY == null) {
            throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + property + '\'').toString());
        }
        long jLongValue = lY.longValue();
        if (j4 <= jLongValue && jLongValue <= j5) {
            return jLongValue;
        }
        throw new IllegalStateException(("System property '" + str + "' should be in range " + j4 + ".." + j5 + ", but is '" + jLongValue + '\'').toString());
    }

    public static int S(String str, int i3, int i4) {
        return (int) R(str, i3, 1, (i4 & 8) != 0 ? Integer.MAX_VALUE : 2097150);
    }

    public static c T(int i3, int i4) {
        if (i4 > Integer.MIN_VALUE) {
            return new c(i3, i4 - 1, 1);
        }
        c cVar = c.f2430d;
        return c.f2430d;
    }

    public static void a(Exception exc, StringBuilder sb) {
        androidx.activity.result.b.o(exc, sb, "EasMediaCenterAPIImpl");
    }

    public static final e b(Matcher matcher, int i3, CharSequence charSequence) {
        if (matcher.find(i3)) {
            return new e(matcher, charSequence);
        }
        return null;
    }

    public static final String c(Object[] objArr, int i3, int i4, d dVar) {
        StringBuilder sb = new StringBuilder((i4 * 3) + 2);
        sb.append("[");
        for (int i5 = 0; i5 < i4; i5++) {
            if (i5 > 0) {
                sb.append(", ");
            }
            Object obj = objArr[i3 + i5];
            if (obj == dVar) {
                sb.append("(this Collection)");
            } else {
                sb.append(obj);
            }
        }
        sb.append("]");
        String string = sb.toString();
        g.d(string, "toString(...)");
        return string;
    }

    public static void d(Throwable th, Throwable th2) {
        g.e(th, "<this>");
        g.e(th2, "exception");
        if (th != th2) {
            Integer num = d2.a.f1538a;
            if (num == null || num.intValue() >= 19) {
                th.addSuppressed(th2);
                return;
            }
            Method method = c2.a.f757a;
            if (method != null) {
                method.invoke(th, th2);
            }
        }
    }

    public static void e(StringBuilder sb, Object obj, l lVar) {
        if (lVar != null) {
            sb.append((CharSequence) lVar.c(obj));
            return;
        }
        if (obj == null ? true : obj instanceof CharSequence) {
            sb.append((CharSequence) obj);
        } else if (obj instanceof Character) {
            sb.append(((Character) obj).charValue());
        } else {
            sb.append((CharSequence) String.valueOf(obj));
        }
    }

    public static void f(int i3) {
        if (2 > i3 || i3 >= 37) {
            StringBuilder sbK = androidx.activity.result.b.k("radix ", i3, " was not in valid range ");
            sbK.append(new c(2, 36, 1));
            throw new IllegalArgumentException(sbK.toString());
        }
    }

    public static void g(int i3, int i4, int i5) {
        if (i3 >= 0 && i4 <= i5) {
            if (i3 > i4) {
                throw new IllegalArgumentException(androidx.activity.result.b.f(i3, i4, "fromIndex: ", " > toIndex: "));
            }
            return;
        }
        throw new IndexOutOfBoundsException("fromIndex: " + i3 + ", toIndex: " + i4 + ", size: " + i5);
    }

    public static final void h(int i3, int i4) {
        String str;
        if (i3 <= 0 || i4 <= 0) {
            if (i3 != i4) {
                str = "Both size " + i3 + " and step " + i4 + " must be greater than zero.";
            } else {
                str = "size " + i3 + " must be greater than zero.";
            }
            throw new IllegalArgumentException(str.toString());
        }
    }

    public static void i(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static float j(float f, float f3, float f4) {
        if (f3 <= f4) {
            if (f < f3) {
                return f3;
            }
            return f > f4 ? f4 : f;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + f4 + " is less than minimum " + f3 + '.');
    }

    public static int k(int i3, int i4, int i5) {
        if (i4 <= i5) {
            if (i3 < i4) {
                return i4;
            }
            return i3 > i5 ? i5 : i3;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i5 + " is less than minimum " + i4 + '.');
    }

    public static long l(long j3, long j4, long j5) {
        if (j4 <= j5) {
            if (j3 < j4) {
                return j4;
            }
            return j3 > j5 ? j5 : j3;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + j5 + " is less than minimum " + j4 + '.');
    }

    public static int m(t0 t0Var, androidx.emoji2.text.f fVar, View view, View view2, i0 i0Var, boolean z2) {
        if (i0Var.v() == 0 || t0Var.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z2) {
            return Math.abs(i0.D(view) - i0.D(view2)) + 1;
        }
        return Math.min(fVar.l(), fVar.b(view2) - fVar.e(view));
    }

    public static int n(t0 t0Var, androidx.emoji2.text.f fVar, View view, View view2, i0 i0Var, boolean z2, boolean z3) {
        if (i0Var.v() == 0 || t0Var.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        int iMax = z3 ? Math.max(0, (t0Var.b() - Math.max(i0.D(view), i0.D(view2))) - 1) : Math.max(0, Math.min(i0.D(view), i0.D(view2)));
        if (z2) {
            return Math.round((iMax * (Math.abs(fVar.b(view2) - fVar.e(view)) / (Math.abs(i0.D(view) - i0.D(view2)) + 1))) + (fVar.k() - fVar.e(view)));
        }
        return iMax;
    }

    public static int o(t0 t0Var, androidx.emoji2.text.f fVar, View view, View view2, i0 i0Var, boolean z2) {
        if (i0Var.v() == 0 || t0Var.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z2) {
            return t0Var.b();
        }
        return (int) (((fVar.b(view2) - fVar.e(view)) / (Math.abs(i0.D(view) - i0.D(view2)) + 1)) * t0Var.b());
    }

    public static final void p(int i3, int i4) {
        if (i3 <= i4) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i3 + ") is greater than size (" + i4 + ").");
    }

    public static boolean q(File file, Resources resources, int i3) throws Throwable {
        InputStream inputStreamOpenRawResource;
        try {
            inputStreamOpenRawResource = resources.openRawResource(i3);
            try {
                boolean zR = r(file, inputStreamOpenRawResource);
                i(inputStreamOpenRawResource);
                return zR;
            } catch (Throwable th) {
                th = th;
                i(inputStreamOpenRawResource);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            inputStreamOpenRawResource = null;
        }
    }

    public static boolean r(File file, InputStream inputStream) throws Throwable {
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file, false);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i3 = inputStream.read(bArr);
                        if (i3 == -1) {
                            i(fileOutputStream2);
                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                            return true;
                        }
                        fileOutputStream2.write(bArr, 0, i3);
                    }
                } catch (IOException e3) {
                    e = e3;
                    fileOutputStream = fileOutputStream2;
                    Log.e("TypefaceCompatUtil", "Error copying resource contents to temp file: " + e.getMessage());
                    i(fileOutputStream);
                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                    return false;
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    i(fileOutputStream);
                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                    throw th;
                }
            } catch (IOException e4) {
                e = e4;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static a s(int i3) {
        if (i3 != 0 && i3 == 1) {
            return new s1.d();
        }
        return new s1.i();
    }

    public static final boolean w(char c3, char c4, boolean z2) {
        if (c3 == c4) {
            return true;
        }
        if (!z2) {
            return false;
        }
        char upperCase = Character.toUpperCase(c3);
        char upperCase2 = Character.toUpperCase(c4);
        return upperCase == upperCase2 || Character.toLowerCase(upperCase) == Character.toLowerCase(upperCase2);
    }

    public static int y(View view, int i3) {
        return O(i3, view.getContext(), view.getClass().getCanonicalName());
    }

    public static ColorStateList z(Context context, TypedArray typedArray, int i3) {
        int resourceId;
        ColorStateList colorStateListT;
        return (!typedArray.hasValue(i3) || (resourceId = typedArray.getResourceId(i3, 0)) == 0 || (colorStateListT = b.t(context, resourceId)) == null) ? typedArray.getColorStateList(i3) : colorStateListT;
    }

    public abstract void B(t tVar, float f, float f3);

    public abstract void K(int i3);

    public abstract void L(Typeface typeface, boolean z2);

    public abstract Typeface t(Context context, u.f fVar, Resources resources, int i3);

    public abstract Typeface u(Context context, z.h[] hVarArr, int i3);

    public Typeface v(Context context, Resources resources, int i3, String str, int i4) {
        File fileD = D(context);
        if (fileD == null) {
            return null;
        }
        try {
            if (q(fileD, resources, i3)) {
                return Typeface.createFromFile(fileD.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            fileD.delete();
        }
    }

    public z.h x(z.h[] hVarArr, int i3) {
        int i4 = (i3 & 1) == 0 ? 400 : 700;
        boolean z2 = (i3 & 2) != 0;
        z.h hVar = null;
        int i5 = Integer.MAX_VALUE;
        for (z.h hVar2 : hVarArr) {
            int iAbs = (Math.abs(hVar2.f4677c - i4) * 2) + (hVar2.f4678d == z2 ? 0 : 1);
            if (hVar == null || i5 > iAbs) {
                hVar = hVar2;
                i5 = iAbs;
            }
        }
        return hVar;
    }
}
