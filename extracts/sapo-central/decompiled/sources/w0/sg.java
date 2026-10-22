package w0;

import java.io.File;
import java.io.FileFilter;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class sg implements FileFilter {
    @Override // java.io.FileFilter
    public final boolean accept(File file) {
        String name = file.getName();
        i2.g.d(name, "getName(...)");
        return o2.t.d0(name, "thermal_zone");
    }
}
