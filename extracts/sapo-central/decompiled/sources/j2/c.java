package j2;

import i2.g;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public final class c extends a {
    public final b b = new b();

    @Override // j2.a
    public final Random a() {
        Object obj = this.b.get();
        g.d(obj, "get(...)");
        return (Random) obj;
    }
}
