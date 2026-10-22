package f2;

import i2.g;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class c extends IOException {
    public c(File file, File file2, String str) {
        StringBuilder sb = new StringBuilder(file.toString());
        if (file2 != null) {
            sb.append(" -> " + file2);
        }
        sb.append(": ".concat(str));
        String string = sb.toString();
        g.d(string, "toString(...)");
        super(string);
    }
}
