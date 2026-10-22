package w0;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.ex.auto.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class m0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3870a = 1;
    public final /* synthetic */ Context b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SharedPreferences f3871c;

    public /* synthetic */ m0(Context context, SharedPreferences sharedPreferences) {
        this.b = context;
        this.f3871c = sharedPreferences;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        boolean z2;
        boolean z3;
        JSONObject jSONObjectOptJSONObject;
        final int iOptInt;
        int i3 = 0;
        switch (this.f3870a) {
            case 0:
                SharedPreferences sharedPreferences = this.f3871c;
                Context context = this.b;
                try {
                    try {
                        k5 k5Var = k5.f3786a;
                        String string = o2.k.E0(k5.a()).toString();
                        if (!o2.k.m0(string)) {
                            if (sharedPreferences.getBoolean("device_banned", false)) {
                                try {
                                    if (k5.q(context, sharedPreferences, string)) {
                                        sharedPreferences.edit().putBoolean("device_ban_avisado", true).apply();
                                        ae aeVar = ae.f3361a;
                                        ae.b("BanChecker", "aviso de ban (pendente) entregue por e-mail", false);
                                    } else {
                                        ae aeVar2 = ae.f3361a;
                                        ae.b("BanChecker", "aviso de ban pendente NÃO saiu (sem rede?) — tenta de novo", false);
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    z3 = false;
                                    n0.f3926a = z3;
                                    throw th;
                                }
                            } else {
                                String strC = n0.c();
                                if (strC != null) {
                                    JSONArray jSONArrayOptJSONArray = new JSONObject(strC).optJSONArray("entries");
                                    if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() == 0) {
                                        z2 = i3;
                                    } else {
                                        String strB = n0.b(string);
                                        int length = jSONArrayOptJSONArray.length();
                                        int i4 = 0;
                                        while (i4 < length) {
                                            String strOptString = jSONArrayOptJSONArray.getJSONObject(i4).optString("hash", "");
                                            i2.g.b(strOptString);
                                            if (o2.k.m0(strOptString) || !strOptString.equalsIgnoreCase(strB)) {
                                                i4++;
                                                i3 = 0;
                                            } else {
                                                sharedPreferences.edit().putBoolean("device_banned", true).apply();
                                                ae aeVar3 = ae.f3361a;
                                                ae.b("BanChecker", "dispositivo BANIDO — XDSN confere com a banlist", false);
                                                k5 k5Var2 = k5.f3786a;
                                                boolean zQ = k5.q(context, sharedPreferences, string);
                                                sharedPreferences.edit().putBoolean("device_ban_avisado", zQ).apply();
                                                ae.b("BanChecker", zQ ? "aviso de ban entregue por e-mail" : "aviso de ban NÃO saiu (sem rede?) — tenta na próxima checagem", false);
                                                z2 = 0;
                                            }
                                        }
                                        z2 = i3;
                                    }
                                    n0.f3926a = z2;
                                    return;
                                }
                            }
                            break;
                        }
                        n0.f3926a = false;
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        z3 = false;
                    }
                } catch (Exception e3) {
                    Log.d("BanChecker", "check: " + e3.getMessage());
                    z2 = 0;
                }
                break;
            default:
                final Context context2 = this.b;
                final SharedPreferences sharedPreferences2 = this.f3871c;
                try {
                    try {
                        boolean z4 = sd.f4234a;
                        i2.g.b(context2);
                        List listA = sd.a(context2);
                        if (listA != null) {
                            q6 q6Var = (q6) y1.g.b0(listA);
                            if (q6Var != null) {
                                sd.f4235c.post(new pd(context2, q6Var, i3));
                            }
                        } else {
                            String strD = sd.d();
                            if (strD != null && (jSONObjectOptJSONObject = new JSONObject(strD).optJSONObject("messages")) != null) {
                                k5 k5Var3 = k5.f3786a;
                                String string2 = o2.k.E0(k5.a()).toString();
                                String upperCase = o2.k.E0(k5.g(sharedPreferences2)).toString().toUpperCase(Locale.ROOT);
                                i2.g.d(upperCase, "toUpperCase(...)");
                                ArrayList arrayList = new ArrayList();
                                if (!o2.k.m0(string2)) {
                                    arrayList.add(string2);
                                }
                                if (!o2.k.m0(upperCase)) {
                                    arrayList.add(upperCase);
                                }
                                arrayList.add("ALL");
                                Iterator it = arrayList.iterator();
                                i2.g.d(it, "iterator(...)");
                                while (it.hasNext()) {
                                    Object next = it.next();
                                    i2.g.d(next, "next(...)");
                                    final String str = (String) next;
                                    JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject(str);
                                    if (jSONObjectOptJSONObject2 != null && (iOptInt = jSONObjectOptJSONObject2.optInt("id", 0)) > 0) {
                                        if (iOptInt > sharedPreferences2.getInt("msg_seen_" + str, 0)) {
                                            String strOptString2 = jSONObjectOptJSONObject2.optString("enc", "");
                                            i2.g.b(strOptString2);
                                            final String strR = !o2.k.m0(strOptString2) ? e8.r(strOptString2) : jSONObjectOptJSONObject2.optString("body", "");
                                            i2.g.b(strR);
                                            if (!o2.k.m0(strR)) {
                                                final String strOptString3 = jSONObjectOptJSONObject2.optString("title", context2.getString(R.string.k_notice_default_title));
                                                sd.f4235c.post(new Runnable() { // from class: w0.qd
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        final Context context3 = context2;
                                                        final SharedPreferences sharedPreferences3 = sharedPreferences2;
                                                        final String str2 = str;
                                                        final int i5 = iOptInt;
                                                        String str3 = strOptString3;
                                                        String str4 = strR;
                                                        boolean z5 = sd.f4234a;
                                                        i2.g.b(context3);
                                                        i2.g.b(str3);
                                                        sd.f(context3, str3, str4, new h2.a() { // from class: w0.rd
                                                            @Override // h2.a
                                                            public final Object a() {
                                                                SharedPreferences sharedPreferences4 = sharedPreferences3;
                                                                SharedPreferences.Editor editorEdit = sharedPreferences4.edit();
                                                                String str5 = str2;
                                                                String strConcat = "msg_seen_".concat(str5);
                                                                int i6 = i5;
                                                                editorEdit.putInt(strConcat, i6).apply();
                                                                k5 k5Var4 = k5.f3786a;
                                                                Context context4 = context3;
                                                                i2.g.e(context4, "context");
                                                                k5.h(context4);
                                                                new Thread(new v(sharedPreferences4, str5, i6, 4)).start();
                                                                return x1.e.f4647c;
                                                            }
                                                        });
                                                    }
                                                });
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    } catch (Throwable th3) {
                        sd.f4234a = false;
                        throw th3;
                    }
                } catch (Exception e4) {
                    Log.d("MsgMgr", "check: " + e4.getMessage());
                }
                sd.f4234a = false;
                return;
        }
    }

    public /* synthetic */ m0(SharedPreferences sharedPreferences, Context context) {
        this.f3871c = sharedPreferences;
        this.b = context;
    }
}
