package w0;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class r5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final o2.h f4148a = new o2.h("^[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z0-9_]+)+$");
    public static final o2.h b = new o2.h("status=([A-Za-z0-9-]+)");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final o2.h f4149c = new o2.h("\\br[-w]x[ps]\\b");

    public static final l5 a(o5 o5Var) {
        q5 q5VarC = c(o5Var);
        if (j(o5Var) && q5VarC.b != m5.b) {
            return l5.f3832a;
        }
        if (j(o5Var)) {
            return l5.f3834d;
        }
        return q5VarC.f4096a != n5.f3932a ? l5.b : l5.f3833c;
    }

    public static final Long b(String str, String str2) {
        String string;
        String string2;
        i2.g.e(str, "saida");
        Iterator it = o2.k.n0(str).iterator();
        do {
            if (!it.hasNext()) {
                string = null;
                break;
            }
            String str3 = (String) it.next();
            i2.g.e(str3, "it");
            string = o2.k.E0(str3).toString();
        } while (!o2.t.d0(string, str2.concat("=")));
        if (string == null || (string2 = o2.k.E0(o2.k.x0(string, '=', string)).toString()) == null) {
            return null;
        }
        return o2.s.Y(string2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0047, code lost:
    
        if (r2.equals("quicken") == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0051, code lost:
    
        if (r2.equals("everything") == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005b, code lost:
    
        if (r2.equals("speed") == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0065, code lost:
    
        return new w0.q5(r8, w0.m5.f3882a);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x006c, code lost:
    
        if (r2.equals("verify") == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0086, code lost:
    
        if (r2.equals("speed-profile") == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x008f, code lost:
    
        if (r2.equals("extract") == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0098, code lost:
    
        if (r2.equals("everything-profile") == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x009d, code lost:
    
        if (r0 <= 0) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00a6, code lost:
    
        return new w0.q5(r8, w0.m5.b);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00ac, code lost:
    
        return new w0.q5(r4, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00b3, code lost:
    
        if (r2.equals("assume-verified") == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00bd, code lost:
    
        return new w0.q5(r4, w0.m5.f);
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final w0.q5 c(w0.o5 r9) {
        /*
            Method dump skipped, instruction units count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: w0.r5.c(w0.o5):w0.q5");
    }

    public static final Boolean d(String str) {
        List listO0 = o2.k.o0(str);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listO0) {
            if (!o2.k.m0((String) obj)) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        boolean z2 = false;
        if (!arrayList.isEmpty()) {
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj2 = arrayList.get(i3);
                i3++;
                if (f4149c.a((String) obj2)) {
                    z2 = true;
                    break;
                }
            }
        }
        return Boolean.valueOf(z2);
    }

    public static final boolean e(String str) {
        i2.g.e(str, "pkg");
        return f4148a.c(str);
    }

    public static final List f(String str) {
        i2.g.e(str, "saida");
        return n2.g.W(new n2.d(new n2.c(new n2.d(new n2.c(o2.k.n0(str), new n2(5), 2), true, new n2(6)), new n2(7), 2), false, n2.j.f2535a));
    }

    public static final boolean g(o5 o5Var) {
        q5 q5VarC = c(o5Var);
        if (q5VarC.f4096a != n5.f3932a) {
            return true;
        }
        return j(o5Var) && q5VarC.b != m5.b;
    }

    public static final String h(String str, String str2, boolean z2) {
        i2.g.e(str, "pkg");
        if (!e(str) || (!str2.equals("speed-profile") && !str2.equals("speed"))) {
            return "";
        }
        StringBuilder sbM = androidx.activity.result.b.m("cmd package compile -m ", str2, " -f ", str, " 2>&1");
        sbM.append(z2 ? "; am force-stop ".concat(str) : "");
        return sbM.toString();
    }

    public static final String i(List list) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (e((String) obj)) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            return "";
        }
        return o2.m.V("\n            for p in " + y1.g.e0(arrayList, " ", null, 62) + "; do\n              apk=$(pm path $p 2>/dev/null | sed -n 's/^package://p' | head -1)\n              [ -z \"$apk\" ] && continue\n              dir=${apk%/*}\n              sa=$(stat -c %s \"$apk\" 2>/dev/null)\n              so=$(stat -c %s \"$dir/oat/arm64/base.odex\" 2>/dev/null)\n              sp=$(stat -c %s \"/data/misc/profiles/ref/$p/primary.prof\" 2>/dev/null)\n              sc=$(stat -c %s \"/data/misc/profiles/cur/0/$p/primary.prof\" 2>/dev/null)\n              raw=$(dumpsys package \"$p\" 2>/dev/null | grep 'status=' | head -1)\n              echo \"$p|$sa|$so|$sp|$sc|$raw\"\n            done\n        ");
    }

    public static final boolean j(o5 o5Var) {
        i2.g.e(o5Var, "p");
        return o5Var.f3977d > 0 || o5Var.f3978e > 0;
    }
}
