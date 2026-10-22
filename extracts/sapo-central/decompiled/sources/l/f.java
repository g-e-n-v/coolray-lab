package l;

import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f2401a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2402c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2403d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2404e;

    public f(int i3) {
        if (i3 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.f2402c = i3;
        this.f2401a = new LinkedHashMap(0, 0.75f, true);
    }

    public final Object a(Object obj) {
        if (obj == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            try {
                Object obj2 = this.f2401a.get(obj);
                if (obj2 != null) {
                    this.f2403d++;
                    return obj2;
                }
                this.f2404e++;
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Object b(Object obj, Object obj2) {
        Object objPut;
        if (obj == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            try {
                this.b++;
                objPut = this.f2401a.put(obj, obj2);
                if (objPut != null) {
                    this.b--;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        int i3 = this.f2402c;
        while (true) {
            synchronized (this) {
                try {
                    if (this.b < 0 || (this.f2401a.isEmpty() && this.b != 0)) {
                        break;
                    }
                    if (this.b > i3 && !this.f2401a.isEmpty()) {
                        Map.Entry entry = (Map.Entry) this.f2401a.entrySet().iterator().next();
                        Object key = entry.getKey();
                        entry.getValue();
                        this.f2401a.remove(key);
                        this.b--;
                    }
                    return objPut;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        throw new IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
    }

    public final synchronized String toString() {
        int i3;
        int i4;
        int i5;
        try {
            i3 = this.f2403d;
            i4 = this.f2404e;
            int i6 = i3 + i4;
            i5 = i6 != 0 ? (i3 * 100) / i6 : 0;
            Locale locale = Locale.US;
        } catch (Throwable th) {
            throw th;
        }
        return "LruCache[maxSize=" + this.f2402c + ",hits=" + i3 + ",misses=" + i4 + ",hitRate=" + i5 + "%]";
    }
}
