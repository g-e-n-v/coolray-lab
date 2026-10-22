package androidx.emoji2.text;

import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes.dex */
public final class l extends a1.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a1.b f342a;
    public final /* synthetic */ ThreadPoolExecutor b;

    public l(a1.b bVar, ThreadPoolExecutor threadPoolExecutor) {
        this.f342a = bVar;
        this.b = threadPoolExecutor;
    }

    @Override // a1.b
    public final void K(Throwable th) {
        ThreadPoolExecutor threadPoolExecutor = this.b;
        try {
            this.f342a.K(th);
        } finally {
            threadPoolExecutor.shutdown();
        }
    }

    @Override // a1.b
    public final void N(t tVar) {
        ThreadPoolExecutor threadPoolExecutor = this.b;
        try {
            this.f342a.N(tVar);
        } finally {
            threadPoolExecutor.shutdown();
        }
    }
}
