package w0;

import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes.dex */
public abstract class fh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ArrayList f3604a;

    static {
        List listU = y1.f.U(new String[]{"persist.sys.hvacdigital.temp", "persist.sys.hvacdigital.batt", "persist.sys.hvacdigital.exttemp"});
        ArrayList arrayList = new ArrayList(y1.i.X(listU));
        Iterator it = listU.iterator();
        while (it.hasNext()) {
            byte[] bytes = ((String) it.next()).getBytes(o2.a.b);
            i2.g.d(bytes, "getBytes(...)");
            arrayList.add(bytes);
        }
        f3604a = arrayList;
    }

    public static boolean a(File file) {
        try {
            ZipFile zipFile = new ZipFile(file);
            try {
                Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
                i2.g.d(enumerationEntries, "entries(...)");
                boolean z2 = true;
                n2.b bVar = new n2.b(new n2.d(n2.g.U(new y1.j(enumerationEntries)), true, new zf(5)));
                while (bVar.hasNext()) {
                    ZipEntry zipEntry = (ZipEntry) bVar.next();
                    long size = zipEntry.getSize();
                    if (1 <= size && size < 32000001) {
                        InputStream inputStream = zipFile.getInputStream(zipEntry);
                        try {
                            i2.g.b(inputStream);
                            byte[] bArrW = a1.b.W(inputStream);
                            inputStream.close();
                            ArrayList arrayList = f3604a;
                            if (arrayList == null || !arrayList.isEmpty()) {
                                int size2 = arrayList.size();
                                int i3 = 0;
                                while (true) {
                                    if (i3 < size2) {
                                        Object obj = arrayList.get(i3);
                                        i3++;
                                        byte[] bArr = (byte[]) obj;
                                        int length = bArrW.length - bArr.length;
                                        if (length < 0) {
                                            break;
                                        }
                                        int i4 = 0;
                                        while (true) {
                                            if (bArrW[i4] == bArr[0]) {
                                                int i5 = 1;
                                                while (i5 < bArr.length && bArrW[i4 + i5] == bArr[i5]) {
                                                    i5++;
                                                }
                                                if (i5 == bArr.length) {
                                                    break;
                                                }
                                            }
                                            if (i4 == length) {
                                                break;
                                            }
                                            i4++;
                                        }
                                    }
                                }
                            }
                            zipFile.close();
                            return z2;
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                a1.b.p(inputStream, th);
                                throw th2;
                            }
                        }
                    }
                }
                z2 = false;
                zipFile.close();
                return z2;
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    a1.b.p(zipFile, th3);
                    throw th4;
                }
            }
        } catch (Exception unused) {
            return false;
        }
    }
}
