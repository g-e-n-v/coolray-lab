package com.ex.auto;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.widget.RemoteViews;
import i2.g;
import w0.e8;
import w0.t1;

/* JADX INFO: loaded from: classes.dex */
public final class HvacDirectionVerticalWidgetProvider extends AppWidgetProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f977a = 0;

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
        RemoteViews remoteViewsG = e8.g(context, null, null);
        for (int i3 : iArr) {
            appWidgetManager.updateAppWidget(i3, remoteViewsG);
        }
        int i4 = HomeWidgetsPollService.E;
        t1.y(context);
    }
}
