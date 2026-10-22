package com.ex.auto;

import a1.i;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.MediaSessionManager;
import android.media.session.PlaybackState;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.activity.d;
import com.ex.auto.LyricsFloaterService;
import h2.a;
import h2.l;
import i2.g;
import i2.j;
import java.io.File;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import o2.k;
import w0.e8;
import w0.f7;
import w0.g9;
import w0.h0;
import w0.k8;
import w0.m8;
import w0.n8;
import w0.o8;
import w0.p8;
import w0.r8;
import w0.t1;
import w0.t8;
import w0.u8;
import w0.w;
import w0.yd;
import y1.p;

/* JADX INFO: loaded from: classes.dex */
public final class LyricsFloaterService extends Service {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final Set f982v = MediaBarFloaterService.f1060v;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WindowManager f983a;
    public MediaSessionManager b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public MediaController f986e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public List f988h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public FrameLayout f990j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public TextView f991k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public WindowManager.LayoutParams f992l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public FrameLayout f993m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public FrameLayout f994n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public LinearLayout f995o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ScrollView f996p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f997q;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Handler f984c = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap f985d = new HashMap();
    public String f = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f987g = "";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f989i = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final r8 f998r = new r8(this, 0);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final t8 f999s = new t8(0, this);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final d f1000t = new d(15, this);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final long f1001u = 100;

    public static final TextView m(LyricsFloaterService lyricsFloaterService, String str) {
        TextView textView = new TextView(lyricsFloaterService);
        textView.setText(str);
        textView.setTextColor(-1);
        textView.setTextSize(15.0f);
        textView.setPadding(0, lyricsFloaterService.d(14), 0, lyricsFloaterService.d(4));
        return textView;
    }

    public static final TextView o(LyricsFloaterService lyricsFloaterService, float f, String str, a aVar) {
        TextView textView = new TextView(lyricsFloaterService);
        textView.setText(str);
        textView.setTextColor(-855638017);
        textView.setTextSize(f * 13.0f);
        textView.setGravity(17);
        textView.setOnClickListener(new w(aVar, 3));
        return textView;
    }

    public final void a(long j3) {
        long jL;
        if (k.m0(this.f)) {
            return;
        }
        ExecutorService executorService = m8.f3899a;
        String str = this.f;
        String str2 = this.f987g;
        g.e(str, "title");
        g.e(str2, "artist");
        try {
            SharedPreferences sharedPreferences = getSharedPreferences("lyrics_sync_offsets", 0);
            String strA = k8.a(str, str2);
            jL = k1.a.l(sharedPreferences.getLong(strA, 0L) + j3, -10000L, 10000L);
            sharedPreferences.edit().putLong(strA, jL).apply();
        } catch (Throwable unused) {
            jL = 0;
        }
        this.f989i = Integer.MIN_VALUE;
        String str3 = jL > 0 ? "+" : "";
        TextView textView = this.f991k;
        if (textView != null) {
            textView.setText("⏱ " + str3 + jL + " ms");
        }
        this.f984c.postDelayed(new n8(this, 2), 500L);
    }

