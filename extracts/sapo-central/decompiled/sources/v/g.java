package v;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class g extends k1.a {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static Class f3314j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static Constructor f3315k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static Method f3316l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static Method f3317m = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static boolean f3318n = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Class f3319c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Constructor f3320d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Method f3321e;
    public final Method f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Method f3322g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Method f3323h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Method f3324i;

    public g() throws NoSuchMethodException {
        Method methodA0;
        Constructor<?> constructor;
        Method methodZ;
        Method method;
        Method method2;
        Method method3;
        Class<?> cls = null;
        try {
            Class<?> cls2 = Class.forName("android.graphics.FontFamily");
            constructor = cls2.getConstructor(null);
            methodZ = Z(cls2);
            Class cls3 = Integer.TYPE;
            method = cls2.getMethod("addFontFromBuffer", ByteBuffer.class, cls3, FontVariationAxis[].class, cls3, cls3);
            method2 = cls2.getMethod("freeze", null);
            method3 = cls2.getMethod("abortCreation", null);
            methodA0 = a0(cls2);
            cls = cls2;
        } catch (ClassNotFoundException | NoSuchMethodException e3) {
            Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class ".concat(e3.getClass().getName()), e3);
            methodA0 = null;
            constructor = null;
            methodZ = null;
            method = null;
            method2 = null;
            method3 = null;
        }
        this.f3319c = cls;
        this.f3320d = constructor;
        this.f3321e = methodZ;
        this.f = method;
        this.f3322g = method2;
        this.f3323h = method3;
        this.f3324i = methodA0;
    }

    public static boolean V(Object obj, String str, int i3, boolean z2) throws NoSuchMethodException {
        Y();
        try {
            return ((Boolean) f3316l.invoke(obj, str, Integer.valueOf(i3), Boolean.valueOf(z2))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    public static void Y() throws NoSuchMethodException {
        Method method;
        Class<?> cls;
        Method method2;
        if (f3318n) {
            return;
        }
        f3318n = true;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(null);
            method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e3) {
            Log.e("TypefaceCompatApi21Impl", e3.getClass().getName(), e3);
            method = null;
            cls = null;
            method2 = null;
        }
        f3315k = constructor;
        f3314j = cls;
        f3316l = method2;
        f3317m = method;
    }

    public static Method Z(Class cls) {
        Class cls2 = Boolean.TYPE;
        Class cls3 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, cls3, cls2, cls3, cls3, cls3, FontVariationAxis[].class);
    }

    public final boolean U(Context context, Object obj, String str, int i3, int i4, int i5, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.f3321e.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public final Typeface W(Object obj) {
        try {
            Object objNewInstance = Array.newInstance((Class<?>) this.f3319c, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) this.f3324i.invoke(null, objNewInstance, "sans-serif", -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    public final boolean X(Object obj) {
        try {
            return ((Boolean) this.f3322g.invoke(obj, null)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public final Method a0(Class cls) throws NoSuchMethodException {
        Class<?> cls2 = Array.newInstance((Class<?>) cls, 1).getClass();
        Class cls3 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", cls2, String.class, cls3, cls3);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    @Override // k1.a
    public final Typeface t(Context context, u.f fVar, Resources resources, int i3) throws IllegalAccessException, NoSuchMethodException, InstantiationException, InvocationTargetException {
        Object objNewInstance;
        Method method = this.f3321e;
        if (method == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        if (method != null) {
            try {
                objNewInstance = this.f3320d.newInstance(null);
            } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
                objNewInstance = null;
            }
            if (objNewInstance != null) {
                u.g[] gVarArr = fVar.f3224a;
                int length = gVarArr.length;
                int i4 = 0;
                while (i4 < length) {
                    u.g gVar = gVarArr[i4];
                    Context context2 = context;
                    if (U(context2, objNewInstance, gVar.f3225a, gVar.f3228e, gVar.b, gVar.f3226c ? 1 : 0, FontVariationAxis.fromFontVariationSettings(gVar.f3227d))) {
                        i4++;
                        context = context2;
                    } else {
                        try {
                            this.f3323h.invoke(objNewInstance, null);
                        } catch (IllegalAccessException | InvocationTargetException unused2) {
                        }
                    }
                }
                if (X(objNewInstance)) {
                    return W(objNewInstance);
                }
            }
            return null;
        }
        Y();
        try {
            Object objNewInstance2 = f3315k.newInstance(null);
            for (u.g gVar2 : fVar.f3224a) {
                File fileD = k1.a.D(context);
                if (fileD == null) {
                    return null;
                }
                try {
                    if (!k1.a.q(fileD, resources, gVar2.f) || !V(objNewInstance2, fileD.getPath(), gVar2.b, gVar2.f3226c)) {
                        return null;
                    }
                    fileD.delete();
                } catch (RuntimeException unused3) {
                } finally {
                    fileD.delete();
                }
            }
            Y();
            try {
                Object objNewInstance3 = Array.newInstance((Class<?>) f3314j, 1);
                Array.set(objNewInstance3, 0, objNewInstance2);
                return (Typeface) f3317m.invoke(null, objNewInstance3);
            } catch (IllegalAccessException | InvocationTargetException e3) {
                throw new RuntimeException(e3);
            }
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e4) {
            throw new RuntimeException(e4);
        }
    }

    @Override // k1.a
    public final Typeface u(Context context, z.h[] hVarArr, int i3) throws IOException {
        Object objNewInstance;
        Typeface typefaceW;
        boolean zBooleanValue;
        if (hVarArr.length >= 1) {
            Method method = this.f3321e;
            if (method == null) {
                Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
            }
            try {
                if (method != null) {
                    HashMap map = new HashMap();
                    for (z.h hVar : hVarArr) {
                        if (hVar.f4679e == 0) {
                            Uri uri = hVar.f4676a;
                            if (!map.containsKey(uri)) {
                                map.put(uri, k1.a.J(context, uri));
                            }
                        }
                    }
                    Map mapUnmodifiableMap = Collections.unmodifiableMap(map);
                    try {
                        objNewInstance = this.f3320d.newInstance(null);
                    } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
                        objNewInstance = null;
                    }
                    if (objNewInstance != null) {
                        int length = hVarArr.length;
                        int i4 = 0;
                        boolean z2 = false;
                        while (true) {
                            Method method2 = this.f3323h;
                            if (i4 >= length) {
                                if (!z2) {
                                    method2.invoke(objNewInstance, null);
                                    break;
                                }
                                if (!X(objNewInstance) || (typefaceW = W(objNewInstance)) == null) {
                                    break;
                                    break;
                                }
                                return Typeface.create(typefaceW, i3);
                            }
                            z.h hVar2 = hVarArr[i4];
                            ByteBuffer byteBuffer = (ByteBuffer) mapUnmodifiableMap.get(hVar2.f4676a);
                            if (byteBuffer != null) {
                                try {
                                    zBooleanValue = ((Boolean) this.f.invoke(objNewInstance, byteBuffer, Integer.valueOf(hVar2.b), null, Integer.valueOf(hVar2.f4677c), Integer.valueOf(hVar2.f4678d ? 1 : 0))).booleanValue();
                                } catch (IllegalAccessException | InvocationTargetException unused2) {
                                    zBooleanValue = false;
                                }
                                if (!zBooleanValue) {
                                    method2.invoke(objNewInstance, null);
                                    break;
                                }
                                z2 = true;
                            }
                            i4++;
                            z2 = z2;
                        }
                    }
                } else {
                    z.h hVarX = x(hVarArr, i3);
                    ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(hVarX.f4676a, "r", null);
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        try {
                            Typeface typefaceBuild = new Typeface.Builder(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor()).setWeight(hVarX.f4677c).setItalic(hVarX.f4678d).build();
                            parcelFileDescriptorOpenFileDescriptor.close();
                            return typefaceBuild;
                        } catch (Throwable th) {
                            try {
                                parcelFileDescriptorOpenFileDescriptor.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    }
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        parcelFileDescriptorOpenFileDescriptor.close();
                        return null;
                    }
                }
            } catch (IOException | IllegalAccessException | InvocationTargetException unused3) {
            }
        }
        return null;
    }

    @Override // k1.a
    public final Typeface v(Context context, Resources resources, int i3, String str, int i4) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        Object objNewInstance;
        Method method = this.f3321e;
        if (method == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        if (method == null) {
            return super.v(context, resources, i3, str, i4);
        }
        try {
            objNewInstance = this.f3320d.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            objNewInstance = null;
        }
        if (objNewInstance != null) {
            if (!U(context, objNewInstance, str, 0, -1, -1, null)) {
                try {
                    this.f3323h.invoke(objNewInstance, null);
                } catch (IllegalAccessException | InvocationTargetException unused2) {
                }
            } else if (X(objNewInstance)) {
                return W(objNewInstance);
            }
        }
        return null;
    }
}
