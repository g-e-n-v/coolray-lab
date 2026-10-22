package w0;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public abstract class ug {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final o2.h f4355a = new o2.h(" +");
    public static volatile x1.a b;

    /* JADX WARN: Code duplicated, block: B:34:0x007d  */
    /* JADX WARN: Code duplicated, block: B:49:0x00bb  */
    public static Double a() {
        Iterable iterableI0;
        Object next;
        Object bVar;
        tg tgVar;
        Long lY;
        Object bVar2;
        double d3;
        double d4;
        double d5;
        File[] fileArrListFiles = new File("/sys/class/thermal").listFiles(new sg());
        if (fileArrListFiles != null) {
            ArrayList arrayList = new ArrayList();
            for (File file : fileArrListFiles) {
                try {
                    bVar = o2.k.E0(f2.d.h0(new File(file, "temp"))).toString();
                } catch (Throwable th) {
                    bVar = new x1.b(th);
                }
                if (bVar instanceof x1.b) {
                    bVar = null;
                }
                String str = (String) bVar;
                if (str == null || (lY = o2.s.Y(str)) == null) {
                    tgVar = null;
                } else {
                    long jLongValue = lY.longValue();
                    try {
                        bVar2 = o2.k.E0(f2.d.h0(new File(file, "type"))).toString();
                    } catch (Throwable th2) {
                        bVar2 = new x1.b(th2);
                    }
                    if (bVar2 instanceof x1.b) {
                        bVar2 = null;
                    }
                    String name = (String) bVar2;
                    if (name == null) {
                        name = file.getName();
                    } else {
                        if (o2.k.m0(name)) {
                            name = null;
                        }
                        if (name == null) {
                            name = file.getName();
                        }
                    }
                    if (Math.abs(jLongValue) > 1000) {
                        d4 = jLongValue;
                        d5 = 1000.0d;
                    } else {
                        if (Math.abs(jLongValue) > 200) {
                            d4 = jLongValue;
                            d5 = 10.0d;
                        } else {
                            d3 = jLongValue;
                        }
                        if (d3 >= -40.0d || d3 > 150.0d) {
                            tgVar = null;
                        } else {
                            i2.g.b(name);
                            tgVar = new tg(name, d3);
                        }
                    }
                    d3 = d4 / d5;
                    if (d3 >= -40.0d) {
                        tgVar = null;
                    } else {
                        tgVar = null;
                    }
                }
                if (tgVar != null) {
                    arrayList.add(tgVar);
                }
            }
            iterableI0 = y1.g.i0(arrayList, new b6(16));
        } else {
            iterableI0 = y1.p.f4663a;
        }
        Iterator it = iterableI0.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!((tg) next).f4287a.equals("mtktscpu"));
        tg tgVar2 = (tg) next;
        if (tgVar2 != null) {
            return Double.valueOf(tgVar2.b);
        }
        return null;
    }

    public static Integer b() {
        Long lY;
        Long lY2;
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(new File("/proc/stat")), o2.a.f2622a), 8192);
            try {
                Iterator it = ((n2.a) a1.b.F(bufferedReader)).iterator();
                if (!it.hasNext()) {
                    throw new NoSuchElementException("Sequence is empty.");
                }
                String str = (String) it.next();
                bufferedReader.close();
                List listD = f4355a.d(0, o2.k.E0(str).toString());
                String str2 = (String) y1.g.c0(listD, 4);
                if (str2 == null || (lY = o2.s.Y(str2)) == null) {
                    return null;
                }
                long jLongValue = lY.longValue();
                Iterator it2 = y1.f.U(new Integer[]{1, 2, 3, 5, 6, 7, 8}).iterator();
                long jLongValue2 = 0;
                while (it2.hasNext()) {
                    String str3 = (String) y1.g.c0(listD, ((Number) it2.next()).intValue());
                    jLongValue2 += (str3 == null || (lY2 = o2.s.Y(str3)) == null) ? 0L : lY2.longValue();
                }
                x1.a aVar = b;
                b = new x1.a(Long.valueOf(jLongValue2), lY);
                if (aVar == null) {
                    return null;
                }
                long jLongValue3 = jLongValue2 - ((Number) aVar.f4641a).longValue();
                long jLongValue4 = (jLongValue - ((Number) aVar.b).longValue()) + jLongValue3;
                if (jLongValue4 <= 0) {
                    return null;
                }
                return Integer.valueOf(k1.a.k((int) ((jLongValue3 * 100.0d) / jLongValue4), 0, 100));
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    a1.b.p(bufferedReader, th);
                    throw th2;
                }
            }
        } catch (Throwable unused) {
            return null;
        }
    }
}