    @Override // android.app.Service, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        g.e(context, "base");
        super.attachBaseContext(e8.p(context));
    }

    public final void b() {
        FrameLayout frameLayout = this.f993m;
        if (frameLayout != null && frameLayout.getParent() != null) {
            try {
                WindowManager windowManager = this.f983a;
                if (windowManager == null) {
                    g.h("wm");
                    throw null;
                }
                windowManager.removeView(frameLayout);
            } catch (Throwable unused) {
            }
        }
        this.f993m = null;
    }

    public final void c() {
        FrameLayout frameLayout = this.f994n;
        if (frameLayout != null && frameLayout.getParent() != null) {
            try {
                WindowManager windowManager = this.f983a;
                if (windowManager == null) {
                    g.h("wm");
                    throw null;
                }
                windowManager.removeView(frameLayout);
            } catch (Throwable unused) {
            }
        }
        this.f994n = null;
        this.f995o = null;
        this.f996p = null;
        this.f997q = false;
    }

    public final int d(int i3) {
        return (int) ((i3 * getResources().getDisplayMetrics().density) + 0.5f);
    }

    public final void e() {
        FrameLayout frameLayout = this.f990j;
        if (frameLayout != null && frameLayout.getParent() != null) {
            try {
                WindowManager windowManager = this.f983a;
                if (windowManager == null) {
                    g.h("wm");
                    throw null;
                }
                windowManager.removeView(frameLayout);
            } catch (Throwable unused) {
            }
        }
        this.f990j = null;
        this.f991k = null;
        this.f992l = null;
    }

    public final void f(int i3) {
        ScrollView scrollView;
        int i4;
        LinearLayout linearLayout = this.f995o;
        if (linearLayout == null) {
            return;
        }
        int i5 = 0;
        int i6 = getSharedPreferences("lyrics_style_config", 0).getInt("font", -14829228);
        float fJ = k1.a.j(getSharedPreferences("lyrics_style_config", 0).getFloat("scale", 1.0f), 0.6f, 2.0f);
        int childCount = linearLayout.getChildCount();
        while (i5 < childCount) {
            View childAt = linearLayout.getChildAt(i5);
            TextView textView = childAt instanceof TextView ? (TextView) childAt : null;
            if (textView != null) {
                if (i5 == i3) {
                    i4 = i6;
                } else {
                    i4 = Math.abs(i5 - i3) <= 2 ? -6642775 : -10854041;
                }
                textView.setTextColor(i4);
                textView.setTextSize((i5 == i3 ? 23.0f : 19.0f) * fJ);
            }
            i5++;
        }
        View childAt2 = linearLayout.getChildAt(i3);
        if (childAt2 == null || (scrollView = this.f996p) == null) {
            return;
        }
        scrollView.post(new i(this, 21, childAt2));
    }

    public final void g() {
        LinearLayout linearLayout = this.f995o;
        if (linearLayout == null) {
            return;
        }
        linearLayout.removeAllViews();
        List<x1.a> list = this.f988h;
        if (list == null) {
            return;
        }
        int i3 = 0;
        for (x1.a aVar : list) {
            int i4 = i3 + 1;
            TextView textView = new TextView(this);
            CharSequence charSequence = (CharSequence) aVar.b;
            if (charSequence.length() == 0) {
                charSequence = "♪";
            }
            textView.setText(charSequence);
            textView.setTextColor(-10854041);
            textView.setTextSize(19.0f);
            textView.setPadding(0, 14, 0, 14);
            textView.setTag(Integer.valueOf(i3));
            linearLayout.addView(textView);
            i3 = i4;
        }
        f(this.f989i);
    }

    public final void h() {
        List<MediaController> activeSessions;
        t8 t8Var;
        try {
            MediaSessionManager mediaSessionManager = this.b;
            if (mediaSessionManager == null) {
                g.h("msm");
                throw null;
            }
            activeSessions = mediaSessionManager.getActiveSessions(null);
            ArrayList arrayList = new ArrayList();
            for (Object obj : activeSessions) {
                if (f982v.contains(((MediaController) obj).getPackageName())) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(y1.i.X(arrayList));
            int size = arrayList.size();
            int i3 = 0;
            int i4 = 0;
            while (i4 < size) {
                Object obj2 = arrayList.get(i4);
                i4++;
                arrayList2.add(((MediaController) obj2).getSessionToken());
            }
            Set setP0 = y1.g.p0(arrayList2);
            HashMap map = this.f985d;
            Iterator it = map.entrySet().iterator();
            while (true) {
                boolean zHasNext = it.hasNext();
                t8Var = this.f999s;
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
            while (i3 < size2) {
                Object obj3 = arrayList.get(i3);
                i3++;
                MediaController mediaController = (MediaController) obj3;
                if (!map.containsKey(mediaController.getSessionToken())) {
                    try {
                        mediaController.registerCallback(t8Var, this.f984c);
                        map.put(mediaController.getSessionToken(), mediaController);
                    } catch (Exception unused2) {
                    }
                }
            }
            i();
        } catch (Exception unused3) {
            activeSessions = p.f4663a;
        }
    }

    public final void i() {
        CharSequence text;
        Object next;
        String string;
        String string2;
        CharSequence text2;
        CharSequence text3;
        Object next2;
        MediaSession.Token sessionToken;
        MediaController mediaController;
        Collection collectionValues = this.f985d.values();
        g.d(collectionValues, "<get-values>(...)");
        List listM0 = y1.g.m0(collectionValues);
        Iterator it = listM0.iterator();
        while (true) {
            text = null;
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
        MediaController mediaController2 = (MediaController) next;
        if (mediaController2 == null) {
            Iterator it2 = listM0.iterator();
            do {
                if (!it2.hasNext()) {
                    next2 = null;
                    break;
                } else {
                    next2 = it2.next();
                    sessionToken = ((MediaController) next2).getSessionToken();
                    mediaController = this.f986e;
                }
            } while (!g.a(sessionToken, mediaController != null ? mediaController.getSessionToken() : null));
            mediaController2 = (MediaController) next2;
        }
        this.f986e = mediaController2;
        MediaMetadata metadata = mediaController2 != null ? mediaController2.getMetadata() : null;
        String str = "";
        if (metadata == null || (text3 = metadata.getText("android.media.metadata.TITLE")) == null || (string = text3.toString()) == null) {
            string = "";
        }
        if (metadata != null && (text2 = metadata.getText("android.media.metadata.ARTIST")) != null) {
            text = text2;
        } else if (metadata != null) {
            text = metadata.getText("android.media.metadata.ALBUM_ARTIST");
        }
        if (text != null && (string2 = text.toString()) != null) {
            str = string2;
        }
        if (string.equals(this.f) && str.equals(this.f987g)) {
            return;
        }
        this.f = string;
        this.f987g = str;
        this.f989i = Integer.MIN_VALUE;
        List listC = m8.c(string, str);
        this.f988h = listC;
        if (listC == null && string.length() > 0) {
            r();
            m8.d(string, str, metadata != null ? metadata.getLong("android.media.metadata.DURATION") : 0L, new h0(this, string, str, 2));
        }
        g();
    }

    public final void j() {
        float fI = t1.I(this);
        TextView textView = this.f991k;
        if (textView != null) {
            textView.setTextSize(17.0f * fI);
            textView.setTextColor(t1.H(this));
        }
        FrameLayout frameLayout = this.f990j;
        Drawable background = frameLayout != null ? frameLayout.getBackground() : null;
        GradientDrawable gradientDrawable = background instanceof GradientDrawable ? (GradientDrawable) background : null;
        if (gradientDrawable != null) {
            gradientDrawable.setColor((k1.a.k(getSharedPreferences("lyrics_style_config", 0).getInt("alpha", 204), 0, 255) << 24) | (getSharedPreferences("lyrics_style_config", 0).getInt("bg", -15592425) & 16777215));
        }
        WindowManager.LayoutParams layoutParams = this.f992l;
        if (layoutParams != null) {
            layoutParams.width = (int) (612 * fI);
            layoutParams.height = (int) (60 * fI);
            FrameLayout frameLayout2 = this.f990j;
            if (frameLayout2 != null) {
                try {
                    WindowManager windowManager = this.f983a;
                    if (windowManager != null) {
                        windowManager.updateViewLayout(frameLayout2, layoutParams);
                    } else {
                        g.h("wm");
                        throw null;
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    public final void k() {
        if (this.f997q) {
            FrameLayout frameLayout = this.f994n;
            Drawable background = frameLayout != null ? frameLayout.getBackground() : null;
            GradientDrawable gradientDrawable = background instanceof GradientDrawable ? (GradientDrawable) background : null;
            if (gradientDrawable != null) {
                gradientDrawable.setColor((k1.a.k(getSharedPreferences("lyrics_style_config", 0).getInt("alpha", 204), 0, 255) << 24) | (getSharedPreferences("lyrics_style_config", 0).getInt("bg", -15592425) & 16777215));
            }
            f(this.f989i);
        }
    }

    public final void l() {
        if (this.f993m != null) {
            return;
        }
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(d(20), d(16), d(20), d(16));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(d(18));
        gradientDrawable.setColor(-266724063);
        linearLayout.setBackground(gradientDrawable);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        TextView textView = new TextView(this);
        textView.setText("Ajustar letra");
        textView.setTextColor(-1);
        textView.setTextSize(18.0f);
        textView.setTypeface(textView.getTypeface(), 1);
        textView.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
        linearLayout2.addView(textView);
        TextView textView2 = new TextView(this);
        textView2.setText("✕");
        textView2.setTextColor(-6642775);
        textView2.setTextSize(20.0f);
        textView2.setPadding(d(16), d(4), d(4), d(4));
        textView2.setOnClickListener(new p8(this, 3));
        linearLayout2.addView(textView2);
        linearLayout.addView(linearLayout2);
        linearLayout.addView(m(this, "Tamanho"));
        SeekBar seekBar = new SeekBar(this);
        seekBar.setMax(140);
        seekBar.setProgress((int) ((t1.I(this) - 0.6f) * 100));
        final int i3 = 0;
        seekBar.setOnSeekBarChangeListener(new u8(0, new l(this) { // from class: w0.s8
            public final /* synthetic */ LyricsFloaterService b;

            {
                this.b = this;
            }

            @Override // h2.l
            public final Object c(Object obj) {
                int i4 = i3;
                LyricsFloaterService lyricsFloaterService = this.b;
                int iIntValue = ((Integer) obj).intValue();
                switch (i4) {
                    case 0:
                        Set set = LyricsFloaterService.f982v;
                        lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).edit().putFloat("scale", k1.a.j((iIntValue / 100.0f) + 0.6f, 0.6f, 2.0f)).apply();
                        lyricsFloaterService.j();
                        lyricsFloaterService.k();
                        break;
                    case 1:
                        Set set2 = LyricsFloaterService.f982v;
                        lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).edit().putInt("alpha", k1.a.k(255 - iIntValue, 0, 255)).apply();
                        lyricsFloaterService.j();
                        lyricsFloaterService.k();
                        break;
                    case 2:
                        Set set3 = LyricsFloaterService.f982v;
                        lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).edit().putInt("font", iIntValue).apply();
                        lyricsFloaterService.j();
                        lyricsFloaterService.k();
                        break;
                    default:
                        Set set4 = LyricsFloaterService.f982v;
                        lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).edit().putInt("bg", iIntValue).apply();
                        lyricsFloaterService.j();
                        lyricsFloaterService.k();
                        break;
                }
                return x1.e.f4647c;
            }
        }));
        linearLayout.addView(seekBar);
        linearLayout.addView(m(this, "Transparência do fundo"));
        SeekBar seekBar2 = new SeekBar(this);
        seekBar2.setMax(255);
        seekBar2.setProgress(255 - k1.a.k(getSharedPreferences("lyrics_style_config", 0).getInt("alpha", 204), 0, 255));
        final int i4 = 1;
        seekBar2.setOnSeekBarChangeListener(new u8(0, new l(this) { // from class: w0.s8
            public final /* synthetic */ LyricsFloaterService b;

            {
                this.b = this;
            }

            @Override // h2.l
            public final Object c(Object obj) {
                int i5 = i4;
                LyricsFloaterService lyricsFloaterService = this.b;
                int iIntValue = ((Integer) obj).intValue();
                switch (i5) {
                    case 0:
                        Set set = LyricsFloaterService.f982v;
                        lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).edit().putFloat("scale", k1.a.j((iIntValue / 100.0f) + 0.6f, 0.6f, 2.0f)).apply();
                        lyricsFloaterService.j();
                        lyricsFloaterService.k();
                        break;
                    case 1:
                        Set set2 = LyricsFloaterService.f982v;
                        lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).edit().putInt("alpha", k1.a.k(255 - iIntValue, 0, 255)).apply();
                        lyricsFloaterService.j();
                        lyricsFloaterService.k();
                        break;
                    case 2:
                        Set set3 = LyricsFloaterService.f982v;
                        lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).edit().putInt("font", iIntValue).apply();
                        lyricsFloaterService.j();
                        lyricsFloaterService.k();
                        break;
                    default:
                        Set set4 = LyricsFloaterService.f982v;
                        lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).edit().putInt("bg", iIntValue).apply();
                        lyricsFloaterService.j();
                        lyricsFloaterService.k();
                        break;
                }
                return x1.e.f4647c;
            }
        }));
        linearLayout.addView(seekBar2);
        linearLayout.addView(m(this, "Cor da letra"));
        final int i5 = 2;
        linearLayout.addView(p(t1.f4249c, t1.H(this), new l(this) { // from class: w0.s8
            public final /* synthetic */ LyricsFloaterService b;

            {
                this.b = this;
            }

            @Override // h2.l
            public final Object c(Object obj) {
                int i6 = i5;
                LyricsFloaterService lyricsFloaterService = this.b;
                int iIntValue = ((Integer) obj).intValue();
                switch (i6) {
                    case 0:
                        Set set = LyricsFloaterService.f982v;
                        lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).edit().putFloat("scale", k1.a.j((iIntValue / 100.0f) + 0.6f, 0.6f, 2.0f)).apply();
                        lyricsFloaterService.j();
                        lyricsFloaterService.k();
                        break;
                    case 1:
                        Set set2 = LyricsFloaterService.f982v;
                        lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).edit().putInt("alpha", k1.a.k(255 - iIntValue, 0, 255)).apply();
                        lyricsFloaterService.j();
                        lyricsFloaterService.k();
                        break;
                    case 2:
                        Set set3 = LyricsFloaterService.f982v;
                        lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).edit().putInt("font", iIntValue).apply();
                        lyricsFloaterService.j();
                        lyricsFloaterService.k();
                        break;
                    default:
                        Set set4 = LyricsFloaterService.f982v;
                        lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).edit().putInt("bg", iIntValue).apply();
                        lyricsFloaterService.j();
                        lyricsFloaterService.k();
                        break;
                }
                return x1.e.f4647c;
            }
        }));
        linearLayout.addView(m(this, "Cor do fundo"));
        final int i6 = 3;
        linearLayout.addView(p(t1.f4250d, getSharedPreferences("lyrics_style_config", 0).getInt("bg", -15592425), new l(this) { // from class: w0.s8
            public final /* synthetic */ LyricsFloaterService b;

            {
                this.b = this;
            }

            @Override // h2.l
            public final Object c(Object obj) {
                int i7 = i6;
                LyricsFloaterService lyricsFloaterService = this.b;
                int iIntValue = ((Integer) obj).intValue();
                switch (i7) {
                    case 0:
                        Set set = LyricsFloaterService.f982v;
                        lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).edit().putFloat("scale", k1.a.j((iIntValue / 100.0f) + 0.6f, 0.6f, 2.0f)).apply();
                        lyricsFloaterService.j();
                        lyricsFloaterService.k();
                        break;
                    case 1:
                        Set set2 = LyricsFloaterService.f982v;
                        lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).edit().putInt("alpha", k1.a.k(255 - iIntValue, 0, 255)).apply();
                        lyricsFloaterService.j();
                        lyricsFloaterService.k();
                        break;
                    case 2:
                        Set set3 = LyricsFloaterService.f982v;
                        lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).edit().putInt("font", iIntValue).apply();
                        lyricsFloaterService.j();
                        lyricsFloaterService.k();
                        break;
                    default:
                        Set set4 = LyricsFloaterService.f982v;
                        lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).edit().putInt("bg", iIntValue).apply();
                        lyricsFloaterService.j();
                        lyricsFloaterService.k();
                        break;
                }
                return x1.e.f4647c;
            }
        }));
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setBackgroundColor(0);
        frameLayout.setClickable(true);
        frameLayout.setOnClickListener(new p8(this, 4));
        linearLayout.setClickable(true);
        linearLayout.setOnClickListener(new f7(1));
        frameLayout.addView(linearLayout, new FrameLayout.LayoutParams(d(360), -2, 17));
        ViewGroup.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, 2038, 264, -3);
        try {
            WindowManager windowManager = this.f983a;
            if (windowManager == null) {
                g.h("wm");
                throw null;
            }
            windowManager.addView(frameLayout, layoutParams);
            this.f993m = frameLayout;
        } catch (Throwable th) {
            Log.e("LyricsFloater", "addView config: " + th.getMessage());
        }
    }

    public final void n() {
        if (this.f990j != null) {
            j();
            return;
        }
        float fI = t1.I(this);
        TextView textView = new TextView(this);
        textView.setTextColor(t1.H(this));
        textView.setTextSize(17.0f * fI);
        textView.setMaxLines(1);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setGravity(17);
        textView.setPadding((int) (d(126) * fI), 0, (int) (d(30) * fI), 0);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        int iD = (int) (d(34) * fI);
        int iD2 = (int) (d(6) * fI);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iD, -1);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(iD, -1);
        layoutParams2.setMarginStart(iD2);
        layoutParams2.setMarginEnd(iD2);
        linearLayout.addView(o(this, fI, "◀", new o8(this, 1)), layoutParams);
        linearLayout.addView(o(this, fI, "↺", new o8(this, 2)), layoutParams2);
        linearLayout.addView(o(this, fI, "▶", new o8(this, 3)), layoutParams);
        TextView textView2 = new TextView(this);
        textView2.setText("✕");
        textView2.setTextColor(-855638017);
        textView2.setTextSize(13.0f * fI);
        textView2.setGravity(17);
        textView2.setPadding(d(8), d(2), d(8), d(2));
        textView2.setOnClickListener(new p8(this, 0));
        final FrameLayout frameLayout = new FrameLayout(this);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(d(12));
        gradientDrawable.setColor((k1.a.k(getSharedPreferences("lyrics_style_config", 0).getInt("alpha", 204), 0, 255) << 24) | (getSharedPreferences("lyrics_style_config", 0).getInt("bg", -15592425) & 16777215));
        frameLayout.setBackground(gradientDrawable);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams3.gravity = 17;
        frameLayout.addView(textView, layoutParams3);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams4.gravity = 8388661;
        frameLayout.addView(textView2, layoutParams4);
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-2, -1);
        layoutParams5.gravity = 8388627;
        frameLayout.addView(linearLayout, layoutParams5);
        yd ydVarG = e8.G(this, "lyrics_line", 8388659, 0, getResources().getDisplayMetrics().heightPixels - d(290));
        final WindowManager.LayoutParams layoutParams6 = new WindowManager.LayoutParams((int) (612 * fI), (int) (60 * fI), 2038, 264, -3);
        layoutParams6.gravity = ydVarG.f4590a;
        layoutParams6.x = ydVarG.b;
        layoutParams6.y = ydVarG.f4591c;
        final i2.k kVar = new i2.k();
        final i2.k kVar2 = new i2.k();
        final i2.l lVar = new i2.l();
        final i2.l lVar2 = new i2.l();
        final j jVar = new j();
        final j jVar2 = new j();
        final i iVar = new i(jVar2, 22, this);
        frameLayout.setOnTouchListener(new View.OnTouchListener() { // from class: w0.q8
            /* JADX WARN: Code duplicated, block: B:25:0x007b  */
            /* JADX WARN: Code duplicated, block: B:26:0x0088  */
            /* JADX WARN: Code duplicated, block: B:28:0x008c  */
            /* JADX WARN: Code duplicated, block: B:33:0x009a  */
            /* JADX WARN: Code duplicated, block: B:36:0x00a2 A[DONT_INVERT] */
            /* JADX WARN: Code duplicated, block: B:37:0x00a4  */
            /* JADX WARN: Code duplicated, block: B:39:0x00cf  */
            /* JADX WARN: Code duplicated, block: B:45:0x00f6  */
            /* JADX WARN: Code duplicated, block: B:47:0x00fc  */
            /* JADX WARN: Code duplicated, block: B:49:0x0100  */
            /* JADX WARN: Code duplicated, block: B:50:0x0105  */
            /* JADX WARN: Code duplicated, block: B:60:0x01f0 A[Catch: all -> 0x0204, TryCatch #1 {all -> 0x0204, blocks: (B:58:0x01ec, B:60:0x01f0, B:63:0x0206, B:64:0x0209), top: B:71:0x01ec }] */
            /* JADX WARN: Code duplicated, block: B:63:0x0206 A[Catch: all -> 0x0204, TryCatch #1 {all -> 0x0204, blocks: (B:58:0x01ec, B:60:0x01f0, B:63:0x0206, B:64:0x0209), top: B:71:0x01ec }] */
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                List list;
                u4 u4Var;
                int iOrdinal;
                List list2;
                ScrollView scrollView;
                LinearLayout linearLayout2;
                FrameLayout frameLayout2;
                WindowManager.LayoutParams layoutParams7;
                WindowManager windowManager;
                TextView textView3;
                MediaController mediaController;
                MediaMetadata metadata;
                LyricsFloaterService lyricsFloaterService = this;
                Handler handler = lyricsFloaterService.f984c;
                FrameLayout frameLayout3 = frameLayout;
                Set set = LyricsFloaterService.f982v;
                int action = motionEvent.getAction();
                i2.k kVar3 = kVar;
                i2.k kVar4 = kVar2;
                i2.l lVar3 = lVar;
                WindowManager.LayoutParams layoutParams8 = layoutParams6;
                i2.l lVar4 = lVar2;
                i2.j jVar3 = jVar;
                i2.j jVar4 = jVar2;
                a1.i iVar2 = iVar;
                if (action == 0) {
                    kVar3.f2290a = motionEvent.getRawX();
                    kVar4.f2290a = motionEvent.getRawY();
                    lVar3.f2291a = layoutParams8.x;
                    lVar4.f2291a = layoutParams8.y;
                    jVar3.f2289a = false;
                    jVar4.f2289a = false;
                    handler.postDelayed(iVar2, 550L);
                    return true;
                }
                if (action == 1) {
                    handler.removeCallbacks(iVar2);
                    if (jVar3.f2289a) {
                        e8.M(lyricsFloaterService, "lyrics_line", layoutParams8.gravity, layoutParams8.x, layoutParams8.y);
                    } else if (!jVar4.f2289a) {
                        list = lyricsFloaterService.f988h;
                        if (list == null && (!list.isEmpty())) {
                            u4Var = u4.f4331a;
                        } else {
                            u4Var = u4.b;
                        }
                        iOrdinal = u4Var.ordinal();
                        if (iOrdinal != 0) {
                            if (iOrdinal == 1) {
                                throw new androidx.fragment.app.q();
                            }
                            ExecutorService executorService = m8.f3899a;
                            String str = lyricsFloaterService.f;
                            String str2 = lyricsFloaterService.f987g;
                            i2.g.e(str, "title");
                            i2.g.e(str2, "artist");
                            String strA = k8.a(str, str2);
                            m8.f3901d.remove(strA);
                            m8.f3902e.remove(strA);
                            m8.f3903g.remove(strA);
                            lyricsFloaterService.f989i = Integer.MIN_VALUE;
                            textView3 = lyricsFloaterService.f991k;
                            if (textView3 != null) {
                                textView3.setText("🎤 procurando de novo…");
                            }
                            mediaController = lyricsFloaterService.f986e;
                            if (mediaController != null && (metadata = mediaController.getMetadata()) != null) {
                                lyricsFloaterService.r();
                                m8.d(lyricsFloaterService.f, lyricsFloaterService.f987g, metadata.getLong("android.media.metadata.DURATION"), new o8(lyricsFloaterService, 4));
                            }
                        } else if (lyricsFloaterService.f997q) {
                            lyricsFloaterService.c();
                        } else if (lyricsFloaterService.f994n == null && (list2 = lyricsFloaterService.f988h) != null && !list2.isEmpty()) {
                            scrollView = new ScrollView(lyricsFloaterService);
                            scrollView.setVerticalScrollBarEnabled(false);
                            linearLayout2 = new LinearLayout(lyricsFloaterService);
                            linearLayout2.setOrientation(1);
                            linearLayout2.setPadding(40, 40, 40, 40);
                            scrollView.addView(linearLayout2);
                            TextView textView4 = new TextView(lyricsFloaterService);
                            textView4.setText("✕");
                            textView4.setTextColor(-6642775);
                            textView4.setTextSize(22.0f);
                            textView4.setPadding(24, 12, 24, 12);
                            textView4.setOnClickListener(new p8(lyricsFloaterService, 1));
                            TextView textView5 = new TextView(lyricsFloaterService);
                            textView5.setText("⚙");
                            textView5.setTextColor(-6642775);
                            textView5.setTextSize(22.0f);
                            textView5.setPadding(24, 12, 24, 12);
                            textView5.setOnClickListener(new p8(lyricsFloaterService, 2));
                            frameLayout2 = new FrameLayout(lyricsFloaterService);
                            GradientDrawable gradientDrawable2 = new GradientDrawable();
                            gradientDrawable2.setCornerRadius(20.0f);
                            gradientDrawable2.setColor((k1.a.k(lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).getInt("alpha", 204), 0, 255) << 24) | (lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).getInt("bg", -15592425) & 16777215));
                            frameLayout2.setBackground(gradientDrawable2);
                            frameLayout2.addView(scrollView, new FrameLayout.LayoutParams(-1, -1));
                            FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(-2, -2);
                            layoutParams9.gravity = 8388661;
                            layoutParams9.setMarginEnd(lyricsFloaterService.d(52));
                            frameLayout2.addView(textView5, layoutParams9);
                            FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(-2, -2);
                            layoutParams10.gravity = 8388661;
                            frameLayout2.addView(textView4, layoutParams10);
                            layoutParams7 = new WindowManager.LayoutParams(760, 520, 2038, 264, -3);
                            layoutParams7.gravity = 17;
                            layoutParams7.y = -60;
                            try {
                                windowManager = lyricsFloaterService.f983a;
                                if (windowManager != null) {
                                    i2.g.h("wm");
                                    throw null;
                                }
                                windowManager.addView(frameLayout2, layoutParams7);
                                lyricsFloaterService.f994n = frameLayout2;
                                lyricsFloaterService.f995o = linearLayout2;
                                lyricsFloaterService.f996p = scrollView;
                                lyricsFloaterService.f997q = true;
                                lyricsFloaterService.g();
                                lyricsFloaterService.f(lyricsFloaterService.f989i);
                            } catch (Throwable th) {
                                Log.e("LyricsFloater", "addView painel: " + th.getMessage());
                            }
                        }
                    }
                } else if (action != 2) {
                    if (action != 3) {
                        return false;
                    }
                    handler.removeCallbacks(iVar2);
                    if (jVar3.f2289a) {
                        e8.M(lyricsFloaterService, "lyrics_line", layoutParams8.gravity, layoutParams8.x, layoutParams8.y);
                    } else if (!jVar4.f2289a) {
                        list = lyricsFloaterService.f988h;
                        if (list == null) {
                            u4Var = u4.b;
                        } else {
                            u4Var = u4.b;
                        }
                        iOrdinal = u4Var.ordinal();
                        if (iOrdinal != 0) {
                            if (iOrdinal == 1) {
                                throw new androidx.fragment.app.q();
                            }
                            ExecutorService executorService2 = m8.f3899a;
                            String str3 = lyricsFloaterService.f;
                            String str4 = lyricsFloaterService.f987g;
                            i2.g.e(str3, "title");
                            i2.g.e(str4, "artist");
                            String strA2 = k8.a(str3, str4);
                            m8.f3901d.remove(strA2);
                            m8.f3902e.remove(strA2);
                            m8.f3903g.remove(strA2);
                            lyricsFloaterService.f989i = Integer.MIN_VALUE;
                            textView3 = lyricsFloaterService.f991k;
                            if (textView3 != null) {
                                textView3.setText("🎤 procurando de novo…");
                            }
                            mediaController = lyricsFloaterService.f986e;
                            if (mediaController != null) {
                                lyricsFloaterService.r();
                                m8.d(lyricsFloaterService.f, lyricsFloaterService.f987g, metadata.getLong("android.media.metadata.DURATION"), new o8(lyricsFloaterService, 4));
                            }
                        } else if (lyricsFloaterService.f997q) {
                            lyricsFloaterService.c();
                        } else if (lyricsFloaterService.f994n == null) {
                            scrollView = new ScrollView(lyricsFloaterService);
                            scrollView.setVerticalScrollBarEnabled(false);
                            linearLayout2 = new LinearLayout(lyricsFloaterService);
                            linearLayout2.setOrientation(1);
                            linearLayout2.setPadding(40, 40, 40, 40);
                            scrollView.addView(linearLayout2);
                            TextView textView6 = new TextView(lyricsFloaterService);
                            textView6.setText("✕");
                            textView6.setTextColor(-6642775);
                            textView6.setTextSize(22.0f);
                            textView6.setPadding(24, 12, 24, 12);
                            textView6.setOnClickListener(new p8(lyricsFloaterService, 1));
                            TextView textView7 = new TextView(lyricsFloaterService);
                            textView7.setText("⚙");
                            textView7.setTextColor(-6642775);
                            textView7.setTextSize(22.0f);
                            textView7.setPadding(24, 12, 24, 12);
                            textView7.setOnClickListener(new p8(lyricsFloaterService, 2));
                            frameLayout2 = new FrameLayout(lyricsFloaterService);
                            GradientDrawable gradientDrawable3 = new GradientDrawable();
                            gradientDrawable3.setCornerRadius(20.0f);
                            gradientDrawable3.setColor((k1.a.k(lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).getInt("alpha", 204), 0, 255) << 24) | (lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).getInt("bg", -15592425) & 16777215));
                            frameLayout2.setBackground(gradientDrawable3);
                            frameLayout2.addView(scrollView, new FrameLayout.LayoutParams(-1, -1));
                            FrameLayout.LayoutParams layoutParams11 = new FrameLayout.LayoutParams(-2, -2);
                            layoutParams11.gravity = 8388661;
                            layoutParams11.setMarginEnd(lyricsFloaterService.d(52));
                            frameLayout2.addView(textView7, layoutParams11);
                            FrameLayout.LayoutParams layoutParams12 = new FrameLayout.LayoutParams(-2, -2);
                            layoutParams12.gravity = 8388661;
                            frameLayout2.addView(textView6, layoutParams12);
                            layoutParams7 = new WindowManager.LayoutParams(760, 520, 2038, 264, -3);
                            layoutParams7.gravity = 17;
                            layoutParams7.y = -60;
                            windowManager = lyricsFloaterService.f983a;
                            if (windowManager != null) {
                                i2.g.h("wm");
                                throw null;
                            }
                            windowManager.addView(frameLayout2, layoutParams7);
                            lyricsFloaterService.f994n = frameLayout2;
                            lyricsFloaterService.f995o = linearLayout2;
                            lyricsFloaterService.f996p = scrollView;
                            lyricsFloaterService.f997q = true;
                            lyricsFloaterService.g();
                            lyricsFloaterService.f(lyricsFloaterService.f989i);
                        }
                    }
                } else {
                    int rawX = (int) (motionEvent.getRawX() - kVar3.f2290a);
                    int rawY = (int) (motionEvent.getRawY() - kVar4.f2290a);
                    if (Math.abs(rawX) > lyricsFloaterService.d(6) || Math.abs(rawY) > lyricsFloaterService.d(6)) {
                        jVar3.f2289a = true;
                        handler.removeCallbacks(iVar2);
                    }
                    if (jVar3.f2289a) {
                        layoutParams8.x = lVar3.f2291a + rawX;
                        layoutParams8.y = lVar4.f2291a + rawY;
                        try {
                            WindowManager windowManager2 = lyricsFloaterService.f983a;
                            if (windowManager2 == null) {
                                i2.g.h("wm");
                                throw null;
                            }
                            windowManager2.updateViewLayout(frameLayout3, layoutParams8);
                        } catch (Throwable unused) {
                        }
                    }
                }
                return true;
            }
        });
        try {
            WindowManager windowManager = this.f983a;
            if (windowManager == null) {
                g.h("wm");
                throw null;
            }
            windowManager.addView(frameLayout, layoutParams6);
            this.f990j = frameLayout;
            this.f991k = textView;
            this.f992l = layoutParams6;
        } catch (Throwable th) {
            Log.e("LyricsFloater", "addView linha: " + th.getMessage());
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        Object systemService = getSystemService("window");
        g.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        this.f983a = (WindowManager) systemService;
        Object systemService2 = getSystemService("media_session");
        g.c(systemService2, "null cannot be cast to non-null type android.media.session.MediaSessionManager");
        this.b = (MediaSessionManager) systemService2;
        ExecutorService executorService = m8.f3899a;
        m8.f3905i = new File(getFilesDir(), "lyrics_cache");
        startForeground(15073, t1.E(this, "lyrics_floater", "Letra", "Letra sincronizada na barra", android.R.drawable.ic_menu_edit, null, 16));
        try {
            MediaSessionManager mediaSessionManager = this.b;
            if (mediaSessionManager == null) {
                g.h("msm");
                throw null;
            }
            mediaSessionManager.addOnActiveSessionsChangedListener(this.f998r, null);
            h();
            this.f984c.post(this.f1000t);
        } catch (Exception e3) {
            Log.e("LyricsFloater", "listener falhou: " + e3.getMessage());
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        this.f984c.removeCallbacks(this.f1000t);
        try {
            MediaSessionManager mediaSessionManager = this.b;
            if (mediaSessionManager == null) {
                g.h("msm");
                throw null;
            }
            mediaSessionManager.removeOnActiveSessionsChangedListener(this.f998r);
            HashMap map = this.f985d;
            Iterator it = map.values().iterator();
            while (it.hasNext()) {
                try {
                    ((MediaController) it.next()).unregisterCallback(this.f999s);
                } catch (Exception unused) {
                }
            }
            map.clear();
            e();
            c();
            b();
            super.onDestroy();
        } catch (Exception unused2) {
        }
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i3, int i4) {
        if (g.a(intent != null ? intent.getAction() : null, "com.ex.auto.LYRICS_CONFIG")) {
            this.f984c.post(new n8(this, 0));
        }
        h();
        return 1;
    }

    public final LinearLayout p(int[] iArr, int i3, l lVar) {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(0);
        int length = iArr.length;
        for (int i4 = 0; i4 < length; i4++) {
            int i5 = iArr[i4];
            View view = new View(this);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(1);
            gradientDrawable.setColor(i5);
            gradientDrawable.setStroke(d(i5 == i3 ? 3 : 1), i5 == i3 ? -1 : 1728053247);
            view.setBackground(gradientDrawable);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(d(40), d(40));
            layoutParams.setMarginEnd(d(12));
            view.setLayoutParams(layoutParams);
            view.setOnClickListener(new g9(i5, lVar, this, 3));
            linearLayout.addView(view);
        }
        return linearLayout;
    }

    public final void q() {
        PlaybackState playbackState;
        int state;
        MediaMetadata metadata;
        PlaybackState playbackState2;
        MediaController mediaController = this.f986e;
        if (mediaController == null || (playbackState = mediaController.getPlaybackState()) == null || !((state = playbackState.getState()) == 3 || state == 2 || state == 6)) {
            e();
            if (this.f997q) {
                c();
                return;
            }
            return;
        }
        if (this.f988h == null) {
            ExecutorService executorService = m8.f3899a;
            List listC = m8.c(this.f, this.f987g);
            if (listC != null) {
                this.f988h = listC;
                this.f989i = Integer.MIN_VALUE;
                if (this.f997q) {
                    g();
                }
            }
        }
        List list = this.f988h;
        if (list == null || list.isEmpty()) {
            ExecutorService executorService2 = m8.f3899a;
            String str = this.f;
            String str2 = this.f987g;
            g.e(str, "title");
            g.e(str2, "artist");
            String strA = k8.a(str, str2);
            if (m8.f3903g.contains(strA) && !m8.b.containsKey(strA)) {
                e();
                if (this.f997q) {
                    c();
                    return;
                }
                return;
            }
            MediaController mediaController2 = this.f986e;
            if (mediaController2 != null && (metadata = mediaController2.getMetadata()) != null) {
                r();
                m8.d(this.f, this.f987g, metadata.getLong("android.media.metadata.DURATION"), new o8(this, 0));
            }
            n();
            if (this.f989i != -2) {
                this.f989i = -2;
                TextView textView = this.f991k;
                if (textView != null) {
                    textView.setText("🎤 buscando letra…");
                }
            }
            TextView textView2 = this.f991k;
            if (textView2 != null) {
                textView2.setOnClickListener(null);
            }
            TextView textView3 = this.f991k;
            if (textView3 != null) {
                textView3.setClickable(false);
                return;
            }
            return;
        }
        n();
        MediaController mediaController3 = this.f986e;
        long j3 = 0;
        long position = (mediaController3 == null || (playbackState2 = mediaController3.getPlaybackState()) == null) ? 0L : playbackState2.getState() != 3 ? playbackState2.getPosition() : playbackState2.getPosition() + ((long) (playbackState2.getPlaybackSpeed() * (SystemClock.elapsedRealtime() - playbackState2.getLastPositionUpdateTime())));
        ExecutorService executorService3 = m8.f3899a;
        String str3 = this.f;
        String str4 = this.f987g;
        g.e(str3, "title");
        g.e(str4, "artist");
        try {
            j3 = getSharedPreferences("lyrics_sync_offsets", 0).getLong(k8.a(str3, str4), 0L);
        } catch (Throwable unused) {
        }
        long j4 = position + j3;
        int size = list.size();
        int i3 = -1;
        for (int i4 = 0; i4 < size && ((Number) ((x1.a) list.get(i4)).f4641a).longValue() <= j4; i4++) {
            i3 = i4;
        }
        if (i3 != this.f989i) {
            this.f989i = i3;
            String str5 = i3 >= 0 ? (String) ((x1.a) list.get(i3)).b : "♪";
            TextView textView4 = this.f991k;
            if (textView4 != null) {
                textView4.setOnClickListener(null);
            }
            TextView textView5 = this.f991k;
            if (textView5 != null) {
                textView5.setClickable(false);
            }
            TextView textView6 = this.f991k;
            if (textView6 != null) {
                textView6.setText(str5.length() != 0 ? str5 : "♪");
            }
            if (this.f997q) {
                f(i3);
            }
        }
    }

    public final void r() {
        String string;
        Proxy proxy = null;
        try {
            string = Settings.Global.getString(getContentResolver(), "http_proxy");
        } catch (Throwable unused) {
            string = null;
        }
        ExecutorService executorService = m8.f3899a;
        if (string != null && !k.m0(string) && k.e0(string, ":", false)) {
            try {
                String string2 = k.E0(k.B0(string, ":")).toString();
                int i3 = Integer.parseInt(k.E0(k.B0(k.y0(string, ":", string), ";")).toString());
                if (string2.length() > 0) {
                    proxy = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(string2, i3));
                }
            } catch (Throwable unused2) {
            }
        }
        m8.f3904h = proxy;
    }
}
