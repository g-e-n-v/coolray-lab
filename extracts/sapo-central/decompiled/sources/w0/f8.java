package w0;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes.dex */
public abstract class f8 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final o2.h f3587a = new o2.h(0, "\\[dex:([0-9a-f]{8}(?:-[0-9a-f]{8})*)]");

    public static final String a(LinkedHashMap linkedHashMap) {
        Set setKeySet = linkedHashMap.keySet();
        ArrayList arrayList = new ArrayList();
        for (Object obj : setKeySet) {
            String str = (String) obj;
            if (o2.t.d0(str, "classes") && o2.t.Z(str, ".dex", false) && !o2.k.f0(str, '/')) {
                arrayList.add(obj);
            }
        }
        List listI0 = y1.g.i0(arrayList, new a2.a(new h2.l[]{new n2(23), new n2(24)}));
        if (listI0.isEmpty()) {
            return null;
        }
        return y1.g.e0(listI0, "-", new q1(2, linkedHashMap), 30);
    }

    public static final String b(String str) {
        try {
            ZipFile zipFile = new ZipFile(str);
            try {
                Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
                i2.g.d(enumerationEntries, "entries(...)");
                n2.f fVarU = n2.g.U(new y1.j(enumerationEntries));
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (ZipEntry zipEntry : (n2.a) fVarU) {
                    linkedHashMap.put(zipEntry.getName(), Long.valueOf(zipEntry.getCrc()));
                }
                String strA = a(linkedHashMap);
                zipFile.close();
                return strA;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    a1.b.p(zipFile, th);
                    throw th2;
                }
            }
        } catch (Throwable unused) {
            return null;
        }
    }
}
