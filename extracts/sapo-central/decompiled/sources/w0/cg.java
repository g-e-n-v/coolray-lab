package w0;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.provider.Settings;
import android.util.Log;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public abstract class cg {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static volatile Proxy f3450d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ExecutorService f3448a = Executors.newSingleThreadExecutor();
    public static final Object b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final HashMap f3449c = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final bg f3451e = new bg(12);
    public static final Set f = Collections.newSetFromMap(new ConcurrentHashMap());

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final ConcurrentHashMap f3452g = new ConcurrentHashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Set f3453h = Collections.newSetFromMap(new ConcurrentHashMap());

    public static File a(Context context, String str) throws NoSuchAlgorithmException {
        File fileG = g(context);
        if (fileG == null) {
            return null;
        }
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        byte[] bytes = str.getBytes(o2.a.f2622a);
        i2.g.d(bytes, "getBytes(...)");
        byte[] bArrDigest = messageDigest.digest(bytes);
        i2.g.d(bArrDigest, "digest(...)");
        return new File(fileG, y1.g.e0(y1.f.f0(8, bArrDigest), "", new zf(0), 30).concat(".img"));
    }

    public static Bitmap b(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        int i3 = 0;
        while (true) {
            int i4 = inputStream.read(bArr);
            if (i4 >= 0) {
                i3 += i4;
                if (i3 > 8388608) {
                    throw new IllegalArgumentException("capa maior que 8 MB");
                }
                byteArrayOutputStream.write(bArr, 0, i4);
            } else {
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                BitmapFactory.Options options = new BitmapFactory.Options();
                int i5 = 1;
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length, options);
                if (options.outWidth <= 0 || options.outHeight <= 0) {
                    return null;
                }
                while (true) {
                    if (options.outWidth / i5 <= 1024 && options.outHeight / i5 <= 1024) {
                        int length = byteArray.length;
                        BitmapFactory.Options options2 = new BitmapFactory.Options();
                        options2.inSampleSize = i5;
                        return BitmapFactory.decodeByteArray(byteArray, 0, length, options2);
                    }
                    i5 *= 2;
                }
            }
        }
    }

    public static Bitmap c(Context context, String str) throws IOException {
        URLConnection uRLConnectionOpenConnection;
        if (!o2.t.d0(str, "http://") && !o2.t.d0(str, "https://")) {
            String strDecode = o2.t.d0(str, "file://") ? URLDecoder.decode(o2.k.r0(str, "file://"), "UTF-8") : null;
            if (strDecode == null) {
                try {
                    InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(Uri.parse(str));
                    if (inputStreamOpenInputStream == null) {
                        return null;
                    }
                    try {
                        Bitmap bitmapB = b(inputStreamOpenInputStream);
                        inputStreamOpenInputStream.close();
                        return bitmapB;
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            a1.b.p(inputStreamOpenInputStream, th);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    androidx.activity.result.b.s(th3, androidx.activity.result.b.l("content:// '", str, "' sem acesso: "), "RemoteArtwork");
                    return null;
                }
            }
            File file = new File(strDecode);
            if (!file.isFile()) {
                Log.i("RemoteArtwork", "file:// anunciado e INEXISTENTE: ".concat(strDecode));
                return null;
            }
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    Bitmap bitmapB2 = b(fileInputStream);
                    fileInputStream.close();
                    return bitmapB2;
                } catch (Throwable th4) {
                    try {
                        throw th4;
                    } catch (Throwable th5) {
                        a1.b.p(fileInputStream, th4);
                        throw th5;
                    }
                }
            } catch (Throwable th6) {
                androidx.activity.result.b.s(th6, androidx.activity.result.b.l("file:// '", strDecode, "' ilegível: "), "RemoteArtwork");
                return null;
            }
        }
        URL url = new URL(str);
        Proxy proxy = f3450d;
        if (proxy == null || (uRLConnectionOpenConnection = url.openConnection(proxy)) == null) {
            uRLConnectionOpenConnection = url.openConnection();
        }
        i2.g.c(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        httpURLConnection.setConnectTimeout(6000);
        httpURLConnection.setReadTimeout(6000);
        httpURLConnection.setRequestProperty("User-Agent", "TelaPretaCentral-MediaBridge (com.ex.auto)");
        try {
            if (httpURLConnection.getResponseCode() != 200) {
                Log.w("RemoteArtwork", "HTTP " + httpURLConnection.getResponseCode() + " p/ " + str);
                httpURLConnection.disconnect();
                return null;
            }
            int contentLength = httpURLConnection.getContentLength();
            if (contentLength > 8388608) {
                Log.w("RemoteArtwork", "capa recusada: " + contentLength + " bytes");
                httpURLConnection.disconnect();
                return null;
            }
            InputStream inputStream = httpURLConnection.getInputStream();
            try {
                i2.g.b(inputStream);
                Bitmap bitmapB3 = b(inputStream);
                inputStream.close();
                httpURLConnection.disconnect();
                return bitmapB3;
            } catch (Throwable th7) {
                try {
                    throw th7;
                } catch (Throwable th8) {
                    a1.b.p(inputStream, th7);
                    throw th8;
                }
            }
        } catch (Throwable th9) {
            httpURLConnection.disconnect();
            throw th9;
        }
    }

    public static Bitmap d(Context context, String str) throws NoSuchAlgorithmException {
        i2.g.e(str, "chave");
        bg bgVar = f3451e;
        Bitmap bitmap = (Bitmap) bgVar.get(str);
        if (bitmap != null) {
            return bitmap;
        }
        File fileA = a(context, str);
        if (fileA == null || !fileA.isFile()) {
            return null;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(fileA);
            try {
                Bitmap bitmapB = b(fileInputStream);
                fileInputStream.close();
                if (bitmapB == null) {
                    return null;
                }
                bgVar.put(str, bitmapB);
                fileA.setLastModified(System.currentTimeMillis());
                return bitmapB;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    a1.b.p(fileInputStream, th);
                    throw th2;
                }
            }
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void e(Context context, String str, h2.l lVar) {
        synchronized (b) {
            HashMap map = f3449c;
            List list = (List) map.get(str);
            if (list != null) {
                list.add(lVar);
            } else {
                map.put(str, new ArrayList(new l.j(1, new h2.l[]{lVar})));
                f3448a.execute(new ab(context.getApplicationContext(), 11, str));
            }
        }
    }

    public static void f(Context context, String str, Bitmap bitmap) throws NoSuchAlgorithmException {
        File[] fileArrListFiles;
        f3451e.put(str, bitmap);
        File fileA = a(context, str);
        if (fileA == null) {
            return;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(fileA);
            try {
                bitmap.compress(Bitmap.CompressFormat.JPEG, 90, fileOutputStream);
                fileOutputStream.close();
                File fileG = g(context);
                if (fileG == null || (fileArrListFiles = fileG.listFiles()) == null || fileArrListFiles.length <= 60) {
                    return;
                }
                Iterator it = y1.g.j0(y1.f.e0(fileArrListFiles, new b6(14)), fileArrListFiles.length - 60).iterator();
                while (it.hasNext()) {
                    ((File) it.next()).delete();
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    a1.b.p(fileOutputStream, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            androidx.activity.result.b.s(th3, new StringBuilder("não consegui guardar a capa: "), "RemoteArtwork");
        }
    }

    public static File g(Context context) {
        try {
            File externalFilesDir = context.getExternalFilesDir(null);
            if (externalFilesDir == null) {
                externalFilesDir = context.getFilesDir();
            }
            File file = new File(externalFilesDir, "capas");
            if (!file.isDirectory()) {
                file.mkdirs();
            }
            return file;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String h(String str) throws IOException {
        URLConnection uRLConnectionOpenConnection;
        String str2;
        URL url = new URL(str);
        Proxy proxy = f3450d;
        if (proxy == null || (uRLConnectionOpenConnection = url.openConnection(proxy)) == null) {
            uRLConnectionOpenConnection = url.openConnection();
        }
        i2.g.c(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        httpURLConnection.setConnectTimeout(6000);
        httpURLConnection.setReadTimeout(6000);
        httpURLConnection.setRequestProperty("User-Agent", "TelaPretaCentral (com.ex.auto)");
        try {
            if (httpURLConnection.getResponseCode() != 200) {
                Log.w("RemoteArtwork", "busca de capa: HTTP " + httpURLConnection.getResponseCode());
                str2 = null;
            } else {
                InputStream inputStream = httpURLConnection.getInputStream();
                i2.g.d(inputStream, "getInputStream(...)");
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, o2.a.f2622a), 8192);
                try {
                    String strZ = a1.b.Z(bufferedReader);
                    bufferedReader.close();
                    str2 = strZ;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        a1.b.p(bufferedReader, th);
                        throw th2;
                    }
                }
            }
            httpURLConnection.disconnect();
            return str2;
        } catch (Throwable th3) {
            httpURLConnection.disconnect();
            throw th3;
        }
    }

    public static void i(Context context) {
        String string;
        Proxy proxy = null;
        try {
            string = Settings.Global.getString(context.getContentResolver(), "http_proxy");
        } catch (Throwable unused) {
            string = null;
        }
        if (string != null && !o2.k.m0(string) && o2.k.e0(string, ":", false)) {
            try {
                String string2 = o2.k.E0(o2.k.B0(string, ":")).toString();
                int i3 = Integer.parseInt(o2.k.E0(o2.k.B0(o2.k.y0(string, ":", string), ";")).toString());
                if (string2.length() > 0) {
                    proxy = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(string2, i3));
                }
            } catch (Throwable unused2) {
            }
        }
        f3450d = proxy;
    }
}
