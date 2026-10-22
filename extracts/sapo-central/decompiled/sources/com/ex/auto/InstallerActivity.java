package com.ex.auto;

import a1.i;
import android.app.AlertDialog;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.activity.result.b;
import androidx.emoji2.text.m;
import com.ex.auto.InstallerActivity;
import com.ex.auto.R;
import e.j;
import i2.g;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.scheduling.h;
import w0.zd;

/* JADX INFO: loaded from: classes.dex */
public final class InstallerActivity extends j {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final /* synthetic */ int f979v = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public TextView f980t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final String f981u = "installer-activity-" + System.identityHashCode(this);

    public static String t(File file) {
        StringBuilder sb = new StringBuilder("pm install -r -g -d -t ");
        String absolutePath = file.getAbsolutePath();
        g.d(absolutePath, "getAbsolutePath(...)");
        sb.append(b.i(absolutePath, "'", "'\\''", new StringBuilder("'"), '\''));
        sb.append(" 2>&1");
        String strB = new h(5555).b(60000, sb.toString());
        g.d(strB, "runShell(...)");
        return strB;
    }

    @Override // e.j, androidx.activity.h, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setLayout((int) (((double) getResources().getDisplayMetrics().widthPixels) * 0.72d), -2);
        float f = getResources().getDisplayMetrics().density;
        int i3 = (int) (20 * f);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(i3, i3, i3, i3);
        TextView textView = new TextView(this);
        textView.setText(getString(R.string.app_name) + " — " + getString(R.string.k_installer_title));
        textView.setTextSize(15.0f);
        int i4 = (int) (((float) 12) * f);
        textView.setPadding(0, 0, 0, i4);
        ProgressBar progressBar = new ProgressBar(this, null, android.R.attr.progressBarStyleHorizontal);
        progressBar.setIndeterminate(true);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.bottomMargin = i4;
        progressBar.setLayoutParams(layoutParams);
        TextView textView2 = new TextView(this);
        textView2.setText(getString(R.string.k_installer_preparing));
        textView2.setTextSize(13.0f);
        this.f980t = textView2;
        linearLayout.addView(textView);
        linearLayout.addView(progressBar);
        View view = this.f980t;
        if (view == null) {
            g.h("tvStatus");
            throw null;
        }
        linearLayout.addView(view);
        setContentView(linearLayout);
        Uri data = getIntent().getData();
        if (data == null) {
            finish();
        } else {
            u(data);
        }
    }

    @Override // e.j, androidx.activity.h, android.app.Activity
    public final void onNewIntent(Intent intent) {
        g.e(intent, "intent");
        super.onNewIntent(intent);
        setIntent(intent);
        Uri data = intent.getData();
        if (data != null) {
            u(data);
        }
    }

    public final boolean s(final File file, PackageInfo packageInfo) {
        final String str;
        String str2;
        if (packageInfo == null || (str = packageInfo.packageName) == null) {
            return false;
        }
        String strValueOf = packageInfo.versionName;
        if (strValueOf == null) {
            strValueOf = String.valueOf(packageInfo.getLongVersionCode());
        }
        final String str3 = strValueOf;
        try {
            str2 = getPackageManager().getPackageInfo(str, 0).versionName;
        } catch (Exception unused) {
            str2 = null;
        }
        final String string = str2 != null ? getString(R.string.k_installer_confirm_update, str2) : getString(R.string.k_installer_confirm_new);
        g.b(string);
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        runOnUiThread(new Runnable() { // from class: w0.j8
            @Override // java.lang.Runnable
            public final void run() {
                int i3 = InstallerActivity.f979v;
                InstallerActivity installerActivity = this.f3752a;
                boolean zIsFinishing = installerActivity.isFinishing();
                CountDownLatch countDownLatch2 = countDownLatch;
                if (zIsFinishing || installerActivity.isDestroyed()) {
                    countDownLatch2.countDown();
                } else {
                    int i4 = 1;
                    new AlertDialog.Builder(installerActivity).setTitle(installerActivity.getString(R.string.k_installer_confirm_title)).setMessage(installerActivity.getString(R.string.k_installer_confirm_msg, file.getName(), str, str3, string)).setCancelable(false).setPositiveButton(installerActivity.getString(R.string.k_installer_confirm_install), new g(atomicBoolean, i4, countDownLatch2)).setNegativeButton(installerActivity.getString(R.string.common_cancel), new h(3, countDownLatch2)).setOnDismissListener(new l0(i4, countDownLatch2)).show();
                }
            }
        });
        try {
            return countDownLatch.await(5L, TimeUnit.MINUTES) && atomicBoolean.get();
        } catch (InterruptedException unused2) {
            return false;
        }
    }

    public final void u(Uri uri) {
        m mVar = zd.f4636a;
        if (zd.b(this.f981u)) {
            new Thread(new i(this, 18, uri)).start();
            return;
        }
        TextView textView = this.f980t;
        if (textView != null) {
            textView.setText(getString(R.string.k_installer_already_running));
        } else {
            g.h("tvStatus");
            throw null;
        }
    }

    public final File v(Uri uri) throws Exception {
        if (g.a(uri.getScheme(), "file")) {
            String path = uri.getPath();
            g.b(path);
            return new File(path);
        }
        File file = new File(getCacheDir(), "pending_install-" + System.nanoTime() + ".apk");
        try {
            InputStream inputStreamOpenInputStream = getContentResolver().openInputStream(uri);
            try {
                if (inputStreamOpenInputStream == null) {
                    String string = getString(R.string.k_installer_invalid_apk);
                    g.d(string, "getString(...)");
                    throw new IllegalArgumentException(string.toString());
                }
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    a1.b.r(inputStreamOpenInputStream, fileOutputStream);
                    fileOutputStream.close();
                    inputStreamOpenInputStream.close();
                    return file;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        a1.b.p(fileOutputStream, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    a1.b.p(inputStreamOpenInputStream, th3);
                    throw th4;
                }
            }
        } catch (Exception e3) {
            file.delete();
            throw e3;
        }
        file.delete();
        throw e3;
    }

    public final void w(String str, boolean z2) {
        String string = z2 ? getString(R.string.k_installer_success) : getString(R.string.k_installer_failure, str);
        g.b(string);
        new AlertDialog.Builder(this).setTitle(getString(z2 ? R.string.k_installer_done_title : R.string.k_installer_error_title)).setMessage(string).setPositiveButton(getString(R.string.common_ok), new w0.h(2, this)).setCancelable(false).show();
    }
}
