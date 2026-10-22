package w0;

import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h8 implements h2.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3668a;
    public final /* synthetic */ PackageManager b;

    public /* synthetic */ h8(PackageManager packageManager, int i3) {
        this.f3668a = i3;
        this.b = packageManager;
    }

    @Override // h2.l
    public final Object c(Object obj) {
        Drawable applicationIcon;
        String string;
        switch (this.f3668a) {
            case 0:
                ApplicationInfo applicationInfo = (ApplicationInfo) obj;
                String str = applicationInfo.packageName;
                i2.g.d(str, "packageName");
                PackageManager packageManager = this.b;
                String string2 = packageManager.getApplicationLabel(applicationInfo).toString();
                try {
                    applicationIcon = packageManager.getApplicationIcon(applicationInfo);
                    break;
                } catch (Exception unused) {
                    applicationIcon = null;
                }
                return new g8(str, string2, applicationIcon);
            default:
                ActivityInfo activityInfo = (ActivityInfo) obj;
                CharSequence charSequenceLoadLabel = activityInfo.loadLabel(this.b);
                if (charSequenceLoadLabel == null || (string = charSequenceLoadLabel.toString()) == null) {
                    string = activityInfo.packageName;
                }
                return new x1.a(string, activityInfo.packageName);
        }
    }
}
