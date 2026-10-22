package z;

import android.content.Context;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final class d implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4667a;
    public final /* synthetic */ String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f4668c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ q0.b f4669d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f4670e;

    public /* synthetic */ d(String str, Context context, q0.b bVar, int i3, int i4) {
        this.f4667a = i4;
        this.b = str;
        this.f4668c = context;
        this.f4669d = bVar;
        this.f4670e = i3;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.f4667a) {
            case 0:
                return g.a(this.b, this.f4668c, this.f4669d, this.f4670e);
            default:
                try {
                    return g.a(this.b, this.f4668c, this.f4669d, this.f4670e);
                } catch (Throwable unused) {
                    return new f(-3);
                }
        }
    }
}
