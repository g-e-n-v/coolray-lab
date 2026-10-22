package w0;

import android.app.AlertDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.media.AudioManager;
import android.media.browse.MediaBrowser;
import android.media.session.MediaController;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.MainActivity;
import com.ex.auto.MediaBrowserHostActivity;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.lang.reflect.Method;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class y6 implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4575a;
    public final /* synthetic */ Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f4576c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f4577d;

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ y6(h2.p pVar, h2.a aVar, h2.a aVar2) {
        this.f4575a = 3;
        this.f4576c = (i2.e) pVar;
        this.b = aVar;
        this.f4577d = (i2.e) aVar2;
    }

    /* JADX INFO: Removed unreachable split cross block B:132:0x026e */
    /* JADX WARN: Code duplicated, block: B:102:0x02a8  */
    /* JADX WARN: Code duplicated, block: B:105:0x02ae  */
    /* JADX WARN: Code duplicated, block: B:107:0x02ba  */
    /* JADX WARN: Code duplicated, block: B:108:0x02bc  */
    /* JADX WARN: Code duplicated, block: B:111:0x02c5  */
    /* JADX WARN: Code duplicated, block: B:113:0x02cd  */
    /* JADX WARN: Code duplicated, block: B:114:0x02cf  */
    /* JADX WARN: Code duplicated, block: B:142:0x023d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:143:0x025d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:145:0x027f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:149:0x0255 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x022f A[Catch: all -> 0x022c, TRY_LEAVE, TryCatch #5 {all -> 0x022c, blocks: (B:71:0x0208, B:73:0x0212, B:75:0x021a, B:77:0x022f), top: B:137:0x0208 }] */
    /* JADX WARN: Code duplicated, block: B:80:0x0233  */
    /* JADX WARN: Code duplicated, block: B:84:0x024f  */
    /* JADX WARN: Code duplicated, block: B:91:0x0270  */
    /* JADX WARN: Type inference failed for: r0v13, types: [h2.p, i2.e] */
    /* JADX WARN: Type inference failed for: r4v26, types: [h2.a, i2.e] */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Method[] methodArr;
        char c3;
        int i3;
        int i4;
        int iF;
        int i5;
        int i6;
        int iD;
        int i7;
        MediaController mediaController;
        MediaController.TransportControls transportControls;
        int i8 = 3;
        int i9 = 1;
        int i10 = 0;
        switch (this.f4575a) {
            case 0:
                c0.f fVar = (c0.f) this.f4576c;
                HomeFloatingWidgetsService homeFloatingWidgetsService = (HomeFloatingWidgetsService) this.b;
                ImageView imageView = (ImageView) this.f4577d;
                List list = HomeFloatingWidgetsService.f926a0;
                if (fVar.e()) {
                    boolean zL = fVar.l();
                    boolean z2 = !zL;
                    Object obj = fVar.f;
                    if (obj == null) {
                        i3 = i9;
                        i4 = i10;
                        if (zL) {
                            i6 = fVar.f714d;
                            if (i6 <= 0) {
                                iD = fVar.d() / 3;
                                if (iD < i3) {
                                    i7 = i3;
                                } else {
                                    i7 = iD;
                                }
                                i6 = i7;
                            }
                            fVar.f714d = -1;
                            fVar.n(i6);
                        } else {
                            iF = fVar.f();
                            if (iF < i3) {
                                i5 = i3;
                            } else {
                                i5 = iF;
                            }
                            fVar.f714d = i5;
                            fVar.n(i4);
                        }
                    } else {
                        String[] strArr = {"setGroupMute", "setGroupMuteState"};
                        int i11 = 0;
                        while (true) {
                            if (i11 < 2) {
                                String str = strArr[i11];
                                int i12 = i10;
                                Method[] methods = obj.getClass().getMethods();
                                int i13 = i9;
                                i2.g.e(methods, "array");
                                int i14 = i12;
                                while (true) {
                                    if ((i14 < methods.length ? i13 : i12) != 0) {
                                        i14++;
                                        try {
                                            Method method = methods[i14];
                                            if (i2.g.a(method.getName(), str)) {
                                                Class<?>[] parameterTypes = method.getParameterTypes();
                                                try {
                                                    int length = parameterTypes.length;
                                                    Class cls = Boolean.TYPE;
                                                    methodArr = methods;
                                                    if (length == 2) {
                                                        try {
                                                            if (i2.g.a(parameterTypes[i12], Integer.TYPE) && i2.g.a(parameterTypes[i13], cls)) {
                                                                method.invoke(obj, Integer.valueOf(fVar.f713c), Boolean.valueOf(z2));
                                                            } else {
                                                                if (parameterTypes.length == 3) {
                                                                    c3 = 2;
                                                                    try {
                                                                        if (i2.g.a(parameterTypes[2], cls)) {
                                                                            method.invoke(obj, 0, Integer.valueOf(fVar.f713c), Boolean.valueOf(z2));
                                                                        }
                                                                    } catch (Throwable unused) {
                                                                    }
                                                                } else {
                                                                    c3 = 2;
                                                                }
                                                                if (parameterTypes.length == 3) {
                                                                    if (i2.g.a(parameterTypes[i13], cls)) {
                                                                        method.invoke(obj, Integer.valueOf(fVar.f713c), Boolean.valueOf(z2), 0);
                                                                    }
                                                                    methods = methodArr;
                                                                } else {
                                                                    i14 = i14;
                                                                    methods = methodArr;
                                                                }
                                                            }
                                                            if (zL) {
                                                                fVar.f714d = -1;
                                                            }
                                                        } catch (Throwable unused2) {
                                                            c3 = 2;
                                                        }
                                                    } else {
                                                        if (parameterTypes.length == 3) {
                                                            c3 = 2;
                                                            if (i2.g.a(parameterTypes[2], cls)) {
                                                                method.invoke(obj, 0, Integer.valueOf(fVar.f713c), Boolean.valueOf(z2));
                                                            }
                                                            if (zL) {
                                                                fVar.f714d = -1;
                                                            }
                                                        } else {
                                                            c3 = 2;
                                                        }
                                                        if (parameterTypes.length == 3) {
                                                            if (i2.g.a(parameterTypes[i13], cls)) {
                                                                method.invoke(obj, Integer.valueOf(fVar.f713c), Boolean.valueOf(z2), 0);
                                                                if (zL) {
                                                                    fVar.f714d = -1;
                                                                }
                                                            }
                                                            methods = methodArr;
                                                        } else {
                                                            i14 = i14;
                                                            methods = methodArr;
                                                        }
                                                    }
                                                } catch (Throwable unused3) {
                                                    methodArr = methods;
                                                }
                                            }
                                        } catch (ArrayIndexOutOfBoundsException e3) {
                                            throw new NoSuchElementException(e3.getMessage());
                                        }
                                    } else {
                                        i11++;
                                        i10 = i12;
                                        i9 = i13;
                                    }
                                }
                            } else {
                                i3 = i9;
                                i4 = i10;
                                if (zL) {
                                    i6 = fVar.f714d;
                                    if (i6 <= 0) {
                                        iD = fVar.d() / 3;
                                        if (iD < i3) {
                                            i7 = i3;
                                        } else {
                                            i7 = iD;
                                        }
                                        i6 = i7;
                                    }
                                    fVar.f714d = -1;
                                    fVar.n(i6);
                                } else {
                                    iF = fVar.f();
                                    if (iF < i3) {
                                        i5 = i3;
                                    } else {
                                        i5 = iF;
                                    }
                                    fVar.f714d = i5;
                                    fVar.n(i4);
                                }
                            }
                        }
                    }
                } else {
                    try {
                        ((AudioManager) fVar.b).adjustStreamVolume(3, 101, 0);
                        break;
                    } catch (Throwable unused4) {
                    }
                }
                HomeFloatingWidgetsService.l(fVar, imageView, homeFloatingWidgetsService);
                SeekBar seekBar = homeFloatingWidgetsService.P;
                if (seekBar != null) {
                    seekBar.setProgress(fVar.f());
                    return;
                }
                return;
            case 1:
                Intent intent = (Intent) this.f4576c;
                HomeFloatingWidgetsService homeFloatingWidgetsService2 = (HomeFloatingWidgetsService) this.b;
                String str2 = (String) this.f4577d;
                List list2 = HomeFloatingWidgetsService.f926a0;
                try {
                    intent.addFlags(268435456);
                    homeFloatingWidgetsService2.startActivity(intent);
                    return;
                } catch (Exception e4) {
                    androidx.activity.result.b.o(e4, androidx.activity.result.b.l("launch ", str2, ": "), "HomeFloatingWidgets");
                    return;
                }
            case 2:
                h2.a aVar = (h2.a) this.f4576c;
                h2.a aVar2 = (h2.a) this.b;
                MainActivity mainActivity = (MainActivity) this.f4577d;
                int i15 = MainActivity.f1002z1;
                aVar.a();
                if (aVar2 != null) {
                    mainActivity.f1045v.postDelayed(new n1(aVar2, i8), 180L);
                    return;
                }
                return;
            case 3:
                ?? r3 = (i2.e) this.f4576c;
                h2.a aVar3 = (h2.a) this.b;
                ?? r4 = (i2.e) this.f4577d;
                int i16 = MainActivity.f1002z1;
                r3.b(Boolean.valueOf(!((Boolean) aVar3.a()).booleanValue()), new f2(r4));
                r4.a();
                return;
            case 4:
                MainActivity mainActivity2 = (MainActivity) this.f4576c;
                String str3 = (String) this.b;
                String str4 = (String) this.f4577d;
                int i17 = MainActivity.f1002z1;
                e.h hVar = new e.h(mainActivity2);
                String string = mainActivity2.getString(R.string.k_uninstall_app_title);
                e.d dVar = (e.d) hVar.b;
                dVar.f1554d = string;
                dVar.f = mainActivity2.getString(R.string.k_uninstall_app_message, str4, str3);
                hVar.c(mainActivity2.getString(R.string.common_cancel), null);
                hVar.f(mainActivity2.getString(R.string.k_uninstall_btn), new kb(i10, mainActivity2, str4, str3));
                hVar.h();
                return;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                String str5 = (String) this.f4576c;
                SharedPreferences sharedPreferences = (SharedPreferences) this.b;
                MainActivity mainActivity3 = (MainActivity) this.f4577d;
                int i18 = MainActivity.f1002z1;
                boolean z3 = true ^ sharedPreferences.getBoolean("qa_visible_".concat(str5), !QuickAccessFloaterService.f1132w0.contains(str5));
                sharedPreferences.edit().putBoolean("qa_visible_".concat(str5), z3).apply();
                QuickAccessFloaterService quickAccessFloaterService = QuickAccessFloaterService.x0;
                if (quickAccessFloaterService != null) {
                    quickAccessFloaterService.t().edit().putBoolean("qa_visible_".concat(str5), z3).apply();
                    quickAccessFloaterService.J();
                }
                mainActivity3.u1();
                return;
            case MusicClient.TYPE_GESTURE /* 6 */:
                MediaBrowser.MediaItem mediaItem = (MediaBrowser.MediaItem) this.f4576c;
                MediaBrowserHostActivity mediaBrowserHostActivity = (MediaBrowserHostActivity) this.b;
                String str6 = (String) this.f4577d;
                int i19 = MediaBrowserHostActivity.f1080s;
                String mediaId = mediaItem.getMediaId();
                if (mediaId == null) {
                    return;
                }
                if (mediaItem.isBrowsable()) {
                    mediaBrowserHostActivity.f1084e.add(new x1.a(mediaId, str6));
                    mediaBrowserHostActivity.a(mediaId);
                    return;
                } else {
                    if (!mediaItem.isPlayable() || (mediaController = mediaBrowserHostActivity.f1082c) == null || (transportControls = mediaController.getTransportControls()) == null) {
                        return;
                    }
                    transportControls.playFromMediaId(mediaId, null);
                    return;
                }
            case PlaybackState.STATE_ERROR /* 7 */:
                WindowManager windowManager = (WindowManager) this.f4576c;
                LinearLayout linearLayout = (LinearLayout) this.b;
                h2.a aVar4 = (h2.a) this.f4577d;
                try {
                    windowManager.removeView(linearLayout);
                    break;
                } catch (Exception unused5) {
                }
                sd.b = false;
                aVar4.a();
                return;
            case 8:
                QuickAccessFloaterService quickAccessFloaterService2 = (QuickAccessFloaterService) this.f4576c;
                String str7 = (String) this.b;
                sf sfVar = (sf) this.f4577d;
                int i20 = QuickAccessFloaterService.t0;
                quickAccessFloaterService2.H(sfVar, str7);
                return;
            default:
                i2.m mVar = (i2.m) this.f4576c;
                QuickAccessFloaterService quickAccessFloaterService3 = (QuickAccessFloaterService) this.b;
                h2.a aVar5 = (h2.a) this.f4577d;
                int i21 = QuickAccessFloaterService.t0;
                Object obj2 = mVar.f2292a;
                if (obj2 == null) {
                    i2.g.h("dlg");
                    throw null;
                }
                ((AlertDialog) obj2).dismiss();
                quickAccessFloaterService3.P(400L);
                aVar5.a();
                return;
        }
    }

    public /* synthetic */ y6(Object obj, Object obj2, Object obj3, int i3) {
        this.f4575a = i3;
        this.f4576c = obj;
        this.b = obj2;
        this.f4577d = obj3;
    }
}
