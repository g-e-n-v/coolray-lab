package com.ex.auto;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.media.MediaDescription;
import android.media.MediaMetadata;
import android.media.browse.MediaBrowser;
import android.media.session.MediaController;
import android.media.session.PlaybackState;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.GridLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import com.ex.auto.MediaBrowserHostActivity;
import i2.g;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import o2.k;
import w0.a0;
import w0.b6;
import w0.cg;
import w0.hd;
import w0.id;
import w0.q;
import w0.t8;
import w0.w;
import x1.a;
import x1.b;
import y1.h;

/* JADX INFO: loaded from: classes.dex */
public final class MediaBrowserHostActivity extends Activity {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final /* synthetic */ int f1080s = 0;
    public MediaBrowser b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MediaController f1082c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public hd f1083d;
    public String f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public LinearLayout f1085g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public TextView f1086h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public GridLayout f1087i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ProgressBar f1088j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public TextView f1089k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ImageView f1090l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public TextView f1091m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public TextView f1092n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public TextView f1093o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public TextView f1094p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handler f1081a = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f1084e = new ArrayList();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final id f1095q = new id(this);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final t8 f1096r = new t8(2, this);

    /* JADX WARN: Code duplicated, block: B:20:0x0028  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:82:0x00d3  */
    public static final void b(MediaBrowserHostActivity mediaBrowserHostActivity, PlaybackState playbackState, MediaMetadata mediaMetadata) {
        String string;
        Bitmap bitmap;
        PendingIntent pendingIntent;
        String strH;
        String string2;
        Bundle extras;
        CharSequence subtitle;
        CharSequence title;
        MediaDescription description = mediaMetadata != null ? mediaMetadata.getDescription() : null;
        TextView textView = mediaBrowserHostActivity.f1091m;
        if (textView == null) {
            g.h("tituloAgora");
            throw null;
        }
        if (description == null || (title = description.getTitle()) == null || (string = title.toString()) == null) {
            string = mediaBrowserHostActivity.getString(R.string.k_mbh_nothing_playing);
            g.d(string, "getString(...)");
        } else {
            if (k.m0(string)) {
                string = null;
            }
            if (string == null) {
                string = mediaBrowserHostActivity.getString(R.string.k_mbh_nothing_playing);
                g.d(string, "getString(...)");
            }
        }
        textView.setText(string);
        TextView textView2 = mediaBrowserHostActivity.f1092n;
        if (textView2 == null) {
            g.h("subAgora");
            throw null;
        }
        String string3 = (description == null || (subtitle = description.getSubtitle()) == null) ? null : subtitle.toString();
        if (string3 == null) {
            string3 = "";
        }
        textView2.setText(string3);
        if (description == null || (bitmap = description.getIconBitmap()) == null) {
            bitmap = mediaMetadata != null ? mediaMetadata.getBitmap("android.media.metadata.ALBUM_ART") : null;
        }
        if (bitmap != null) {
            ImageView imageView = mediaBrowserHostActivity.f1090l;
            if (imageView == null) {
                g.h("capaAgora");
                throw null;
            }
            imageView.setImageBitmap(bitmap);
        } else if (description != null) {
            ImageView imageView2 = mediaBrowserHostActivity.f1090l;
            if (imageView2 == null) {
                g.h("capaAgora");
                throw null;
            }
            mediaBrowserHostActivity.c(imageView2, description);
        }
        TextView textView3 = mediaBrowserHostActivity.f1093o;
        if (textView3 == null) {
            g.h("btnPlay");
            throw null;
        }
        textView3.setText((playbackState == null || playbackState.getState() != 3) ? "▶" : "❚❚");
        if (playbackState == null) {
            pendingIntent = null;
        } else {
            PlaybackState playbackState2 = playbackState.getState() == 7 ? playbackState : null;
            if (playbackState2 == null || (extras = playbackState2.getExtras()) == null) {
                pendingIntent = null;
            } else {
                pendingIntent = (PendingIntent) extras.getParcelable("android.media.extras.ERROR_RESOLUTION_ACTION_INTENT");
            }
        }
        if (pendingIntent != null) {
            TextView textView4 = mediaBrowserHostActivity.f1094p;
            if (textView4 == null) {
                g.h("btnEntrar");
                throw null;
            }
            Bundle extras2 = playbackState.getExtras();
            if (extras2 == null || (string2 = extras2.getString("android.media.extras.ERROR_RESOLUTION_ACTION_LABEL")) == null) {
                string2 = mediaBrowserHostActivity.getString(R.string.k_mbh_login);
                g.d(string2, "getString(...)");
            } else {
                if (k.m0(string2)) {
                    string2 = null;
                }
                if (string2 == null) {
                    string2 = mediaBrowserHostActivity.getString(R.string.k_mbh_login);
                    g.d(string2, "getString(...)");
                }
            }
            textView4.setText(string2);
            TextView textView5 = mediaBrowserHostActivity.f1094p;
            if (textView5 == null) {
                g.h("btnEntrar");
                throw null;
            }
            textView5.setVisibility(0);
        } else {
            TextView textView6 = mediaBrowserHostActivity.f1094p;
            if (textView6 == null) {
                g.h("btnEntrar");
                throw null;
            }
            textView6.setVisibility(8);
        }
        if (playbackState == null || playbackState.getState() != 7 || (strH = mediaBrowserHostActivity.h()) == null) {
            return;
        }
        mediaBrowserHostActivity.g(strH, false);
    }

