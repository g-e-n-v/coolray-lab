package k2;

import i2.g;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

/* JADX INFO: loaded from: classes.dex */
public final class a extends j2.a {
    @Override // j2.a
    public final Random a() {
        ThreadLocalRandom threadLocalRandomCurrent = ThreadLocalRandom.current();
        g.d(threadLocalRandomCurrent, "current(...)");
        return threadLocalRandomCurrent;
    }
}
