package w0;

import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import java.io.File;
import java.util.Arrays;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zf implements h2.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4638a;

    @Override // h2.l
    public final Object c(Object obj) {
        switch (this.f4638a) {
            case 0:
                Byte b = (Byte) obj;
                b.byteValue();
                return String.format("%02x", Arrays.copyOf(new Object[]{b}, 1));
            case 1:
                String str = (String) obj;
                i2.g.e(str, "it");
                File file = new File(str);
                if (file.canRead()) {
                    return Boolean.valueOf(fh.a(file));
                }
                return null;
            case 2:
                String str2 = (String) obj;
                i2.g.e(str2, "it");
                File file2 = new File(str2);
                if (file2.canRead()) {
                    return Boolean.valueOf(fh.a(file2));
                }
                return null;
            case 3:
                return ((ResolveInfo) obj).activityInfo;
            case 4:
                return ((ActivityInfo) obj).packageName;
            default:
                String name = ((ZipEntry) obj).getName();
                i2.g.d(name, "getName(...)");
                Pattern patternCompile = Pattern.compile("classes[0-9]*\\.dex");
                i2.g.d(patternCompile, "compile(...)");
                return Boolean.valueOf(patternCompile.matcher(name).matches());
        }
    }
}
