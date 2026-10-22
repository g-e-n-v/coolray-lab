package kotlinx.coroutines.android;

import android.os.Looper;
import java.util.List;
import p2.p;
import q2.a;
import q2.b;
import r2.e;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidDispatcherFactory implements e {
    @Override // r2.e
    public p createDispatcher(List<? extends e> list) {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper != null) {
            return new a(b.a(mainLooper), false);
        }
        throw new IllegalStateException("The main looper is not available");
    }

    @Override // r2.e
    public int getLoadPriority() {
        return 1073741823;
    }

    @Override // r2.e
    public String hintOnError() {
        return "For tests Dispatchers.setMain from kotlinx-coroutines-test module can be used";
    }
}