    public final void a(String str) {
        String str2;
        MediaBrowser mediaBrowser = this.b;
        if (mediaBrowser == null) {
            return;
        }
        String str3 = this.f;
        if (str3 != null) {
            try {
                mediaBrowser.unsubscribe(str3);
            } catch (Throwable unused) {
            }
        }
        this.f = str;
        TextView textView = this.f1086h;
        if (textView == null) {
            g.h("tituloNivel");
            throw null;
        }
        a aVar = (a) y1.g.f0(this.f1084e);
        if (aVar == null || (str2 = (String) aVar.b) == null) {
            hd hdVar = this.f1083d;
            str2 = hdVar != null ? hdVar.f3679c : null;
            if (str2 == null) {
                str2 = "";
            }
        }
        textView.setText(str2);
        g(null, true);
        mediaBrowser.subscribe(str, this.f1095q);
    }

    public final void c(ImageView imageView, MediaDescription mediaDescription) {
        String string;
        Object bVar;
        hd hdVar = this.f1083d;
        if (hdVar != null) {
            try {
                bVar = getPackageManager().getApplicationIcon(hdVar.f3678a);
            } catch (Throwable th) {
                bVar = new b(th);
            }
            if (bVar instanceof b) {
                bVar = null;
            }
            Drawable drawable = (Drawable) bVar;
            if (drawable != null) {
                imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                imageView.setPadding(f(46), f(46), f(46), f(46));
                imageView.setImageAlpha(60);
                imageView.setImageDrawable(drawable);
            }
        }
        Bitmap iconBitmap = mediaDescription.getIconBitmap();
        if (iconBitmap != null) {
            imageView.setPadding(0, 0, 0, 0);
            imageView.setImageAlpha(255);
            imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            imageView.setImageBitmap(iconBitmap);
            return;
        }
        Uri iconUri = mediaDescription.getIconUri();
        if (iconUri == null || (string = iconUri.toString()) == null) {
            return;
        }
        imageView.setTag(string);
        cg.e(this, string, new q(this, imageView, string));
    }

    public final TextView d(String str, boolean z2, h2.a aVar) {
        TextView textView = new TextView(this);
        textView.setText(str);
        textView.setGravity(17);
        textView.setTextSize(19.0f);
        textView.setTextColor(getColor(z2 ? R.color.cx_on_accent : R.color.cx_text_primary));
        textView.setBackgroundResource(z2 ? R.drawable.bg_master_activate : R.drawable.bg_master_inner_card);
        textView.setMinWidth(f(84));
        textView.setPadding(f(18), f(12), f(18), f(12));
        textView.setClickable(true);
        textView.setOnClickListener(new w(aVar, 4));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMarginStart(f(10));
        textView.setLayoutParams(layoutParams);
        return textView;
    }

