package androidx.fragment.app;

import android.util.Log;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f548a;
    public final /* synthetic */ h0 b;

    public /* synthetic */ z(h0 h0Var, int i3) {
        this.f548a = i3;
        this.b = h0Var;
    }

    public final void a(Object obj) {
        switch (this.f548a) {
            case 0:
                androidx.activity.result.a aVar = (androidx.activity.result.a) obj;
                h0 h0Var = this.b;
                e0 e0Var = (e0) h0Var.f440w.pollFirst();
                if (e0Var == null) {
                    Log.w("FragmentManager", "No IntentSenders were started for " + this);
                } else {
                    String str = e0Var.f410a;
                    int i3 = e0Var.b;
                    r rVarF = h0Var.f421c.f(str);
                    if (rVarF == null) {
                        Log.w("FragmentManager", "Intent Sender result delivered for unknown Fragment " + str);
                    } else {
                        rVarF.k(i3, aVar.f99a, aVar.b);
                    }
                }
                break;
            case 1:
                Map map = (Map) obj;
                ArrayList arrayList = new ArrayList(map.values());
                int[] iArr = new int[arrayList.size()];
                for (int i4 = 0; i4 < arrayList.size(); i4++) {
                    iArr[i4] = ((Boolean) arrayList.get(i4)).booleanValue() ? 0 : -1;
                }
                h0 h0Var2 = this.b;
                e0 e0Var2 = (e0) h0Var2.f440w.pollFirst();
                if (e0Var2 == null) {
                    Log.w("FragmentManager", "No permissions were requested for " + this);
                } else {
                    String str2 = e0Var2.f410a;
                    if (h0Var2.f421c.f(str2) == null) {
                        Log.w("FragmentManager", "Permission request result delivered for unknown Fragment " + str2);
                    }
                }
                break;
            default:
                androidx.activity.result.a aVar2 = (androidx.activity.result.a) obj;
                h0 h0Var3 = this.b;
                e0 e0Var3 = (e0) h0Var3.f440w.pollFirst();
                if (e0Var3 == null) {
                    Log.w("FragmentManager", "No Activities were started for result for " + this);
                } else {
                    String str3 = e0Var3.f410a;
                    int i5 = e0Var3.b;
                    r rVarF2 = h0Var3.f421c.f(str3);
                    if (rVarF2 == null) {
                        Log.w("FragmentManager", "Activity result delivered for unknown Fragment " + str3);
                    } else {
                        rVarF2.k(i5, aVar2.f99a, aVar2.b);
                    }
                }
                break;
        }
    }
}
