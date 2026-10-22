package w0;

import android.content.SharedPreferences;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import java.io.File;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class nb implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3948a;
    public final /* synthetic */ MainActivity b;

    public /* synthetic */ nb(MainActivity mainActivity, int i3) {
        this.f3948a = i3;
        this.b = mainActivity;
    }

    /* JADX WARN: Code duplicated, block: B:56:0x016f A[Catch: Exception -> 0x0159, TryCatch #2 {Exception -> 0x0159, blocks: (B:43:0x013e, B:45:0x0148, B:47:0x014e, B:54:0x0169, B:56:0x016f, B:58:0x0178, B:57:0x0176, B:52:0x015b), top: B:87:0x013e }] */
    /* JADX WARN: Code duplicated, block: B:57:0x0176 A[Catch: Exception -> 0x0159, TryCatch #2 {Exception -> 0x0159, blocks: (B:43:0x013e, B:45:0x0148, B:47:0x014e, B:54:0x0169, B:56:0x016f, B:58:0x0178, B:57:0x0176, B:52:0x015b), top: B:87:0x013e }] */
    @Override // java.lang.Runnable
    public final void run() {
        Long lValueOf;
        String strValueOf;
        int i3 = this.f3948a;
        int i4 = 0;
        MainActivity mainActivity = this.b;
        switch (i3) {
            case 0:
                int i5 = MainActivity.f1002z1;
                mainActivity.f1045v.post(new f9(mainActivity, m.d(mainActivity, new e9(mainActivity, 20)), 16));
                break;
            case 1:
                int i6 = MainActivity.f1002z1;
                k5 k5Var = k5.f3786a;
                SharedPreferences sharedPreferencesO0 = mainActivity.o0();
                i2.g.d(sharedPreferencesO0, "<get-prefs>(...)");
                mainActivity.f1045v.post(new a9(mainActivity, k5Var.d(sharedPreferencesO0), 7));
                break;
            case 2:
                int i7 = MainActivity.f1002z1;
                mainActivity.O1(true);
                mainActivity.f1025l0 = false;
                mainActivity.D0("", false);
                if (!mainActivity.isFinishing() && !mainActivity.isDestroyed()) {
                    e.h hVar = new e.h(mainActivity);
                    e.d dVar = (e.d) hVar.b;
                    dVar.f1554d = mainActivity.getString(R.string.xml_android_auto_carplay);
                    dVar.f = mainActivity.getString(R.string.k_sem_canal_adb);
                    hVar.e(android.R.string.ok, null);
                    hVar.h();
                    break;
                }
                break;
            case 3:
                int i8 = MainActivity.f1002z1;
                mainActivity.f1045v.post(new f9(mainActivity, o2.k.e0(m.c(6000, "DST=$(pm path com.flyme.auto.launcher | sed 's/^package://'); grep -F \" $DST \" /proc/mounts >/dev/null 2>&1 && echo Y || echo N"), "Y", false), 1));
                break;
            case 4:
                int i9 = MainActivity.f1002z1;
                ArrayList arrayList = new ArrayList();
                String strM0 = mainActivity.m0("br.com.central.dualdashcam");
                try {
                    lValueOf = Long.valueOf(mainActivity.getPackageManager().getPackageInfo("br.com.central.dualdashcam", 0).versionCode);
                } catch (Throwable unused) {
                    lValueOf = null;
                }
                if (strM0 != null && lValueOf != null) {
                    try {
                        wb wbVarC0 = mainActivity.c0("https://raw.githubusercontent.com/swimapps/Outros/main/dualdashcam.json");
                        if (wbVarC0.f4442a > lValueOf.longValue()) {
                            String string = mainActivity.getString(R.string.k_dep_dualdashcam, strM0, wbVarC0.b);
                            i2.g.d(string, "getString(...)");
                            arrayList.add(new gc("dualdashcam", string, String.valueOf(wbVarC0.f4442a)));
                        }
                    } catch (Exception e3) {
                        mainActivity.w("Update", "dep DualDashcam: " + e3.getMessage());
                    }
                }
                if (mainActivity.o0().getBoolean("gestures_enabled", false)) {
                    try {
                        x1.a aVarV = m.v(mainActivity);
                        if (aVarV != null) {
                            String str = (String) aVarV.f4641a;
                            if (!((Boolean) aVarV.b).booleanValue()) {
                                String string2 = mainActivity.getString(R.string.k_dep_gestures);
                                i2.g.d(string2, "getString(...)");
                                arrayList.add(new gc("gestos", string2, str));
                            }
                        }
                    } catch (Exception e4) {
                        mainActivity.w("Update", "dep gestos: " + e4.getMessage());
                    }
                }
                File file = new File(mainActivity.E());
                if (file.isFile()) {
                    try {
                        String strK0 = MainActivity.K0(mainActivity.d0(mainActivity.R(), mainActivity.P()).f4632a);
                        if (strK0 != null && !i2.g.a(mainActivity.H0(file), strK0)) {
                            String string3 = mainActivity.getString(R.string.k_dep_connadaptor);
                            i2.g.d(string3, "getString(...)");
                            arrayList.add(new gc("connadaptor", string3, strK0));
                        }
                    } catch (Exception e5) {
                        mainActivity.w("Update", "dep ConnAdaptor: " + e5.getMessage());
                    }
                }
                if (mainActivity.o0().getBoolean("keyserver_bind_enabled", false)) {
                    File file2 = new File("/data/local/tmp/fixes/GeelyAutoKeyServer-patched.apk");
                    if (file2.isFile()) {
                        try {
                            bc bcVarF0 = mainActivity.f0();
                            if (bcVarF0.a()) {
                                Long lY2 = mainActivity.y2(file2);
                                if (lY2 != null) {
                                    if (lY2.longValue() != bcVarF0.f3394d) {
                                        if (bcVarF0.a()) {
                                            strValueOf = String.valueOf(bcVarF0.f3394d);
                                        } else {
                                            strValueOf = bcVarF0.f3393c;
                                        }
                                        String string4 = mainActivity.getString(R.string.k_dep_keyserver, bcVarF0.f3392a);
                                        i2.g.d(string4, "getString(...)");
                                        arrayList.add(new gc("keyserver", string4, strValueOf));
                                    }
                                }
                            } else if (!MainActivity.h0(file2, "SHA-256").equalsIgnoreCase(bcVarF0.f3393c)) {
                                if (bcVarF0.a()) {
                                    strValueOf = String.valueOf(bcVarF0.f3394d);
                                } else {
                                    strValueOf = bcVarF0.f3393c;
                                }
                                String string5 = mainActivity.getString(R.string.k_dep_keyserver, bcVarF0.f3392a);
                                i2.g.d(string5, "getString(...)");
                                arrayList.add(new gc("keyserver", string5, strValueOf));
                            }
                        } catch (Exception e6) {
                            mainActivity.w("Update", "dep KeyServer: " + e6.getMessage());
                        }
                    }
                }
                ArrayList arrayList2 = new ArrayList();
                int size = arrayList.size();
                while (i4 < size) {
                    Object obj = arrayList.get(i4);
                    i4++;
                    gc gcVar = (gc) obj;
                    if (!i2.g.a(mainActivity.o0().getString("dep_update_notified_".concat(gcVar.f3637a), null), gcVar.f3638c)) {
                        arrayList2.add(obj);
                    }
                }
                if (!arrayList2.isEmpty()) {
                    mainActivity.f1045v.post(new a1.i(mainActivity, 27, arrayList2));
                    break;
                }
                break;
            default:
                int i10 = MainActivity.f1002z1;
                mainActivity.f1045v.post(new a1.i(mainActivity, 23, e8.x()));
                break;
        }
    }
}
