package w0;

import android.content.Context;
import com.ex.auto.R;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class pd implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4067a;
    public final /* synthetic */ Context b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ q6 f4068c;

    public /* synthetic */ pd(Context context, q6 q6Var, int i3) {
        this.f4067a = i3;
        this.b = context;
        this.f4068c = q6Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4067a) {
            case 0:
                Context context = this.b;
                q6 q6Var = this.f4068c;
                boolean z2 = sd.f4234a;
                i2.g.b(context);
                String string = q6Var.b;
                if (o2.k.m0(string)) {
                    string = context.getString(R.string.k_notice_default_title);
                    i2.g.d(string, "getString(...)");
                }
                sd.f(context, string, q6Var.f4098c, new y2(context, 12, q6Var));
                return;
            default:
                Context context2 = this.b;
                q6 q6Var2 = this.f4068c;
                byte[] bArr = u6.f4334a;
                long j3 = q6Var2.f4097a;
                i2.g.e(context2, "context");
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("xdsn", u6.g());
                    jSONObject.put("vin", u6.f("sys.ecarx.vin"));
                    jSONObject.put("avisoId", j3);
                    jSONObject.put("nonce", UUID.randomUUID().toString());
                    String string2 = jSONObject.toString();
                    i2.g.d(string2, "toString(...)");
                    byte[] bytes = string2.getBytes(o2.a.f2622a);
                    i2.g.d(bytes, "getBytes(...)");
                    URLConnection uRLConnectionOpenConnection = new URL("https://exsapo-dist.appsdecarro.workers.dev/v1/aviso-visto").openConnection();
                    i2.g.c(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
                    HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
                    httpURLConnection.setRequestMethod("POST");
                    httpURLConnection.setConnectTimeout(10000);
                    httpURLConnection.setReadTimeout(15000);
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setRequestProperty("content-type", "application/json");
                    httpURLConnection.setRequestProperty("x-sig", u6.e(u6.b(), bytes));
                    httpURLConnection.setRequestProperty("User-Agent", "CentralEXAuto (IHU629G)");
                    try {
                        OutputStream outputStream = httpURLConnection.getOutputStream();
                        try {
                            outputStream.write(bytes);
                            outputStream.close();
                            httpURLConnection.getResponseCode();
                            try {
                                httpURLConnection.disconnect();
                                return;
                            } catch (Exception unused) {
                                return;
                            }
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                a1.b.p(outputStream, th);
                                throw th2;
                            }
                        }
                    } catch (Throwable th3) {
                        try {
                            httpURLConnection.disconnect();
                            break;
                        } catch (Exception unused2) {
                        }
                        throw th3;
                    }
                } catch (Exception e3) {
                    StringBuilder sb = new StringBuilder("confirmar aviso ");
                    sb.append(j3);
                    sb.append(" falhou: ");
                    androidx.activity.result.b.o(e3, sb, "ExsapoDist");
                    return;
                }
        }
    }
}