    public final void e() {
        String str = this.f;
        if (str != null) {
            try {
                MediaBrowser mediaBrowser = this.b;
                if (mediaBrowser != null) {
                    mediaBrowser.unsubscribe(str);
                }
            } catch (Throwable unused) {
            }
        }
        this.f = null;
        MediaController mediaController = this.f1082c;
        if (mediaController != null) {
            mediaController.unregisterCallback(this.f1096r);
        }
        this.f1082c = null;
        try {
            MediaBrowser mediaBrowser2 = this.b;
            if (mediaBrowser2 != null) {
                mediaBrowser2.disconnect();
            }
        } catch (Throwable unused2) {
        }
        this.b = null;
    }

    public final int f(int i3) {
        return (int) (i3 * getResources().getDisplayMetrics().density);
    }

    public final void g(String str, boolean z2) {
        ProgressBar progressBar = this.f1088j;
        if (progressBar == null) {
            g.h("progresso");
            throw null;
        }
        progressBar.setVisibility(z2 ? 0 : 8);
        TextView textView = this.f1089k;
        if (textView == null) {
            g.h("recado");
            throw null;
        }
        textView.setText(str != null ? str : "");
        TextView textView2 = this.f1089k;
        if (textView2 == null) {
            g.h("recado");
            throw null;
        }
        textView2.setVisibility(str != null ? 0 : 8);
        if (z2 || str != null) {
            GridLayout gridLayout = this.f1087i;
            if (gridLayout != null) {
                gridLayout.removeAllViews();
            } else {
                g.h("grade");
                throw null;
            }
        }
    }

    public final String h() {
        PlaybackState playbackState;
        CharSequence errorMessage;
        String string;
        MediaController mediaController = this.f1082c;
        if (mediaController != null && (playbackState = mediaController.getPlaybackState()) != null) {
            if (playbackState.getState() != 7) {
                playbackState = null;
            }
            if (playbackState != null && (errorMessage = playbackState.getErrorMessage()) != null && (string = errorMessage.toString()) != null && !k.m0(string)) {
                return string;
            }
        }
        return null;
    }

