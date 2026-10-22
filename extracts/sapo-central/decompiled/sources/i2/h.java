package i2;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public abstract class h implements Serializable {
    public h(int i3) {
    }

    public final String toString() {
        n.f2293a.getClass();
        String string = getClass().getGenericInterfaces()[0].toString();
        if (string.startsWith("kotlin.jvm.functions.")) {
            string = string.substring(21);
        }
        g.d(string, "renderLambdaToString(...)");
        return string;
    }
}
