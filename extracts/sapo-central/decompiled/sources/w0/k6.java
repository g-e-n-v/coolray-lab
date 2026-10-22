package w0;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class k6 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3788a = 0;
    public final /* synthetic */ m6 b;

    public /* synthetic */ k6(m6 m6Var) {
        this.b = m6Var;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [android.content.ContextWrapper, w0.j6] */
    @Override // java.lang.Runnable
    public final void run() {
        e.h hVarU;
        switch (this.f3788a) {
            case 0:
                m6 m6Var = this.b;
                while (m6Var.f3890d && (hVarU = m.u(m6Var.b)) != null) {
                    try {
                        try {
                            int i3 = hVarU.f1606a;
                            if (i3 == 1) {
                                m6Var.c((byte[]) hVarU.b);
                            } else if (i3 == 2) {
                                m6Var.a((byte[]) hVarU.b);
                            } else if (i3 == 3) {
                                m6Var.b((byte[]) hVarU.b);
                            } else if (i3 == 33) {
                                m.E(m6Var.f3889c, 34, (byte[]) hVarU.b);
                            }
                        } catch (Exception e3) {
                            if (m6Var.f3890d) {
                                Log.w("ExSapoCast", "readLoop: " + e3.getMessage());
                            }
                        }
                    } catch (Throwable th) {
                        m6Var.g("stream-end");
                        throw th;
                    }
                    break;
                }
                m6Var.g("stream-end");
                return;
            default:
                m6 m6Var2 = this.b;
                ?? r3 = m.f3861c;
                if (r3 != 0) {
                    r3.a(m6Var2.f3892g, m6Var2.f3893h);
                    return;
                }
                return;
        }
    }

    public /* synthetic */ k6(m6 m6Var, int i3) {
        this.b = m6Var;
    }
}
