package y;

import android.os.Trace;

/* JADX INFO: loaded from: classes.dex */
public abstract class g {
    public static void a(String str) {
        Trace.beginSection(str);
    }

    public static void b() {
        Trace.endSection();
    }
}
