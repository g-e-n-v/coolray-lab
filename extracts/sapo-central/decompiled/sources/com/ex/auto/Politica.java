package com.ex.auto;

import android.util.Log;
import androidx.activity.result.b;
import i2.g;
import java.util.ArrayList;
import java.util.Iterator;
import l2.c;
import o2.a;
import w0.re;
import w0.se;
import w0.ya;
import y1.f;
import y1.i;

/* JADX INFO: loaded from: classes.dex */
public final class Politica {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Politica f1126a = new Politica();
    public static final boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile int[] f1127c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static volatile boolean f1128d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String[] f1129e;
    public static volatile boolean f;

    static {
        boolean z2;
        try {
            System.loadLibrary("expolitica");
            z2 = true;
        } catch (Throwable th) {
            a("libexpolitica não carregou: " + th.getMessage());
            z2 = false;
        }
        b = z2;
        f1129e = new String[13];
    }

    public static void a(String str) {
        try {
            Log.w("Politica", str);
        } catch (Throwable unused) {
        }
    }

    public static final String b(int i3) {
        String str = null;
        if (b && i3 >= 0) {
            String[] strArr = f1129e;
            if (i3 < strArr.length) {
                String str2 = strArr[i3];
                if (str2 != null) {
                    str = str2;
                } else {
                    try {
                        byte[] bArrNativeCall = nativeCall(7, e(i3));
                        if (bArrNativeCall.length != 0) {
                            String str3 = new String(bArrNativeCall, a.f2622a);
                            strArr[i3] = str3;
                            str = str3;
                        }
                    } catch (Throwable th) {
                        StringBuilder sbK = b.k("texto[", i3, "] indisponível: ");
                        sbK.append(th.getMessage());
                        a(sbK.toString());
                    }
                }
            }
        }
        if (str == null && !f) {
            f = true;
            a("cofre de caminhos indisponível — binds e serviços do init ficam desligados até a biblioteca carregar");
        }
        return str == null ? "/nao-disponivel" : str;
    }

    public static se d(int i3, long j3) {
        int i4;
        if (b) {
            if (j3 < 0) {
                i4 = -1;
            } else {
                if (j3 > 2147483647L) {
                    j3 = 2147483647L;
                }
                i4 = (int) j3;
            }
            try {
                byte[] bArrNativeCall = nativeCall(4, f.d0(e(i3), e(i4)));
                if (bArrNativeCall.length >= 12) {
                    return new se(f(0, bArrNativeCall), f(4, bArrNativeCall), f(8, bArrNativeCall));
                }
            } catch (Throwable th) {
                a("decisão de saúde falhou: " + th.getMessage());
                return null;
            }
        }
        return null;
    }

    public static byte[] e(int i3) {
        return new byte[]{(byte) (i3 & 255), (byte) ((i3 >> 8) & 255), (byte) ((i3 >> 16) & 255), (byte) ((i3 >> 24) & 255)};
    }

    public static int f(int i3, byte[] bArr) {
        return ((bArr[i3 + 3] & 255) << 24) | (bArr[i3] & 255) | ((bArr[i3 + 1] & 255) << 8) | ((bArr[i3 + 2] & 255) << 16);
    }

    public static ArrayList g(int i3) {
        if (b) {
            try {
                byte[] bArrNativeCall = nativeCall(1, f.d0(f.d0(e(1), e(i3)), e(0)));
                int iF = f(0, bArrNativeCall);
                if (iF >= 0) {
                    c cVarT = k1.a.T(0, iF);
                    ArrayList arrayList = new ArrayList(i.X(cVarT));
                    Iterator it = cVarT.iterator();
                    while (((l2.b) it).f2428c) {
                        int iNextInt = ((l2.b) it).nextInt() * 8;
                        arrayList.add(new re(f(iNextInt + 4, bArrNativeCall), f(iNextInt + 8, bArrNativeCall)));
                    }
                    return arrayList;
                }
            } catch (Throwable th) {
                a("política nativa falhou: " + th.getMessage());
                return null;
            }
        }
        return null;
    }

    public static final int h(int i3) {
        Integer numC = f1126a.c(i3);
        if (numC == null && !f1128d) {
            f1128d = true;
            a("cofre de properties indisponível — as funções do carro que dependem dele vão se declarar sem dado até a biblioteca carregar");
        }
        if (numC != null) {
            return numC.intValue();
        }
        return -1;
    }

    public static byte[] i() {
        if (b) {
            try {
                byte[] bArrNativeCall = nativeCall(2, new byte[0]);
                if (bArrNativeCall.length == 32) {
                    return bArrNativeCall;
                }
            } catch (Throwable th) {
                a("semente indisponível: " + th.getMessage());
                return null;
            }
        }
        return null;
    }

    public static String j() {
        if (b) {
            try {
                byte[] bArrNativeCall = nativeCall(6, new byte[0]);
                if (bArrNativeCall.length == 16) {
                    String strB0 = f.b0(bArrNativeCall, new ya(24));
                    StringBuilder sb = new StringBuilder();
                    String strSubstring = strB0.substring(0, 8);
                    g.d(strSubstring, "substring(...)");
                    sb.append(strSubstring);
                    sb.append('-');
                    String strSubstring2 = strB0.substring(8, 12);
                    g.d(strSubstring2, "substring(...)");
                    sb.append(strSubstring2);
                    sb.append('-');
                    String strSubstring3 = strB0.substring(12, 16);
                    g.d(strSubstring3, "substring(...)");
                    sb.append(strSubstring3);
                    sb.append('-');
                    String strSubstring4 = strB0.substring(16, 20);
                    g.d(strSubstring4, "substring(...)");
                    sb.append(strSubstring4);
                    sb.append('-');
                    String strSubstring5 = strB0.substring(20, 32);
                    g.d(strSubstring5, "substring(...)");
                    sb.append(strSubstring5);
                    return sb.toString();
                }
            } catch (Throwable th) {
                a("uuid indisponível: " + th.getMessage());
                return null;
            }
        }
        return null;
    }

    private static final native byte[] nativeCall(int i3, byte[] bArr);

    public final Integer c(int i3) {
        int[] iArr;
        if (!b) {
            return null;
        }
        int[] iArr2 = f1127c;
        if (iArr2 != null) {
            return f.Z(iArr2, i3);
        }
        synchronized (this) {
            int[] iArr3 = f1127c;
            if (iArr3 != null) {
                return f.Z(iArr3, i3);
            }
            try {
                byte[] bArrNativeCall = nativeCall(5, new byte[0]);
                int iF = f(0, bArrNativeCall);
                if (iF <= 0 || bArrNativeCall.length < (iF * 4) + 4) {
                    iArr = null;
                } else {
                    iArr = new int[iF];
                    for (int i4 = 0; i4 < iF; i4++) {
                        iArr[i4] = f((i4 * 4) + 4, bArrNativeCall);
                    }
                }
            } catch (Throwable th) {
                a("cofre indisponível: " + th.getMessage());
            }
            if (iArr == null) {
                return null;
            }
            f1127c = iArr;
            return f.Z(iArr, i3);
        }
    }
}
