package w0;

import android.app.ActivityManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSessionManager;
import android.media.session.PlaybackState;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.util.Log;
import com.ecarx.eas.sdk.mediacenter.MediaCenterAPI;
import com.ecarx.eas.sdk.mediacenter.MusicPlaybackInfo;
import com.ex.auto.MediaCenterArtworkProvider;
import java.io.File;
import java.io.FileOutputStream;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class od {
    public static volatile boolean C;
    public static volatile String E;
    public static String G;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Context f3993c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static MediaCenterAPI f3994d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static Object f3995e;
    public static volatile boolean f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static volatile boolean f3996g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static MediaSessionManager f3997h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static md f3998i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static HandlerThread f3999j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static Handler f4000k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static volatile MediaController f4001l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static t8 f4002m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static String f4003n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static String f4004o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static long f4006q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static String f4007r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static String f4008s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static volatile PlaybackState.CustomAction f4009t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static String f4010u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static volatile boolean f4011v;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static volatile boolean f4014y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static volatile boolean f4015z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final od f3992a = new od();
    public static final Set b = k1.a.P("ecarx.xsf.mediacenter", "com.ecarx.mediacenter", "com.ecarx.multimedia", "com.android.bluetooth", "com.android.server.telecom");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f4005p = -1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final List f4012w = y1.f.U(new String[]{"com.njda.carplay", "com.njda.adapter/.view.CarplayMainActivity"});

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final List f4013x = k1.a.I("com.njda.");
    public static final nd A = new nd(0);
    public static volatile String B = "nenhuma";
    public static final kd D = new kd();
    public static final nd F = new nd(1);

    public static final void a() {
        try {
            MediaSessionManager mediaSessionManager = f3997h;
            h(mediaSessionManager != null ? mediaSessionManager.getActiveSessions(null) : null);
        } catch (Throwable unused) {
        }
    }

    public static String c() {
        String str = G;
        if (str != null) {
            return str;
        }
        Context context = f3993c;
        if (context == null) {
            return "";
        }
        String str2 = "android.resource://" + context.getPackageName() + "/mipmap/ic_launcher";
        G = str2;
        i2.g.b(str2);
        return str2;
    }

    public static void d() {
        MediaController mediaController = f4001l;
        t8 t8Var = f4002m;
        if (mediaController != null && t8Var != null) {
            try {
                mediaController.unregisterCallback(t8Var);
            } catch (Throwable unused) {
            }
        }
        f4001l = null;
        f4002m = null;
    }

    public static String e(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            byte[] bytes = str.getBytes(o2.a.f2622a);
            i2.g.d(bytes, "getBytes(...)");
            byte[] bArrDigest = messageDigest.digest(bytes);
            i2.g.d(bArrDigest, "digest(...)");
            String strSubstring = y1.f.b0(bArrDigest, new ya(9)).substring(0, 12);
            i2.g.d(strSubstring, "substring(...)");
            return strSubstring;
        } catch (Throwable unused) {
            return String.valueOf(str.hashCode());
        }
    }

    public static void f() {
        Context context;
        if (f3996g || (context = f3993c) == null) {
            return;
        }
        try {
            MediaCenterAPI mediaCenterAPI = MediaCenterAPI.get(context);
            f3994d = mediaCenterAPI;
            mediaCenterAPI.init(context, new n(5));
        } catch (Throwable th) {
            androidx.activity.result.b.s(th, new StringBuilder("initSdk falhou: "), "MediaCenterBridge");
            Handler handler = f4000k;
            if (handler != null) {
                handler.postDelayed(new r0(7), 2000L);
            }
        }
    }

    public static long g(PlaybackState playbackState) {
        if (playbackState == null) {
            return 0L;
        }
        long position = playbackState.getPosition();
        if (playbackState.getState() != 3) {
            return position;
        }
        return position + ((long) (playbackState.getPlaybackSpeed() * (SystemClock.elapsedRealtime() - playbackState.getLastPositionUpdateTime())));
    }

    /* JADX WARN: Code duplicated, block: B:63:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:64:0x00f6  */
    public static void h(List list) {
        Object obj;
        z5 z5Var;
        MediaController mediaController;
        Object obj2;
        if (f3996g) {
            return;
        }
        if (list == null) {
            list = y1.p.f4663a;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            MediaController mediaController2 = (MediaController) next;
            if (!b.contains(mediaController2.getPackageName())) {
                String packageName = mediaController2.getPackageName();
                Context context = f3993c;
                if (!i2.g.a(packageName, context != null ? context.getPackageName() : null)) {
                    arrayList.add(next);
                }
            }
        }
        ArrayList arrayList2 = new ArrayList(y1.i.X(arrayList));
        int size = arrayList.size();
        int i3 = 0;
        int i4 = 0;
        while (i4 < size) {
            Object obj3 = arrayList.get(i4);
            i4++;
            MediaController mediaController3 = (MediaController) obj3;
            String packageName2 = mediaController3.getPackageName();
            if (packageName2 == null) {
                packageName2 = "";
            }
            PlaybackState playbackState = mediaController3.getPlaybackState();
            boolean z2 = true;
            boolean z3 = playbackState != null && playbackState.getState() == 3;
            if (mediaController3.getMetadata() == null) {
                z2 = false;
            }
            arrayList2.add(new z5(packageName2, z3, z2));
        }
        MediaController mediaController4 = f4001l;
        String packageName3 = mediaController4 != null ? mediaController4.getPackageName() : null;
        ArrayList arrayList3 = new ArrayList();
        int size2 = arrayList2.size();
        int i5 = 0;
        while (i5 < size2) {
            Object obj4 = arrayList2.get(i5);
            i5++;
            if (((z5) obj4).f4615c) {
                arrayList3.add(obj4);
            }
        }
        int size3 = arrayList3.size();
        int i6 = 0;
        do {
            if (i6 >= size3) {
                obj = null;
                break;
            } else {
                obj = arrayList3.get(i6);
                i6++;
            }
        } while (!((z5) obj).b);
        z5 z5Var2 = (z5) obj;
        if (z5Var2 != null) {
            packageName3 = z5Var2.f4614a;
        } else if (packageName3 == null || arrayList3.isEmpty()) {
            z5Var = (z5) y1.g.b0(arrayList3);
            if (z5Var != null) {
                packageName3 = z5Var.f4614a;
            } else {
                packageName3 = null;
            }
        } else {
            int size4 = arrayList3.size();
            int i7 = 0;
            while (true) {
                if (i7 < size4) {
                    Object obj5 = arrayList3.get(i7);
                    i7++;
                    if (((z5) obj5).f4614a.equals(packageName3)) {
                    }
                } else {
                    z5Var = (z5) y1.g.b0(arrayList3);
                    if (z5Var != null) {
                        packageName3 = z5Var.f4614a;
                    } else {
                        packageName3 = null;
                    }
                }
            }
        }
        if (packageName3 != null) {
            int size5 = arrayList.size();
            do {
                if (i3 >= size5) {
                    obj2 = null;
                    break;
                } else {
                    obj2 = arrayList.get(i3);
                    i3++;
                }
            } while (!i2.g.a(((MediaController) obj2).getPackageName(), packageName3));
            mediaController = (MediaController) obj2;
        } else {
            mediaController = null;
        }
        if (mediaController == null) {
            return;
        }
        MediaController mediaController5 = f4001l;
        if (i2.g.a(mediaController5 != null ? mediaController5.getSessionToken() : null, mediaController.getSessionToken())) {
            return;
        }
        d();
        f4001l = mediaController;
        t8 t8Var = new t8(3, mediaController);
        f4002m = t8Var;
        try {
            Handler handler = f4000k;
            i2.g.b(handler);
            mediaController.registerCallback(t8Var, handler);
            Log.i("MediaCenterBridge", "espelhando " + mediaController.getPackageName());
            k(mediaController);
        } catch (Throwable th) {
            Log.w("MediaCenterBridge", "registerCallback controller: " + th.getMessage() + " — não espelho " + mediaController.getPackageName());
            f4001l = null;
            f4002m = null;
        }
    }

    public static MusicPlaybackInfo j(String str) {
        MusicPlaybackInfo musicPlaybackInfo = new MusicPlaybackInfo();
        musicPlaybackInfo.setTitle("—");
        musicPlaybackInfo.setArtist("—");
        musicPlaybackInfo.setAlbum("");
        musicPlaybackInfo.setAppName("EX Sapo");
        musicPlaybackInfo.setPackageName(str);
        musicPlaybackInfo.setPlaybackStatus(0);
        musicPlaybackInfo.setSourceType(6);
        musicPlaybackInfo.setMediaType("music");
        musicPlaybackInfo.setAppIcon(c());
        musicPlaybackInfo.setPlayingMediaListId(str.concat("-play-list-common"));
        musicPlaybackInfo.setUuid(s("", "", null));
        return musicPlaybackInfo;
    }

    /* JADX WARN: Code duplicated, block: B:173:0x0290  */
    /* JADX WARN: Code duplicated, block: B:214:0x037f  */
    public static void k(MediaController mediaController) {
        MediaCenterAPI mediaCenterAPI;
        Object obj;
        String string;
        CharSequence text;
        String string2;
        String string3;
        Bitmap bitmap;
        String string4;
        String strN;
        PlaybackState playbackState;
        PlaybackState.CustomAction customAction;
        boolean z2;
        String packageName;
        PendingIntent broadcast;
        Intent launchIntentForPackage;
        List<PlaybackState.CustomAction> customActions;
        Object next;
        String strF;
        CharSequence text2;
        CharSequence text3;
        if (!f || f3996g || (mediaCenterAPI = f3994d) == null || (obj = f3995e) == null) {
            return;
        }
        if (!mediaCenterAPI.isServiceAlive()) {
            l();
            return;
        }
        MediaMetadata metadata = mediaController.getMetadata();
        PlaybackState playbackState2 = mediaController.getPlaybackState();
        int state = playbackState2 != null ? playbackState2.getState() : 0;
        int i3 = (state == 3 || state == 6 || state == 4 || state == 5) ? 1 : 0;
        if (metadata == null || (text3 = metadata.getText("android.media.metadata.TITLE")) == null || (string = text3.toString()) == null) {
            string = "";
        }
        if (metadata == null || (text = metadata.getText("android.media.metadata.ARTIST")) == null) {
            text = metadata != null ? metadata.getText("android.media.metadata.ALBUM_ARTIST") : null;
            if (text == null) {
                text = metadata != null ? metadata.getText("android.media.metadata.DISPLAY_SUBTITLE") : null;
            }
        }
        if (text == null || (string2 = text.toString()) == null) {
            string2 = "";
        }
        if (metadata == null || (text2 = metadata.getText("android.media.metadata.ALBUM")) == null || (string3 = text2.toString()) == null) {
            string3 = "";
        }
        long j3 = metadata != null ? metadata.getLong("android.media.metadata.DURATION") : 0L;
        long position = playbackState2 != null ? playbackState2.getPosition() : 0L;
        if (string.equals(f4003n) && string2.equals(f4004o) && i3 == f4005p && !f4011v && f4003n != null) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (jElapsedRealtime - f4006q >= 1000) {
                f4006q = jElapsedRealtime;
                if (position > 0) {
                    try {
                        mediaCenterAPI.updateCurrentProgress(obj, position);
                    } catch (Throwable unused) {
                    }
                }
                long jG = g(playbackState2);
                List list = (List) m8.b.get(k8.a(string, string2));
                if (list != null && (strF = m8.f(list, jG)) != null && !strF.equals(f4010u)) {
                    f4010u = strF;
                    try {
                        mediaCenterAPI.updateCurrentLyric(obj, strF);
                    } catch (Throwable unused2) {
                    }
                }
                if (i3 != 0) {
                    m(mediaCenterAPI, obj);
                    return;
                }
                return;
            }
            return;
        }
        f4011v = false;
        String str = string + '|' + string2;
        if (!i2.g.a(str, f4007r) || (strN = f4008s) == null) {
            if (metadata == null || (bitmap = metadata.getBitmap("android.media.metadata.ALBUM_ART")) == null) {
                bitmap = metadata != null ? metadata.getBitmap("android.media.metadata.ART") : null;
                if (bitmap == null) {
                    bitmap = metadata != null ? metadata.getBitmap("android.media.metadata.DISPLAY_ICON") : null;
                }
            }
            if (bitmap == null || (strN = n(bitmap, str)) == null) {
                if (metadata == null || (string4 = metadata.getString("android.media.metadata.ALBUM_ART_URI")) == null) {
                    string4 = metadata != null ? metadata.getString("android.media.metadata.ART_URI") : null;
                    if (string4 == null) {
                        string4 = metadata != null ? metadata.getString("android.media.metadata.DISPLAY_ICON_URI") : null;
                    }
                }
                Context context = f3993c;
                if (string4 != null && context != null) {
                    cg.i(context);
                    cg.e(context, string4, new r(2, str));
                }
                strN = null;
            }
        }
        if (playbackState2 == null || (customActions = playbackState2.getCustomActions()) == null) {
            playbackState = playbackState2;
            customAction = null;
        } else {
            Iterator<T> it = customActions.iterator();
            loop0: while (true) {
                if (!it.hasNext()) {
                    playbackState = playbackState2;
                    next = null;
                    break;
                }
                next = it.next();
                PlaybackState.CustomAction customAction2 = (PlaybackState.CustomAction) next;
                i2.g.b(customAction2);
                StringBuilder sb = new StringBuilder();
                playbackState = playbackState2;
                sb.append(customAction2.getAction());
                sb.append(' ');
                sb.append((Object) customAction2.getName());
                String lowerCase = sb.toString().toLowerCase(Locale.ROOT);
                i2.g.d(lowerCase, "toLowerCase(...)");
                if (!o2.k.e0(lowerCase, "não gost", false) && !o2.k.e0(lowerCase, "nao gost", false) && !o2.k.e0(lowerCase, "dislike", false)) {
                    List listU = y1.f.U(new String[]{"coleç", "colecao", "collection", "biblioteca", "library", "favorit", "curtir", "like", "gostei", "gosto", "salvar", "saved", "heart"});
                    if (listU.isEmpty()) {
                        continue;
                    } else {
                        Iterator it2 = listU.iterator();
                        while (it2.hasNext()) {
                            Iterator it3 = it2;
                            if (o2.k.e0(lowerCase, (String) it2.next(), false)) {
                                break loop0;
                            } else {
                                it2 = it3;
                            }
                        }
                    }
                }
                playbackState2 = playbackState;
            }
            customAction = (PlaybackState.CustomAction) next;
        }
        f4009t = customAction;
        if (customAction != null) {
            String lowerCase2 = customAction.getName().toString().toLowerCase(Locale.ROOT);
            i2.g.d(lowerCase2, "toLowerCase(...)");
            if (o2.k.e0(lowerCase2, "remov", false) || o2.k.e0(lowerCase2, "remove", false) || o2.k.e0(lowerCase2, "saved", false) || o2.k.e0(lowerCase2, "salvo", false) || o2.k.e0(lowerCase2, "unsave", false) || o2.k.e0(lowerCase2, "marcado", false)) {
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            z2 = false;
        }
        List list2 = (List) m8.b.get(k8.a(string, string2));
        if (list2 == null && string.length() > 0) {
            m8.d(string, string2, j3, new w5(9));
        }
        Context context2 = f3993c;
        if (context2 == null) {
            return;
        }
        String packageName2 = context2.getPackageName();
        MusicPlaybackInfo musicPlaybackInfo = new MusicPlaybackInfo();
        musicPlaybackInfo.setTitle(string.length() == 0 ? "—" : string);
        musicPlaybackInfo.setArtist(string2.length() == 0 ? "—" : string2);
        musicPlaybackInfo.setAlbum(string3);
        if (strN != null) {
            musicPlaybackInfo.setArtwork(Uri.parse(strN));
        }
        musicPlaybackInfo.setDuration(j3);
        musicPlaybackInfo.setPlaybackStatus(i3);
        musicPlaybackInfo.setSourceType(6);
        String packageName3 = mediaController.getPackageName();
        if (packageName3 == null) {
            packageName3 = "EX Sapo";
        } else {
            try {
                Context context3 = f3993c;
                i2.g.b(context3);
                PackageManager packageManager = context3.getPackageManager();
                packageName3 = packageManager.getApplicationLabel(packageManager.getApplicationInfo(packageName3, 0)).toString();
            } catch (Throwable unused3) {
            }
        }
        musicPlaybackInfo.setAppName(packageName3);
        musicPlaybackInfo.setPackageName(packageName2);
        musicPlaybackInfo.setAppIcon(c());
        musicPlaybackInfo.setSupportLoopModeSwitch(true);
        musicPlaybackInfo.setSupportVrCtrlPlayStatus(true);
        musicPlaybackInfo.setMediaType("music");
        musicPlaybackInfo.setPlayingMediaListId(packageName2 + "-play-list-common");
        musicPlaybackInfo.setUuid(s(string, string2, string3));
        if (customAction != null) {
            musicPlaybackInfo.setSupportCollect(true);
            musicPlaybackInfo.setCollected(z2);
        }
        if (list2 != null) {
            String str2 = (String) m8.f3900c.get(k8.a(string, string2));
            if (str2 == null) {
                str2 = "";
            }
            musicPlaybackInfo.setLyricContent(str2);
            String strF2 = m8.f(list2, g(playbackState));
            musicPlaybackInfo.setCurrentLyricSentence(strF2 != null ? strF2 : "");
            musicPlaybackInfo.setLyric(Uri.EMPTY);
        }
        PendingIntent sessionActivity = mediaController.getSessionActivity();
        if (sessionActivity == null) {
            Context context4 = f3993c;
            if (context4 == null || (packageName = mediaController.getPackageName()) == null) {
                sessionActivity = null;
            } else {
                if (packageName.equals("com.njda.aauto") || packageName.equals("com.google.android.projection.gearhead")) {
                    try {
                        broadcast = PendingIntent.getBroadcast(context4, packageName.hashCode() & 65535, new Intent("com.bd.systemui.aa.foreground"), 201326592);
                    } catch (Throwable unused4) {
                        broadcast = null;
                    }
                } else {
                    broadcast = null;
                }
                if (broadcast != null) {
                    sessionActivity = broadcast;
                } else {
                    try {
                        launchIntentForPackage = context4.getPackageManager().getLaunchIntentForPackage(packageName);
                    } catch (Throwable unused5) {
                        launchIntentForPackage = null;
                    }
                    if (launchIntentForPackage == null) {
                        sessionActivity = null;
                    } else {
                        try {
                            sessionActivity = PendingIntent.getActivity(context4, packageName.hashCode() & 65535, launchIntentForPackage, 201326592);
                        } catch (Throwable unused6) {
                            sessionActivity = null;
                        }
                    }
                }
            }
        }
        if (sessionActivity != null) {
            musicPlaybackInfo.setLaunchIntent(sessionActivity);
            musicPlaybackInfo.setPlayerIntent(sessionActivity);
        }
        if (i3 != 0) {
            try {
                m(mediaCenterAPI, obj);
            } catch (Throwable th) {
                Log.w("MediaCenterBridge", "publish IPC falhou: " + th.getMessage());
                l();
                return;
            }
        }
        Log.i("MediaCenterBridge", "publish " + mediaController.getPackageName() + " status=" + i3 + " [" + string + '/' + string2 + ']');
        md mdVar = f3998i;
        if (mdVar != null) {
            musicPlaybackInfo.setPlayingItemPositionInQueue(0);
            mdVar.f3915a = musicPlaybackInfo;
        }
        mediaCenterAPI.updateMusicPlaybackState(obj, musicPlaybackInfo);
        mediaCenterAPI.updateCurrentProgress(obj, 0L);
        mediaCenterAPI.updatePlayState(packageName2, i3, 0);
        if (!string.equals(f4003n) || !string2.equals(f4004o)) {
            f4010u = null;
        }
        f4003n = string;
        f4004o = string2;
        f4005p = i3;
        f4006q = SystemClock.elapsedRealtime();
    }

    public static void l() {
        if (f3996g) {
            return;
        }
        Log.w("MediaCenterBridge", "sessão obsoleta — re-registrando");
        f = false;
        f3995e = null;
        f4003n = null;
        f4004o = null;
        f4005p = -1;
        MediaCenterAPI mediaCenterAPI = f3994d;
        if (mediaCenterAPI != null) {
            Handler handler = f4000k;
            if (handler != null) {
                handler.post(new a1.r(12, mediaCenterAPI));
                return;
            }
            return;
        }
        Handler handler2 = f4000k;
        if (handler2 != null) {
            handler2.post(new r0(13));
        }
    }

    public static void m(MediaCenterAPI mediaCenterAPI, Object obj) {
        try {
            String strQueryCurrentFocusClient = mediaCenterAPI.queryCurrentFocusClient(obj);
            Context context = f3993c;
            String packageName = context != null ? context.getPackageName() : null;
            if (strQueryCurrentFocusClient == null || strQueryCurrentFocusClient.length() == 0 || o2.t.d0(strQueryCurrentFocusClient, "android.uid.system")) {
                return;
            }
            if (packageName == null || !o2.t.d0(strQueryCurrentFocusClient, packageName)) {
                if (!f4014y) {
                    List list = f4013x;
                    if (list == null || !list.isEmpty()) {
                        Iterator it = list.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                if (o2.t.d0(strQueryCurrentFocusClient, (String) it.next())) {
                                }
                            }
                        }
                    }
                    if (mediaCenterAPI.requestPlay(obj)) {
                        mediaCenterAPI.updateCurrentSourceType(obj, 6);
                        return;
                    }
                    return;
                }
                if (strQueryCurrentFocusClient.equals(E)) {
                    return;
                }
                E = strQueryCurrentFocusClient;
                Log.i("MediaCenterBridge", "foco com " + strQueryCurrentFocusClient + " (projeção) — não reivindico");
            }
        } catch (Throwable unused) {
        }
    }

    public static String n(Bitmap bitmap, String str) {
        Context context = f3993c;
        if (context == null) {
            return null;
        }
        try {
            int i3 = MediaCenterArtworkProvider.f1097a;
            File file = new File(context.getFilesDir(), "mediabridge_artwork");
            if (!file.exists()) {
                file.mkdirs();
            }
            String str2 = "art_" + e(str) + ".png";
            File file2 = new File(file, str2);
            if (!file2.exists()) {
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                try {
                    bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                    fileOutputStream.close();
                    try {
                        File[] fileArrListFiles = file.listFiles();
                        if (fileArrListFiles != null && fileArrListFiles.length > 10) {
                            for (File file3 : y1.g.j0(y1.f.e0(fileArrListFiles, new b6(9)), fileArrListFiles.length - 10)) {
                                if (!i2.g.a(file3.getName(), str2)) {
                                    file3.delete();
                                }
                            }
                        }
                    } catch (Throwable unused) {
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        a1.b.p(fileOutputStream, th);
                        throw th2;
                    }
                }
            }
            int i4 = MediaCenterArtworkProvider.f1097a;
            i2.g.e(str2, "fileName");
            Uri uri = Uri.parse("content://com.ex.auto.mediabridge.artwork/".concat(str2));
            i2.g.d(uri, "parse(...)");
            String string = uri.toString();
            i2.g.d(string, "toString(...)");
            f4007r = str;
            f4008s = string;
            return string;
        } catch (Throwable th3) {
            androidx.activity.result.b.s(th3, new StringBuilder("saveArtBitmap falhou: "), "MediaCenterBridge");
            return null;
        }
    }

    public static void o(boolean z2) {
        if (f4014y == z2) {
            return;
        }
        f4014y = z2;
        Log.i("MediaCenterBridge", "CarPlay conectado=" + z2);
        Handler handler = f4000k;
        if (handler != null) {
            handler.post(new y1(1, z2));
        }
    }

    public static void r() {
        MediaController.TransportControls transportControls;
        PlaybackState.CustomAction customAction = f4009t;
        if (customAction == null) {
            return;
        }
        try {
            MediaController mediaController = f4001l;
            if (mediaController == null || (transportControls = mediaController.getTransportControls()) == null) {
                return;
            }
            transportControls.sendCustomAction(customAction, (Bundle) null);
        } catch (Throwable unused) {
        }
    }

    public static String s(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append('|');
        sb.append(str2);
        sb.append('|');
        if (str3 == null) {
            str3 = "";
        }
        sb.append(str3);
        String string = sb.toString();
        try {
            byte[] bytes = string.getBytes(o2.a.f2622a);
            i2.g.d(bytes, "getBytes(...)");
            return UUID.nameUUIDFromBytes(bytes).toString();
        } catch (Throwable unused) {
            return String.valueOf(string.hashCode());
        }
    }

    public final void b(String str) {
        boolean z2;
        if (f3996g) {
            return;
        }
        boolean z3 = true;
        if (!f4014y) {
            Context context = f3993c;
            if (context == null) {
                z2 = f4015z;
            } else {
                try {
                    Object systemService = context.getSystemService("activity");
                    i2.g.c(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
                    List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) systemService).getRunningTasks(1);
                    i2.g.d(runningTasks, "getRunningTasks(...)");
                    ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) y1.g.b0(runningTasks);
                    ComponentName componentName = runningTaskInfo != null ? runningTaskInfo.topActivity : null;
                    if (componentName != null) {
                        String strFlattenToShortString = componentName.flattenToShortString();
                        i2.g.d(strFlattenToShortString, "flattenToShortString(...)");
                        B = "tasks";
                        List list = f4012w;
                        if (list == null || !list.isEmpty()) {
                            Iterator it = list.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    if (o2.k.e0(strFlattenToShortString, (String) it.next(), false)) {
                                        z2 = true;
                                    }
                                }
                            }
                        }
                        z2 = false;
                    } else {
                        try {
                            String strB = new kotlinx.coroutines.scheduling.h(5555).b(3000, "dumpsys activity activities 2>/dev/null | grep mResumedActivity");
                            B = "adb";
                            List list2 = f4012w;
                            if (list2 == null || !list2.isEmpty()) {
                                Iterator it2 = list2.iterator();
                                while (true) {
                                    if (it2.hasNext()) {
                                        String str2 = (String) it2.next();
                                        i2.g.b(strB);
                                        if (o2.k.e0(strB, str2, false)) {
                                            z2 = true;
                                        }
                                    }
                                }
                            }
                        } catch (Throwable unused) {
                            if (f4015z && !f4014y) {
                                z2 = true;
                            }
                        }
                        z2 = false;
                    }
                } catch (Throwable unused2) {
                }
            }
            if (!z2) {
                z3 = false;
            }
        }
        if (z3 == f4015z) {
            return;
        }
        f4015z = z3;
        if (!z3) {
            Log.i("MediaCenterBridge", "sem projeção (" + str + ") — voltando a registrar no MediaCenter");
            ae aeVar = ae.f3361a;
            ae.b("MediaCenterBridge", "ponte MediaCenter religada (sem projeção)", false);
            i();
            return;
        }
        String strJ = f4014y ? "CarPlay conectado" : androidx.activity.result.b.j(new StringBuilder("projeção em tela cheia (sonda "), B, ')');
        Log.i("MediaCenterBridge", strJ + " (" + str + ") — saindo do registro do MediaCenter");
        ae aeVar2 = ae.f3361a;
        StringBuilder sb = new StringBuilder("ponte MediaCenter suspensa (");
        sb.append(strJ);
        sb.append(')');
        ae.b("MediaCenterBridge", sb.toString(), false);
        MediaCenterAPI mediaCenterAPI = f3994d;
        Object obj = f3995e;
        if (mediaCenterAPI != null && obj != null) {
            try {
                mediaCenterAPI.unregister(obj);
            } catch (Throwable unused3) {
            }
        }
        f3995e = null;
        f = false;
        C = false;
    }

    public final void i() {
        MediaCenterAPI mediaCenterAPI;
        Context context;
        if (f4015z || f || f3996g || (mediaCenterAPI = f3994d) == null || (context = f3993c) == null) {
            return;
        }
        String packageName = context.getPackageName();
        try {
            Object objRegisterMusic = mediaCenterAPI.registerMusic(packageName, f3998i);
            if (objRegisterMusic == null) {
                Log.e("MediaCenterBridge", "registerMusic devolveu null — reagenda");
                Handler handler = f4000k;
                if (handler != null) {
                    handler.postDelayed(new a1.r(11, this), 2000L);
                    return;
                }
                return;
            }
            f3995e = objRegisterMusic;
            f = true;
            mediaCenterAPI.updateMediaSourceTypeList(objRegisterMusic, new int[]{6});
            mediaCenterAPI.declareMediaCenterCapability(objRegisterMusic, new int[]{0, 2, 3});
            mediaCenterAPI.declareSupportCollectTypes(objRegisterMusic, new int[]{0, 3, 4});
            Log.i("MediaCenterBridge", "registrado no MediaCenter (token=" + objRegisterMusic + ')');
            Handler handler2 = f4000k;
            if (handler2 != null) {
                handler2.removeCallbacks(A);
            }
            Handler handler3 = f4000k;
            if (handler3 != null) {
                handler3.postDelayed(A, 5000L);
            }
            md mdVar = f3998i;
            if (mdVar != null) {
                i2.g.b(packageName);
                MusicPlaybackInfo musicPlaybackInfoJ = j(packageName);
                musicPlaybackInfoJ.setPlayingItemPositionInQueue(0);
                mdVar.f3915a = musicPlaybackInfoJ;
            }
            MediaSessionManager mediaSessionManager = f3997h;
            if (mediaSessionManager != null) {
                try {
                    kd kdVar = D;
                    Handler handler4 = f4000k;
                    i2.g.b(handler4);
                    mediaSessionManager.addOnActiveSessionsChangedListener(kdVar, null, handler4);
                    h(mediaSessionManager.getActiveSessions(null));
                } catch (Throwable th) {
                    androidx.activity.result.b.s(th, new StringBuilder("addOnActiveSessionsChangedListener falhou: "), "MediaCenterBridge");
                }
            }
            Handler handler5 = f4000k;
            if (handler5 != null) {
                handler5.postDelayed(F, 10000L);
            }
        } catch (Throwable th2) {
            androidx.activity.result.b.s(th2, new StringBuilder("performRegistration falhou: "), "MediaCenterBridge");
            f = false;
            f3995e = null;
            Handler handler6 = f4000k;
            if (handler6 != null) {
                handler6.postDelayed(new r0(11), 2000L);
            }
        }
    }

    public final synchronized void p(Context context) {
        i2.g.e(context, "context");
        if (f3993c != null) {
            Log.i("MediaCenterBridge", "start: já ativo");
            return;
        }
        f3996g = false;
        f4015z = f4014y;
        Context applicationContext = context.getApplicationContext();
        f3993c = applicationContext;
        i2.g.b(applicationContext);
        HandlerThread handlerThread = new HandlerThread("MediaCenterBridge");
        handlerThread.start();
        f3999j = handlerThread;
        HandlerThread handlerThread2 = f3999j;
        i2.g.b(handlerThread2);
        f4000k = new Handler(handlerThread2.getLooper());
        Object systemService = applicationContext.getSystemService("media_session");
        f3997h = systemService instanceof MediaSessionManager ? (MediaSessionManager) systemService : null;
        f3998i = new md();
        Log.i("MediaCenterBridge", "start: inicializando SDK MediaCenter");
        Handler handler = f4000k;
        i2.g.b(handler);
        handler.post(new r0(12));
    }

    public final synchronized void q() {
        if (f3993c == null) {
            return;
        }
        Log.i("MediaCenterBridge", "stop");
        f3996g = true;
        Handler handler = f4000k;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        try {
            d();
        } catch (Throwable unused) {
        }
        try {
            MediaSessionManager mediaSessionManager = f3997h;
            if (mediaSessionManager != null) {
                mediaSessionManager.removeOnActiveSessionsChangedListener(D);
            }
        } catch (Throwable unused2) {
        }
        MediaCenterAPI mediaCenterAPI = f3994d;
        Object obj = f3995e;
        Handler handler2 = f4000k;
        if (handler2 != null) {
            handler2.post(new ab(mediaCenterAPI, 3, obj));
        }
        HandlerThread handlerThread = f3999j;
        if (handlerThread != null) {
            handlerThread.quitSafely();
        }
        f3999j = null;
        f4000k = null;
        f3994d = null;
        f3995e = null;
        f = false;
        C = false;
        f4001l = null;
        f4002m = null;
        f3997h = null;
        f3998i = null;
        f3993c = null;
        f4003n = null;
        f4004o = null;
        f4005p = -1;
    }
}
