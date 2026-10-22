package w0;

import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class m8 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static volatile Proxy f3904h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static volatile File f3905i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ExecutorService f3899a = Executors.newFixedThreadPool(2);
    public static final ConcurrentHashMap b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ConcurrentHashMap f3900c = new ConcurrentHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final ConcurrentHashMap f3901d = new ConcurrentHashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ConcurrentHashMap f3902e = new ConcurrentHashMap();
    public static final Set f = Collections.newSetFromMap(new ConcurrentHashMap());

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Set f3903g = Collections.newSetFromMap(new ConcurrentHashMap());

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final long[] f3906j = {5000, 15000, 45000};

    public static String a(long j3, String str, String str2) throws IOException {
        StringBuilder sb = new StringBuilder("artist_name=");
        sb.append(URLEncoder.encode(str2, "UTF-8"));
        sb.append("&track_name=");
        sb.append(URLEncoder.encode(str, "UTF-8"));
        if (j3 > 0) {
            sb.append("&duration=");
            sb.append(j3);
        }
        String strH = h("https://lrclib.net/api/get?" + ((Object) sb));
        if (strH == null) {
            return null;
        }
        String strOptString = new JSONObject(strH).optString("syncedLyrics", "");
        i2.g.b(strOptString);
        if (o2.k.m0(strOptString)) {
            return null;
        }
        return strOptString;
    }

    public static File b(String str) {
        String strValueOf;
        File file = f3905i;
        if (file == null) {
            return null;
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        StringBuilder sb = new StringBuilder();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            byte[] bytes = str.getBytes(o2.a.f2622a);
            i2.g.d(bytes, "getBytes(...)");
            byte[] bArrDigest = messageDigest.digest(bytes);
            i2.g.d(bArrDigest, "digest(...)");
            strValueOf = y1.f.b0(bArrDigest, new n2(25));
        } catch (Throwable unused) {
            strValueOf = String.valueOf(str.hashCode());
        }
        sb.append(strValueOf);
        sb.append(".lrc");
        return new File(file, sb.toString());
    }

    public static List c(String str, String str2) {
        i2.g.e(str, "title");
        i2.g.e(str2, "artist");
        String strA = k8.a(str, str2);
        ConcurrentHashMap concurrentHashMap = b;
        List list = (List) concurrentHashMap.get(strA);
        if (list != null) {
            return list;
        }
        File fileB = b(strA);
        if (fileB == null || !fileB.exists()) {
            return null;
        }
        try {
            String strH0 = f2.d.h0(fileB);
            ArrayList arrayListG = g(strH0);
            if (arrayListG.isEmpty()) {
                return null;
            }
            concurrentHashMap.put(strA, arrayListG);
            f3900c.put(strA, strH0);
            fileB.setLastModified(System.currentTimeMillis());
            return arrayListG;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void d(final String str, final String str2, final long j3, final h2.a aVar) {
        i2.g.e(str, "title");
        i2.g.e(str2, "artist");
        if (o2.k.m0(str)) {
            return;
        }
        final String strA = k8.a(str, str2);
        if (b.containsKey(strA) || f3903g.contains(strA)) {
            return;
        }
        ConcurrentHashMap concurrentHashMap = f3901d;
        Integer num = (Integer) concurrentHashMap.get(strA);
        final int iIntValue = num != null ? num.intValue() : 0;
        ConcurrentHashMap concurrentHashMap2 = f3902e;
        if (iIntValue < 4) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            Long l3 = (Long) concurrentHashMap2.get(strA);
            if (jCurrentTimeMillis >= (l3 != null ? l3.longValue() : 0L) && f.add(strA)) {
                concurrentHashMap.put(strA, Integer.valueOf(iIntValue + 1));
                f3899a.execute(new Runnable() { // from class: w0.l8
                    @Override // java.lang.Runnable
                    public final void run() {
                        String str3 = str;
                        String str4 = str2;
                        long j4 = j3;
                        String str5 = strA;
                        h2.a aVar2 = aVar;
                        Set set = m8.f;
                        try {
                            String strE = m8.e(j4 / ((long) 1000), str3, str4);
                            if (strE != null && !o2.k.m0(strE)) {
                                ArrayList arrayListG = m8.g(strE);
                                if (!arrayListG.isEmpty()) {
                                    m8.b.put(str5, arrayListG);
                                    m8.f3900c.put(str5, strE);
                                    m8.i(str5, strE);
                                    aVar2.a();
                                }
                            }
                            set.remove(str5);
                            m8.f3903g.add(str5);
                        } catch (Throwable th) {
                            try {
                                long[] jArr = m8.f3906j;
                                int i3 = iIntValue;
                                long jC0 = (i3 < 0 || i3 >= jArr.length) ? y1.f.c0(jArr) : jArr[i3];
                                m8.f3902e.put(str5, Long.valueOf(System.currentTimeMillis() + jC0));
                                Log.w("LyricsFetcher", "fetch '" + str3 + '/' + str4 + "' falhou (tentativa " + (i3 + 1) + "/4, nova em " + (jC0 / ((long) 1000)) + "s): " + th.getMessage());
                            } finally {
                                set.remove(str5);
                            }
                        }
                    }
                });
                return;
            }
            return;
        }
        concurrentHashMap.put(strA, 0);
        concurrentHashMap2.put(strA, Long.valueOf(System.currentTimeMillis() + 300000));
        Log.i("LyricsFetcher", "fetch '" + str + '/' + str2 + "': 4 tentativas sem rede — rearmando em 5 min");
    }

    /* JADX WARN: Code duplicated, block: B:19:0x00a9 A[EDGE_INSN: B:19:0x00a9->B:57:0x017f BREAK  A[LOOP:2: B:29:0x00ff->B:56:0x0175]] */
    /* JADX WARN: Code duplicated, block: B:32:0x0107  */
    /* JADX WARN: Code duplicated, block: B:80:0x01fa  */
    public static String e(long j3, String str, String str2) throws IOException {
        String strA;
        String strOptString;
        int i3;
        JSONArray jSONArrayOptJSONArray;
        String strOptString2;
        String lowerCase;
        String strOptString3;
        String strA2;
        Pattern patternCompile = Pattern.compile("\\s*[\\(\\[][^)\\]]*\\b(remaster|remastered|live|ao vivo|deluxe|bonus|version|vers[ãa]o|edit|mix|mono|stereo)\\b[^)\\]]*[\\)\\]]", 66);
        i2.g.d(patternCompile, "compile(...)");
        i2.g.e(str, "input");
        String strReplaceAll = patternCompile.matcher(str).replaceAll("");
        i2.g.d(strReplaceAll, "replaceAll(...)");
        Pattern patternCompile2 = Pattern.compile("\\s*-\\s*(remaster|remastered|live|ao vivo|single version|radio edit).*$", 66);
        i2.g.d(patternCompile2, "compile(...)");
        String strReplaceAll2 = patternCompile2.matcher(strReplaceAll).replaceAll("");
        i2.g.d(strReplaceAll2, "replaceAll(...)");
        String string = o2.k.E0(strReplaceAll2).toString();
        Pattern patternCompile3 = Pattern.compile("\\s*(feat\\.?|ft\\.?|part\\.?)\\s+.*$", 66);
        i2.g.d(patternCompile3, "compile(...)");
        i2.g.e(str2, "input");
        String strReplaceAll3 = patternCompile3.matcher(str2).replaceAll("");
        i2.g.d(strReplaceAll3, "replaceAll(...)");
        String string2 = o2.k.E0((String) y1.g.a0(o2.k.v0(strReplaceAll3, new String[]{",", "&"}, 0, 6))).toString();
        String strA3 = a(j3, str, str2);
        if (strA3 != null) {
            return strA3;
        }
        if (j3 > 0 && (strA2 = a(0L, str, str2)) != null) {
            return strA2;
        }
        if ((!i2.g.a(string, str) || !i2.g.a(string2, str2)) && (strA = a(0L, string, string2)) != null) {
            return strA;
        }
        if (o2.k.m0(string)) {
            strOptString = null;
            break;
        }
        String strH = h("https://lrclib.net/api/search?q=" + URLEncoder.encode(o2.k.m0(string2) ? string : string2 + ' ' + string, "UTF-8"));
        if (strH == null) {
            strOptString = null;
            break;
        }
        try {
            JSONArray jSONArray = new JSONArray(strH);
            Locale locale = Locale.ROOT;
            String lowerCase2 = string.toLowerCase(locale);
            i2.g.d(lowerCase2, "toLowerCase(...)");
            String lowerCase3 = string2.toLowerCase(locale);
            i2.g.d(lowerCase3, "toLowerCase(...)");
            int iMin = Math.min(jSONArray.length(), 20);
            int i4 = 0;
            while (true) {
                if (i4 >= iMin) {
                    strOptString = null;
                    break;
                }
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i4);
                if (jSONObjectOptJSONObject == null) {
                    i3 = iMin;
                } else {
                    strOptString = jSONObjectOptJSONObject.optString("syncedLyrics", "");
                    i2.g.b(strOptString);
                    if (!o2.k.m0(strOptString)) {
                        String strOptString4 = jSONObjectOptJSONObject.optString("trackName", "");
                        i2.g.d(strOptString4, "optString(...)");
                        Locale locale2 = Locale.ROOT;
                        String lowerCase4 = strOptString4.toLowerCase(locale2);
                        i2.g.d(lowerCase4, "toLowerCase(...)");
                        i3 = iMin;
                        String strOptString5 = jSONObjectOptJSONObject.optString("artistName", "");
                        i2.g.d(strOptString5, "optString(...)");
                        String lowerCase5 = strOptString5.toLowerCase(locale2);
                        i2.g.d(lowerCase5, "toLowerCase(...)");
                        boolean z2 = true;
                        boolean z3 = !o2.k.m0(lowerCase4) && (o2.k.e0(lowerCase4, lowerCase2, false) || o2.k.e0(lowerCase2, lowerCase4, false));
                        if (!o2.k.m0(lowerCase3) && (o2.k.m0(lowerCase5) || (!o2.k.e0(lowerCase5, lowerCase3, false) && !o2.k.e0(lowerCase3, lowerCase5, false)))) {
                            z2 = false;
                        }
                        if (z3 && z2) {
                            break;
                        }
                    } else {
                        i3 = iMin;
                    }
                }
                i4++;
                iMin = i3;
            }
        } catch (Throwable unused) {
        }
        if (strOptString != null) {
            return strOptString;
        }
        if (!o2.k.m0(string)) {
            String strH2 = h("https://music.163.com/api/search/get?type=1&limit=5&s=" + URLEncoder.encode(o2.k.m0(string2) ? string : string2 + ' ' + string, "UTF-8"));
            if (strH2 != null) {
                try {
                    JSONObject jSONObjectOptJSONObject2 = new JSONObject(strH2).optJSONObject("result");
                    jSONArrayOptJSONArray = jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.optJSONArray("songs") : null;
                } catch (Throwable unused2) {
                }
                if (jSONArrayOptJSONArray != null) {
                    Locale locale3 = Locale.ROOT;
                    String lowerCase6 = string.toLowerCase(locale3);
                    i2.g.d(lowerCase6, "toLowerCase(...)");
                    String lowerCase7 = string2.toLowerCase(locale3);
                    i2.g.d(lowerCase7, "toLowerCase(...)");
                    int iMin2 = Math.min(jSONArrayOptJSONArray.length(), 5);
                    for (int i5 = 0; i5 < iMin2; i5++) {
                        JSONObject jSONObjectOptJSONObject3 = jSONArrayOptJSONArray.optJSONObject(i5);
                        if (jSONObjectOptJSONObject3 != null) {
                            String strOptString6 = jSONObjectOptJSONObject3.optString("name", "");
                            i2.g.d(strOptString6, "optString(...)");
                            String lowerCase8 = strOptString6.toLowerCase(Locale.ROOT);
                            i2.g.d(lowerCase8, "toLowerCase(...)");
                            if (!o2.k.m0(lowerCase8) && (o2.k.e0(lowerCase8, lowerCase6, false) || o2.k.e0(lowerCase6, lowerCase8, false))) {
                                if (!o2.k.m0(lowerCase7)) {
                                    JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject3.optJSONArray("artists");
                                    int length = jSONArrayOptJSONArray2 != null ? jSONArrayOptJSONArray2.length() : 0;
                                    int i6 = 0;
                                    while (true) {
                                        if (i6 < length) {
                                            i2.g.b(jSONArrayOptJSONArray2);
                                            JSONObject jSONObjectOptJSONObject4 = jSONArrayOptJSONArray2.optJSONObject(i6);
                                            if (jSONObjectOptJSONObject4 == null || (strOptString3 = jSONObjectOptJSONObject4.optString("name", "")) == null) {
                                                lowerCase = "";
                                            } else {
                                                lowerCase = strOptString3.toLowerCase(Locale.ROOT);
                                                i2.g.d(lowerCase, "toLowerCase(...)");
                                            }
                                            if (!o2.k.m0(lowerCase) && (o2.k.e0(lowerCase, lowerCase7, false) || o2.k.e0(lowerCase7, lowerCase, false))) {
                                            }
                                            i6++;
                                        }
                                    }
                                }
                                long jOptLong = jSONObjectOptJSONObject3.optLong("id", 0L);
                                if (jOptLong > 0) {
                                    String strH3 = h("https://music.163.com/api/song/lyric?lv=1&kv=1&tv=-1&id=" + jOptLong);
                                    if (strH3 == null) {
                                        continue;
                                    } else {
                                        try {
                                            JSONObject jSONObjectOptJSONObject5 = new JSONObject(strH3).optJSONObject("lrc");
                                            if (jSONObjectOptJSONObject5 == null || (strOptString2 = jSONObjectOptJSONObject5.optString("lyric", "")) == null) {
                                                strOptString2 = "";
                                            }
                                        } catch (Throwable unused3) {
                                        }
                                        if (o2.k.m0(strOptString2)) {
                                            continue;
                                        } else {
                                            Pattern patternCompile4 = Pattern.compile("\\[\\d{1,2}:\\d{2}");
                                            i2.g.d(patternCompile4, "compile(...)");
                                            if (patternCompile4.matcher(strOptString2).find()) {
                                                return strOptString2;
                                            }
                                        }
                                    }
                                } else {
                                    continue;
                                }
                            }
                        }
                    }
                }
            }
        }
        return null;
    }

    public static String f(List list, long j3) {
        o2.h hVar = k8.f3798a;
        Iterator it = list.iterator();
        String str = null;
        while (it.hasNext()) {
            x1.a aVar = (x1.a) it.next();
            long jLongValue = ((Number) aVar.f4641a).longValue();
            String str2 = (String) aVar.b;
            if (jLongValue > j3) {
                break;
            }
            str = str2;
        }
        return str;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static ArrayList g(String str) {
        Matcher matcher;
        CharSequence charSequenceSubSequence;
        long j3;
        o2.h hVar = k8.f3798a;
        i2.g.e(str, "lrc");
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        Iterator it = o2.k.v0(str, new String[]{"\n"}, 0, 6).iterator();
        while (it.hasNext()) {
            String string = o2.k.E0((String) it.next()).toString();
            o2.e eVarB = hVar.b(string, i3);
            if (eVarB != null) {
                ArrayList arrayList2 = new ArrayList();
                while (true) {
                    matcher = eVarB.f2630a;
                    long j4 = Long.parseLong((String) ((o2.d) eVarB.a()).get(1));
                    long j5 = Long.parseLong((String) ((o2.d) eVarB.a()).get(2));
                    String str2 = (String) ((o2.d) eVarB.a()).get(3);
                    if (str2.length() == 0) {
                        j3 = 0;
                    } else {
                        if (3 <= str2.length()) {
                            charSequenceSubSequence = str2.subSequence(i3, str2.length());
                        } else {
                            StringBuilder sb = new StringBuilder(3);
                            sb.append((CharSequence) str2);
                            int length = 3 - str2.length();
                            if (1 <= length) {
                                int i4 = 1;
                                while (true) {
                                    sb.append('0');
                                    if (i4 == length) {
                                        break;
                                    }
                                    i4++;
                                }
                            }
                            charSequenceSubSequence = sb;
                        }
                        j3 = Long.parseLong(o2.k.C0(3, charSequenceSubSequence.toString()));
                    }
                    arrayList2.add(Long.valueOf((j5 * ((long) 1000)) + (j4 * ((long) 60000)) + j3));
                    int i5 = k1.a.T(matcher.start(), matcher.end()).b + 1;
                    while (i5 < string.length() && k1.a.G(string.charAt(i5))) {
                        i5++;
                    }
                    eVarB = hVar.b(string, i5);
                    if (eVarB == null) {
                        break;
                    }
                    Matcher matcher2 = eVarB.f2630a;
                    if (k1.a.T(matcher2.start(), matcher2.end()).f2425a != i5) {
                        break;
                    }
                    i3 = 0;
                }
                String strSubstring = string.substring(k1.a.T(matcher.start(), matcher.end()).b + 1);
                i2.g.d(strSubstring, "substring(...)");
                String string2 = o2.k.E0(strSubstring).toString();
                Iterator it2 = arrayList2.iterator();
                i2.g.d(it2, "iterator(...)");
                while (it2.hasNext()) {
                    Object next = it2.next();
                    i2.g.d(next, "next(...)");
                    arrayList.add(new x1.a(Long.valueOf(((Number) next).longValue()), string2));
                }
                i3 = 0;
            }
        }
        if (arrayList.size() > 1) {
            y1.m.Y(arrayList, new b6(3));
        }
        return arrayList;
    }

    public static String h(String str) throws IOException {
        URLConnection uRLConnectionOpenConnection;
        URL url = new URL(str);
        Proxy proxy = f3904h;
        if (proxy == null || (uRLConnectionOpenConnection = url.openConnection(proxy)) == null) {
            uRLConnectionOpenConnection = url.openConnection();
        }
        i2.g.c(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        httpURLConnection.setConnectTimeout(5000);
        httpURLConnection.setReadTimeout(5000);
        httpURLConnection.setRequestProperty("User-Agent", "TelaPretaCentral-MediaBridge (com.ex.auto)");
        if (o2.k.e0(str, "music.163.com", false)) {
            httpURLConnection.setRequestProperty("Referer", "https://music.163.com/");
        }
        try {
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 404) {
                httpURLConnection.disconnect();
                return null;
            }
            if (responseCode != 200) {
                throw new IOException("lrclib respondeu HTTP " + responseCode);
            }
            InputStream inputStream = httpURLConnection.getInputStream();
            i2.g.d(inputStream, "getInputStream(...)");
            String strZ = a1.b.Z(new BufferedReader(new InputStreamReader(inputStream, o2.a.f2622a), 8192));
            httpURLConnection.disconnect();
            return strZ;
        } catch (Throwable th) {
            httpURLConnection.disconnect();
            throw th;
        }
    }

    public static void i(String str, String str2) {
        File[] fileArrListFiles;
        File fileB = b(str);
        if (fileB == null) {
            return;
        }
        try {
            f2.d.i0(fileB, str2);
            File file = f3905i;
            if (file == null || (fileArrListFiles = file.listFiles()) == null || fileArrListFiles.length <= 5000) {
                return;
            }
            Iterator it = y1.g.j0(y1.f.e0(fileArrListFiles, new b6(4)), fileArrListFiles.length - 5000).iterator();
            while (it.hasNext()) {
                ((File) it.next()).delete();
            }
        } catch (Throwable unused) {
        }
    }
}
