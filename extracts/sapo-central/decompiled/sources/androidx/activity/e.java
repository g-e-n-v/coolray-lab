package androidx.activity;

import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.z;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Random f74a = new Random();
    public final HashMap b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f75c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap f76d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ArrayList f77e = new ArrayList();
    public final transient HashMap f = new HashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final HashMap f78g = new HashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Bundle f79h = new Bundle();

    public final boolean a(int i3, int i4, Intent intent) {
        String str = (String) this.b.get(Integer.valueOf(i3));
        if (str == null) {
            return false;
        }
        androidx.activity.result.d dVar = (androidx.activity.result.d) this.f.get(str);
        if (dVar != null) {
            z zVar = dVar.f101a;
            if (this.f77e.contains(str)) {
                zVar.a(dVar.b.T(i4, intent));
                this.f77e.remove(str);
                return true;
            }
        }
        this.f78g.remove(str);
        this.f79h.putParcelable(str, new androidx.activity.result.a(i4, intent));
        return true;
    }

    public final androidx.activity.result.c b(String str, a1.b bVar, z zVar) {
        int i3;
        HashMap map;
        HashMap map2 = this.f75c;
        if (((Integer) map2.get(str)) == null) {
            int iNextInt = this.f74a.nextInt(2147418112);
            while (true) {
                i3 = iNextInt + 65536;
                Integer numValueOf = Integer.valueOf(i3);
                map = this.b;
                if (!map.containsKey(numValueOf)) {
                    break;
                }
                iNextInt = this.f74a.nextInt(2147418112);
            }
            map.put(Integer.valueOf(i3), str);
            map2.put(str, Integer.valueOf(i3));
        }
        this.f.put(str, new androidx.activity.result.d(zVar, bVar));
        HashMap map3 = this.f78g;
        if (map3.containsKey(str)) {
            Object obj = map3.get(str);
            map3.remove(str);
            zVar.a(obj);
        }
        Bundle bundle = this.f79h;
        androidx.activity.result.a aVar = (androidx.activity.result.a) bundle.getParcelable(str);
        if (aVar != null) {
            bundle.remove(str);
            zVar.a(bVar.T(aVar.f99a, aVar.b));
        }
        return new androidx.activity.result.c(this, str);
    }
}
