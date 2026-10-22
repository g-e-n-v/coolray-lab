package w0;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.car.hardware.property.CarPropertyManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.util.Log;
import com.ex.auto.MainActivity;
import com.ex.auto.Politica;
import com.ex.auto.R;
import java.util.Arrays;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class pg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f4073a = Politica.h(21);
    public static final int b = Politica.h(23);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final HashMap f4074c;

    static {
        Politica.h(24);
        f4074c = new HashMap();
    }

    public static Icon a(Context context, String str, String str2, int i3, int i4, boolean z2, boolean z3, float f) {
        float fMeasureText;
        float f3;
        float fH;
        int iMax;
        Paint paint = new Paint(129);
        paint.setColor(i3);
        Typeface typeface = Typeface.DEFAULT;
        paint.setTypeface(typeface);
        float fH2 = h(context, 56);
        float f4 = f * fH2;
        paint.setTextSize(fH2);
        float fMeasureText2 = paint.measureText(str);
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        float f5 = fontMetrics.descent - fontMetrics.ascent;
        if (str2.length() == 0) {
            f3 = 0.0f;
            fMeasureText = 0.0f;
            fH = 0.0f;
        } else {
            paint.setTextSize(f4);
            fMeasureText = paint.measureText(str2);
            f3 = 0.0f;
            fH = h(context, f < 0.5f ? 1 : 3);
        }
        int i5 = (int) (f5 / 0.61f);
        if (i5 < 1) {
            i5 = 1;
        }
        int iH = h(context, i4);
        int i6 = (iH * 2) + ((int) (fMeasureText2 + fH + fMeasureText));
        if (z3) {
            Paint paint2 = new Paint(129);
            paint2.setTypeface(typeface);
            float fH3 = h(context, 56);
            paint2.setTextSize(fH3);
            float fMeasureText3 = paint2.measureText("99999");
            paint2.setTextSize(fH3 * 0.55f);
            iMax = (int) (paint2.measureText("km") + h(context, 1) + fMeasureText3);
        } else if (z2) {
            Paint paint3 = new Paint(129);
            paint3.setTypeface(typeface);
            float fH4 = h(context, 56);
            float f6 = 0.82f * fH4;
            float fH5 = h(context, 3);
            int iH2 = h(context, 10);
            paint3.setTextSize(fH4);
            float fMeasureText4 = paint3.measureText("-40");
            paint3.setTextSize(f6);
            int iMeasureText = (int) (fMeasureText4 + fH5 + paint3.measureText("°C"));
            int i7 = iH2 * 2;
            paint3.setTextSize(fH4);
            float fMeasureText5 = paint3.measureText("100");
            paint3.setTextSize(f6);
            iMax = Math.max(iMeasureText + i7, i7 + ((int) (fMeasureText5 + fH5 + paint3.measureText("%"))));
        } else {
            iMax = 0;
        }
        int iMax2 = Math.max(i6, iMax);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMax2 >= 1 ? iMax2 : 1, i5, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        float f7 = ((i5 - f5) / 2.0f) - fontMetrics.ascent;
        paint.setTextSize(fH2);
        float f8 = (iMax2 - i6) / 2.0f;
        if (f8 < f3) {
            f8 = f3;
        }
        float f9 = iH;
        canvas.drawText(str, f9 + f8, f7, paint);
        if (str2.length() > 0) {
            paint.setTextSize(f4);
            canvas.drawText(str2, f9 + fMeasureText2 + fH + f8, f7, paint);
        }
        Icon iconCreateWithBitmap = Icon.createWithBitmap(bitmapCreateBitmap);
        i2.g.d(iconCreateWithBitmap, "createWithBitmap(...)");
        return iconCreateWithBitmap;
    }

    public static void c(Context context) {
        NotificationManager notificationManager = (NotificationManager) context.getApplicationContext().getSystemService(NotificationManager.class);
        if (notificationManager != null) {
            notificationManager.cancel(15021);
            notificationManager.cancel(15020);
        }
        HashMap map = f4074c;
        map.remove(15021);
        map.remove(15020);
    }

    public static void d(Context context) {
        i2.g.e(context, "context");
        NotificationManager notificationManager = (NotificationManager) context.getApplicationContext().getSystemService(NotificationManager.class);
        if (notificationManager != null) {
            notificationManager.cancel(15020);
        }
        f4074c.remove(15020);
    }

    public static void e(Context context) {
        i2.g.e(context, "context");
        NotificationManager notificationManager = (NotificationManager) context.getApplicationContext().getSystemService(NotificationManager.class);
        if (notificationManager != null) {
            notificationManager.cancel(15021);
        }
        f4074c.remove(15021);
    }

    public static void f(Context context) {
        i2.g.e(context, "context");
        NotificationManager notificationManager = (NotificationManager) context.getApplicationContext().getSystemService(NotificationManager.class);
        if (notificationManager != null) {
            notificationManager.cancel(15028);
        }
        f4074c.remove(15028);
    }

    public static void g(Context context) {
        i2.g.e(context, "context");
        NotificationManager notificationManager = (NotificationManager) context.getApplicationContext().getSystemService(NotificationManager.class);
        if (notificationManager != null) {
            notificationManager.cancel(15026);
        }
        f4074c.remove(15026);
    }

    public static int h(Context context, int i3) {
        return (int) ((i3 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static String i(float f) {
        float fRound = Math.round(f * 10.0f) / 10.0f;
        int i3 = (int) fRound;
        return fRound == ((float) i3) ? String.valueOf(i3) : String.format("%.1f", Arrays.copyOf(new Object[]{Float.valueOf(fRound)}, 1));
    }

    public static void j(Context context, int i3, int i4, int i5, String str, String str2, String str3, Icon icon, PendingIntent pendingIntent) {
        Context applicationContext = context.getApplicationContext();
        NotificationManager notificationManager = (NotificationManager) applicationContext.getSystemService(NotificationManager.class);
        if (notificationManager == null) {
            return;
        }
        NotificationChannel notificationChannel = new NotificationChannel("central_ex_status_temp", applicationContext.getString(R.string.k_temp_icon_channel), 2);
        notificationChannel.setShowBadge(false);
        notificationManager.createNotificationChannel(notificationChannel);
        Integer numValueOf = Integer.valueOf(i3);
        HashMap map = f4074c;
        Integer num = (Integer) map.get(numValueOf);
        if (num != null && num.intValue() != i5) {
            try {
                notificationManager.cancel(i3);
            } catch (Throwable unused) {
            }
        }
        map.put(Integer.valueOf(i3), Integer.valueOf(i5));
        Log.i("KmIconProbe", "postStatusIcon " + str + " notifId=" + i3 + " iconId=" + i4 + " rank=" + i5 + " text=\"" + str3 + '\"');
        if (pendingIntent == null) {
            pendingIntent = PendingIntent.getActivity(applicationContext, i4, new Intent(applicationContext, (Class<?>) MainActivity.class), 201326592);
        }
        Notification notificationBuild = new Notification.Builder(applicationContext, "central_ex_status_temp").setSmallIcon(icon).setContentTitle(str2).setContentText(str3).setContentIntent(pendingIntent).setOngoing(true).setShowWhen(false).build();
        i2.g.d(notificationBuild, "build(...)");
        Bundle bundle = notificationBuild.extras;
        bundle.putBoolean("flag_status_icon_notification", true);
        bundle.putInt("flag_status_icon_id", i4);
        bundle.putString("flag_status_icon_describe", str);
        bundle.putParcelable("flag_status_icon_icon", icon);
        bundle.putParcelable("flag_status_icon_pressed_icon", icon);
        bundle.putBoolean("flag_status_icon_hide", false);
        bundle.putInt("flag_status_icon_rank", i5);
        bundle.putInt("flag_status_icon_space_x", 1);
        bundle.putBoolean("flag_status_icon_is_pick_on", false);
        bundle.putInt("flag_status_icon_specific_width", 0);
        try {
            notificationManager.notify(i3, notificationBuild);
        } catch (Throwable unused2) {
        }
    }

    public static Float k(CarPropertyManager carPropertyManager, int i3) {
        String string;
        Integer numC = p1.c(carPropertyManager, i3, 0);
        Float fValueOf = numC != null ? Float.valueOf(numC.intValue()) : p1.b(carPropertyManager, i3, 0);
        Integer numValueOf = Integer.valueOf(i3);
        if (fValueOf == null || (string = fValueOf.toString()) == null) {
            string = "null";
        }
        Log.i("OdoProbe", String.format("0x%x -> %s", Arrays.copyOf(new Object[]{numValueOf, string}, 2)));
        if (fValueOf == null) {
            return null;
        }
        float fFloatValue = fValueOf.floatValue();
        if (fFloatValue < 1.0f || fFloatValue > 2000000.0f) {
            return null;
        }
        return fValueOf;
    }

    public static Float l(CarPropertyManager carPropertyManager) {
        if (carPropertyManager == null) {
            return null;
        }
        AtomicInteger atomicInteger = p1.f4042a;
        return e8.P(p1.b(carPropertyManager, b, 0));
    }
}
