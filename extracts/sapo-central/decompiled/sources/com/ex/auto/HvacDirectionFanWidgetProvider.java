package com.ex.auto;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.widget.RemoteViews;
import i2.g;
import w0.e8;
import w0.t1;

/* JADX INFO: loaded from: classes.dex */
public final class HvacDirectionFanWidgetProvider extends AppWidgetProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f976a = {R.id.dot_fan_1, R.id.dot_fan_2, R.id.dot_fan_3, R.id.dot_fan_4, R.id.dot_fan_5, R.id.dot_fan_6, R.id.dot_fan_7};

    @Override // android.appwidget.AppWidgetProvider
    public final void onEnabled(Context context) {
        g.e(context, "context");
        int i3 = HomeWidgetsPollService.E;
        t1.y(context);
    }

    @Override // android.appwidget.AppWidgetProvider
    public final void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        g.e(context, "context");
        g.e(appWidgetManager, "appWidgetManager");
        g.e(iArr, "appWidgetIds");
        RemoteViews remoteViewsH = e8.h(context, null, null, null, null);
        for (int i3 : iArr) {
            appWidgetManager.updateAppWidget(i3, remoteViewsH);
        }
        int i4 = HomeWidgetsPollService.E;
        t1.y(context);
    }
}
