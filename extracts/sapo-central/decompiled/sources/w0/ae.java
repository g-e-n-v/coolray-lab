package w0;

import android.util.Log;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class ae {
    public static volatile File b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ae f3361a = new ae();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final SimpleDateFormat f3362c = new SimpleDateFormat("MM-dd HH:mm:ss", Locale.US);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final ThreadPoolExecutor f3363d = new ThreadPoolExecutor(1, 1, 0, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new l1(13));

    public static File a() {
        File file = b;
        if (file == null) {
            file = new File("/data/local/tmp/fixes");
        }
        return new File(file, "central_events.log");
    }

    public static void b(String str, String str2, boolean z2) {
        i2.g.e(str2, "msg");
        Log.i(str, str2);
        try {
            f3363d.execute(new c0(str, str2, z2, 5));
        } catch (Throwable th) {
            androidx.activity.result.b.s(th, new StringBuilder("não consegui enfileirar log: "), "PersistLog");
        }
    }
}
