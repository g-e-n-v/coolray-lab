package v;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.emoji2.text.m;
import java.util.ArrayList;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import l.k;
import w0.u7;

/* JADX INFO: loaded from: classes.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final k1.a f3313a;
    public static final l.f b;

    static {
        if (Build.VERSION.SDK_INT >= 29) {
            f3313a = new h();
        } else {
            f3313a = new g();
        }
        b = new l.f(16);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002d  */
    public static Typeface a(Context context, u.e eVar, Resources resources, int i3, String str, int i4, int i5, u.b bVar, boolean z2) {
        Typeface typefaceT;
        Typeface typefaceCreate;
        Typeface typeface;
        int i6 = 3;
        int i7 = -3;
        if (eVar instanceof u.h) {
            u.h hVar = (u.h) eVar;
            String str2 = hVar.f3231d;
            Typeface typeface2 = null;
            int i8 = 0;
            if (str2 == null || str2.isEmpty()) {
                typefaceCreate = null;
            } else {
                typefaceCreate = Typeface.create(str2, 0);
                Typeface typefaceCreate2 = Typeface.create(Typeface.DEFAULT, 0);
                if (typefaceCreate == null || typefaceCreate.equals(typefaceCreate2)) {
                    typefaceCreate = null;
                }
            }
            if (typefaceCreate != null) {
                if (bVar != null) {
                    new Handler(Looper.getMainLooper()).post(new a1.i(bVar, i6, typefaceCreate));
                }
                return typefaceCreate;
            }
            int i9 = 1;
            boolean z3 = !z2 ? bVar != null : hVar.f3230c != 0;
            int i10 = z2 ? hVar.b : -1;
            Handler handler = new Handler(Looper.getMainLooper());
            m mVar = new m(27);
            mVar.b = bVar;
            q0.b bVar2 = hVar.f3229a;
            androidx.activity.result.c cVar = new androidx.activity.result.c();
            cVar.f100a = mVar;
            cVar.b = handler;
            if (z3) {
                l.f fVar = z.g.f4673a;
                String str3 = ((String) bVar2.f) + "-" + i5;
                typeface = (Typeface) z.g.f4673a.a(str3);
                if (typeface != null) {
                    handler.post(new androidx.fragment.app.c(mVar, i6, typeface));
                    typeface2 = typeface;
                } else if (i10 == -1) {
                    z.f fVarA = z.g.a(str3, context, bVar2, i5);
                    cVar.A(fVarA);
                    typeface2 = fVarA.f4672a;
                } else {
                    try {
                        try {
                            z.f fVar2 = (z.f) z.g.b.submit(new z.d(str3, context, bVar2, i5, 0)).get(i10, TimeUnit.MILLISECONDS);
                            cVar.A(fVar2);
                            typeface2 = fVar2.f4672a;
                        } catch (InterruptedException e3) {
                            throw e3;
                        } catch (ExecutionException e4) {
                            throw new RuntimeException(e4);
                        } catch (TimeoutException unused) {
                            throw new InterruptedException("timeout");
                        }
                    } catch (InterruptedException unused2) {
                        ((Handler) cVar.b).post(new androidx.emoji2.text.i((m) cVar.f100a, i7, 2));
                    }
                }
            } else {
                l.f fVar3 = z.g.f4673a;
                String str4 = ((String) bVar2.f) + "-" + i5;
                typeface = (Typeface) z.g.f4673a.a(str4);
                if (typeface != null) {
                    handler.post(new androidx.fragment.app.c(mVar, i6, typeface));
                    typeface2 = typeface;
                } else {
                    z.e eVar2 = new z.e(i8, cVar);
                    synchronized (z.g.f4674c) {
                        try {
                            k kVar = z.g.f4675d;
                            ArrayList arrayList = (ArrayList) kVar.getOrDefault(str4, null);
                            if (arrayList != null) {
                                arrayList.add(eVar2);
                            } else {
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(eVar2);
                                kVar.put(str4, arrayList2);
                                z.d dVar = new z.d(str4, context, bVar2, i5, 1);
                                ThreadPoolExecutor threadPoolExecutor = z.g.b;
                                z.e eVar3 = new z.e(i9, str4);
                                Handler handler2 = Looper.myLooper() == null ? new Handler(Looper.getMainLooper()) : new Handler();
                                u7 u7Var = new u7();
                                u7Var.b = dVar;
                                u7Var.f4338c = eVar3;
                                u7Var.f4339d = handler2;
                                threadPoolExecutor.execute(u7Var);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            }
            typefaceT = typeface2;
        } else {
            typefaceT = f3313a.t(context, (u.f) eVar, resources, i5);
            if (bVar != null) {
                if (typefaceT != null) {
                    new Handler(Looper.getMainLooper()).post(new a1.i(bVar, i6, typefaceT));
                } else {
                    bVar.a(-3);
                }
            }
        }
        if (typefaceT != null) {
            b.b(b(resources, i3, str, i4, i5), typefaceT);
        }
        return typefaceT;
    }

    public static String b(Resources resources, int i3, String str, int i4, int i5) {
        return resources.getResourcePackageName(i3) + '-' + str + '-' + i4 + '-' + i3 + '-' + i5;
    }
}
