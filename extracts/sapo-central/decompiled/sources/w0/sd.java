package w0;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ex.auto.R;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import javax.net.ssl.HttpsURLConnection;

/* JADX INFO: loaded from: classes.dex */
public abstract class sd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile boolean f4234a;
    public static volatile boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Handler f4235c = new Handler(Looper.getMainLooper());

    public static List a(Context context) {
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences("tela_preta_prefs", 0);
            long longVersionCode = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).getLongVersionCode();
            byte[] bArr = u6.f4334a;
            i2.g.b(sharedPreferences);
            String packageName = context.getPackageName();
            i2.g.d(packageName, "getPackageName(...)");
            return u6.d(context, sharedPreferences, packageName, longVersionCode).f4269j;
        } catch (Exception e3) {
            Log.d("MsgMgr", "avisos do servidor indisponiveis: " + e3.getMessage());
            return null;
        }
    }

    public static void b(Context context, SharedPreferences sharedPreferences) {
        if (f4234a || b) {
            return;
        }
        f4234a = true;
        new Thread(new m0(context.getApplicationContext(), sharedPreferences)).start();
    }

    public static int c(Context context, int i3) {
        return (int) (i3 * context.getResources().getDisplayMetrics().density);
    }

    /* JADX WARN: Code duplicated, block: B:50:0x007e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    public static String d() throws Throwable {
        HttpURLConnection httpURLConnection;
        HttpsURLConnection httpsURLConnection = 0;
        try {
            try {
                URLConnection uRLConnectionOpenConnection = new URL("https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/messages.json").openConnection();
                i2.g.c(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
                httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
                httpURLConnection.setConnectTimeout(15000);
                httpURLConnection.setReadTimeout(15000);
                httpURLConnection.setRequestMethod("GET");
                try {
                    if (httpURLConnection.getResponseCode() != 200) {
                        try {
                            httpURLConnection.disconnect();
                        } catch (Exception unused) {
                        }
                        return null;
                    }
                    InputStream inputStream = httpURLConnection.getInputStream();
                    i2.g.d(inputStream, "getInputStream(...)");
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, o2.a.f2622a), 8192);
                    try {
                        String strZ = a1.b.Z(bufferedReader);
                        bufferedReader.close();
                        try {
                            httpURLConnection.disconnect();
                        } catch (Exception unused2) {
                        }
                        return strZ;
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            a1.b.p(bufferedReader, th);
                            throw th2;
                        }
                    }
                } catch (Exception e3) {
                    e = e3;
                    Log.d("MsgMgr", "httpGet: " + e.getMessage());
                    if (httpURLConnection == null) {
                        return null;
                    }
                    try {
                        httpURLConnection.disconnect();
                        return null;
                    } catch (Exception unused3) {
                        return null;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                httpsURLConnection = "https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/messages.json";
                if (httpsURLConnection != 0) {
                    try {
                        httpsURLConnection.disconnect();
                    } catch (Exception unused4) {
                    }
                }
                throw th;
            }
        } catch (Exception e4) {
            e = e4;
            httpURLConnection = null;
        } catch (Throwable th4) {
            th = th4;
            if (httpsURLConnection != 0) {
                httpsURLConnection.disconnect();
            }
            throw th;
        }
    }

    public static GradientDrawable e(Context context, int i3, int i4, Integer num, int i5) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(i3);
        gradientDrawable.setCornerRadius(c(context, i4));
        if (num != null && i5 > 0) {
            gradientDrawable.setStroke(c(context, i5), num.intValue());
        }
        return gradientDrawable;
    }

    public static void f(Context context, String str, String str2, h2.a aVar) {
        if (b) {
            return;
        }
        b = true;
        Object systemService = context.getSystemService("window");
        i2.g.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        WindowManager windowManager = (WindowManager) systemService;
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setGravity(17);
        linearLayout.setBackgroundColor(Color.parseColor("#CC000000"));
        linearLayout.setPadding(c(context, 24), c(context, 24), c(context, 24), c(context, 24));
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(1);
        linearLayout2.setBackground(e(context, Color.parseColor("#F20B131E"), 18, Integer.valueOf(Color.parseColor("#0F1722")), 1));
        linearLayout2.setPadding(c(context, 22), c(context, 20), c(context, 22), c(context, 18));
        TextView textView = new TextView(context);
        textView.setText(str);
        textView.setTextSize(18.0f);
        textView.setTextColor(Color.parseColor("#1C68EF"));
        textView.setTypeface(textView.getTypeface(), 1);
        linearLayout2.addView(textView);
        TextView textView2 = new TextView(context);
        textView2.setText(str2);
        textView2.setTextSize(15.0f);
        textView2.setTextColor(Color.parseColor("#EAF2F8"));
        textView2.setLineSpacing(0.0f, 1.15f);
        textView2.setPadding(0, c(context, 12), 0, c(context, 16));
        linearLayout2.addView(textView2);
        Button button = new Button(context);
        button.setText(context.getString(R.string.common_ok));
        button.setTextColor(Color.parseColor("#FFFFFF"));
        button.setTypeface(button.getTypeface(), 1);
        button.setBackground(e(context, Color.parseColor("#1C68EF"), 12, null, 0));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 8388613;
        linearLayout2.addView(button, layoutParams);
        linearLayout.addView(linearLayout2, new LinearLayout.LayoutParams(c(context, 540), -2));
        ViewGroup.LayoutParams layoutParams2 = new WindowManager.LayoutParams(-1, -1, 2038, 256, -3);
        button.setOnClickListener(new y6(windowManager, linearLayout, aVar, 7));
        try {
            windowManager.addView(linearLayout, layoutParams2);
        } catch (Exception e3) {
            androidx.activity.result.b.o(e3, new StringBuilder("addView: "), "MsgMgr");
            b = false;
        }
    }
}
