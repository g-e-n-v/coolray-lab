package w0;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class ne {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final o2.h f3953a = new o2.h(0, "(^|[\\s'\"=/])(/system|/vendor|/product|/system_ext|/odm)(/|$|[\\s'\"])|remount|/dev/block/");
    public static final o2.h b = new o2.h("^[A-Za-z0-9._:@/-]{1,120}$");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final List f3954c = y1.f.U(new String[]{"persist.ex.", "sys.ex.", "persist.cpaa.", "service.adb.tcp.port", "ctl."});

    public static me a(he heVar, p pVar, LinkedHashMap linkedHashMap) {
        boolean zC;
        boolean z2;
        he heVar2 = heVar;
        i2.g.e(heVar2, "pb");
        String str = heVar2.f3680a;
        boolean z3 = heVar2.f3681c;
        je jeVar = je.b;
        if (!z3) {
            return new me(jeVar, 0, 0L, null, "playbook desligado");
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        String str2 = heVar2.f3682d;
        String str3 = null;
        int i3 = 0;
        while (!str2.equals("done")) {
            if (str2.equals("abort")) {
                return new me(jeVar, i3, System.currentTimeMillis() - jCurrentTimeMillis, str3, null);
            }
            int i4 = heVar2.f3683e;
            je jeVar2 = je.f3766c;
            if (i3 >= i4) {
                return new me(jeVar2, i3, System.currentTimeMillis() - jCurrentTimeMillis, str3, "maxSteps");
            }
            if (System.currentTimeMillis() - jCurrentTimeMillis >= heVar2.f) {
                return new me(jeVar2, i3, System.currentTimeMillis() - jCurrentTimeMillis, str3, "maxTotalMs");
            }
            oe oeVar = (oe) heVar2.f3684g.get(str2);
            if (oeVar == null) {
                return new me(jeVar, i3, System.currentTimeMillis() - jCurrentTimeMillis, str3, androidx.activity.result.b.h("passo '", str2, "' não existe"));
            }
            str3 = oeVar.f4016a;
            int i5 = i3 + 1;
            String str4 = oeVar.f4022i;
            char c3 = '/';
            if (str4 != null) {
                pVar.d("[" + str + '/' + str3 + "] " + str4);
            }
            int i6 = 0;
            while (true) {
                try {
                    zC = c(oeVar, pVar, linkedHashMap);
                } catch (ke e3) {
                    pVar.d("[" + str + '/' + str3 + "] op desconhecida: " + e3.getMessage());
                    return new me(je.f3767d, i5, System.currentTimeMillis() - jCurrentTimeMillis, str3, e3.getMessage());
                } catch (le e4) {
                    pVar.d("[" + str + '/' + str3 + "] RECUSADO: " + e4.getMessage());
                    return new me(je.f3768e, i5, System.currentTimeMillis() - jCurrentTimeMillis, str3, e4.getMessage());
                } catch (Exception e5) {
                    pVar.d("[" + str + c3 + str3 + "] erro: " + e5.getMessage());
                    zC = false;
                }
                if (!zC) {
                    if (i6 >= oeVar.f4019e) {
                        z2 = false;
                        break;
                    }
                    i6++;
                    int i7 = i5;
                    try {
                        Thread.sleep(oeVar.f * ((long) i6));
                    } catch (InterruptedException unused) {
                    }
                    i5 = i7;
                    c3 = '/';
                } else {
                    z2 = true;
                    break;
                }
            }
            int i8 = i5;
            str2 = z2 ? oeVar.f4020g : oeVar.f4021h;
            heVar2 = heVar;
            i3 = i8;
        }
        return new me(je.f3765a, i3, System.currentTimeMillis() - jCurrentTimeMillis, str3, null);
    }

    public static void b(String... strArr) throws le {
        ArrayList arrayListY = y1.f.Y(strArr);
        int size = arrayListY.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayListY.get(i3);
            i3++;
            String str = (String) obj;
            if (f3953a.a(str)) {
                throw new le("toca em partição de sistema: " + str);
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:162:0x04a1  */
    /* JADX WARN: Code duplicated, block: B:165:0x04c8 A[LOOP:3: B:101:0x02fd->B:165:0x04c8, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:418:0x0c60 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:499:0x0642 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:500:0x04ae A[SYNTHETIC] */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v202, types: [o2.h] */
    /* JADX WARN: Type inference failed for: r2v27, types: [java.lang.Object, java.util.Map] */
    /* JADX WARN: Type inference failed for: r2v79, types: [java.lang.Object, java.util.Map] */
    /* JADX WARN: Type inference failed for: r2v99, types: [java.lang.Object, java.util.Map] */
    /* JADX WARN: Type inference failed for: r4v88, types: [java.lang.Object, java.util.Map] */
    /* JADX WARN: Type inference failed for: r5v5, types: [y1.p] */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r5v8, types: [java.util.ArrayList] */
    public static boolean c(oe oeVar, p pVar, LinkedHashMap linkedHashMap) throws JSONException, InterruptedException, ke, le {
        ?? arrayList;
        Object bVar;
        String str;
        boolean zA;
        h2.l lVar = pVar.b;
        JSONObject jSONObject = oeVar.f4017c;
        String str2 = oeVar.b;
        String str3 = "grep -F ' ";
        String str4 = "getString(...)";
        Object obj = null;
        boolean z2 = false;
        switch (str2.hashCode()) {
            case -1696676289:
                if (str2.equals("amStartService")) {
                    String strD = d(jSONObject, linkedHashMap, "componente");
                    pVar.getClass();
                    i2.g.e(strD, "componente");
                    List list = p.f4036k;
                    if (list == null || !list.isEmpty()) {
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            if (o2.t.d0(strD, (String) it.next())) {
                                return pVar.g(15000, "am start-foreground-service -n " + androidx.activity.result.b.i(strD, "'", "'\\''", new StringBuilder("'"), '\''));
                            }
                        }
                    }
                    pVar.f("servico fora da allowlist: ".concat(strD));
                    return false;
                }
                throw new ke(str2);
            case -1618876223:
                if (str2.equals("broadcast")) {
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("extras");
                    if (jSONObjectOptJSONObject != null) {
                        Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                        i2.g.d(itKeys, "keys(...)");
                        while (itKeys.hasNext()) {
                            String next = itKeys.next();
                            String string = jSONObjectOptJSONObject.getString(next);
                            i2.g.d(string, str4);
                            linkedHashMap2.put(next, e(string, linkedHashMap));
                        }
                    }
                    String strD2 = d(jSONObject, linkedHashMap, "action");
                    pVar.getClass();
                    i2.g.e(strD2, "action");
                    return pVar.g(10000, "am broadcast -a " + androidx.activity.result.b.i(strD2, "'", "'\\''", new StringBuilder("'"), '\'') + ' ' + y1.g.e0(linkedHashMap2.entrySet(), " ", new o(0), 30));
                }
                throw new ke(str2);
            case -1467778396:
                if (str2.equals("bindPacoteAtivo")) {
                    String strD3 = d(jSONObject, linkedHashMap, "pacote");
                    pVar.getClass();
                    i2.g.e(strD3, "pacote");
                    if (!p.e(strD3)) {
                        pVar.f("pacote fora da allowlist: ".concat(strD3));
                        return false;
                    }
                    String strA = pVar.a(strD3);
                    if (o2.k.m0(strA)) {
                        return false;
                    }
                    return o2.k.e0(p.h(8000, "grep -F ' " + strA + " ' /proc/mounts"), strA, false);
                }
                throw new ke(str2);
            case -1388964438:
                if (str2.equals("binder")) {
                    String strD4 = d(jSONObject, linkedHashMap, "service");
                    int iOptInt = jSONObject.optInt("txn", -1);
                    JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("args");
                    if (jSONArrayOptJSONArray != null) {
                        l2.c cVarT = k1.a.T(0, jSONArrayOptJSONArray.length());
                        arrayList = new ArrayList(y1.i.X(cVarT));
                        Iterator it2 = cVarT.iterator();
                        while (true) {
                            l2.b bVar2 = (l2.b) it2;
                            if (bVar2.f2428c) {
                                arrayList.add(jSONArrayOptJSONArray.getString(bVar2.nextInt()));
                            }
                        }
                    } else {
                        arrayList = y1.p.f4663a;
                    }
                    pVar.getClass();
                    i2.g.e(strD4, "service");
                    if (!p.f4038m.contains(strD4)) {
                        pVar.f("serviço fora da allowlist: ".concat(strD4));
                        return false;
                    }
                    if (iOptInt < 1) {
                        pVar.f("txn inválido: " + iOptInt);
                        return false;
                    }
                    return pVar.g(10000, "service call " + strD4 + ' ' + iOptInt + ' ' + y1.g.e0(arrayList, " ", new o(11), 30));
                }
                throw new ke(str2);
            case -1374815180:
                if (str2.equals("restorecon")) {
                    b(d(jSONObject, linkedHashMap, "path"));
                    String strD5 = d(jSONObject, linkedHashMap, "path");
                    pVar.getClass();
                    i2.g.e(strD5, "caminho");
                    if (!p.b(strD5)) {
                        pVar.f("restorecon fora dos nossos diretorios: ".concat(strD5));
                        return false;
                    }
                    return pVar.g(10000, "restorecon -v " + androidx.activity.result.b.i(strD5, "'", "'\\''", new StringBuilder("'"), '\'') + " 2>/dev/null || true");
                }
                throw new ke(str2);
            case -1249347599:
                if (str2.equals("getVar")) {
                    CharSequence charSequence = (CharSequence) linkedHashMap.get(jSONObject.optString("key"));
                    if (charSequence == null || o2.k.m0(charSequence)) {
                        return false;
                    }
                    return true;
                }
                throw new ke(str2);
            case -1060711647:
                if (str2.equals("umountBind")) {
                    String strD6 = d(jSONObject, linkedHashMap, "alvo");
                    pVar.getClass();
                    i2.g.e(strD6, "alvo");
                    String str5 = (String) p.f.get(strD6);
                    boolean z3 = false;
                    if (str5 == null) {
                        pVar.f("bind desconhecido: ".concat(strD6));
                    } else {
                        pVar.g(20000, e8.S(str5));
                        boolean zE0 = o2.k.e0(p.h(8000, "grep -F ' " + str5 + " ' /proc/mounts"), str5, false);
                        z3 = zE0 ^ true;
                        if (zE0) {
                            pVar.b.c("bind '" + strD6 + "' resistiu ao umount");
                        }
                    }
                    return z3;
                }
                throw new ke(str2);
            case -1030520295:
                if (str2.equals("chconFile")) {
                    b(d(jSONObject, linkedHashMap, "path"));
                    String strD7 = d(jSONObject, linkedHashMap, "path");
                    String strD8 = d(jSONObject, linkedHashMap, "rotulo");
                    pVar.getClass();
                    i2.g.e(strD7, "caminho");
                    i2.g.e(strD8, "rotulo");
                    if (!p.b(strD7)) {
                        pVar.f("chcon fora dos nossos diretorios: ".concat(strD7));
                        return false;
                    }
                    if (!p.f4035j.contains(strD8)) {
                        pVar.f("rotulo fora da allowlist: ".concat(strD8));
                        return false;
                    }
                    return pVar.g(10000, "chcon " + strD8 + ' ' + androidx.activity.result.b.i(strD7, "'", "'\\''", new StringBuilder("'"), '\''));
                }
                throw new ke(str2);
            case -928390569:
                if (str2.equals("rmFile")) {
                    b(d(jSONObject, linkedHashMap, "path"));
                    String strD9 = d(jSONObject, linkedHashMap, "path");
                    if (!p.b(strD9)) {
                        pVar.f("rm fora dos nossos diretorios: ".concat(strD9));
                        return false;
                    }
                    return pVar.g(10000, "rm -f " + androidx.activity.result.b.i(strD9, "'", "'\\''", new StringBuilder("'"), '\''));
                }
                throw new ke(str2);
            case -905797787:
                if (str2.equals("setVar")) {
                    linkedHashMap.put(jSONObject.optString("key"), d(jSONObject, linkedHashMap, "value"));
                    return true;
                }
                throw new ke(str2);
            case -905673834:
                if (str2.equals("amStart")) {
                    b(d(jSONObject, linkedHashMap, "component"));
                    String strD10 = d(jSONObject, linkedHashMap, "component");
                    List list2 = p.f4036k;
                    if (list2 == null || !list2.isEmpty()) {
                        Iterator it3 = list2.iterator();
                        while (it3.hasNext()) {
                            if (o2.t.d0(strD10, (String) it3.next())) {
                                return pVar.g(10000, "am start -n " + androidx.activity.result.b.i(strD10, "'", "'\\''", new StringBuilder("'"), '\''));
                            }
                        }
                    }
                    pVar.f("componente fora da allowlist: ".concat(strD10));
                    return false;
                }
                throw new ke(str2);
            case -754653287:
                if (str2.equals("chmodFile")) {
                    b(d(jSONObject, linkedHashMap, "path"));
                    String strD11 = d(jSONObject, linkedHashMap, "path");
                    String strD12 = d(jSONObject, linkedHashMap, "modo");
                    if (!p.b(strD11)) {
                        pVar.f("chmod fora dos nossos diretorios: ".concat(strD11));
                        return false;
                    }
                    Pattern patternCompile = Pattern.compile("^[0-7]{3,4}$");
                    i2.g.d(patternCompile, "compile(...)");
                    if (!patternCompile.matcher(strD12).matches()) {
                        pVar.f("modo invalido: ".concat(strD12));
                        return false;
                    }
                    return pVar.g(10000, "chmod " + strD12 + ' ' + androidx.activity.result.b.i(strD11, "'", "'\\''", new StringBuilder("'"), '\''));
                }
                throw new ke(str2);
            case -506374511:
                if (str2.equals("copyFile")) {
                    b(d(jSONObject, linkedHashMap, "de"), d(jSONObject, linkedHashMap, "para"));
                    String strD13 = d(jSONObject, linkedHashMap, "de");
                    String strD14 = d(jSONObject, linkedHashMap, "para");
                    if (!p.b(strD13) || !p.b(strD14)) {
                        pVar.f("cp fora dos nossos diretorios");
                        return false;
                    }
                    return pVar.g(30000, "cp -f " + e8.O(strD13) + ' ' + e8.O(strD14));
                }
                throw new ke(str2);
            case -256415522:
                if (str2.equals("pmInstall")) {
                    String strD15 = d(jSONObject, linkedHashMap, "md5");
                    if (strD15.length() != 32) {
                        throw new le("pmInstall sem md5");
                    }
                    b(d(jSONObject, linkedHashMap, "path"));
                    String strD16 = d(jSONObject, linkedHashMap, "path");
                    String strD17 = d(jSONObject, linkedHashMap, "pacote");
                    List list3 = p.f4030d;
                    if (list3 == null || !list3.isEmpty()) {
                        Iterator it4 = list3.iterator();
                        while (it4.hasNext()) {
                            if (o2.t.d0(strD16, (String) it4.next())) {
                                if (o2.k.m0(strD17)) {
                                    strD17 = "com.njda.adapter";
                                }
                                if (!p.e(strD17)) {
                                    pVar.f("pacote fora da allowlist: ".concat(strD17));
                                    return false;
                                }
                                if (strD17.equals("com.njda.adapter")) {
                                    pVar.g(8000, "setenforce 0");
                                    if (!o2.t.a0(o2.k.E0(p.h(8000, "getenforce")).toString(), "Permissive")) {
                                        pVar.f("ConnAdaptor: não consegui preparar SELinux");
                                        return false;
                                    }
                                }
                                String strO = e8.O(strD16);
                                String strH = p.h(8000, "md5sum " + strO + " 2>/dev/null | awk '{print $1}'");
                                if (!o2.t.a0(strH, strD15)) {
                                    StringBuilder sbL = androidx.activity.result.b.l("md5 nao confere em ", strD16, " (esperado ");
                                    sbL.append(o2.k.C0(8, strD15));
                                    sbL.append("…, veio ");
                                    sbL.append(o2.k.C0(8, strH));
                                    sbL.append("…)");
                                    pVar.f(sbL.toString());
                                    return false;
                                }
                                pVar.g(8000, "chmod 644 " + strO);
                                lVar.c("pm install: ".concat(o2.k.C0(120, p.h(180000, "pm install -r -g " + strO + " 2>&1 | tail -n1"))));
                                String strH2 = p.h(8000, "pm path " + e8.O(strD17) + " 2>/dev/null");
                                boolean zE1 = o2.k.e0(strH2, "/data/app", false);
                                if (!zE1) {
                                    StringBuilder sbL2 = androidx.activity.result.b.l("RECUSADO instalacao nao vingou: pm path(", strD17, ") = ");
                                    sbL2.append(o2.k.C0(80, strH2));
                                    lVar.c(sbL2.toString());
                                }
                                if (!zE1) {
                                    return false;
                                }
                                if (!strD17.equals("com.njda.adapter") || pVar.i("connadaptorPrepararServico", y1.q.f4664a)) {
                                    return true;
                                }
                                return false;
                            }
                        }
                    }
                    pVar.f("instalar fora dos nossos diretorios: ".concat(strD16));
                    return false;
                }
                throw new ke(str2);
            case -121313300:
                if (str2.equals("settingsPut")) {
                    String strD18 = d(jSONObject, linkedHashMap, "namespace");
                    if (o2.k.m0(strD18)) {
                        strD18 = "system";
                    }
                    b(d(jSONObject, linkedHashMap, "valor"));
                    String strD19 = d(jSONObject, linkedHashMap, "chave");
                    String strD20 = d(jSONObject, linkedHashMap, "valor");
                    if (!p.f4033h.contains(strD18)) {
                        pVar.f("namespace fora da allowlist: ".concat(strD18));
                        return false;
                    }
                    if (!p.f4034i.contains(strD19)) {
                        pVar.f("setting fora da allowlist: ".concat(strD19));
                        return false;
                    }
                    return pVar.g(10000, "settings put " + strD18 + ' ' + e8.O(strD19) + ' ' + e8.O(strD20));
                }
                throw new ke(str2);
            case -99177787:
                if (str2.equals("desfazerBindPacote")) {
                    String strD21 = d(jSONObject, linkedHashMap, "pacote");
                    if (!p.e(strD21)) {
                        pVar.f("pacote fora da allowlist: ".concat(strD21));
                        return false;
                    }
                    String strA2 = pVar.a(strD21);
                    if (!o2.k.m0(strA2)) {
                        pVar.g(20000, e8.S(strA2));
                        boolean zE2 = o2.k.e0(p.h(8000, str3 + strA2 + " ' /proc/mounts"), strA2, false);
                        boolean z4 = zE2 ^ true;
                        if (zE2) {
                            lVar.c("bind sobre '" + strD21 + "' resistiu ao umount");
                        }
                        return z4;
                    }
                    return true;
                }
                throw new ke(str2);
            case -74278983:
                if (str2.equals("getprop")) {
                    String strC = pVar.c(d(jSONObject, linkedHashMap, "name"));
                    String strOptString = jSONObject.optString("into");
                    i2.g.b(strOptString);
                    if (o2.k.m0(strOptString)) {
                        strOptString = null;
                    }
                    if (strOptString != null) {
                        linkedHashMap.put(strOptString, strC);
                    }
                    if (o2.k.m0(strC)) {
                        return false;
                    }
                    return true;
                }
                throw new ke(str2);
            case 3117011:
                if (str2.equals("emit")) {
                    StringBuilder sb = new StringBuilder("evento=");
                    sb.append(d(jSONObject, linkedHashMap, "event"));
                    sb.append(' ');
                    Object objOptJSONObject = jSONObject.optJSONObject("data");
                    if (objOptJSONObject == null) {
                        objOptJSONObject = "";
                    }
                    sb.append(objOptJSONObject);
                    pVar.d(sb.toString());
                    return true;
                }
                throw new ke(str2);
            case 94627080:
                if (str2.equals("check")) {
                    String strD22 = d(jSONObject, linkedHashMap, "left");
                    String strOptString2 = jSONObject.optString("op", "eq");
                    i2.g.d(strOptString2, "optString(...)");
                    String strD23 = d(jSONObject, linkedHashMap, "right");
                    Long lY = o2.s.Y(strD22);
                    Long lY2 = o2.s.Y(strD23);
                    int iHashCode = strOptString2.hashCode();
                    if (iHashCode == -567445985) {
                        if (strOptString2.equals("contains")) {
                            return o2.k.e0(strD22, strD23, false);
                        }
                        return false;
                    }
                    if (iHashCode == 3244) {
                        if (strOptString2.equals("eq")) {
                            return strD22.equals(strD23);
                        }
                        return false;
                    }
                    if (iHashCode == 3309) {
                        if (!strOptString2.equals("gt") || lY == null || lY2 == null || lY.longValue() <= lY2.longValue()) {
                            return false;
                        }
                    } else if (iHashCode != 3464) {
                        if (iHashCode != 3511 || !strOptString2.equals("ne") || strD22.equals(strD23)) {
                            return false;
                        }
                    } else if (!strOptString2.equals("lt") || lY == null || lY2 == null || lY.longValue() >= lY2.longValue()) {
                        return false;
                    }
                    return true;
                }
                throw new ke(str2);
            case 109522647:
                if (str2.equals("sleep")) {
                    try {
                        Thread.sleep(Math.min(jSONObject.optLong("ms", 1000L), 30000L));
                        return true;
                    } catch (InterruptedException unused) {
                        return true;
                    }
                }
                throw new ke(str2);
            case 456531958:
                if (str2.equals("mountBind")) {
                    b(d(jSONObject, linkedHashMap, "origem"));
                    String strD24 = d(jSONObject, linkedHashMap, "alvo");
                    String strD25 = d(jSONObject, linkedHashMap, "origem");
                    String str6 = (String) p.f.get(strD24);
                    if (str6 == null) {
                        pVar.f("bind desconhecido: ".concat(strD24));
                        return false;
                    }
                    if (!p.b(strD25)) {
                        pVar.f("origem fora dos nossos diretorios: ".concat(strD25));
                        return false;
                    }
                    pVar.g(20000, "mount --bind " + e8.O(strD25) + ' ' + e8.O(str6));
                    StringBuilder sb2 = new StringBuilder(str3);
                    sb2.append(str6);
                    sb2.append(" ' /proc/mounts");
                    boolean zE3 = o2.k.e0(p.h(8000, sb2.toString()), str6, false);
                    if (!zE3) {
                        lVar.c("bind '" + strD24 + "' nao confirmado em /proc/mounts");
                    }
                    return zE3;
                }
                throw new ke(str2);
            case 721217642:
                if (str2.equals("bindSobrePacote")) {
                    b(d(jSONObject, linkedHashMap, "origem"));
                    String strD26 = d(jSONObject, linkedHashMap, "pacote");
                    String strD27 = d(jSONObject, linkedHashMap, "origem");
                    if (!p.e(strD26)) {
                        pVar.f("pacote fora da allowlist: ".concat(strD26));
                        return false;
                    }
                    if (!p.b(strD27)) {
                        pVar.f("origem fora dos nossos diretorios: ".concat(strD27));
                        return false;
                    }
                    String strA3 = pVar.a(strD26);
                    if (o2.k.m0(strA3)) {
                        pVar.f("sem caminho para o pacote: ".concat(strD26));
                        return false;
                    }
                    pVar.g(8000, "setenforce 0 2>/dev/null || true");
                    pVar.g(20000, e8.S(strA3));
                    pVar.g(20000, "mount --bind " + e8.O(strD27) + ' ' + e8.O(strA3));
                    StringBuilder sb3 = new StringBuilder(str3);
                    sb3.append(strA3);
                    sb3.append(" ' /proc/mounts");
                    boolean zE4 = o2.k.e0(p.h(8000, sb3.toString()), strA3, false);
                    if (!zE4) {
                        lVar.c("bind sobre '" + strD26 + "' nao confirmado em /proc/mounts");
                    }
                    return zE4;
                }
                throw new ke(str2);
            case 1116279572:
                if (str2.equals("waitFor")) {
                    String strD28 = d(jSONObject, linkedHashMap, "kind");
                    String strD29 = d(jSONObject, linkedHashMap, "value");
                    String strOptString3 = jSONObject.optString("regex");
                    i2.g.b(strOptString3);
                    if (o2.k.m0(strOptString3)) {
                        strOptString3 = null;
                    }
                    long j3 = oeVar.f4018d;
                    long jCurrentTimeMillis = System.currentTimeMillis() + j3;
                    if (strOptString3 != null) {
                        try {
                            bVar = new o2.h(strOptString3);
                        } catch (Throwable th) {
                            bVar = new x1.b(th);
                        }
                        obj = (o2.h) (bVar instanceof x1.b ? null : bVar);
                        break;
                    }
                    ?? r3 = obj;
                    while (true) {
                        switch (strD28.hashCode()) {
                            case -1097341422:
                                str = str3;
                                if (strD28.equals("logcat")) {
                                    String strH3 = p.h(8000, "logcat -d -t 300 2>/dev/null");
                                    zA = r3 != 0 ? r3.a(strH3) : o2.k.e0(strH3, strD29, false);
                                    if (zA) {
                                        return true;
                                    }
                                    Thread.sleep(500L);
                                    if (System.currentTimeMillis() >= jCurrentTimeMillis) {
                                        StringBuilder sbM = androidx.activity.result.b.m("waitFor ", strD28, "='", strD29, "' estourou ");
                                        sbM.append(j3);
                                        sbM.append("ms");
                                        lVar.c(sbM.toString());
                                        return false;
                                    }
                                    str3 = str;
                                    z2 = false;
                                }
                                break;
                            case -807062458:
                                str = str3;
                                if (strD28.equals("package")) {
                                    zA = o2.k.e0(p.h(8000, "pm path " + androidx.activity.result.b.i(strD29, "'", "'\\''", new StringBuilder("'"), '\'') + " 2>/dev/null"), "package:", false);
                                    if (zA) {
                                        return true;
                                    }
                                    Thread.sleep(500L);
                                    if (System.currentTimeMillis() >= jCurrentTimeMillis) {
                                        StringBuilder sbM2 = androidx.activity.result.b.m("waitFor ", strD28, "='", strD29, "' estourou ");
                                        sbM2.append(j3);
                                        sbM2.append("ms");
                                        lVar.c(sbM2.toString());
                                        return false;
                                    }
                                    str3 = str;
                                    z2 = false;
                                }
                                break;
                            case -309518737:
                                str = str3;
                                if (strD28.equals("process")) {
                                    StringBuilder sb4 = new StringBuilder("pidof ");
                                    sb4.append(androidx.activity.result.b.i(strD29, "'", "'\\''", new StringBuilder("'"), '\''));
                                    sb4.append(" 2>/dev/null");
                                    zA = o2.k.E0(p.h(8000, sb4.toString())).toString().length() > 0;
                                    if (zA) {
                                        return true;
                                    }
                                    Thread.sleep(500L);
                                    if (System.currentTimeMillis() >= jCurrentTimeMillis) {
                                        StringBuilder sbM3 = androidx.activity.result.b.m("waitFor ", strD28, "='", strD29, "' estourou ");
                                        sbM3.append(j3);
                                        sbM3.append("ms");
                                        lVar.c(sbM3.toString());
                                        return false;
                                    }
                                    str3 = str;
                                    z2 = false;
                                }
                                break;
                            case 3023933:
                                if (strD28.equals("bind")) {
                                    String str7 = (String) p.f.get(strD29);
                                    if (str7 != null) {
                                        str = str3;
                                        zA = o2.k.e0(p.h(8000, str + str7 + " ' /proc/mounts"), str7, false);
                                    } else {
                                        str = str3;
                                    }
                                    if (zA) {
                                        return true;
                                    }
                                    Thread.sleep(500L);
                                    if (System.currentTimeMillis() >= jCurrentTimeMillis) {
                                        StringBuilder sbM4 = androidx.activity.result.b.m("waitFor ", strD28, "='", strD29, "' estourou ");
                                        sbM4.append(j3);
                                        sbM4.append("ms");
                                        lVar.c(sbM4.toString());
                                        return false;
                                    }
                                    str3 = str;
                                    z2 = false;
                                }
                                break;
                            case 3143036:
                                if (strD28.equals("file")) {
                                    zA = o2.k.e0(p.h(8000, "[ -e " + androidx.activity.result.b.i(strD29, "'", "'\\''", new StringBuilder("'"), '\'') + " ] && echo SIM"), "SIM", z2);
                                    str = str3;
                                    if (zA) {
                                        return true;
                                    }
                                    Thread.sleep(500L);
                                    if (System.currentTimeMillis() >= jCurrentTimeMillis) {
                                        StringBuilder sbM5 = androidx.activity.result.b.m("waitFor ", strD28, "='", strD29, "' estourou ");
                                        sbM5.append(j3);
                                        sbM5.append("ms");
                                        lVar.c(sbM5.toString());
                                        return false;
                                    }
                                    str3 = str;
                                    z2 = false;
                                }
                                break;
                            case 3449699:
                                if (strD28.equals("prop")) {
                                    String strC2 = pVar.c(strD29);
                                    zA = r3 != 0 ? r3.a(strC2) : !o2.k.m0(strC2) ? true : z2;
                                    str = str3;
                                    if (zA) {
                                        return true;
                                    }
                                    Thread.sleep(500L);
                                    if (System.currentTimeMillis() >= jCurrentTimeMillis) {
                                        StringBuilder sbM6 = androidx.activity.result.b.m("waitFor ", strD28, "='", strD29, "' estourou ");
                                        sbM6.append(j3);
                                        sbM6.append("ms");
                                        lVar.c(sbM6.toString());
                                        return false;
                                    }
                                    str3 = str;
                                    z2 = false;
                                }
                                break;
                            case 100104774:
                                if (strD28.equals("iface")) {
                                    zA = o2.k.e0(p.h(8000, "ip -4 addr show " + androidx.activity.result.b.i(strD29, "'", "'\\''", new StringBuilder("'"), '\'') + " 2>/dev/null"), "inet ", z2);
                                    str = str3;
                                    if (zA) {
                                        return true;
                                    }
                                    Thread.sleep(500L);
                                    if (System.currentTimeMillis() >= jCurrentTimeMillis) {
                                        StringBuilder sbM7 = androidx.activity.result.b.m("waitFor ", strD28, "='", strD29, "' estourou ");
                                        sbM7.append(j3);
                                        sbM7.append("ms");
                                        lVar.c(sbM7.toString());
                                        return false;
                                    }
                                    str3 = str;
                                    z2 = false;
                                }
                                break;
                            case 1719311418:
                                if (strD28.equals("initsvc_parado")) {
                                    if (!i2.g.a(pVar.c("init.svc.".concat(strD29)), "running")) {
                                        str = str3;
                                        if (zA) {
                                            return true;
                                        }
                                        Thread.sleep(500L);
                                        if (System.currentTimeMillis() >= jCurrentTimeMillis) {
                                            StringBuilder sbM8 = androidx.activity.result.b.m("waitFor ", strD28, "='", strD29, "' estourou ");
                                            sbM8.append(j3);
                                            sbM8.append("ms");
                                            lVar.c(sbM8.toString());
                                            return false;
                                        }
                                        str3 = str;
                                        z2 = false;
                                    }
                                    str = str3;
                                    if (zA) {
                                        return true;
                                    }
                                    Thread.sleep(500L);
                                    if (System.currentTimeMillis() >= jCurrentTimeMillis) {
                                        StringBuilder sbM9 = androidx.activity.result.b.m("waitFor ", strD28, "='", strD29, "' estourou ");
                                        sbM9.append(j3);
                                        sbM9.append("ms");
                                        lVar.c(sbM9.toString());
                                        return false;
                                    }
                                    str3 = str;
                                    z2 = false;
                                    break;
                                }
                                break;
                            case 1948352336:
                                if (strD28.equals("initsvc")) {
                                    zA = i2.g.a(pVar.c("init.svc.".concat(strD29)), "running");
                                    str = str3;
                                    if (zA) {
                                        return true;
                                    }
                                    Thread.sleep(500L);
                                    if (System.currentTimeMillis() >= jCurrentTimeMillis) {
                                        StringBuilder sbM10 = androidx.activity.result.b.m("waitFor ", strD28, "='", strD29, "' estourou ");
                                        sbM10.append(j3);
                                        sbM10.append("ms");
                                        lVar.c(sbM10.toString());
                                        return false;
                                    }
                                    str3 = str;
                                    z2 = false;
                                }
                                break;
                            default:
                                break;
                        }
                    }
                    pVar.f("waitFor kind desconhecido: ".concat(strD28));
                    return false;
                }
                throw new ke(str2);
            case 1258622493:
                if (str2.equals("chownFile")) {
                    b(d(jSONObject, linkedHashMap, "path"));
                    String strD30 = d(jSONObject, linkedHashMap, "path");
                    String strD31 = d(jSONObject, linkedHashMap, "dono");
                    if (!p.b(strD30)) {
                        pVar.f("chown fora dos nossos diretorios: ".concat(strD30));
                        return false;
                    }
                    Pattern patternCompile2 = Pattern.compile("^[a-z_]+:[a-z_]+$");
                    i2.g.d(patternCompile2, "compile(...)");
                    if (!patternCompile2.matcher(strD31).matches()) {
                        pVar.f("dono invalido: ".concat(strD31));
                        return false;
                    }
                    return pVar.g(10000, "chown " + strD31 + ' ' + androidx.activity.result.b.i(strD30, "'", "'\\''", new StringBuilder("'"), '\''));
                }
                throw new ke(str2);
            case 1412521674:
                if (str2.equals("shellTemplate")) {
                    String strD32 = d(jSONObject, linkedHashMap, "template");
                    LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                    JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("params");
                    if (jSONObjectOptJSONObject2 != null) {
                        Iterator<String> itKeys2 = jSONObjectOptJSONObject2.keys();
                        i2.g.d(itKeys2, "keys(...)");
                        while (itKeys2.hasNext()) {
                            String next2 = itKeys2.next();
                            String string2 = jSONObjectOptJSONObject2.getString(next2);
                            String str8 = str4;
                            i2.g.d(string2, str8);
                            String strE = e(string2, linkedHashMap);
                            if (!b.c(strE)) {
                                throw new le("parâmetro '" + next2 + "' inválido: " + strE);
                            }
                            b(strE);
                            linkedHashMap3.put(next2, strE);
                            str4 = str8;
                        }
                    }
                    b(strD32);
                    return pVar.i(strD32, linkedHashMap3);
                }
                throw new ke(str2);
            case 1528011149:
                if (str2.equals("forceStop")) {
                    b(d(jSONObject, linkedHashMap, "package"));
                    String strD33 = d(jSONObject, linkedHashMap, "package");
                    List list4 = p.f4036k;
                    if (list4 == null || !list4.isEmpty()) {
                        Iterator it5 = list4.iterator();
                        while (it5.hasNext()) {
                            if (o2.t.d0(strD33, (String) it5.next())) {
                                return pVar.g(10000, "am force-stop " + androidx.activity.result.b.i(strD33, "'", "'\\''", new StringBuilder("'"), '\''));
                            }
                        }
                    }
                    pVar.f("pacote fora da allowlist: ".concat(strD33));
                    return false;
                }
                throw new ke(str2);
            case 1691527688:
                if (str2.equals("limparDalvikCache")) {
                    String strD34 = d(jSONObject, linkedHashMap, "alvo");
                    String str9 = (String) p.f4037l.get(strD34);
                    if (str9 != null) {
                        return pVar.g(20000, "rm -rf ".concat(str9));
                    }
                    pVar.f("dalvik-cache desconhecido: ".concat(strD34));
                    return false;
                }
                throw new ke(str2);
            case 1985830597:
                if (str2.equals("setprop")) {
                    String strD35 = d(jSONObject, linkedHashMap, "name");
                    String strD36 = d(jSONObject, linkedHashMap, "value");
                    List list5 = f3954c;
                    if (list5 == null || !list5.isEmpty()) {
                        Iterator it6 = list5.iterator();
                        while (it6.hasNext()) {
                            if (o2.t.d0(strD35, (String) it6.next())) {
                                b(strD35, strD36);
                                return pVar.g(8000, "setprop " + e8.O(strD35) + ' ' + e8.O(strD36));
                            }
                        }
                    }
                    throw new le("setprop fora da allowlist: ".concat(strD35));
                }
                throw new ke(str2);
            case 2038146917:
                if (str2.equals("pmUninstall")) {
                    String strD37 = d(jSONObject, linkedHashMap, "package");
                    if (!p.f4031e.contains(strD37)) {
                        pVar.f("desinstalar fora da allowlist: ".concat(strD37));
                        return false;
                    }
                    String strI = androidx.activity.result.b.i(strD37, "'", "'\\''", new StringBuilder("'"), '\'');
                    pVar.g(120000, "pm uninstall " + strI);
                    String strH4 = p.h(8000, "pm path " + strI + " 2>/dev/null");
                    boolean zE5 = o2.k.e0(strH4, "/system", false);
                    if (!zE5) {
                        String strC0 = o2.k.C0(80, strH4);
                        if (o2.k.m0(strC0)) {
                            strC0 = "(vazio)";
                        }
                        lVar.c("reversao nao vingou: pm path = ".concat(strC0));
                    }
                    return zE5;
                }
                throw new ke(str2);
            default:
                throw new ke(str2);
        }
    }

    public static final String d(JSONObject jSONObject, LinkedHashMap linkedHashMap, String str) {
        String strOptString = jSONObject.optString(str);
        i2.g.d(strOptString, "optString(...)");
        return e(strOptString, linkedHashMap);
    }

    public static String e(String str, LinkedHashMap linkedHashMap) {
        if (!o2.k.e0(str, "${", false)) {
            return str;
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            String str2 = (String) entry.getKey();
            str = o2.t.c0(str, "${" + str2 + '}', (String) entry.getValue());
        }
        return str;
    }

    public static boolean f(ArrayList arrayList) {
        if (!arrayList.isEmpty()) {
            if (arrayList.isEmpty()) {
                return true;
            }
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList.get(i3);
                i3++;
                if (((je) obj) == je.f3765a) {
                }
            }
            return true;
        }
        return false;
    }
}
