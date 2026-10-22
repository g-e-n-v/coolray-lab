package w0;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class ud {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ud f4348a = new ud();
    public static final long[] b = {16, 50, 100, 200, 500, 1000, 2000, 5000};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final td f4349c = new td("toque→quadro");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final td f4350d = new td("leitura carro");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final td f4351e = new td("shell adbd");
    public static final HashMap f = new HashMap();

    public static String a(td tdVar) {
        String str;
        long j3 = tdVar.b;
        String str2 = tdVar.f4279a;
        if (j3 == 0) {
            return str2.concat(": 0");
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        sb.append(": n=");
        sb.append(tdVar.b);
        sb.append(" média=");
        sb.append(tdVar.f4280c / tdVar.b);
        sb.append("ms p50");
        sb.append(b(tdVar, 0.5d));
        sb.append(" p95");
        sb.append(b(tdVar, 0.95d));
        sb.append(" máx=");
        sb.append(tdVar.f4281d);
        sb.append("ms");
        if (tdVar.f4282e > 0) {
            str = " estouros=" + tdVar.f4282e;
        } else {
            str = "";
        }
        sb.append(str);
        return sb.toString();
    }

    public static String b(td tdVar, double d3) {
        long j3 = tdVar.b;
        long[] jArr = tdVar.f;
        long j4 = 0;
        if (j3 == 0) {
            return "-";
        }
        long jCeil = (long) Math.ceil(j3 * d3);
        int length = jArr.length;
        int i3 = 0;
        while (true) {
            long[] jArr2 = b;
            if (i3 >= length) {
                return ">" + y1.f.c0(jArr2) + "ms";
            }
            j4 += jArr[i3];
            if (j4 >= jCeil) {
                if (i3 < 8) {
                    return "≤" + jArr2[i3] + "ms";
                }
                return ">" + y1.f.c0(jArr2) + "ms";
            }
            i3++;
        }
    }

    public final synchronized void c(td tdVar, long j3, boolean z2) {
        try {
            i2.g.e(tdVar, "s");
            tdVar.b++;
            tdVar.f4280c += j3;
            if (j3 > tdVar.f4281d) {
                tdVar.f4281d = j3;
            }
            if (z2) {
                tdVar.f4282e++;
            }
            int i3 = 0;
            while (true) {
                long[] jArr = b;
                if (i3 >= 8 || j3 <= jArr[i3]) {
                    break;
                } else {
                    i3++;
                }
            }
            long[] jArr2 = tdVar.f;
            jArr2[i3] = jArr2[i3] + 1;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized String e() {
        String strConcat;
        String string;
        try {
            HashMap map = f;
            if (map.isEmpty()) {
                strConcat = "";
            } else {
                Set setEntrySet = map.entrySet();
                i2.g.d(setEntrySet, "<get-entries>(...)");
                strConcat = " · filas máx: ".concat(y1.g.e0(setEntrySet, " ", new ya(21), 30));
            }
            StringBuilder sb = new StringBuilder();
            td tdVar = f4349c;
            sb.append(a(tdVar));
            sb.append(" · ");
            td tdVar2 = f4350d;
            sb.append(a(tdVar2));
            sb.append(" · ");
            td tdVar3 = f4351e;
            sb.append(a(tdVar3));
            sb.append(strConcat);
            string = sb.toString();
            for (td tdVar4 : y1.f.U(new td[]{tdVar, tdVar2, tdVar3})) {
                tdVar4.b = 0L;
                tdVar4.f4280c = 0L;
                tdVar4.f4281d = 0L;
                tdVar4.f4282e = 0L;
                long[] jArr = tdVar4.f;
                Arrays.fill(jArr, 0, jArr.length, 0L);
            }
            f.clear();
        } catch (Throwable th) {
            throw th;
        }
        return string;
    }

    public final synchronized boolean f() {
        return (f4349c.b + f4350d.b) + f4351e.b > 0;
    }
}
