package com.ex.auto;

import a1.r;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.MediaSessionManager;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.activity.d;
import androidx.activity.result.b;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.MediaBarFloaterService;
import i2.g;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import k1.a;
import o2.k;
import w0.cg;
import w0.dd;
import w0.e8;
import w0.ed;
import w0.fd;
import w0.i9;
import w0.m;
import w0.r8;
import w0.t1;
import w0.t8;
import y1.f;
import y1.i;
import y1.p;

/* JADX INFO: loaded from: classes.dex */
public final class MediaBarFloaterService extends Service {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final Set f1060v = a.P("com.spotify.music", "ru.yandex.music", "deezer.android.app", "com.google.android.apps.youtube.music", "app.rvx.android.apps.youtube.music", "app.revanced.android.apps.youtube.music", "com.vanced.android.apps.youtube.music", "com.google.android.youtube", "app.rvx.android.youtube", "app.revanced.android.youtube", "com.njda.aauto", "com.google.android.projection.gearhead");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WindowManager f1061a;
    public MediaSessionManager b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public FrameLayout f1063d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ImageView f1064e;
    public ImageView f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public TextView f1065g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public TextView f1066h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ImageView f1067i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ImageView f1068j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public MediaController f1069k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public volatile PlaybackState.CustomAction f1070l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f1071m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Bitmap f1072n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public volatile Boolean f1073o;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public volatile boolean f1078t;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Handler f1062c = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final HashMap f1074p = new HashMap();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final r8 f1075q = new r8(this, 1);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final HashMap f1076r = new HashMap();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final t8 f1077s = new t8(1, this);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final d f1079u = new d(17, this);

    public final int a() {
        return g() ? -1 : -15591908;
    }

