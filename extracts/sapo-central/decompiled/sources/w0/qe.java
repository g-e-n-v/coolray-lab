package w0;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import com.ex.auto.MainActivity;
import com.ex.auto.VhalProviderService;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class qe {
    public static volatile ie b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final qe f4124a = new qe();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final List f4125c = y1.h.V("audio.aplicarSomTrava", "audio.aplicarSomTravaPersistente", "audio.restaurarSomTrava", "audio.restaurarSomTravaPersistente", "carplay.ativar", "carplay.desfazerBindMonitor", "rede.ativarConnAdaptor", "rede.reverterConnAdaptor", "rede.trocarArquivoConnAdaptor", "rede.reiniciarAa", "rede.desativarAa", "visual.aplicarGestos", "visual.removerGestos", "visual.aplicarArDigital", "visual.removerArDigital", "volante.aplicarPatchKeyServer", "volante.ativarPatch", "volante.desativarPatch");

    public static /* synthetic */ boolean e(Context context, String str, Map map, int i3) {
        if ((i3 & 4) != 0) {
            map = y1.q.f4664a;
        }
        return f4124a.d(context, str, map, new ArrayList());
    }

    public static void f(ContextWrapper contextWrapper, long j3) {
        i2.g.e(contextWrapper, "context");
        if (j3 <= 0) {
            return;
        }
        contextWrapper.getSharedPreferences("tela_preta_prefs", 0).edit().putLong("playbook_valido_ate", j3).apply();
    }

    public final boolean a(Context context, String str, Map map) {
        i2.g.e(context, "context");
        i2.g.e(map, "fatos");
        ArrayList arrayList = new ArrayList();
        d(context, str, map, arrayList);
        return ne.f(arrayList);
    }

    public final ie b(Context context) {
        i2.g.e(context, "context");
        ie ieVar = b;
        if (ieVar != null) {
            return ieVar;
        }
        synchronized (this) {
            ie ieVar2 = b;
            if (ieVar2 != null) {
                return ieVar2;
            }
            b = e8.l(context, u6.f4334a);
            ie ieVar3 = b;
            if (ieVar3 != null) {
                try {
                    JSONObject jSONObject = ieVar3.f3728e;
                    long jOptLong = jSONObject.optLong("trip.periodoMs", 0L);
                    int iOptInt = jSONObject.optInt("trip.curvaPontos", 0);
                    if (jOptLong > 0 || iOptInt > 0) {
                        if (jOptLong <= 0) {
                            jOptLong = -1;
                        }
                        if (iOptInt <= 0) {
                            iOptInt = -1;
                        }
                        boolean z2 = VhalProviderService.f1233l;
                        if (jOptLong > 0) {
                            VhalProviderService.f1236o = jOptLong;
                        }
                        if (iOptInt > 0 && iOptInt >= 8 && iOptInt <= 2000) {
                            ch.P = iOptInt;
                        }
                    }
                } catch (Throwable unused) {
                }
            }
            return b;
        }
    }

    public final x1.a c(MainActivity mainActivity) {
        ie ieVarB = b(mainActivity);
        if (ieVarB == null) {
            return null;
        }
        int i3 = 0;
        List list = f4125c;
        if (list == null || !list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (ieVarB.f.containsKey((String) it.next()) && (i3 = i3 + 1) < 0) {
                    throw new ArithmeticException("Count overflow has happened.");
                }
            }
        }
        return new x1.a(Integer.valueOf(i3), Integer.valueOf(list.size()));
    }

    public final boolean d(Context context, String str, Map map, ArrayList arrayList) {
        ie ieVarB;
        String str2;
        i2.g.e(context, "context");
        i2.g.e(map, "fatos");
        if (!context.getSharedPreferences("tela_preta_prefs", 0).getBoolean("device_banned", false) && (ieVarB = b(context)) != null) {
            String strConcat = "acao:".concat(str);
            Collection collectionValues = ieVarB.f.values();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : collectionValues) {
                he heVar = (he) obj;
                if (heVar.f3681c && heVar.b.equals(strConcat)) {
                    arrayList2.add(obj);
                }
            }
            if (!arrayList2.isEmpty()) {
                p pVar = new p(context);
                int size = arrayList2.size();
                boolean z2 = false;
                int i3 = 0;
                while (i3 < size) {
                    Object obj2 = arrayList2.get(i3);
                    i3++;
                    he heVar2 = (he) obj2;
                    try {
                        o2.h hVar = ne.f3953a;
                        me meVarA = ne.a(heVar2, pVar, new LinkedHashMap(map));
                        ae aeVar = ae.f3361a;
                        StringBuilder sb = new StringBuilder();
                        sb.append(heVar2.f3680a);
                        sb.append('[');
                        sb.append(strConcat);
                        sb.append("] → ");
                        sb.append(meVarA.f3916a);
                        sb.append(" (");
                        sb.append(meVarA.b);
                        sb.append(" passos, ");
                        sb.append(meVarA.f3917c);
                        sb.append("ms");
                        String str3 = meVarA.f3919e;
                        if (str3 != null) {
                            str2 = ", " + str3;
                            if (str2 == null) {
                                str2 = "";
                            }
                        } else {
                            str2 = "";
                        }
                        sb.append(str2);
                        sb.append(')');
                        ae.b("PlaybookSync", sb.toString(), false);
                        arrayList.add(meVarA.f3916a);
                    } catch (Exception e3) {
                        arrayList.add(je.b);
                        ae aeVar2 = ae.f3361a;
                        ae.b("PlaybookSync", heVar2.f3680a + '[' + strConcat + "] explodiu: " + e3.getMessage(), false);
                    }
                    z2 = true;
                }
                return z2;
            }
        }
        return false;
    }

    public final void g(ContextWrapper contextWrapper, SharedPreferences sharedPreferences, int i3, long j3) {
        i2.g.e(contextWrapper, "context");
        int i4 = contextWrapper.getSharedPreferences("tela_preta_prefs", 0).getInt("playbook_maior_versao_vista", 0);
        if (i3 <= 0 || i3 == i4) {
            return;
        }
        try {
            ie ieVarL = e8.L(contextWrapper, u6.c(contextWrapper, sharedPreferences, j3), u6.f4334a);
            if (ieVarL != null) {
                synchronized (this) {
                    b = ieVarL;
                }
                ae aeVar = ae.f3361a;
                ae.b("PlaybookSync", "playbook v" + ieVarL.f3725a + " sincronizado (local era v" + i4 + ')', false);
            }
        } catch (Exception e3) {
            androidx.activity.result.b.o(e3, new StringBuilder("sync falhou: "), "PlaybookSync");
        }
    }
}
