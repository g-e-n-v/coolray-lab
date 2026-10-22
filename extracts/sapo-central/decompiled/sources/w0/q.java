package w0;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.ex.auto.BackgroundKeepAliveActivity;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.FavoriteAppsActivity;
import com.ex.auto.MediaBrowserHostActivity;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class q implements h2.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4075a;
    public final /* synthetic */ String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f4076c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f4077d;

    public /* synthetic */ q(MediaBrowserHostActivity mediaBrowserHostActivity, ImageView imageView, String str) {
        this.f4075a = 3;
        this.f4076c = mediaBrowserHostActivity;
        this.f4077d = imageView;
        this.b = str;
    }

    @Override // h2.l
    public final Object c(Object obj) {
        switch (this.f4075a) {
            case 0:
                String str = this.b;
                String str2 = (String) this.f4076c;
                String str3 = (String) this.f4077d;
                t tVar = (t) obj;
                i2.g.e(tVar, "b");
                StringBuilder sb = new StringBuilder("  ");
                sb.append(tVar.b);
                sb.append(") ");
                sb.append(str);
                sb.append('=');
                int i3 = tVar.f4246c;
                sb.append(i3);
                sb.append("; ");
                sb.append(str2);
                sb.append('=');
                sb.append(i3 + 7);
                sb.append("; ");
                sb.append(str3);
                sb.append('=');
                sb.append(tVar.f4247d);
                sb.append("; echo \"MONITOR_BUILD=");
                sb.append(tVar.f4245a);
                sb.append("\" ;;");
                return sb.toString();
            case 1:
                Set set = (Set) this.f4076c;
                String str4 = this.b;
                BackgroundKeepAliveActivity backgroundKeepAliveActivity = (BackgroundKeepAliveActivity) this.f4077d;
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                int i4 = BackgroundKeepAliveActivity.f791v;
                if (zBooleanValue) {
                    set.add(str4);
                } else {
                    set.remove(str4);
                }
                backgroundKeepAliveActivity.getSharedPreferences("background_keep_alive_prefs", 0).edit().putString("packages", y1.g.e0(y1.g.Z(set), ",", null, 62)).apply();
                int[] iArr = CentralWatchdogService.S2;
                CentralWatchdogService centralWatchdogService = CentralWatchdogService.V2;
                if (centralWatchdogService != null) {
                    centralWatchdogService.f811a.post(new v2(centralWatchdogService, 8));
                }
                return x1.e.f4647c;
            case 2:
                Set set2 = (Set) this.f4076c;
                String str5 = this.b;
                FavoriteAppsActivity favoriteAppsActivity = (FavoriteAppsActivity) this.f4077d;
                boolean zBooleanValue2 = ((Boolean) obj).booleanValue();
                int i5 = FavoriteAppsActivity.f924t;
                if (zBooleanValue2) {
                    i2.g.b(str5);
                    set2.add(str5);
                } else {
                    set2.remove(str5);
                }
                favoriteAppsActivity.getSharedPreferences("favorite_apps_prefs", 0).edit().putString("packages", y1.g.e0(y1.g.Z(set2), ",", null, 62)).apply();
                return x1.e.f4647c;
            default:
                MediaBrowserHostActivity mediaBrowserHostActivity = (MediaBrowserHostActivity) this.f4076c;
                mediaBrowserHostActivity.f1081a.post(new a1.g((ImageView) this.f4077d, this.b, (Bitmap) obj, mediaBrowserHostActivity));
                return x1.e.f4647c;
        }
    }

    public /* synthetic */ q(String str, String str2, String str3) {
        this.f4075a = 0;
        this.b = str;
        this.f4076c = str2;
        this.f4077d = str3;
    }

    public /* synthetic */ q(Set set, String str, e.j jVar, int i3) {
        this.f4075a = i3;
        this.f4076c = set;
        this.b = str;
        this.f4077d = jVar;
    }
}
