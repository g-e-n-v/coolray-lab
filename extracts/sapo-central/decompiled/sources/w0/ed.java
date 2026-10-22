package w0;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import com.ex.auto.MediaBarFloaterService;
import java.net.URLEncoder;
import java.security.NoSuchAlgorithmException;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ed implements h2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MediaBarFloaterService f3544a;
    public final /* synthetic */ String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f3545c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f3546d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ dd f3547e;

    public /* synthetic */ ed(MediaBarFloaterService mediaBarFloaterService, String str, String str2, String str3, dd ddVar) {
        this.f3544a = mediaBarFloaterService;
        this.b = str;
        this.f3545c = str2;
        this.f3546d = str3;
        this.f3547e = ddVar;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x007c  */
    @Override // h2.a
    public final Object a() throws NoSuchAlgorithmException {
        Set set = MediaBarFloaterService.f1060v;
        ExecutorService executorService = cg.f3448a;
        final q1 q1Var = new q1(4, this.f3547e);
        final String str = this.b;
        if (o2.k.m0(str)) {
            q1Var.c(null);
        } else {
            final String str2 = this.f3545c;
            boolean zM0 = o2.k.m0(str2);
            final String str3 = this.f3546d;
            if (zM0 && o2.k.m0(str3)) {
                q1Var.c(null);
            } else {
                final String strH = m.h(str, str2, str3);
                final Context applicationContext = this.f3544a.getApplicationContext();
                i2.g.b(applicationContext);
                Bitmap bitmapD = cg.d(applicationContext, strH);
                if (bitmapD != null) {
                    q1Var.c(bitmapD);
                } else if (cg.f.contains(strH)) {
                    q1Var.c(null);
                } else {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    Long l3 = (Long) cg.f3452g.get(strH);
                    if (jCurrentTimeMillis >= (l3 != null ? l3.longValue() : 0L) && cg.f3453h.add(strH)) {
                        cg.f3448a.execute(new Runnable() { // from class: w0.ag
                            @Override // java.lang.Runnable
                            public final void run() {
                                String str4 = str;
                                String str5 = str2;
                                String str6 = str3;
                                String str7 = strH;
                                Context context = applicationContext;
                                q1 q1Var2 = q1Var;
                                Set set2 = cg.f3453h;
                                ConcurrentHashMap concurrentHashMap = cg.f3452g;
                                Bitmap bitmapC = null;
                                try {
                                    String strH2 = cg.h("https://itunes.apple.com/search?term=" + URLEncoder.encode(m.A(str4, str5, str6), "UTF-8") + "&media=music&entity=album&limit=1");
                                    String strC = strH2 != null ? m.C(strH2) : null;
                                    if (strC != null) {
                                        bitmapC = cg.c(context, strC);
                                        if (bitmapC != null) {
                                            cg.f(context, str7, bitmapC);
                                        } else {
                                            concurrentHashMap.put(str7, Long.valueOf(System.currentTimeMillis() + 1800000));
                                        }
                                    } else if (strH2 != null) {
                                        cg.f.add(str7);
                                    } else {
                                        concurrentHashMap.put(str7, Long.valueOf(System.currentTimeMillis() + 1800000));
                                    }
                                } catch (Throwable th) {
                                    try {
                                        concurrentHashMap.put(str7, Long.valueOf(System.currentTimeMillis() + 1800000));
                                        Log.w("RemoteArtwork", "busca de capa '" + str7 + "' falhou: " + th.getMessage());
                                    } catch (Throwable th2) {
                                        set2.remove(str7);
                                        throw th2;
                                    }
                                }
                                set2.remove(str7);
                                try {
                                    q1Var2.c(bitmapC);
                                } catch (Throwable th3) {
                                    androidx.activity.result.b.s(th3, new StringBuilder("callback: "), "RemoteArtwork");
                                }
                            }
                        });
                    } else {
                        q1Var.c(null);
                    }
                }
            }
        }
        return x1.e.f4647c;
    }
}