    @Override // android.app.Service, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        g.e(context, "base");
        super.attachBaseContext(e8.p(context));
    }

    public final void b() {
        FrameLayout frameLayout = this.f1063d;
        if (frameLayout != null && frameLayout.getParent() != null) {
            try {
                WindowManager windowManager = this.f1061a;
                if (windowManager == null) {
                    g.h("wm");
                    throw null;
                }
                windowManager.removeView(frameLayout);
            } catch (Throwable unused) {
            }
        }
        this.f1063d = null;
        this.f1064e = null;
        this.f = null;
        this.f1065g = null;
        this.f1066h = null;
        this.f1067i = null;
        this.f1068j = null;
    }

    public final void c() {
        MediaController mediaController = this.f1069k;
        if (mediaController == null) {
            return;
        }
        PendingIntent sessionActivity = mediaController.getSessionActivity();
        if (sessionActivity != null) {
            try {
                sessionActivity.send();
                return;
            } catch (PendingIntent.CanceledException unused) {
            }
        }
        String packageName = mediaController.getPackageName();
        g.d(packageName, "getPackageName(...)");
        if (g.a(packageName, "com.njda.aauto") || g.a(packageName, "com.google.android.projection.gearhead")) {
            try {
                sendBroadcast(new Intent("com.bd.systemui.aa.foreground"));
                Log.i("MediaBarFloater", "launchAndroidAuto(" + packageName + "): broadcast com.bd.systemui.aa.foreground enviado");
                return;
            } catch (Exception e3) {
                b.o(e3, b.l("launchAndroidAuto(", packageName, "): "), "MediaBarFloater");
                return;
            }
        }
        try {
            Intent launchIntentForPackage = getPackageManager().getLaunchIntentForPackage(mediaController.getPackageName());
            if (launchIntentForPackage != null) {
                launchIntentForPackage.addFlags(268435456);
                startActivity(launchIntentForPackage);
            }
        } catch (Exception e4) {
            Log.e("MediaBarFloater", "launchApp falhou: " + e4.getMessage());
        }
    }

    /* JADX WARN: Code duplicated, block: B:57:0x012d A[EDGE_INSN: B:57:0x012d->B:58:0x012e BREAK  A[LOOP:5: B:51:0x0119->B:114:0x0119]] */
    /* JADX WARN: Code duplicated, block: B:64:0x0177 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:65:0x0179 A[Catch: all -> 0x018c, TryCatch #3 {all -> 0x018c, blocks: (B:62:0x016f, B:65:0x0179, B:69:0x0185), top: B:88:0x016f }] */
    /* JADX WARN: Code duplicated, block: B:66:0x0180  */
    /* JADX WARN: Code duplicated, block: B:68:0x0183 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:69:0x0185 A[Catch: all -> 0x018c, TRY_LEAVE, TryCatch #3 {all -> 0x018c, blocks: (B:62:0x016f, B:65:0x0179, B:69:0x0185), top: B:88:0x016f }] */
    /* JADX WARN: Code duplicated, block: B:71:0x018c  */
    public final void d() {
        List<MediaController> activeSessions;
        t8 t8Var;
        MediaMetadata metadata;
        boolean z2;
        String string;
        Set<String> setKeySet;
        p pVar = p.f4663a;
        try {
            MediaSessionManager mediaSessionManager = this.b;
            if (mediaSessionManager == null) {
                g.h("msm");
                throw null;
            }
            activeSessions = mediaSessionManager.getActiveSessions(null);
            ArrayList arrayList = new ArrayList();
            for (Object obj : activeSessions) {
                if (f1060v.contains(((MediaController) obj).getPackageName())) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(i.X(arrayList));
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj2 = arrayList.get(i3);
                i3++;
                arrayList2.add(((MediaController) obj2).getSessionToken());
            }
            Set setP0 = y1.g.p0(arrayList2);
            HashMap map = this.f1074p;
            Iterator it = map.entrySet().iterator();
            while (true) {
                boolean zHasNext = it.hasNext();
                t8Var = this.f1077s;
                if (!zHasNext) {
                    break;
                }
                Object next = it.next();
                g.d(next, "next(...)");
                Map.Entry entry = (Map.Entry) next;
                if (!setP0.contains(entry.getKey())) {
                    try {
                        ((MediaController) entry.getValue()).unregisterCallback(t8Var);
                    } catch (Exception unused) {
                    }
                    it.remove();
                }
            }
            int size2 = arrayList.size();
            int i4 = 0;
            while (i4 < size2) {
                Object obj3 = arrayList.get(i4);
                i4++;
                g.d(obj3, "next(...)");
                MediaController mediaController = (MediaController) obj3;
                if (!map.containsKey(mediaController.getSessionToken())) {
                    try {
                        mediaController.registerCallback(t8Var, this.f1062c);
                        map.put(mediaController.getSessionToken(), mediaController);
                    } catch (Exception unused2) {
                    }
                }
            }
            int size3 = arrayList.size();
            int i5 = 0;
            while (i5 < size3) {
                Object obj4 = arrayList.get(i5);
                i5++;
                g.d(obj4, "next(...)");
                MediaController mediaController2 = (MediaController) obj4;
                try {
                    metadata = mediaController2.getMetadata();
                } catch (Throwable unused3) {
                    metadata = null;
                }
                List listH0 = (metadata == null || (setKeySet = metadata.keySet()) == null) ? null : y1.g.h0(setKeySet);
                if (listH0 == null) {
                    listH0 = pVar;
                }
                if (metadata == null) {
                    z2 = false;
                    break;
                }
                List listU = f.U(new String[]{"android.media.metadata.ALBUM_ART", "android.media.metadata.ART", "android.media.metadata.DISPLAY_ICON"});
                if (listU.isEmpty()) {
                    z2 = false;
                    break;
                }
                Iterator it2 = listU.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        if (metadata.getBitmap((String) it2.next()) != null) {
                            z2 = true;
                            break;
                        }
                    } else {
                        z2 = false;
                        break;
                    }
                }
                StringBuilder sb = new StringBuilder();
                sb.append(listH0.size());
                sb.append(':');
                int i6 = size3;
                sb.append(y1.g.e0(listH0, ",", null, 62));
                sb.append(':');
                sb.append(z2);
                String string2 = sb.toString();
                String packageName = mediaController2.getPackageName();
                HashMap map2 = this.f1076r;
                if (!g.a(map2.get(packageName), string2)) {
                    map2.put(mediaController2.getPackageName(), string2);
                    if (metadata != null) {
                        try {
                            string = metadata.getString("android.media.metadata.ALBUM_ART_URI");
                            if (string == null) {
                                if (metadata != null) {
                                    string = metadata.getString("android.media.metadata.ART_URI");
                                } else {
                                    string = null;
                                }
                                if (string == null) {
                                    if (metadata != null) {
                                        string = metadata.getString("android.media.metadata.DISPLAY_ICON_URI");
                                    } else {
                                        string = null;
                                    }
                                }
                            }
                        } catch (Throwable unused4) {
                        }
                    } else {
                        if (metadata != null) {
                            string = metadata.getString("android.media.metadata.ART_URI");
                        } else {
                            string = null;
                        }
                        if (string == null) {
                            if (metadata != null) {
                                string = metadata.getString("android.media.metadata.DISPLAY_ICON_URI");
                            } else {
                                string = null;
                            }
                        }
                    }
                    StringBuilder sb2 = new StringBuilder("metadados de ");
                    sb2.append(mediaController2.getPackageName());
                    sb2.append(": ");
                    sb2.append(listH0.size());
                    sb2.append(" chaves, capaEmbutida=");
                    sb2.append(z2);
                    sb2.append(", uriCapa=");
                    if (string == null) {
                        string = "(nenhuma)";
                    }
                    sb2.append(string);
                    sb2.append(" — ");
                    sb2.append(y1.g.e0(listH0, ",", null, 62));
                    Log.i("MediaBarFloater", sb2.toString());
                }
                size3 = i6;
            }
            f(arrayList);
        } catch (Exception e3) {
            Log.e("MediaBarFloater", "getActiveSessions falhou: " + e3.getMessage());
            activeSessions = pVar;
        }
    }

    /* JADX WARN: Code duplicated, block: B:129:0x042d  */
    /* JADX WARN: Code duplicated, block: B:136:0x0446  */
    /* JADX WARN: Code duplicated, block: B:137:0x0449  */
    /* JADX WARN: Code duplicated, block: B:140:0x044f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:141:0x0451  */
    /* JADX WARN: Code duplicated, block: B:142:0x0455  */
    /* JADX WARN: Code duplicated, block: B:169:0x04fe  */
    /* JADX WARN: Code duplicated, block: B:171:0x0501  */
    /* JADX WARN: Code duplicated, block: B:174:0x0507  */
    /* JADX WARN: Code duplicated, block: B:176:0x050b  */
    /* JADX WARN: Code duplicated, block: B:177:0x0511  */
    /* JADX WARN: Code duplicated, block: B:211:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    public final void e() {
        Drawable drawable;
        MediaController mediaController;
        String string;
        Drawable drawable2;
        String strE0;
        String string2;
        Bitmap bitmap;
        ImageView imageView;
        boolean z2;
        ImageView imageView2;
        PlaybackState.CustomAction customAction;
        ImageView imageView3;
        PlaybackState.CustomAction customAction2;
        String lowerCase;
        List<PlaybackState.CustomAction> customActions;
        Object obj;
        int i3;
        Drawable applicationIcon;
        String string3;
        if (this.f1073o == null) {
            this.f1073o = Boolean.valueOf(g());
        }
        if (this.f1078t) {
            b();
            return;
        }
        MediaController mediaController2 = this.f1069k;
        if (mediaController2 == null) {
            b();
            return;
        }
        MediaMetadata metadata = mediaController2.getMetadata();
        PlaybackState playbackState = mediaController2.getPlaybackState();
        int state = playbackState != null ? playbackState.getState() : 0;
        if (metadata == null || !(state == 3 || state == 2 || state == 6)) {
            b();
            return;
        }
        if (this.f1063d != null) {
            mediaController = mediaController2;
            drawable = null;
        } else {
            FrameLayout frameLayout = new FrameLayout(this);
            drawable = null;
            frameLayout.setBackgroundColor(g() ? -15262946 : -854793);
            LinearLayout linearLayout = new LinearLayout(this);
            linearLayout.setOrientation(0);
            linearLayout.setGravity(16);
            linearLayout.setPadding(26, 0, 18, 0);
            linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            ImageView imageView4 = new ImageView(this);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(1);
            gradientDrawable.setColor(0);
            gradientDrawable.setStroke(3, g() ? -419430401 : -435022308);
            imageView4.setImageDrawable(gradientDrawable);
            imageView4.setLayoutParams(new LinearLayout.LayoutParams(44, 44));
            final int i4 = 4;
            imageView4.setOnClickListener(new View.OnClickListener(this) { // from class: w0.cd
                public final /* synthetic */ MediaBarFloaterService b;

                {
                    this.b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MediaController.TransportControls transportControls;
                    MediaController.TransportControls transportControls2;
                    PlaybackState playbackState2;
                    MediaController.TransportControls transportControls3;
                    MediaController.TransportControls transportControls4;
                    switch (i4) {
                        case 0:
                            MediaController mediaController3 = this.b.f1069k;
                            if (mediaController3 != null && (transportControls = mediaController3.getTransportControls()) != null) {
                                transportControls.skipToPrevious();
                                break;
                            }
                            break;
                        case 1:
                            MediaBarFloaterService mediaBarFloaterService = this.b;
                            MediaController mediaController4 = mediaBarFloaterService.f1069k;
                            if (mediaController4 != null && (transportControls2 = mediaController4.getTransportControls()) != null) {
                                MediaController mediaController5 = mediaBarFloaterService.f1069k;
                                if (mediaController5 == null || (playbackState2 = mediaController5.getPlaybackState()) == null || playbackState2.getState() != 3) {
                                    transportControls2.play();
                                } else {
                                    transportControls2.pause();
                                }
                                break;
                            }
                            break;
                        case 2:
                            MediaController mediaController6 = this.b.f1069k;
                            if (mediaController6 != null && (transportControls3 = mediaController6.getTransportControls()) != null) {
                                transportControls3.skipToNext();
                                break;
                            }
                            break;
                        case 3:
                            MediaBarFloaterService mediaBarFloaterService2 = this.b;
                            PlaybackState.CustomAction customAction3 = mediaBarFloaterService2.f1070l;
                            if (customAction3 != null) {
                                try {
                                    MediaController mediaController7 = mediaBarFloaterService2.f1069k;
                                    if (mediaController7 != null && (transportControls4 = mediaController7.getTransportControls()) != null) {
                                        transportControls4.sendCustomAction(customAction3, (Bundle) null);
                                        break;
                                    }
                                } catch (Exception unused) {
                                    return;
                                }
                            }
                            break;
                        case 4:
                            MediaBarFloaterService mediaBarFloaterService3 = this.b;
                            Set set = MediaBarFloaterService.f1060v;
                            mediaBarFloaterService3.getClass();
                            try {
                                Intent intent = new Intent("android.intent.action.MAIN");
                                intent.addCategory("android.intent.category.HOME");
                                intent.addFlags(268435456);
                                mediaBarFloaterService3.startActivity(intent);
                            } catch (Exception e3) {
                                Log.e("MediaBarFloater", "goHome falhou: " + e3.getMessage());
                                return;
                            }
                            break;
                        case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                            MediaBarFloaterService mediaBarFloaterService4 = this.b;
                            Set set2 = MediaBarFloaterService.f1060v;
                            mediaBarFloaterService4.c();
                            break;
                        default:
                            MediaBarFloaterService mediaBarFloaterService5 = this.b;
                            Set set3 = MediaBarFloaterService.f1060v;
                            mediaBarFloaterService5.c();
                            break;
                    }
                }
            });
            linearLayout.addView(imageView4);
            View view = new View(this);
            view.setBackgroundColor(g() ? 872415231 : 520093696);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(2, 40);
            layoutParams.setMarginStart(16);
            layoutParams.setMarginEnd(16);
            view.setLayoutParams(layoutParams);
            linearLayout.addView(view);
            FrameLayout frameLayout2 = new FrameLayout(this);
            frameLayout2.setLayoutParams(new LinearLayout.LayoutParams(64, 64));
            ImageView imageView5 = new ImageView(this);
            imageView5.setScaleType(ImageView.ScaleType.CENTER_CROP);
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setShape(0);
            gradientDrawable2.setCornerRadius(4.0f);
            gradientDrawable2.setColor(-6114875);
            imageView5.setImageDrawable(gradientDrawable2);
            imageView5.setClipToOutline(true);
            imageView5.setOutlineProvider(new fd(0));
            imageView5.setLayoutParams(new FrameLayout.LayoutParams(64, 64));
            final int i5 = 5;
            imageView5.setOnClickListener(new View.OnClickListener(this) { // from class: w0.cd
                public final /* synthetic */ MediaBarFloaterService b;

                {
                    this.b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    MediaController.TransportControls transportControls;
                    MediaController.TransportControls transportControls2;
                    PlaybackState playbackState2;
                    MediaController.TransportControls transportControls3;
                    MediaController.TransportControls transportControls4;
                    switch (i5) {
                        case 0:
                            MediaController mediaController3 = this.b.f1069k;
                            if (mediaController3 != null && (transportControls = mediaController3.getTransportControls()) != null) {
                                transportControls.skipToPrevious();
                                break;
                            }
                            break;
                        case 1:
                            MediaBarFloaterService mediaBarFloaterService = this.b;
                            MediaController mediaController4 = mediaBarFloaterService.f1069k;
                            if (mediaController4 != null && (transportControls2 = mediaController4.getTransportControls()) != null) {
                                MediaController mediaController5 = mediaBarFloaterService.f1069k;
                                if (mediaController5 == null || (playbackState2 = mediaController5.getPlaybackState()) == null || playbackState2.getState() != 3) {
                                    transportControls2.play();
                                } else {
                                    transportControls2.pause();
                                }
                                break;
                            }
                            break;
                        case 2:
                            MediaController mediaController6 = this.b.f1069k;
                            if (mediaController6 != null && (transportControls3 = mediaController6.getTransportControls()) != null) {
                                transportControls3.skipToNext();
                                break;
                            }
                            break;
                        case 3:
                            MediaBarFloaterService mediaBarFloaterService2 = this.b;
                            PlaybackState.CustomAction customAction3 = mediaBarFloaterService2.f1070l;
                            if (customAction3 != null) {
                                try {
                                    MediaController mediaController7 = mediaBarFloaterService2.f1069k;
                                    if (mediaController7 != null && (transportControls4 = mediaController7.getTransportControls()) != null) {
                                        transportControls4.sendCustomAction(customAction3, (Bundle) null);
                                        break;
                                    }
                                } catch (Exception unused) {
                                    return;
                                }
                            }
                            break;
                        case 4:
                            MediaBarFloaterService mediaBarFloaterService3 = this.b;
                            Set set = MediaBarFloaterService.f1060v;
                            mediaBarFloaterService3.getClass();
                            try {
                                Intent intent = new Intent("android.intent.action.MAIN");
                                intent.addCategory("android.intent.category.HOME");
                                intent.addFlags(268435456);
                                mediaBarFloaterService3.startActivity(intent);
                            } catch (Exception e3) {
                                Log.e("MediaBarFloater", "goHome falhou: " + e3.getMessage());
                                return;
                            }
                            break;
                        case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                            MediaBarFloaterService mediaBarFloaterService4 = this.b;
                            Set set2 = MediaBarFloaterService.f1060v;
                            mediaBarFloaterService4.c();
                            break;
                        default:
                            MediaBarFloaterService mediaBarFloaterService5 = this.b;
                            Set set3 = MediaBarFloaterService.f1060v;
                            mediaBarFloaterService5.c();
                            break;
                    }
                }
            });
            frameLayout2.addView(imageView5);
            ImageView imageView6 = new ImageView(this);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(32, 32);
            layoutParams2.gravity = 8388693;
            imageView6.setLayoutParams(layoutParams2);
            frameLayout2.addView(imageView6);
            linearLayout.addView(frameLayout2);
            LinearLayout linearLayout2 = new LinearLayout(this);
            linearLayout2.setOrientation(1);
            linearLayout2.setGravity(16);
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, -2, 1.0f);
            layoutParams3.setMarginStart(16);
            layoutParams3.setMarginEnd(6);
            linearLayout2.setLayoutParams(layoutParams3);
            final int i6 = 6;
            linearLayout2.setOnClickListener(new View.OnClickListener(this) { // from class: w0.cd
                public final /* synthetic */ MediaBarFloaterService b;

                {
                    this.b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    MediaController.TransportControls transportControls;
                    MediaController.TransportControls transportControls2;
                    PlaybackState playbackState2;
                    MediaController.TransportControls transportControls3;
                    MediaController.TransportControls transportControls4;
                    switch (i6) {
                        case 0:
                            MediaController mediaController3 = this.b.f1069k;
                            if (mediaController3 != null && (transportControls = mediaController3.getTransportControls()) != null) {
                                transportControls.skipToPrevious();
                                break;
                            }
                            break;
                        case 1:
                            MediaBarFloaterService mediaBarFloaterService = this.b;
                            MediaController mediaController4 = mediaBarFloaterService.f1069k;
                            if (mediaController4 != null && (transportControls2 = mediaController4.getTransportControls()) != null) {
                                MediaController mediaController5 = mediaBarFloaterService.f1069k;
                                if (mediaController5 == null || (playbackState2 = mediaController5.getPlaybackState()) == null || playbackState2.getState() != 3) {
                                    transportControls2.play();
                                } else {
                                    transportControls2.pause();
                                }
                                break;
                            }
                            break;
                        case 2:
                            MediaController mediaController6 = this.b.f1069k;
                            if (mediaController6 != null && (transportControls3 = mediaController6.getTransportControls()) != null) {
                                transportControls3.skipToNext();
                                break;
                            }
                            break;
                        case 3:
                            MediaBarFloaterService mediaBarFloaterService2 = this.b;
                            PlaybackState.CustomAction customAction3 = mediaBarFloaterService2.f1070l;
                            if (customAction3 != null) {
                                try {
                                    MediaController mediaController7 = mediaBarFloaterService2.f1069k;
                                    if (mediaController7 != null && (transportControls4 = mediaController7.getTransportControls()) != null) {
                                        transportControls4.sendCustomAction(customAction3, (Bundle) null);
                                        break;
                                    }
                                } catch (Exception unused) {
                                    return;
                                }
                            }
                            break;
                        case 4:
                            MediaBarFloaterService mediaBarFloaterService3 = this.b;
                            Set set = MediaBarFloaterService.f1060v;
                            mediaBarFloaterService3.getClass();
                            try {
                                Intent intent = new Intent("android.intent.action.MAIN");
                                intent.addCategory("android.intent.category.HOME");
                                intent.addFlags(268435456);
                                mediaBarFloaterService3.startActivity(intent);
                            } catch (Exception e3) {
                                Log.e("MediaBarFloater", "goHome falhou: " + e3.getMessage());
                                return;
                            }
                            break;
                        case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                            MediaBarFloaterService mediaBarFloaterService4 = this.b;
                            Set set2 = MediaBarFloaterService.f1060v;
                            mediaBarFloaterService4.c();
                            break;
                        default:
                            MediaBarFloaterService mediaBarFloaterService5 = this.b;
                            Set set3 = MediaBarFloaterService.f1060v;
                            mediaBarFloaterService5.c();
                            break;
                    }
                }
            });
            TextView textView = new TextView(this);
            textView.setTextColor(a());
            textView.setTextSize(15.0f);
            textView.setMaxLines(1);
            TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
            textView.setEllipsize(truncateAt);
            TextView textView2 = new TextView(this);
            textView2.setTextColor(g() ? -7695720 : -11380122);
            textView2.setTextSize(12.0f);
            textView2.setMaxLines(1);
            textView2.setEllipsize(truncateAt);
            linearLayout2.addView(textView);
            linearLayout2.addView(textView2);
            linearLayout.addView(linearLayout2);
            ImageView imageView7 = new ImageView(this);
            imageView7.setImageResource(R.drawable.ic_floater_prev);
            imageView7.setColorFilter(a());
            ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_CENTER;
            imageView7.setScaleType(scaleType);
            imageView7.setPadding(10, 10, 10, 10);
            imageView7.setLayoutParams(new LinearLayout.LayoutParams(56, 56));
            final int i7 = 0;
            imageView7.setOnClickListener(new View.OnClickListener(this) { // from class: w0.cd
                public final /* synthetic */ MediaBarFloaterService b;

                {
                    this.b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    MediaController.TransportControls transportControls;
                    MediaController.TransportControls transportControls2;
                    PlaybackState playbackState2;
                    MediaController.TransportControls transportControls3;
                    MediaController.TransportControls transportControls4;
                    switch (i7) {
                        case 0:
                            MediaController mediaController3 = this.b.f1069k;
                            if (mediaController3 != null && (transportControls = mediaController3.getTransportControls()) != null) {
                                transportControls.skipToPrevious();
                                break;
                            }
                            break;
                        case 1:
                            MediaBarFloaterService mediaBarFloaterService = this.b;
                            MediaController mediaController4 = mediaBarFloaterService.f1069k;
                            if (mediaController4 != null && (transportControls2 = mediaController4.getTransportControls()) != null) {
                                MediaController mediaController5 = mediaBarFloaterService.f1069k;
                                if (mediaController5 == null || (playbackState2 = mediaController5.getPlaybackState()) == null || playbackState2.getState() != 3) {
                                    transportControls2.play();
                                } else {
                                    transportControls2.pause();
                                }
                                break;
                            }
                            break;
                        case 2:
                            MediaController mediaController6 = this.b.f1069k;
                            if (mediaController6 != null && (transportControls3 = mediaController6.getTransportControls()) != null) {
                                transportControls3.skipToNext();
                                break;
                            }
                            break;
                        case 3:
                            MediaBarFloaterService mediaBarFloaterService2 = this.b;
                            PlaybackState.CustomAction customAction3 = mediaBarFloaterService2.f1070l;
                            if (customAction3 != null) {
                                try {
                                    MediaController mediaController7 = mediaBarFloaterService2.f1069k;
                                    if (mediaController7 != null && (transportControls4 = mediaController7.getTransportControls()) != null) {
                                        transportControls4.sendCustomAction(customAction3, (Bundle) null);
                                        break;
                                    }
                                } catch (Exception unused) {
                                    return;
                                }
                            }
                            break;
                        case 4:
                            MediaBarFloaterService mediaBarFloaterService3 = this.b;
                            Set set = MediaBarFloaterService.f1060v;
                            mediaBarFloaterService3.getClass();
                            try {
                                Intent intent = new Intent("android.intent.action.MAIN");
                                intent.addCategory("android.intent.category.HOME");
                                intent.addFlags(268435456);
                                mediaBarFloaterService3.startActivity(intent);
                            } catch (Exception e3) {
                                Log.e("MediaBarFloater", "goHome falhou: " + e3.getMessage());
                                return;
                            }
                            break;
                        case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                            MediaBarFloaterService mediaBarFloaterService4 = this.b;
                            Set set2 = MediaBarFloaterService.f1060v;
                            mediaBarFloaterService4.c();
                            break;
                        default:
                            MediaBarFloaterService mediaBarFloaterService5 = this.b;
                            Set set3 = MediaBarFloaterService.f1060v;
                            mediaBarFloaterService5.c();
                            break;
                    }
                }
            });
            linearLayout.addView(imageView7);
            ImageView imageView8 = new ImageView(this);
            imageView8.setImageResource(R.drawable.ic_floater_play);
            imageView8.setColorFilter(a());
            imageView8.setScaleType(scaleType);
            imageView8.setPadding(10, 10, 10, 10);
            LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(56, 56);
            layoutParams4.setMarginStart(6);
            imageView8.setLayoutParams(layoutParams4);
            final int i8 = 1;
            imageView8.setOnClickListener(new View.OnClickListener(this) { // from class: w0.cd
                public final /* synthetic */ MediaBarFloaterService b;

                {
                    this.b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    MediaController.TransportControls transportControls;
                    MediaController.TransportControls transportControls2;
                    PlaybackState playbackState2;
                    MediaController.TransportControls transportControls3;
                    MediaController.TransportControls transportControls4;
                    switch (i8) {
                        case 0:
                            MediaController mediaController3 = this.b.f1069k;
                            if (mediaController3 != null && (transportControls = mediaController3.getTransportControls()) != null) {
                                transportControls.skipToPrevious();
                                break;
                            }
                            break;
                        case 1:
                            MediaBarFloaterService mediaBarFloaterService = this.b;
                            MediaController mediaController4 = mediaBarFloaterService.f1069k;
                            if (mediaController4 != null && (transportControls2 = mediaController4.getTransportControls()) != null) {
                                MediaController mediaController5 = mediaBarFloaterService.f1069k;
                                if (mediaController5 == null || (playbackState2 = mediaController5.getPlaybackState()) == null || playbackState2.getState() != 3) {
                                    transportControls2.play();
                                } else {
                                    transportControls2.pause();
                                }
                                break;
                            }
                            break;
                        case 2:
                            MediaController mediaController6 = this.b.f1069k;
                            if (mediaController6 != null && (transportControls3 = mediaController6.getTransportControls()) != null) {
                                transportControls3.skipToNext();
                                break;
                            }
                            break;
                        case 3:
                            MediaBarFloaterService mediaBarFloaterService2 = this.b;
                            PlaybackState.CustomAction customAction3 = mediaBarFloaterService2.f1070l;
                            if (customAction3 != null) {
                                try {
                                    MediaController mediaController7 = mediaBarFloaterService2.f1069k;
                                    if (mediaController7 != null && (transportControls4 = mediaController7.getTransportControls()) != null) {
                                        transportControls4.sendCustomAction(customAction3, (Bundle) null);
                                        break;
                                    }
                                } catch (Exception unused) {
                                    return;
                                }
                            }
                            break;
                        case 4:
                            MediaBarFloaterService mediaBarFloaterService3 = this.b;
                            Set set = MediaBarFloaterService.f1060v;
                            mediaBarFloaterService3.getClass();
                            try {
                                Intent intent = new Intent("android.intent.action.MAIN");
                                intent.addCategory("android.intent.category.HOME");
                                intent.addFlags(268435456);
                                mediaBarFloaterService3.startActivity(intent);
                            } catch (Exception e3) {
                                Log.e("MediaBarFloater", "goHome falhou: " + e3.getMessage());
                                return;
                            }
                            break;
                        case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                            MediaBarFloaterService mediaBarFloaterService4 = this.b;
                            Set set2 = MediaBarFloaterService.f1060v;
                            mediaBarFloaterService4.c();
                            break;
                        default:
                            MediaBarFloaterService mediaBarFloaterService5 = this.b;
                            Set set3 = MediaBarFloaterService.f1060v;
                            mediaBarFloaterService5.c();
                            break;
                    }
                }
            });
            linearLayout.addView(imageView8);
            ImageView imageView9 = new ImageView(this);
            imageView9.setImageResource(R.drawable.ic_floater_next);
            imageView9.setColorFilter(a());
            imageView9.setScaleType(scaleType);
            imageView9.setPadding(10, 10, 10, 10);
            mediaController = mediaController2;
            LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(56, 56);
            layoutParams5.setMarginStart(6);
            imageView9.setLayoutParams(layoutParams5);
            final int i9 = 2;
            imageView9.setOnClickListener(new View.OnClickListener(this) { // from class: w0.cd
                public final /* synthetic */ MediaBarFloaterService b;

                {
                    this.b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    MediaController.TransportControls transportControls;
                    MediaController.TransportControls transportControls2;
                    PlaybackState playbackState2;
                    MediaController.TransportControls transportControls3;
                    MediaController.TransportControls transportControls4;
                    switch (i9) {
                        case 0:
                            MediaController mediaController3 = this.b.f1069k;
                            if (mediaController3 != null && (transportControls = mediaController3.getTransportControls()) != null) {
                                transportControls.skipToPrevious();
                                break;
                            }
                            break;
                        case 1:
                            MediaBarFloaterService mediaBarFloaterService = this.b;
                            MediaController mediaController4 = mediaBarFloaterService.f1069k;
                            if (mediaController4 != null && (transportControls2 = mediaController4.getTransportControls()) != null) {
                                MediaController mediaController5 = mediaBarFloaterService.f1069k;
                                if (mediaController5 == null || (playbackState2 = mediaController5.getPlaybackState()) == null || playbackState2.getState() != 3) {
                                    transportControls2.play();
                                } else {
                                    transportControls2.pause();
                                }
                                break;
                            }
                            break;
                        case 2:
                            MediaController mediaController6 = this.b.f1069k;
                            if (mediaController6 != null && (transportControls3 = mediaController6.getTransportControls()) != null) {
                                transportControls3.skipToNext();
                                break;
                            }
                            break;
                        case 3:
                            MediaBarFloaterService mediaBarFloaterService2 = this.b;
                            PlaybackState.CustomAction customAction3 = mediaBarFloaterService2.f1070l;
                            if (customAction3 != null) {
                                try {
                                    MediaController mediaController7 = mediaBarFloaterService2.f1069k;
                                    if (mediaController7 != null && (transportControls4 = mediaController7.getTransportControls()) != null) {
                                        transportControls4.sendCustomAction(customAction3, (Bundle) null);
                                        break;
                                    }
                                } catch (Exception unused) {
                                    return;
                                }
                            }
                            break;
                        case 4:
                            MediaBarFloaterService mediaBarFloaterService3 = this.b;
                            Set set = MediaBarFloaterService.f1060v;
                            mediaBarFloaterService3.getClass();
                            try {
                                Intent intent = new Intent("android.intent.action.MAIN");
                                intent.addCategory("android.intent.category.HOME");
                                intent.addFlags(268435456);
                                mediaBarFloaterService3.startActivity(intent);
                            } catch (Exception e3) {
                                Log.e("MediaBarFloater", "goHome falhou: " + e3.getMessage());
                                return;
                            }
                            break;
                        case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                            MediaBarFloaterService mediaBarFloaterService4 = this.b;
                            Set set2 = MediaBarFloaterService.f1060v;
                            mediaBarFloaterService4.c();
                            break;
                        default:
                            MediaBarFloaterService mediaBarFloaterService5 = this.b;
                            Set set3 = MediaBarFloaterService.f1060v;
                            mediaBarFloaterService5.c();
                            break;
                    }
                }
            });
            linearLayout.addView(imageView9);
            ImageView imageView10 = new ImageView(this);
            imageView10.setImageResource(R.drawable.ic_floater_heart);
            imageView10.setColorFilter(a());
            imageView10.setScaleType(scaleType);
            imageView10.setPadding(10, 10, 10, 10);
            LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(48, 48);
            layoutParams6.setMarginStart(6);
            imageView10.setLayoutParams(layoutParams6);
            imageView10.setVisibility(8);
            final int i10 = 3;
            imageView10.setOnClickListener(new View.OnClickListener(this) { // from class: w0.cd
                public final /* synthetic */ MediaBarFloaterService b;

                {
                    this.b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    MediaController.TransportControls transportControls;
                    MediaController.TransportControls transportControls2;
                    PlaybackState playbackState2;
                    MediaController.TransportControls transportControls3;
                    MediaController.TransportControls transportControls4;
                    switch (i10) {
                        case 0:
                            MediaController mediaController3 = this.b.f1069k;
                            if (mediaController3 != null && (transportControls = mediaController3.getTransportControls()) != null) {
                                transportControls.skipToPrevious();
                                break;
                            }
                            break;
                        case 1:
                            MediaBarFloaterService mediaBarFloaterService = this.b;
                            MediaController mediaController4 = mediaBarFloaterService.f1069k;
                            if (mediaController4 != null && (transportControls2 = mediaController4.getTransportControls()) != null) {
                                MediaController mediaController5 = mediaBarFloaterService.f1069k;
                                if (mediaController5 == null || (playbackState2 = mediaController5.getPlaybackState()) == null || playbackState2.getState() != 3) {
                                    transportControls2.play();
                                } else {
                                    transportControls2.pause();
                                }
                                break;
                            }
                            break;
                        case 2:
                            MediaController mediaController6 = this.b.f1069k;
                            if (mediaController6 != null && (transportControls3 = mediaController6.getTransportControls()) != null) {
                                transportControls3.skipToNext();
                                break;
                            }
                            break;
                        case 3:
                            MediaBarFloaterService mediaBarFloaterService2 = this.b;
                            PlaybackState.CustomAction customAction3 = mediaBarFloaterService2.f1070l;
                            if (customAction3 != null) {
                                try {
                                    MediaController mediaController7 = mediaBarFloaterService2.f1069k;
                                    if (mediaController7 != null && (transportControls4 = mediaController7.getTransportControls()) != null) {
                                        transportControls4.sendCustomAction(customAction3, (Bundle) null);
                                        break;
                                    }
                                } catch (Exception unused) {
                                    return;
                                }
                            }
                            break;
                        case 4:
                            MediaBarFloaterService mediaBarFloaterService3 = this.b;
                            Set set = MediaBarFloaterService.f1060v;
                            mediaBarFloaterService3.getClass();
                            try {
                                Intent intent = new Intent("android.intent.action.MAIN");
                                intent.addCategory("android.intent.category.HOME");
                                intent.addFlags(268435456);
                                mediaBarFloaterService3.startActivity(intent);
                            } catch (Exception e3) {
                                Log.e("MediaBarFloater", "goHome falhou: " + e3.getMessage());
                                return;
                            }
                            break;
                        case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                            MediaBarFloaterService mediaBarFloaterService4 = this.b;
                            Set set2 = MediaBarFloaterService.f1060v;
                            mediaBarFloaterService4.c();
                            break;
                        default:
                            MediaBarFloaterService mediaBarFloaterService5 = this.b;
                            Set set3 = MediaBarFloaterService.f1060v;
                            mediaBarFloaterService5.c();
                            break;
                    }
                }
            });
            linearLayout.addView(imageView10);
            frameLayout.addView(linearLayout);
            this.f1064e = imageView5;
            this.f = imageView6;
            this.f1065g = textView;
            this.f1066h = textView2;
            this.f1067i = imageView8;
            this.f1068j = imageView10;
            WindowManager.LayoutParams layoutParams7 = new WindowManager.LayoutParams(612, 112, 2024, 776, -3);
            layoutParams7.gravity = 8388691;
            layoutParams7.x = 0;
            layoutParams7.y = 0;
            try {
                WindowManager windowManager = this.f1061a;
                if (windowManager == null) {
                    g.h("wm");
                    throw null;
                }
                windowManager.addView(frameLayout, layoutParams7);
                this.f1063d = frameLayout;
            } catch (Throwable th) {
                Log.e("MediaBarFloater", "addView floater falhou: " + th.getMessage());
            }
        }
        CharSequence text = metadata.getText("android.media.metadata.TITLE");
        String str = "";
        String str2 = (text == null || (string3 = text.toString()) == null) ? "" : string3;
        CharSequence text2 = metadata.getText("android.media.metadata.ARTIST");
        if (text2 == null || (string = text2.toString()) == null) {
            CharSequence text3 = metadata.getText("android.media.metadata.ALBUM_ARTIST");
            string = text3 != null ? text3.toString() : "";
        }
        TextView textView3 = this.f1065g;
        if (textView3 != null) {
            textView3.setText(str2);
        }
        TextView textView4 = this.f1066h;
        if (textView4 != null) {
            textView4.setText(string);
        }
        Bitmap bitmap2 = metadata.getBitmap("android.media.metadata.ALBUM_ART");
        if (bitmap2 == null && (bitmap2 = metadata.getBitmap("android.media.metadata.ART")) == null) {
            bitmap2 = metadata.getBitmap("android.media.metadata.DISPLAY_ICON");
        }
        String str3 = str2 + '|' + string;
        if (bitmap2 != null) {
            ImageView imageView11 = this.f1064e;
            if (imageView11 != null) {
                imageView11.setImageBitmap(bitmap2);
            }
        } else {
            if (!g.a(this.f1071m, str3) || (bitmap = this.f1072n) == null) {
                ImageView imageView12 = this.f1064e;
                if (imageView12 != null) {
                    GradientDrawable gradientDrawable3 = new GradientDrawable();
                    gradientDrawable3.setShape(0);
                    gradientDrawable3.setCornerRadius(4.0f);
                    gradientDrawable3.setColor(-6114875);
                    imageView12.setImageDrawable(gradientDrawable3);
                }
                if (!g.a(this.f1071m, str3)) {
                    this.f1071m = str3;
                    this.f1072n = drawable;
                    String string4 = metadata.getString("android.media.metadata.ALBUM_ART_URI");
                    if (string4 == null && (string4 = metadata.getString("android.media.metadata.ART_URI")) == null) {
                        string4 = metadata.getString("android.media.metadata.DISPLAY_ICON_URI");
                    }
                    String str4 = string4;
                    CharSequence text4 = metadata.getText("android.media.metadata.ALBUM");
                    if (text4 != null && (string2 = text4.toString()) != null) {
                        str = string2;
                    }
                    if (str4 == null) {
                        StringBuilder sb = new StringBuilder("capa ausente — chaves do player (");
                        Set<String> setKeySet = metadata.keySet();
                        sb.append(setKeySet != null ? setKeySet.size() : 0);
                        sb.append("): ");
                        Set<String> setKeySet2 = metadata.keySet();
                        if (setKeySet2 != null) {
                            drawable2 = null;
                            strE0 = y1.g.e0(y1.g.h0(setKeySet2), ",", null, 62);
                        } else {
                            drawable2 = null;
                            strE0 = "(sem metadata)";
                        }
                        sb.append(strE0);
                        Log.i("MediaBarFloater", sb.toString());
                    } else {
                        drawable2 = null;
                    }
                    cg.i(this);
                    Bitmap bitmapD = cg.d(this, m.h(string, str, str2));
                    if (bitmapD != null) {
                        this.f1072n = bitmapD;
                        ImageView imageView13 = this.f1064e;
                        if (imageView13 != null) {
                            imageView13.setImageBitmap(bitmapD);
                        }
                    } else {
                        dd ddVar = new dd(this, str3, str2, string);
                        ed edVar = new ed(this, string, str, str2, ddVar);
                        if (str4 != null) {
                            cg.e(this, str4, new i9(ddVar, 3, edVar));
                        } else {
                            edVar.a();
                        }
                    }
                }
                imageView = this.f;
                if (imageView != null) {
                    String packageName = mediaController.getPackageName();
                    g.d(packageName, "getPackageName(...)");
                    try {
                        applicationIcon = getPackageManager().getApplicationIcon(packageName);
                    } catch (Exception unused) {
                        applicationIcon = drawable2;
                    }
                    imageView.setImageDrawable(applicationIcon);
                }
                if (state == 3) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                imageView2 = this.f1067i;
                if (imageView2 != null) {
                    if (z2) {
                        i3 = R.drawable.ic_floater_pause;
                    } else {
                        i3 = R.drawable.ic_floater_play;
                    }
                    imageView2.setImageResource(i3);
                }
                if (playbackState != null || (customActions = playbackState.getCustomActions()) == null) {
                    customAction = drawable2;
                } else {
                    Iterator<T> it = customActions.iterator();
                    loop0: while (true) {
                        if (!it.hasNext()) {
                            obj = drawable2;
                            break;
                        }
                        Object next = it.next();
                        PlaybackState.CustomAction customAction3 = (PlaybackState.CustomAction) next;
                        g.b(customAction3);
                        String lowerCase2 = (customAction3.getAction() + ' ' + ((Object) customAction3.getName())).toLowerCase(Locale.ROOT);
                        g.d(lowerCase2, "toLowerCase(...)");
                        if (!k.e0(lowerCase2, "não gost", false) && !k.e0(lowerCase2, "nao gost", false) && !k.e0(lowerCase2, "dislike", false)) {
                            List listU = f.U(new String[]{"coleç", "colecao", "collection", "biblioteca", "library", "favorit", "curtir", "like", "gostei", "gosto", "salvar", "saved", "heart"});
                            if (listU.isEmpty()) {
                                continue;
                            } else {
                                Iterator it2 = listU.iterator();
                                while (it2.hasNext()) {
                                    if (k.e0(lowerCase2, (String) it2.next(), false)) {
                                        obj = next;
                                        break loop0;
                                    }
                                }
                            }
                        }
                    }
                    customAction = (PlaybackState.CustomAction) obj;
                }
                if (customAction != 0) {
                    this.f1070l = customAction;
                }
                imageView3 = this.f1068j;
                if (imageView3 != null) {
                    customAction2 = this.f1070l;
                    if (customAction2 == null) {
                        imageView3.setVisibility(8);
                        return;
                    }
                    imageView3.setVisibility(0);
                    lowerCase = customAction2.getName().toString().toLowerCase(Locale.ROOT);
                    g.d(lowerCase, "toLowerCase(...)");
                    if (!k.e0(lowerCase, "remov", false) || k.e0(lowerCase, "remove", false) || k.e0(lowerCase, "saved", false) || k.e0(lowerCase, "salvo", false) || k.e0(lowerCase, "unsave", false) || k.e0(lowerCase, "marcado", false)) {
                        imageView3.setImageResource(R.drawable.ic_floater_heart_filled);
                        imageView3.clearColorFilter();
                    } else {
                        imageView3.setImageResource(R.drawable.ic_floater_heart);
                        imageView3.setColorFilter(a());
                        return;
                    }
                }
            }
            ImageView imageView14 = this.f1064e;
            if (imageView14 != null) {
                imageView14.setImageBitmap(bitmap);
            }
        }
        drawable2 = drawable;
        imageView = this.f;
        if (imageView != null) {
            String packageName2 = mediaController.getPackageName();
            g.d(packageName2, "getPackageName(...)");
            applicationIcon = getPackageManager().getApplicationIcon(packageName2);
            imageView.setImageDrawable(applicationIcon);
        }
        if (state == 3) {
            z2 = true;
        } else {
            z2 = false;
        }
        imageView2 = this.f1067i;
        if (imageView2 != null) {
            if (z2) {
                i3 = R.drawable.ic_floater_pause;
            } else {
                i3 = R.drawable.ic_floater_play;
            }
            imageView2.setImageResource(i3);
        }
        if (playbackState != null) {
            customAction = drawable2;
        } else {
            customAction = drawable2;
        }
        if (customAction != 0) {
            this.f1070l = customAction;
        }
        imageView3 = this.f1068j;
        if (imageView3 != null) {
            customAction2 = this.f1070l;
            if (customAction2 == null) {
                imageView3.setVisibility(8);
                return;
            }
            imageView3.setVisibility(0);
            lowerCase = customAction2.getName().toString().toLowerCase(Locale.ROOT);
            g.d(lowerCase, "toLowerCase(...)");
            if (k.e0(lowerCase, "remov", false)) {
            }
            imageView3.setImageResource(R.drawable.ic_floater_heart_filled);
            imageView3.clearColorFilter();
        }
    }

    public final void f(ArrayList arrayList) {
        Object next;
        Object next2;
        Object next3;
        List listM0 = arrayList;
        if (arrayList == null) {
            Collection collectionValues = this.f1074p.values();
            g.d(collectionValues, "<get-values>(...)");
            listM0 = y1.g.m0(collectionValues);
        }
        Iterator it = listM0.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            PlaybackState playbackState = ((MediaController) next).getPlaybackState();
            if (playbackState != null && playbackState.getState() == 3) {
                break;
            }
        }
        MediaController mediaController = (MediaController) next;
        if (mediaController == null) {
            Iterator it2 = listM0.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    next2 = null;
                    break;
                }
                next2 = it2.next();
                MediaController mediaController2 = (MediaController) next2;
                MediaSession.Token sessionToken = mediaController2.getSessionToken();
                MediaController mediaController3 = this.f1069k;
                if (g.a(sessionToken, mediaController3 != null ? mediaController3.getSessionToken() : null) && mediaController2.getMetadata() != null) {
                    break;
                }
            }
            mediaController = (MediaController) next2;
            if (mediaController == null) {
                Iterator it3 = listM0.iterator();
                do {
                    if (!it3.hasNext()) {
                        next3 = null;
                        break;
                    }
                    next3 = it3.next();
                } while (((MediaController) next3).getMetadata() == null);
                mediaController = (MediaController) next3;
                if (mediaController == null) {
                    mediaController = (MediaController) y1.g.b0(listM0);
                }
            }
        }
        if (mediaController == null) {
            this.f1069k = null;
            this.f1070l = null;
            this.f1071m = null;
            this.f1072n = null;
            b();
            return;
        }
        MediaSession.Token sessionToken2 = mediaController.getSessionToken();
        MediaController mediaController4 = this.f1069k;
        if (!g.a(sessionToken2, mediaController4 != null ? mediaController4.getSessionToken() : null)) {
            this.f1069k = mediaController;
            mediaController.getPackageName();
            this.f1070l = null;
            this.f1071m = null;
            this.f1072n = null;
        }
        e();
    }

    public final boolean g() {
        return (getResources().getConfiguration().uiMode & 48) == 32;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        g.e(configuration, "newConfig");
        super.onConfigurationChanged(configuration);
        boolean z2 = (configuration.uiMode & 48) == 32;
        if (Boolean.valueOf(z2).equals(this.f1073o)) {
            return;
        }
        this.f1073o = Boolean.valueOf(z2);
        Log.i("MediaBarFloater", "tema mudou (escuro=" + z2 + ") — redesenhando o floater");
        this.f1062c.post(new r(10, this));
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        this.f1062c.post(this.f1079u);
        Object systemService = getSystemService("window");
        g.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        this.f1061a = (WindowManager) systemService;
        Object systemService2 = getSystemService("media_session");
        g.c(systemService2, "null cannot be cast to non-null type android.media.session.MediaSessionManager");
        this.b = (MediaSessionManager) systemService2;
        startForeground(15072, t1.E(this, "media_bar_floater", "Mídia na barra", "Spotify/YT Music na barra", android.R.drawable.ic_media_play, null, 16));
        try {
            MediaSessionManager mediaSessionManager = this.b;
            if (mediaSessionManager == null) {
                g.h("msm");
                throw null;
            }
            mediaSessionManager.addOnActiveSessionsChangedListener(this.f1075q, null);
            d();
        } catch (Exception e3) {
            Log.e("MediaBarFloater", "addOnActiveSessionsChangedListener falhou: " + e3.getMessage());
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        this.f1062c.removeCallbacks(this.f1079u);
        try {
            MediaSessionManager mediaSessionManager = this.b;
            if (mediaSessionManager == null) {
                g.h("msm");
                throw null;
            }
            mediaSessionManager.removeOnActiveSessionsChangedListener(this.f1075q);
            Iterator it = this.f1074p.values().iterator();
            while (it.hasNext()) {
                try {
                    ((MediaController) it.next()).unregisterCallback(this.f1077s);
                } catch (Exception unused) {
                }
            }
            this.f1074p.clear();
            this.f1069k = null;
            this.f1070l = null;
            this.f1071m = null;
            this.f1072n = null;
            b();
            super.onDestroy();
        } catch (Exception unused2) {
        }
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i3, int i4) {
        d();
        return 1;
    }
}
