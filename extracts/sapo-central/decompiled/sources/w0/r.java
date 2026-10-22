package w0;

import android.content.pm.ApplicationInfo;
import android.graphics.Bitmap;
import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r implements h2.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4134a;
    public final /* synthetic */ String b;

    public /* synthetic */ r(int i3, String str) {
        this.f4134a = i3;
        this.b = str;
    }

    @Override // h2.l
    public final Object c(Object obj) {
        switch (this.f4134a) {
            case 0:
                String str = this.b;
                t tVar = (t) obj;
                i2.g.e(tVar, "b");
                StringBuilder sb = new StringBuilder("  ");
                String str2 = tVar.f4247d;
                sb.append(str2);
                sb.append(") ");
                sb.append(str);
                sb.append('=');
                sb.append(str2);
                sb.append("; echo \"MONITOR_BUILD=");
                sb.append(tVar.f4245a);
                sb.append("\" ;;");
                return sb.toString();
            case 1:
                String str3 = this.b;
                ApplicationInfo applicationInfo = (ApplicationInfo) obj;
                int i3 = applicationInfo.flags;
                return Boolean.valueOf((i3 & 1) == 0 && (i3 & 128) == 0 && !i2.g.a(applicationInfo.packageName, str3));
            default:
                String str4 = this.b;
                Bitmap bitmap = (Bitmap) obj;
                if (bitmap != null) {
                    od odVar = od.f3992a;
                    if (od.n(bitmap, str4) != null) {
                        od.f4011v = true;
                        Handler handler = od.f4000k;
                        if (handler != null) {
                            handler.post(new r0(8));
                        }
                    }
                }
                return x1.e.f4647c;
        }
    }
}
