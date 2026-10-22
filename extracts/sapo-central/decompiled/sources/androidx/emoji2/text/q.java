package androidx.emoji2.text;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Handler;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class q implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f351a;
    public final q0.b b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final s1.e f352c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f353d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Handler f354e;
    public ThreadPoolExecutor f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ThreadPoolExecutor f355g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public a1.b f356h;

    public q(Context context, q0.b bVar) {
        a1.b.l(context, "Context cannot be null");
        this.f351a = context.getApplicationContext();
        this.b = bVar;
        this.f352c = r.f357d;
    }

    public final void a() {
        synchronized (this.f353d) {
            try {
                this.f356h = null;
                Handler handler = this.f354e;
                if (handler != null) {
                    handler.removeCallbacks(null);
                }
                this.f354e = null;
                ThreadPoolExecutor threadPoolExecutor = this.f355g;
                if (threadPoolExecutor != null) {
                    threadPoolExecutor.shutdown();
                }
                this.f = null;
                this.f355g = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final z.h b() {
        try {
            s1.e eVar = this.f352c;
            Context context = this.f351a;
            q0.b bVar = this.b;
            eVar.getClass();
            e.h hVarA = z.c.a(context, bVar);
            int i3 = hVarA.f1606a;
            if (i3 != 0) {
                throw new RuntimeException("fetchFonts failed (" + i3 + ")");
            }
            z.h[] hVarArr = (z.h[]) hVarA.b;
            if (hVarArr == null || hVarArr.length == 0) {
                throw new RuntimeException("fetchFonts failed (empty result)");
            }
            return hVarArr[0];
        } catch (PackageManager.NameNotFoundException e3) {
            throw new RuntimeException("provider not found", e3);
        }
    }

    @Override // androidx.emoji2.text.j
    public final void e(a1.b bVar) {
        synchronized (this.f353d) {
            this.f356h = bVar;
        }
        synchronized (this.f353d) {
            try {
                if (this.f356h == null) {
                    return;
                }
                if (this.f == null) {
                    ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new a(0, "emojiCompat"));
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                    this.f355g = threadPoolExecutor;
                    this.f = threadPoolExecutor;
                }
                this.f.execute(new a1.r(4, this));
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
