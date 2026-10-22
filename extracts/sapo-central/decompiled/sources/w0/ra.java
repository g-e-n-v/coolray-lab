package w0;

import android.util.Log;
import com.ex.auto.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ra implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4167a = 0;
    public final /* synthetic */ boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MainActivity f4168c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ e.i f4169d;

    public /* synthetic */ ra(MainActivity mainActivity, boolean z2, e.i iVar) {
        this.f4168c = mainActivity;
        this.b = z2;
        this.f4169d = iVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean zC;
        boolean z2 = false;
        switch (this.f4167a) {
            case 0:
                MainActivity mainActivity = this.f4168c;
                boolean z3 = this.b;
                e.i iVar = this.f4169d;
                int i3 = MainActivity.f1002z1;
                StringBuilder sb = new StringBuilder("\n        svc wifi disable\n        _n=0\n        while [ $_n -lt 20 ]; do\n          [ \"$(ip rule show | grep -c 'oif wlan0')\" = \"0\" ] && break\n          sleep 1; _n=$((_n + 1))\n        done\n        for _m in $(grep ' /data/app/' /proc/mounts | awk '{print $2}'); do\n          umount -l \"$_m\" 2>/dev/null\n        done\n        setprop dalvik.vm.usejit ");
                sb.append(z3 ? "true" : "false");
                sb.append("\n        setprop ctl.restart zygote\n    ");
                mainActivity.H1(40000, o2.m.V(sb.toString()));
                mainActivity.f1045v.postDelayed(new ab(iVar, 0, mainActivity), 45000L);
                break;
            default:
                boolean z4 = this.b;
                MainActivity mainActivity2 = this.f4168c;
                e.i iVar2 = this.f4169d;
                int i4 = MainActivity.f1002z1;
                if (z4) {
                    zC = ih.c(mainActivity2);
                } else {
                    String str = ih.f3730a;
                    String str2 = ih.b;
                    if (ih.e(str, str2)) {
                        String strG = ih.g(str);
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("_n=0; while grep -F \" " + str + " \" /proc/mounts >/dev/null 2>&1 && [ $_n -lt 12 ]; do ");
                        sb2.append("umount " + strG + " 2>/dev/null || umount -l " + strG + " 2>/dev/null || break; _n=$((_n+1)); done\n");
                        StringBuilder sb3 = new StringBuilder("setprop ctl.restart ");
                        sb3.append(str2);
                        sb3.append(" 2>/dev/null || true\n");
                        sb2.append(sb3.toString());
                        sb2.append("echo \"SRC_INODE=$(stat -c %i ");
                        sb2.append(ih.g("/data/local/tmp/vcodec642.so"));
                        sb2.append(" 2>/dev/null)\"\n");
                        sb2.append("echo \"TGT_INODE=$(stat -c %i " + strG + " 2>/dev/null)\"\n");
                        String string = sb2.toString();
                        i2.g.d(string, "toString(...)");
                        String strX = m.x(string, 30000, null, new n(17));
                        ih.f3731c = o2.k.E0(strX).toString();
                        boolean zB = ih.b(ih.d(strX, "TGT_INODE"), ih.d(strX, "SRC_INODE"));
                        boolean z5 = !zB;
                        StringBuilder sb4 = new StringBuilder("remove: ");
                        sb4.append(!zB ? "OK" : "FAIL");
                        sb4.append(" — ");
                        sb4.append(o2.k.E0(o2.k.D0(200, strX)).toString());
                        Log.i("VideoCodec", sb4.toString());
                        z2 = z5;
                    }
                    zC = z2;
                }
                mainActivity2.f1045v.post(new sa(mainActivity2, iVar2, z4, zC, 1));
                break;
        }
    }

    public /* synthetic */ ra(boolean z2, MainActivity mainActivity, e.i iVar) {
        this.b = z2;
        this.f4168c = mainActivity;
        this.f4169d = iVar;
    }
}