    public final void i() {
        ArrayList arrayList = this.f1084e;
        if (arrayList.size() <= 1) {
            finish();
            return;
        }
        arrayList.remove(arrayList.size() - 1);
        if (arrayList.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        a((String) ((a) arrayList.get(h.U(arrayList))).f4641a);
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        i();
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0312  */
    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        Object bVar;
        hd hdVar;
        super.onCreate(bundle);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(getColor(R.color.cx_bg_root));
        linearLayout.setPadding(f(28), f(22), f(28), f(18));
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        TextView textView = new TextView(this);
        textView.setText(getString(R.string.k_mbh_title));
        textView.setTextColor(getColor(R.color.cx_text_primary));
        textView.setTextSize(30.0f);
        textView.setTypeface(textView.getTypeface(), 1);
        textView.setMaxLines(1);
        textView.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
        this.f1086h = textView;
        linearLayout2.addView(textView);
        String string = getString(R.string.k_mbh_back);
        g.d(string, "getString(...)");
        final int i3 = 0;
        linearLayout2.addView(d(string, false, new h2.a(this) { // from class: w0.gd
            public final /* synthetic */ MediaBrowserHostActivity b;

            {
                this.b = this;
            }

            @Override // h2.a
            public final Object a() {
                PlaybackState playbackState;
                Bundle extras;
                PendingIntent pendingIntent;
                Object bVar2;
                MediaController.TransportControls transportControls;
                MediaController.TransportControls transportControls2;
                int i4 = i3;
                MediaBrowserHostActivity mediaBrowserHostActivity = this.b;
                switch (i4) {
                    case 0:
                        int i5 = MediaBrowserHostActivity.f1080s;
                        mediaBrowserHostActivity.i();
                        return x1.e.f4647c;
                    case 1:
                        Object obj = x1.e.f4647c;
                        MediaController mediaController = mediaBrowserHostActivity.f1082c;
                        if (mediaController != null && (playbackState = mediaController.getPlaybackState()) != null && (extras = playbackState.getExtras()) != null && (pendingIntent = (PendingIntent) extras.getParcelable("android.media.extras.ERROR_RESOLUTION_ACTION_INTENT")) != null) {
                            try {
                                pendingIntent.send();
                                bVar2 = obj;
                            } catch (Throwable th) {
                                bVar2 = new x1.b(th);
                            }
                            Throwable th2 = bVar2 instanceof x1.b ? ((x1.b) bVar2).f4642a : null;
                            if (th2 != null) {
                                androidx.activity.result.b.s(th2, new StringBuilder("PendingIntent de login falhou: "), "MediaBrowserHost");
                            }
                        }
                        return obj;
                    case 2:
                        MediaController mediaController2 = mediaBrowserHostActivity.f1082c;
                        if (mediaController2 != null && (transportControls = mediaController2.getTransportControls()) != null) {
                            transportControls.skipToPrevious();
                        }
                        return x1.e.f4647c;
                    case 3:
                        MediaController mediaController3 = mediaBrowserHostActivity.f1082c;
                        if (mediaController3 != null) {
                            PlaybackState playbackState2 = mediaController3.getPlaybackState();
                            if (playbackState2 == null || playbackState2.getState() != 3) {
                                mediaController3.getTransportControls().play();
                            } else {
                                mediaController3.getTransportControls().pause();
                            }
                        }
                        return x1.e.f4647c;
                    default:
                        MediaController mediaController4 = mediaBrowserHostActivity.f1082c;
                        if (mediaController4 != null && (transportControls2 = mediaController4.getTransportControls()) != null) {
                            transportControls2.skipToNext();
                        }
                        return x1.e.f4647c;
                }
            }
        }));
        linearLayout.addView(linearLayout2);
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setOrientation(0);
        LinearLayout linearLayout4 = new LinearLayout(this);
        linearLayout4.setOrientation(1);
        this.f1085g = linearLayout4;
        ScrollView scrollView = new ScrollView(this);
        scrollView.setVerticalScrollBarEnabled(false);
        LinearLayout linearLayout5 = this.f1085g;
        if (linearLayout5 == null) {
            g.h("railFontes");
            throw null;
        }
        scrollView.addView(linearLayout5);
        scrollView.setLayoutParams(new LinearLayout.LayoutParams(f(220), -1));
        linearLayout3.addView(scrollView);
        LinearLayout linearLayout6 = new LinearLayout(this);
        linearLayout6.setOrientation(1);
        linearLayout6.setBackgroundResource(R.drawable.bg_master_card);
        linearLayout6.setPadding(f(20), f(18), f(20), f(18));
        ProgressBar progressBar = new ProgressBar(this);
        progressBar.setIndeterminate(true);
        progressBar.setVisibility(8);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 1;
        layoutParams.topMargin = f(60);
        progressBar.setLayoutParams(layoutParams);
        this.f1088j = progressBar;
        TextView textView2 = new TextView(this);
        textView2.setTextColor(getColor(R.color.cx_text_secondary));
        textView2.setTextSize(20.0f);
        textView2.setVisibility(8);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.topMargin = f(40);
        textView2.setLayoutParams(layoutParams2);
        this.f1089k = textView2;
        GridLayout gridLayout = new GridLayout(this);
        gridLayout.setColumnCount(5);
        this.f1087i = gridLayout;
        ProgressBar progressBar2 = this.f1088j;
        if (progressBar2 == null) {
            g.h("progresso");
            throw null;
        }
        linearLayout6.addView(progressBar2);
        TextView textView3 = this.f1089k;
        if (textView3 == null) {
            g.h("recado");
            throw null;
        }
        linearLayout6.addView(textView3);
        ScrollView scrollView2 = new ScrollView(this);
        scrollView2.setVerticalScrollBarEnabled(false);
        GridLayout gridLayout2 = this.f1087i;
        if (gridLayout2 == null) {
            g.h("grade");
            throw null;
        }
        scrollView2.addView(gridLayout2);
        scrollView2.setLayoutParams(new LinearLayout.LayoutParams(-1, 0, 1.0f));
        linearLayout6.addView(scrollView2);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, -1, 1.0f);
        layoutParams3.setMarginStart(f(18));
        linearLayout3.addView(linearLayout6, layoutParams3);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, 0, 1.0f);
        layoutParams4.topMargin = f(16);
        linearLayout.addView(linearLayout3, layoutParams4);
        LinearLayout linearLayout7 = new LinearLayout(this);
        linearLayout7.setOrientation(0);
        linearLayout7.setGravity(16);
        linearLayout7.setBackgroundResource(R.drawable.bg_master_card);
        linearLayout7.setPadding(f(16), f(12), f(16), f(12));
        ImageView imageView = new ImageView(this);
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        int i4 = R.drawable.bg_master_inner_card;
        imageView.setBackgroundResource(R.drawable.bg_master_inner_card);
        imageView.setLayoutParams(new LinearLayout.LayoutParams(f(64), f(64)));
        this.f1090l = imageView;
        LinearLayout linearLayout8 = new LinearLayout(this);
        linearLayout8.setOrientation(1);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(0, -2, 1.0f);
        layoutParams5.setMarginStart(f(14));
        linearLayout8.setLayoutParams(layoutParams5);
        TextView textView4 = new TextView(this);
        textView4.setText(getString(R.string.k_mbh_nothing_playing));
        textView4.setTextColor(getColor(R.color.cx_text_primary));
        textView4.setTextSize(20.0f);
        textView4.setMaxLines(1);
        this.f1091m = textView4;
        TextView textView5 = new TextView(this);
        textView5.setTextColor(getColor(R.color.cx_text_secondary));
        textView5.setTextSize(15.0f);
        textView5.setMaxLines(1);
        this.f1092n = textView5;
        TextView textView6 = this.f1091m;
        if (textView6 == null) {
            g.h("tituloAgora");
            throw null;
        }
        linearLayout8.addView(textView6);
        TextView textView7 = this.f1092n;
        if (textView7 == null) {
            g.h("subAgora");
            throw null;
        }
        linearLayout8.addView(textView7);
        String string2 = getString(R.string.k_mbh_login);
        g.d(string2, "getString(...)");
        final int i5 = 1;
        TextView textViewD = d(string2, true, new h2.a(this) { // from class: w0.gd
            public final /* synthetic */ MediaBrowserHostActivity b;

            {
                this.b = this;
            }

            @Override // h2.a
            public final Object a() {
                PlaybackState playbackState;
                Bundle extras;
                PendingIntent pendingIntent;
                Object bVar2;
                MediaController.TransportControls transportControls;
                MediaController.TransportControls transportControls2;
                int i6 = i5;
                MediaBrowserHostActivity mediaBrowserHostActivity = this.b;
                switch (i6) {
                    case 0:
                        int i7 = MediaBrowserHostActivity.f1080s;
                        mediaBrowserHostActivity.i();
                        return x1.e.f4647c;
                    case 1:
                        Object obj = x1.e.f4647c;
                        MediaController mediaController = mediaBrowserHostActivity.f1082c;
                        if (mediaController != null && (playbackState = mediaController.getPlaybackState()) != null && (extras = playbackState.getExtras()) != null && (pendingIntent = (PendingIntent) extras.getParcelable("android.media.extras.ERROR_RESOLUTION_ACTION_INTENT")) != null) {
                            try {
                                pendingIntent.send();
                                bVar2 = obj;
                            } catch (Throwable th) {
                                bVar2 = new x1.b(th);
                            }
                            Throwable th2 = bVar2 instanceof x1.b ? ((x1.b) bVar2).f4642a : null;
                            if (th2 != null) {
                                androidx.activity.result.b.s(th2, new StringBuilder("PendingIntent de login falhou: "), "MediaBrowserHost");
                            }
                        }
                        return obj;
                    case 2:
                        MediaController mediaController2 = mediaBrowserHostActivity.f1082c;
                        if (mediaController2 != null && (transportControls = mediaController2.getTransportControls()) != null) {
                            transportControls.skipToPrevious();
                        }
                        return x1.e.f4647c;
                    case 3:
                        MediaController mediaController3 = mediaBrowserHostActivity.f1082c;
                        if (mediaController3 != null) {
                            PlaybackState playbackState2 = mediaController3.getPlaybackState();
                            if (playbackState2 == null || playbackState2.getState() != 3) {
                                mediaController3.getTransportControls().play();
                            } else {
                                mediaController3.getTransportControls().pause();
                            }
                        }
                        return x1.e.f4647c;
                    default:
                        MediaController mediaController4 = mediaBrowserHostActivity.f1082c;
                        if (mediaController4 != null && (transportControls2 = mediaController4.getTransportControls()) != null) {
                            transportControls2.skipToNext();
                        }
                        return x1.e.f4647c;
                }
            }
        });
        this.f1094p = textViewD;
        textViewD.setVisibility(8);
        View view = this.f1090l;
        if (view == null) {
            g.h("capaAgora");
            throw null;
        }
        linearLayout7.addView(view);
        linearLayout7.addView(linearLayout8);
        View view2 = this.f1094p;
        if (view2 == null) {
            g.h("btnEntrar");
            throw null;
        }
        linearLayout7.addView(view2);
        final int i6 = 2;
        linearLayout7.addView(d("⏮", false, new h2.a(this) { // from class: w0.gd
            public final /* synthetic */ MediaBrowserHostActivity b;

            {
                this.b = this;
            }

            @Override // h2.a
            public final Object a() {
                PlaybackState playbackState;
                Bundle extras;
                PendingIntent pendingIntent;
                Object bVar2;
                MediaController.TransportControls transportControls;
                MediaController.TransportControls transportControls2;
                int i7 = i6;
                MediaBrowserHostActivity mediaBrowserHostActivity = this.b;
                switch (i7) {
                    case 0:
                        int i8 = MediaBrowserHostActivity.f1080s;
                        mediaBrowserHostActivity.i();
                        return x1.e.f4647c;
                    case 1:
                        Object obj = x1.e.f4647c;
                        MediaController mediaController = mediaBrowserHostActivity.f1082c;
                        if (mediaController != null && (playbackState = mediaController.getPlaybackState()) != null && (extras = playbackState.getExtras()) != null && (pendingIntent = (PendingIntent) extras.getParcelable("android.media.extras.ERROR_RESOLUTION_ACTION_INTENT")) != null) {
                            try {
                                pendingIntent.send();
                                bVar2 = obj;
                            } catch (Throwable th) {
                                bVar2 = new x1.b(th);
                            }
                            Throwable th2 = bVar2 instanceof x1.b ? ((x1.b) bVar2).f4642a : null;
                            if (th2 != null) {
                                androidx.activity.result.b.s(th2, new StringBuilder("PendingIntent de login falhou: "), "MediaBrowserHost");
                            }
                        }
                        return obj;
                    case 2:
                        MediaController mediaController2 = mediaBrowserHostActivity.f1082c;
                        if (mediaController2 != null && (transportControls = mediaController2.getTransportControls()) != null) {
                            transportControls.skipToPrevious();
                        }
                        return x1.e.f4647c;
                    case 3:
                        MediaController mediaController3 = mediaBrowserHostActivity.f1082c;
                        if (mediaController3 != null) {
                            PlaybackState playbackState2 = mediaController3.getPlaybackState();
                            if (playbackState2 == null || playbackState2.getState() != 3) {
                                mediaController3.getTransportControls().play();
                            } else {
                                mediaController3.getTransportControls().pause();
                            }
                        }
                        return x1.e.f4647c;
                    default:
                        MediaController mediaController4 = mediaBrowserHostActivity.f1082c;
                        if (mediaController4 != null && (transportControls2 = mediaController4.getTransportControls()) != null) {
                            transportControls2.skipToNext();
                        }
                        return x1.e.f4647c;
                }
            }
        }));
        final int i7 = 3;
        TextView textViewD2 = d("▶", false, new h2.a(this) { // from class: w0.gd
            public final /* synthetic */ MediaBrowserHostActivity b;

            {
                this.b = this;
            }

            @Override // h2.a
            public final Object a() {
                PlaybackState playbackState;
                Bundle extras;
                PendingIntent pendingIntent;
                Object bVar2;
                MediaController.TransportControls transportControls;
                MediaController.TransportControls transportControls2;
                int i8 = i7;
                MediaBrowserHostActivity mediaBrowserHostActivity = this.b;
                switch (i8) {
                    case 0:
                        int i9 = MediaBrowserHostActivity.f1080s;
                        mediaBrowserHostActivity.i();
                        return x1.e.f4647c;
                    case 1:
                        Object obj = x1.e.f4647c;
                        MediaController mediaController = mediaBrowserHostActivity.f1082c;
                        if (mediaController != null && (playbackState = mediaController.getPlaybackState()) != null && (extras = playbackState.getExtras()) != null && (pendingIntent = (PendingIntent) extras.getParcelable("android.media.extras.ERROR_RESOLUTION_ACTION_INTENT")) != null) {
                            try {
                                pendingIntent.send();
                                bVar2 = obj;
                            } catch (Throwable th) {
                                bVar2 = new x1.b(th);
                            }
                            Throwable th2 = bVar2 instanceof x1.b ? ((x1.b) bVar2).f4642a : null;
                            if (th2 != null) {
                                androidx.activity.result.b.s(th2, new StringBuilder("PendingIntent de login falhou: "), "MediaBrowserHost");
                            }
                        }
                        return obj;
                    case 2:
                        MediaController mediaController2 = mediaBrowserHostActivity.f1082c;
                        if (mediaController2 != null && (transportControls = mediaController2.getTransportControls()) != null) {
                            transportControls.skipToPrevious();
                        }
                        return x1.e.f4647c;
                    case 3:
                        MediaController mediaController3 = mediaBrowserHostActivity.f1082c;
                        if (mediaController3 != null) {
                            PlaybackState playbackState2 = mediaController3.getPlaybackState();
                            if (playbackState2 == null || playbackState2.getState() != 3) {
                                mediaController3.getTransportControls().play();
                            } else {
                                mediaController3.getTransportControls().pause();
                            }
                        }
                        return x1.e.f4647c;
                    default:
                        MediaController mediaController4 = mediaBrowserHostActivity.f1082c;
                        if (mediaController4 != null && (transportControls2 = mediaController4.getTransportControls()) != null) {
                            transportControls2.skipToNext();
                        }
                        return x1.e.f4647c;
                }
            }
        });
        this.f1093o = textViewD2;
        linearLayout7.addView(textViewD2);
        final int i8 = 4;
        linearLayout7.addView(d("⏭", false, new h2.a(this) { // from class: w0.gd
            public final /* synthetic */ MediaBrowserHostActivity b;

            {
                this.b = this;
            }

            @Override // h2.a
            public final Object a() {
                PlaybackState playbackState;
                Bundle extras;
                PendingIntent pendingIntent;
                Object bVar2;
                MediaController.TransportControls transportControls;
                MediaController.TransportControls transportControls2;
                int i9 = i8;
                MediaBrowserHostActivity mediaBrowserHostActivity = this.b;
                switch (i9) {
                    case 0:
                        int i10 = MediaBrowserHostActivity.f1080s;
                        mediaBrowserHostActivity.i();
                        return x1.e.f4647c;
                    case 1:
                        Object obj = x1.e.f4647c;
                        MediaController mediaController = mediaBrowserHostActivity.f1082c;
                        if (mediaController != null && (playbackState = mediaController.getPlaybackState()) != null && (extras = playbackState.getExtras()) != null && (pendingIntent = (PendingIntent) extras.getParcelable("android.media.extras.ERROR_RESOLUTION_ACTION_INTENT")) != null) {
                            try {
                                pendingIntent.send();
                                bVar2 = obj;
                            } catch (Throwable th) {
                                bVar2 = new x1.b(th);
                            }
                            Throwable th2 = bVar2 instanceof x1.b ? ((x1.b) bVar2).f4642a : null;
                            if (th2 != null) {
                                androidx.activity.result.b.s(th2, new StringBuilder("PendingIntent de login falhou: "), "MediaBrowserHost");
                            }
                        }
                        return obj;
                    case 2:
                        MediaController mediaController2 = mediaBrowserHostActivity.f1082c;
                        if (mediaController2 != null && (transportControls = mediaController2.getTransportControls()) != null) {
                            transportControls.skipToPrevious();
                        }
                        return x1.e.f4647c;
                    case 3:
                        MediaController mediaController3 = mediaBrowserHostActivity.f1082c;
                        if (mediaController3 != null) {
                            PlaybackState playbackState2 = mediaController3.getPlaybackState();
                            if (playbackState2 == null || playbackState2.getState() != 3) {
                                mediaController3.getTransportControls().play();
                            } else {
                                mediaController3.getTransportControls().pause();
                            }
                        }
                        return x1.e.f4647c;
                    default:
                        MediaController mediaController4 = mediaBrowserHostActivity.f1082c;
                        if (mediaController4 != null && (transportControls2 = mediaController4.getTransportControls()) != null) {
                            transportControls2.skipToNext();
                        }
                        return x1.e.f4647c;
                }
            }
        }));
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams6.topMargin = f(14);
        linearLayout.addView(linearLayout7, layoutParams6);
        setContentView(linearLayout);
        List<ResolveInfo> listQueryIntentServices = getPackageManager().queryIntentServices(new Intent("android.media.browse.MediaBrowserService"), 0);
        g.d(listQueryIntentServices, "queryIntentServices(...)");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = listQueryIntentServices.iterator();
        while (it.hasNext()) {
            ServiceInfo serviceInfo = ((ResolveInfo) it.next()).serviceInfo;
            if (serviceInfo == null || g.a(serviceInfo.packageName, getPackageName())) {
                hdVar = null;
            } else {
                try {
                    bVar = serviceInfo.applicationInfo.loadLabel(getPackageManager()).toString();
                } catch (Throwable th) {
                    bVar = new b(th);
                }
                if (bVar instanceof b) {
                    bVar = null;
                }
                String string3 = (String) bVar;
                if (string3 == null) {
                    string3 = serviceInfo.loadLabel(getPackageManager()).toString();
                } else {
                    if (k.m0(string3) || k.f0(string3, '.')) {
                        string3 = null;
                    }
                    if (string3 == null) {
                        string3 = serviceInfo.loadLabel(getPackageManager()).toString();
                    }
                }
                String str = serviceInfo.packageName;
                g.d(str, "packageName");
                String str2 = serviceInfo.name;
                g.d(str2, "name");
                hdVar = new hd(str, str2, string3);
            }
            if (hdVar != null) {
                arrayList.add(hdVar);
            }
        }
        HashSet hashSet = new HashSet();
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            if (hashSet.add(((hd) obj).f3678a)) {
                arrayList2.add(obj);
            }
        }
        List<hd> listI0 = y1.g.i0(arrayList2, new b6(8));
        LinearLayout linearLayout9 = this.f1085g;
        if (linearLayout9 == null) {
            g.h("railFontes");
            throw null;
        }
        linearLayout9.removeAllViews();
        if (listI0.isEmpty()) {
            g(getString(R.string.k_mbh_no_sources), false);
            return;
        }
        for (hd hdVar2 : listI0) {
            LinearLayout linearLayout10 = this.f1085g;
            if (linearLayout10 == null) {
                g.h("railFontes");
                throw null;
            }
            LinearLayout linearLayout11 = new LinearLayout(this);
            linearLayout11.setOrientation(0);
            linearLayout11.setGravity(16);
            linearLayout11.setBackgroundResource(i4);
            linearLayout11.setPadding(f(12), f(12), f(12), f(12));
            linearLayout11.setClickable(true);
            LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(-1, -2);
            layoutParams7.bottomMargin = f(10);
            linearLayout11.setLayoutParams(layoutParams7);
            ImageView imageView2 = new ImageView(this);
            try {
                imageView2.setImageDrawable(getPackageManager().getApplicationIcon(hdVar2.f3678a));
            } catch (Throwable unused) {
            }
            imageView2.setLayoutParams(new LinearLayout.LayoutParams(f(36), f(36)));
            linearLayout11.addView(imageView2);
            TextView textView8 = new TextView(this);
            textView8.setText(hdVar2.f3679c);
            textView8.setTextColor(getColor(R.color.cx_text_primary));
            textView8.setTextSize(18.0f);
            textView8.setMaxLines(1);
            LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(0, -2, 1.0f);
            layoutParams8.setMarginStart(f(10));
            textView8.setLayoutParams(layoutParams8);
            linearLayout11.addView(textView8);
            linearLayout11.setOnClickListener(new a0(this, 7, hdVar2));
            linearLayout10.addView(linearLayout11);
            i4 = R.drawable.bg_master_inner_card;
        }
        g(getString(R.string.k_mbh_pick_source), false);
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        this.f1081a.removeCallbacksAndMessages(null);
        e();
        super.onDestroy();
    }
}
