package w0;

import android.view.KeyEvent;
import android.view.View;
import android.widget.CheckBox;
import com.ex.auto.CloseAppsWhitelistActivity;
import com.ex.auto.MainActivity;
import java.util.LinkedHashMap;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class o3 implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3967a = 0;
    public final /* synthetic */ String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ KeyEvent.Callback f3968c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f3969d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f3970e;

    public /* synthetic */ o3(CheckBox checkBox, Set set, String str, CloseAppsWhitelistActivity closeAppsWhitelistActivity) {
        this.f3968c = checkBox;
        this.f3969d = set;
        this.b = str;
        this.f3970e = closeAppsWhitelistActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i3 = this.f3967a;
        Object obj = this.f3970e;
        Object obj2 = this.f3969d;
        String str = this.b;
        KeyEvent.Callback callback = this.f3968c;
        switch (i3) {
            case 0:
                CheckBox checkBox = (CheckBox) callback;
                Set set = (Set) obj2;
                CloseAppsWhitelistActivity closeAppsWhitelistActivity = (CloseAppsWhitelistActivity) obj;
                int i4 = CloseAppsWhitelistActivity.f899c;
                boolean zIsChecked = checkBox.isChecked();
                checkBox.setChecked(!zIsChecked);
                if (zIsChecked) {
                    set.remove(str);
                } else {
                    set.add(str);
                }
                closeAppsWhitelistActivity.getSharedPreferences("close_apps_whitelist_prefs", 0).edit().putString("packages", y1.g.e0(y1.g.Z(set), ",", null, 62)).apply();
                break;
            default:
                MainActivity mainActivity = (MainActivity) callback;
                String str2 = (String) obj2;
                int i5 = MainActivity.f1002z1;
                o5 o5Var = (o5) ((LinkedHashMap) obj).get(str);
                if (o5Var != null) {
                    mainActivity.B.execute(new mb(mainActivity, str, o5Var, str2));
                    break;
                }
                break;
        }
    }

    public /* synthetic */ o3(MainActivity mainActivity, String str, String str2, LinkedHashMap linkedHashMap) {
        this.f3968c = mainActivity;
        this.b = str;
        this.f3969d = str2;
        this.f3970e = linkedHashMap;
    }
}
