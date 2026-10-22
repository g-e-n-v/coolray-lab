package com.ex.auto;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import e.j;
import i2.g;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import w0.a0;
import w0.b6;
import w0.i;
import w0.q;
import w0.t1;
import x1.d;
import y1.h;
import y1.p;

/* JADX INFO: loaded from: classes.dex */
public final class FavoriteAppsActivity extends j {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final /* synthetic */ int f924t = 0;

    @Override // e.j, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        g.e(context, "newBase");
        super.attachBaseContext(context);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r17v1, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r5v2, types: [android.view.ViewGroup, android.widget.LinearLayout] */
    @Override // e.j, androidx.activity.h, android.app.Activity
    public final void onCreate(Bundle bundle) {
        Iterable iterableI0;
        super.onCreate(bundle);
        getWindow().getDecorView().setSystemUiVisibility(5894);
        setContentView(R.layout.activity_favorite_apps);
        findViewById(R.id.btnFavoriteClose).setOnClickListener(new i(4, this));
        PackageManager packageManager = getPackageManager();
        AttributeSet attributeSet = null;
        Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
        intent.addCategory("android.intent.category.LAUNCHER");
        try {
            List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 0);
            g.d(listQueryIntentActivities, "queryIntentActivities(...)");
            HashSet hashSet = new HashSet();
            ArrayList arrayList = new ArrayList();
            for (Object obj : listQueryIntentActivities) {
                if (hashSet.add(((ResolveInfo) obj).activityInfo.packageName)) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(y1.i.X(arrayList));
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj2 = arrayList.get(i3);
                i3++;
                ResolveInfo resolveInfo = (ResolveInfo) obj2;
                arrayList2.add(new d(resolveInfo.activityInfo.packageName, resolveInfo.loadLabel(packageManager).toString(), resolveInfo.loadIcon(packageManager)));
            }
            iterableI0 = y1.g.i0(arrayList2, new b6(1));
        } catch (Exception unused) {
            iterableI0 = p.f4663a;
        }
        Set setO0 = y1.g.o0(t1.Q(this));
        ?? r5 = (LinearLayout) findViewById(R.id.containerFavoriteApps);
        int i4 = 0;
        for (Object obj3 : iterableI0) {
            int i5 = i4 + 1;
            if (i4 < 0) {
                ?? r17 = attributeSet;
                h.W();
                throw r17;
            }
            d dVar = (d) obj3;
            String str = (String) dVar.f4645a;
            String str2 = (String) dVar.b;
            Drawable drawable = (Drawable) dVar.f4646c;
            if (i4 > 0) {
                View view = new View(this);
                view.setBackgroundColor(getColor(R.color.master_divider));
                view.setLayoutParams(new LinearLayout.LayoutParams(-1, s(1)));
                r5.addView(view);
            }
            g.b(str);
            g.b(drawable);
            boolean zContains = setO0.contains(str);
            q qVar = new q(setO0, str, this, 2);
            MasterToggleView masterToggleView = new MasterToggleView(this, attributeSet);
            masterToggleView.setActive(zContains);
            LinearLayout linearLayout = new LinearLayout(this);
            linearLayout.setOrientation(0);
            linearLayout.setGravity(16);
            linearLayout.setClickable(true);
            linearLayout.setFocusable(true);
            linearLayout.setForeground(getDrawable(android.R.drawable.list_selector_background));
            AttributeSet attributeSet2 = attributeSet;
            linearLayout.setPadding(s(10), 0, s(12), 0);
            linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, s(76)));
            ImageView imageView = new ImageView(this);
            imageView.setImageDrawable(drawable);
            imageView.setContentDescription(str2);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(s(44), s(44));
            layoutParams.setMarginEnd(s(20));
            linearLayout.addView(imageView, layoutParams);
            TextView textView = new TextView(this);
            textView.setText(str2);
            textView.setTextColor(getColor(R.color.master_text));
            textView.setTextSize(20.0f);
            textView.setTypeface(textView.getTypeface(), 0);
            textView.setMaxLines(1);
            textView.setEllipsize(TextUtils.TruncateAt.END);
            linearLayout.addView(textView, new LinearLayout.LayoutParams(0, -2, 1.0f));
            linearLayout.addView(masterToggleView, new LinearLayout.LayoutParams(s(56), s(32)));
            linearLayout.setOnClickListener(new a0(masterToggleView, 2, qVar));
            linearLayout.setContentDescription(str2 + ", " + str);
            r5.addView(linearLayout);
            attributeSet = attributeSet2;
            i4 = i5;
        }
    }

    public final int s(int i3) {
        return (int) (i3 * getResources().getDisplayMetrics().density);
    }
}
