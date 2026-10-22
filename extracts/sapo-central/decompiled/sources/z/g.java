package z;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import l.k;

/* JADX INFO: loaded from: classes.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l.f f4673a = new l.f(16);
    public static final ThreadPoolExecutor b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f4674c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final k f4675d;

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 10000, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), new j());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        b = threadPoolExecutor;
        f4674c = new Object();
        f4675d = new k();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0020 A[EDGE_INSN: B:10:0x0020->B:24:0x003d BREAK  A[LOOP:0: B:17:0x002d->B:23:0x003a]] */
    public static f a(String str, Context context, q0.b bVar, int i3) {
        l.f fVar = f4673a;
        Typeface typeface = (Typeface) fVar.a(str);
        if (typeface != null) {
            return new f(typeface);
        }
        try {
            e.h hVarA = c.a(context, bVar);
            h[] hVarArr = (h[]) hVarA.b;
            int i4 = hVarA.f1606a;
            int i5 = 1;
            if (i4 != 0) {
                if (i4 != 1) {
                    i5 = -3;
                    break;
                }
                i5 = -2;
            } else if (hVarArr != null && hVarArr.length != 0) {
                i5 = 0;
                for (h hVar : hVarArr) {
                    int i6 = hVar.f4679e;
                    if (i6 != 0) {
                        if (i6 >= 0) {
                            i5 = i6;
                            break;
                        }
                        i5 = -3;
                        break;
                    }
                }
            }
            if (i5 != 0) {
                return new f(i5);
            }
            Typeface typefaceU = v.f.f3313a.u(context, hVarArr, i3);
            if (typefaceU == null) {
                return new f(-3);
            }
            fVar.b(str, typefaceU);
            return new f(typefaceU);
        } catch (PackageManager.NameNotFoundException unused) {
            return new f(-1);
        }
    }
}
