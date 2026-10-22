package w0;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.ex.auto.VhalProviderService;
import java.util.ArrayDeque;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class ch {
    public static int P = 240;
    public static volatile m Q;
    public long A;
    public Float B;
    public Float C;
    public Float D;
    public Float E;
    public Float F;
    public Float G;
    public Float H;
    public float I;
    public float J;
    public int K;
    public float L;
    public float M;
    public float N;
    public String O;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public w3 f3454a;
    public w3 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public w3 f3455c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public w3 f3456d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public double f3457e;
    public double f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public double f3458g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3459h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f3460i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3461j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f3462k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f3463l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f3464m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3465n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f3466o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f3467p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f3468q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public long f3469r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public double f3470s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public double f3471t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public double f3472u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public double f3473v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public double f3474w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final m3 f3475x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f3476y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public long f3477z;

    public ch(m3 m3Var) {
        this.f3475x = m3Var;
    }

    public static void c(ContentValues contentValues, String str, String str2) {
        if (str2 == null || str2.isEmpty()) {
            return;
        }
        contentValues.put(str, str2);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x02d6  */
    /* JADX WARN: Code duplicated, block: B:104:0x02df  */
    /* JADX WARN: Code duplicated, block: B:107:0x02e8  */
    /* JADX WARN: Code duplicated, block: B:116:0x0323 A[Catch: all -> 0x0040, TryCatch #0 {all -> 0x0040, blocks: (B:114:0x0305, B:116:0x0323, B:118:0x0331, B:119:0x0333, B:129:0x0358, B:120:0x0334, B:121:0x0345, B:123:0x034e, B:126:0x0354), top: B:134:0x0305, inners: #2 }] */
    /* JADX WARN: Code duplicated, block: B:123:0x034e A[Catch: all -> 0x0352, LOOP:1: B:121:0x0345->B:123:0x034e, LOOP_END, TryCatch #2 {all -> 0x0352, blocks: (B:120:0x0334, B:121:0x0345, B:123:0x034e, B:126:0x0354), top: B:137:0x0334, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:134:0x0305 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:135:0x02f0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:137:0x0334 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:140:0x0331 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:141:? A[LOOP:0: B:115:0x0321->B:141:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:142:0x0354 A[EDGE_INSN: B:142:0x0354->B:126:0x0354 BREAK  A[LOOP:1: B:121:0x0345->B:123:0x034e], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x018b  */
    /* JADX WARN: Code duplicated, block: B:52:0x0196  */
    /* JADX WARN: Code duplicated, block: B:54:0x019e  */
    /* JADX WARN: Code duplicated, block: B:56:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:57:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:60:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:67:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:70:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:71:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:73:0x020b  */
    /* JADX WARN: Code duplicated, block: B:83:0x0229  */
    /* JADX WARN: Code duplicated, block: B:86:0x0234  */
    /* JADX WARN: Code duplicated, block: B:89:0x0248  */
    /* JADX WARN: Code duplicated, block: B:92:0x02bb  */
    /* JADX WARN: Code duplicated, block: B:95:0x02c4  */
    /* JADX WARN: Code duplicated, block: B:98:0x02cd  */
    public final void a(long j3) {
        long j4;
        Double dValueOf;
        long j5;
        double d3;
        double d4;
        double d5;
        double d6;
        float f;
        float f3;
        double d7;
        double dSqrt;
        double d8;
        Double dValueOf2;
        long j6;
        double d9;
        Double dValueOf3;
        double d10;
        long j7;
        String string;
        Float f4;
        Float f5;
        Float f6;
        Float f7;
        Float f8;
        Float f9;
        m3 m3Var;
        String str;
        ArrayList arrayListA;
        int size;
        int i3;
        String str2;
        ArrayDeque arrayDeque;
        Float f10;
        float fFloatValue = (this.B == null || (f10 = this.E) == null || f10.floatValue() - this.B.floatValue() <= 0.0f) ? this.N : this.E.floatValue() - this.B.floatValue();
        long j8 = j3 - this.f3477z;
        if (fFloatValue >= 0.2f || j8 >= 120000) {
            int i4 = this.K;
            float f11 = i4 > 0 ? this.J / i4 : 0.0f;
            float f12 = fFloatValue > 0.0f ? (this.L * 100.0f) / fFloatValue : 0.0f;
            String str3 = this.O;
            String str4 = (str3 == null || str3.equals("unknown")) ? "unknown" : this.O;
            ContentValues contentValues = new ContentValues();
            w3 w3Var = this.b;
            if (w3Var != null) {
                c(contentValues, "curva_vel", w3Var.b(10.0f, false));
                c(contentValues, "curva_vel_max", this.b.b(10.0f, true));
                c(contentValues, "curva_pot", this.f3454a.b(10.0f, false));
                c(contentValues, "curva_pot_pico", this.f3454a.b(10.0f, true));
                c(contentValues, "curva_soc", this.f3455c.b(10.0f, false));
                c(contentValues, "curva_pot_bruta", this.f3456d.b(1.0f, false));
            }
            contentValues.put("pot_fonte", "soc");
            contentValues.put("pot_diag_v", (Integer) 1);
            contentValues.put("pot_diag_pwr_erro", Integer.valueOf(this.f3460i));
            contentValues.put("pot_diag_pwr_zero", Integer.valueOf(this.f3461j));
            contentValues.put("pot_diag_pwr_ok", Integer.valueOf(this.f3462k));
            contentValues.put("pot_diag_cur_erro", Integer.valueOf(this.f3463l));
            contentValues.put("pot_diag_cur_zero", Integer.valueOf(this.f3464m));
            contentValues.put("pot_diag_cur_ok", Integer.valueOf(this.f3465n));
            contentValues.put("pot_diag_vol_erro", Integer.valueOf(this.f3466o));
            contentValues.put("pot_diag_vol_zero", Integer.valueOf(this.f3467p));
            contentValues.put("pot_diag_vol_ok", Integer.valueOf(this.f3468q));
            if (this.f3459h > 0) {
                contentValues.put("pot_bruta_integral", Double.valueOf(this.f3457e));
                contentValues.put("pot_bruta_integral_mod", Double.valueOf(this.f));
                contentValues.put("pot_bruta_seg", Double.valueOf(this.f3458g));
                contentValues.put("pot_bruta_n", Integer.valueOf(this.f3459h));
            }
            if (this.f3469r < 30) {
                j4 = 30;
            } else {
                j4 = 30;
                double d11 = this.f3473v * this.f3474w;
                if (d11 > 0.0d) {
                    double dSqrt2 = this.f3472u / Math.sqrt(d11);
                    if (!Double.isNaN(dSqrt2) && !Double.isInfinite(dSqrt2)) {
                        dValueOf = Double.valueOf(dSqrt2);
                    }
                }
                if (dValueOf != null) {
                    contentValues.put("pot_iv_r0", dValueOf);
                }
                j5 = this.f3469r;
                if (j5 < j4) {
                    f = fFloatValue;
                    f3 = f12;
                    d4 = 0.0d;
                } else {
                    d3 = j5;
                    double d12 = this.f3473v * d3;
                    d4 = 0.0d;
                    d5 = this.f3470s;
                    d6 = d12 - (d5 * d5);
                    if (d6 <= 0.0d) {
                        f = fFloatValue;
                        f3 = f12;
                    } else {
                        double d13 = this.f3472u * d3;
                        f = fFloatValue;
                        f3 = f12;
                        double d14 = this.f3471t;
                        d7 = (d14 - (((d13 - (d5 * d14)) / d6) * d5)) / d3;
                        dSqrt = Math.sqrt(this.f3474w / d3);
                        if (dSqrt <= 0.0d) {
                            d8 = d7 / dSqrt;
                            if (Double.isNaN(d8) && !Double.isInfinite(d8)) {
                                dValueOf2 = Double.valueOf(d8);
                            }
                        }
                        if (dValueOf2 != null) {
                            contentValues.put("pot_iv_desloc", dValueOf2);
                        }
                        j6 = this.f3469r;
                        if (j6 < j4) {
                            dValueOf3 = null;
                        } else {
                            double d15 = j6;
                            double d16 = this.f3472u;
                            double d17 = this.f3470s;
                            double d18 = this.f3471t;
                            double d19 = d16 - ((d17 * d18) / d15);
                            d9 = this.f3473v - ((d17 * d17) / d15);
                            double d20 = this.f3474w - ((d18 * d18) / d15);
                            if (d9 > d4 || d20 <= d4) {
                                dValueOf3 = null;
                            } else {
                                double dSqrt3 = d19 / Math.sqrt(d9 * d20);
                                if (Double.isNaN(dSqrt3) || Double.isInfinite(dSqrt3)) {
                                    dValueOf3 = null;
                                } else {
                                    dValueOf3 = Double.valueOf(dSqrt3);
                                }
                            }
                        }
                        if (dValueOf3 != null) {
                            contentValues.put("pot_iv_r", dValueOf3);
                        }
                        d10 = this.f3473v;
                        if (d10 > d4) {
                            contentValues.put("pot_iv_escala", Double.valueOf(this.f3472u / d10));
                        }
                        j7 = this.f3469r;
                        if (j7 > 0) {
                            contentValues.put("pot_iv_n", Long.valueOf(j7));
                        }
                        StringBuilder sbL = androidx.activity.result.b.l("c-", str4, "-");
                        sbL.append(this.f3477z);
                        string = sbL.toString();
                        contentValues.put("source_key", string);
                        contentValues.put("start_ms", Long.valueOf(this.f3477z));
                        contentValues.put("end_ms", Long.valueOf(j3));
                        contentValues.put("distance_km", Float.valueOf(f));
                        contentValues.put("kwh_used", Float.valueOf(this.L));
                        contentValues.put("kwh_regen", Float.valueOf(this.M));
                        contentValues.put("avg_speed", Float.valueOf(f11));
                        contentValues.put("max_speed", Float.valueOf(this.I));
                        contentValues.put("avg_cons", Float.valueOf(f3));
                        f4 = this.C;
                        if (f4 != null) {
                            contentValues.put("soc_start", f4);
                        }
                        f5 = this.F;
                        if (f5 != null) {
                            contentValues.put("soc_end", f5);
                        }
                        f6 = this.D;
                        if (f6 != null) {
                            contentValues.put("range_start", f6);
                        }
                        f7 = this.G;
                        if (f7 != null) {
                            contentValues.put("range_end", f7);
                        }
                        f8 = this.B;
                        if (f8 != null) {
                            contentValues.put("odo_start", f8);
                        }
                        f9 = this.E;
                        if (f9 != null) {
                            contentValues.put("odo_end", f9);
                        }
                        m3Var = this.f3475x;
                        synchronized (m3Var) {
                            try {
                                SQLiteDatabase writableDatabase = m3Var.getWritableDatabase();
                                writableDatabase.insertWithOnConflict("trips", null, contentValues, 4);
                                writableDatabase.execSQL("DELETE FROM trips WHERE source_key NOT IN (SELECT source_key FROM trips ORDER BY start_ms DESC LIMIT 20)");
                            } catch (Throwable unused) {
                            }
                        }
                        if (Q != null) {
                            try {
                                str = "\"sourceKey\":\"" + string + "\"";
                                arrayListA = this.f3475x.a();
                                size = arrayListA.size();
                                i3 = 0;
                                while (i3 < size) {
                                    Object obj = arrayListA.get(i3);
                                    i3++;
                                    str2 = (String) obj;
                                    if (str2.contains(str)) {
                                        synchronized (VhalProviderService.f1237p) {
                                            try {
                                                ArrayDeque arrayDeque2 = VhalProviderService.f1238q;
                                                long j9 = VhalProviderService.f1239r + 1;
                                                VhalProviderService.f1239r = j9;
                                                arrayDeque2.addLast(new hh(j9, str2));
                                                while (true) {
                                                    arrayDeque = VhalProviderService.f1238q;
                                                    if (arrayDeque.size() > 5) {
                                                        break;
                                                    } else {
                                                        arrayDeque.pollFirst();
                                                    }
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        break;
                                    }
                                }
                            } catch (Throwable unused2) {
                            }
                        }
                    }
                }
                dValueOf2 = null;
                if (dValueOf2 != null) {
                    contentValues.put("pot_iv_desloc", dValueOf2);
                }
                j6 = this.f3469r;
                if (j6 < j4) {
                    dValueOf3 = null;
                } else {
                    double d110 = j6;
                    double d111 = this.f3472u;
                    double d112 = this.f3470s;
                    double d113 = this.f3471t;
                    double d114 = d111 - ((d112 * d113) / d110);
                    d9 = this.f3473v - ((d112 * d112) / d110);
                    double d21 = this.f3474w - ((d113 * d113) / d110);
                    if (d9 > d4) {
                        dValueOf3 = null;
                    } else {
                        dValueOf3 = null;
                    }
                }
                if (dValueOf3 != null) {
                    contentValues.put("pot_iv_r", dValueOf3);
                }
                d10 = this.f3473v;
                if (d10 > d4) {
                    contentValues.put("pot_iv_escala", Double.valueOf(this.f3472u / d10));
                }
                j7 = this.f3469r;
                if (j7 > 0) {
                    contentValues.put("pot_iv_n", Long.valueOf(j7));
                }
                StringBuilder sbL2 = androidx.activity.result.b.l("c-", str4, "-");
                sbL2.append(this.f3477z);
                string = sbL2.toString();
                contentValues.put("source_key", string);
                contentValues.put("start_ms", Long.valueOf(this.f3477z));
                contentValues.put("end_ms", Long.valueOf(j3));
                contentValues.put("distance_km", Float.valueOf(f));
                contentValues.put("kwh_used", Float.valueOf(this.L));
                contentValues.put("kwh_regen", Float.valueOf(this.M));
                contentValues.put("avg_speed", Float.valueOf(f11));
                contentValues.put("max_speed", Float.valueOf(this.I));
                contentValues.put("avg_cons", Float.valueOf(f3));
                f4 = this.C;
                if (f4 != null) {
                    contentValues.put("soc_start", f4);
                }
                f5 = this.F;
                if (f5 != null) {
                    contentValues.put("soc_end", f5);
                }
                f6 = this.D;
                if (f6 != null) {
                    contentValues.put("range_start", f6);
                }
                f7 = this.G;
                if (f7 != null) {
                    contentValues.put("range_end", f7);
                }
                f8 = this.B;
                if (f8 != null) {
                    contentValues.put("odo_start", f8);
                }
                f9 = this.E;
                if (f9 != null) {
                    contentValues.put("odo_end", f9);
                }
                m3Var = this.f3475x;
                synchronized (m3Var) {
                    SQLiteDatabase writableDatabase2 = m3Var.getWritableDatabase();
                    writableDatabase2.insertWithOnConflict("trips", null, contentValues, 4);
                    writableDatabase2.execSQL("DELETE FROM trips WHERE source_key NOT IN (SELECT source_key FROM trips ORDER BY start_ms DESC LIMIT 20)");
                    if (Q != null) {
                        str = "\"sourceKey\":\"" + string + "\"";
                        arrayListA = this.f3475x.a();
                        size = arrayListA.size();
                        i3 = 0;
                        while (i3 < size) {
                            Object obj2 = arrayListA.get(i3);
                            i3++;
                            str2 = (String) obj2;
                            if (str2.contains(str)) {
                                synchronized (VhalProviderService.f1237p) {
                                    ArrayDeque arrayDeque3 = VhalProviderService.f1238q;
                                    long j10 = VhalProviderService.f1239r + 1;
                                    VhalProviderService.f1239r = j10;
                                    arrayDeque3.addLast(new hh(j10, str2));
                                    while (true) {
                                        arrayDeque = VhalProviderService.f1238q;
                                        if (arrayDeque.size() > 5) {
                                            break;
                                            break;
                                        }
                                        arrayDeque.pollFirst();
                                    }
                                    break;
                                    break;
                                }
                            }
                        }
                    }
                }
            }
            dValueOf = null;
            if (dValueOf != null) {
                contentValues.put("pot_iv_r0", dValueOf);
            }
            j5 = this.f3469r;
            if (j5 < j4) {
                f = fFloatValue;
                f3 = f12;
                d4 = 0.0d;
            } else {
                d3 = j5;
                double d115 = this.f3473v * d3;
                d4 = 0.0d;
                d5 = this.f3470s;
                d6 = d115 - (d5 * d5);
                if (d6 <= 0.0d) {
                    f = fFloatValue;
                    f3 = f12;
                } else {
                    double d116 = this.f3472u * d3;
                    f = fFloatValue;
                    f3 = f12;
                    double d117 = this.f3471t;
                    d7 = (d117 - (((d116 - (d5 * d117)) / d6) * d5)) / d3;
                    dSqrt = Math.sqrt(this.f3474w / d3);
                    if (dSqrt <= 0.0d) {
                        d8 = d7 / dSqrt;
                        if (Double.isNaN(d8)) {
                        }
                    }
                    if (dValueOf2 != null) {
                        contentValues.put("pot_iv_desloc", dValueOf2);
                    }
                    j6 = this.f3469r;
                    if (j6 < j4) {
                        dValueOf3 = null;
                    } else {
                        double d118 = j6;
                        double d119 = this.f3472u;
                        double d1110 = this.f3470s;
                        double d1111 = this.f3471t;
                        double d1112 = d119 - ((d1110 * d1111) / d118);
                        d9 = this.f3473v - ((d1110 * d1110) / d118);
                        double d22 = this.f3474w - ((d1111 * d1111) / d118);
                        if (d9 > d4) {
                            dValueOf3 = null;
                        } else {
                            dValueOf3 = null;
                        }
                    }
                    if (dValueOf3 != null) {
                        contentValues.put("pot_iv_r", dValueOf3);
                    }
                    d10 = this.f3473v;
                    if (d10 > d4) {
                        contentValues.put("pot_iv_escala", Double.valueOf(this.f3472u / d10));
                    }
                    j7 = this.f3469r;
                    if (j7 > 0) {
                        contentValues.put("pot_iv_n", Long.valueOf(j7));
                    }
                    StringBuilder sbL3 = androidx.activity.result.b.l("c-", str4, "-");
                    sbL3.append(this.f3477z);
                    string = sbL3.toString();
                    contentValues.put("source_key", string);
                    contentValues.put("start_ms", Long.valueOf(this.f3477z));
                    contentValues.put("end_ms", Long.valueOf(j3));
                    contentValues.put("distance_km", Float.valueOf(f));
                    contentValues.put("kwh_used", Float.valueOf(this.L));
                    contentValues.put("kwh_regen", Float.valueOf(this.M));
                    contentValues.put("avg_speed", Float.valueOf(f11));
                    contentValues.put("max_speed", Float.valueOf(this.I));
                    contentValues.put("avg_cons", Float.valueOf(f3));
                    f4 = this.C;
                    if (f4 != null) {
                        contentValues.put("soc_start", f4);
                    }
                    f5 = this.F;
                    if (f5 != null) {
                        contentValues.put("soc_end", f5);
                    }
                    f6 = this.D;
                    if (f6 != null) {
                        contentValues.put("range_start", f6);
                    }
                    f7 = this.G;
                    if (f7 != null) {
                        contentValues.put("range_end", f7);
                    }
                    f8 = this.B;
                    if (f8 != null) {
                        contentValues.put("odo_start", f8);
                    }
                    f9 = this.E;
                    if (f9 != null) {
                        contentValues.put("odo_end", f9);
                    }
                    m3Var = this.f3475x;
                    synchronized (m3Var) {
                        SQLiteDatabase writableDatabase3 = m3Var.getWritableDatabase();
                        writableDatabase3.insertWithOnConflict("trips", null, contentValues, 4);
                        writableDatabase3.execSQL("DELETE FROM trips WHERE source_key NOT IN (SELECT source_key FROM trips ORDER BY start_ms DESC LIMIT 20)");
                        if (Q != null) {
                            str = "\"sourceKey\":\"" + string + "\"";
                            arrayListA = this.f3475x.a();
                            size = arrayListA.size();
                            i3 = 0;
                            while (i3 < size) {
                                Object obj3 = arrayListA.get(i3);
                                i3++;
                                str2 = (String) obj3;
                                if (str2.contains(str)) {
                                    synchronized (VhalProviderService.f1237p) {
                                        ArrayDeque arrayDeque4 = VhalProviderService.f1238q;
                                        long j11 = VhalProviderService.f1239r + 1;
                                        VhalProviderService.f1239r = j11;
                                        arrayDeque4.addLast(new hh(j11, str2));
                                        while (true) {
                                            arrayDeque = VhalProviderService.f1238q;
                                            if (arrayDeque.size() > 5) {
                                                break;
                                                break;
                                            }
                                            arrayDeque.pollFirst();
                                        }
                                        break;
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            dValueOf2 = null;
            if (dValueOf2 != null) {
                contentValues.put("pot_iv_desloc", dValueOf2);
            }
            j6 = this.f3469r;
            if (j6 < j4) {
                dValueOf3 = null;
            } else {
                double d1113 = j6;
                double d1114 = this.f3472u;
                double d1115 = this.f3470s;
                double d1116 = this.f3471t;
                double d1117 = d1114 - ((d1115 * d1116) / d1113);
                d9 = this.f3473v - ((d1115 * d1115) / d1113);
                double d23 = this.f3474w - ((d1116 * d1116) / d1113);
                if (d9 > d4) {
                    dValueOf3 = null;
                } else {
                    dValueOf3 = null;
                }
            }
            if (dValueOf3 != null) {
                contentValues.put("pot_iv_r", dValueOf3);
            }
            d10 = this.f3473v;
            if (d10 > d4) {
                contentValues.put("pot_iv_escala", Double.valueOf(this.f3472u / d10));
            }
            j7 = this.f3469r;
            if (j7 > 0) {
                contentValues.put("pot_iv_n", Long.valueOf(j7));
            }
            StringBuilder sbL4 = androidx.activity.result.b.l("c-", str4, "-");
            sbL4.append(this.f3477z);
            string = sbL4.toString();
            contentValues.put("source_key", string);
            contentValues.put("start_ms", Long.valueOf(this.f3477z));
            contentValues.put("end_ms", Long.valueOf(j3));
            contentValues.put("distance_km", Float.valueOf(f));
            contentValues.put("kwh_used", Float.valueOf(this.L));
            contentValues.put("kwh_regen", Float.valueOf(this.M));
            contentValues.put("avg_speed", Float.valueOf(f11));
            contentValues.put("max_speed", Float.valueOf(this.I));
            contentValues.put("avg_cons", Float.valueOf(f3));
            f4 = this.C;
            if (f4 != null) {
                contentValues.put("soc_start", f4);
            }
            f5 = this.F;
            if (f5 != null) {
                contentValues.put("soc_end", f5);
            }
            f6 = this.D;
            if (f6 != null) {
                contentValues.put("range_start", f6);
            }
            f7 = this.G;
            if (f7 != null) {
                contentValues.put("range_end", f7);
            }
            f8 = this.B;
            if (f8 != null) {
                contentValues.put("odo_start", f8);
            }
            f9 = this.E;
            if (f9 != null) {
                contentValues.put("odo_end", f9);
            }
            m3Var = this.f3475x;
            synchronized (m3Var) {
                SQLiteDatabase writableDatabase4 = m3Var.getWritableDatabase();
                writableDatabase4.insertWithOnConflict("trips", null, contentValues, 4);
                writableDatabase4.execSQL("DELETE FROM trips WHERE source_key NOT IN (SELECT source_key FROM trips ORDER BY start_ms DESC LIMIT 20)");
                if (Q != null) {
                    str = "\"sourceKey\":\"" + string + "\"";
                    arrayListA = this.f3475x.a();
                    size = arrayListA.size();
                    i3 = 0;
                    while (i3 < size) {
                        Object obj4 = arrayListA.get(i3);
                        i3++;
                        str2 = (String) obj4;
                        if (str2.contains(str)) {
                            synchronized (VhalProviderService.f1237p) {
                                ArrayDeque arrayDeque5 = VhalProviderService.f1238q;
                                long j12 = VhalProviderService.f1239r + 1;
                                VhalProviderService.f1239r = j12;
                                arrayDeque5.addLast(new hh(j12, str2));
                                while (true) {
                                    arrayDeque = VhalProviderService.f1238q;
                                    if (arrayDeque.size() > 5) {
                                        break;
                                        break;
                                    }
                                    arrayDeque.pollFirst();
                                }
                                break;
                                break;
                            }
                        }
                    }
                }
            }
        }
        this.b = null;
        this.f3454a = null;
        this.f3455c = null;
        this.f3456d = null;
        this.f3476y = false;
    }

    /* JADX WARN: Code duplicated, block: B:58:0x0106  */
    public final synchronized void b(wg wgVar, long j3) {
        Integer num;
        if (wgVar == null) {
            return;
        }
        try {
            Integer num2 = wgVar.b;
            Float f = wgVar.f4457a;
            Float f3 = wgVar.f4459d;
            Float f4 = wgVar.f;
            Float f5 = wgVar.f4460e;
            boolean z2 = true;
            if (!this.f3476y) {
                if (f == null || f.floatValue() <= 3.0f) {
                    z2 = false;
                }
                if (num2 != null && num2.intValue() == 8 && z2) {
                    d(j3, f, f3, f4, f5, wgVar.I);
                }
                return;
            }
            w3 w3Var = this.b;
            if (w3Var != null) {
                w3Var.a(f);
                this.f3454a.a(wgVar.f4461g);
                this.f3455c.a(f3);
                w3 w3Var2 = this.f3456d;
                Integer num3 = wgVar.f4479y;
                w3Var2.a(num3 != null ? Float.valueOf(num3.intValue()) : null);
            }
            int i3 = wgVar.B;
            if (i3 == 1) {
                this.f3461j++;
            } else if (i3 != 2) {
                this.f3460i++;
            } else {
                this.f3462k++;
            }
            int i4 = wgVar.C;
            if (i4 == 1) {
                this.f3464m++;
            } else if (i4 != 2) {
                this.f3463l++;
            } else {
                this.f3465n++;
            }
            int i5 = wgVar.D;
            if (i5 == 1) {
                this.f3467p++;
            } else if (i5 != 2) {
                this.f3466o++;
            } else {
                this.f3468q++;
            }
            Integer num4 = wgVar.f4479y;
            if (num4 != null) {
                long j4 = this.A;
                if (j4 > 0) {
                    long j5 = j3 - j4;
                    if (j5 > 0 && j5 < 72000) {
                        double d3 = j5;
                        double d4 = d3 / 3600000.0d;
                        this.f3457e = (((double) num4.intValue()) * d4) + this.f3457e;
                        this.f = (Math.abs(wgVar.f4479y.intValue()) * d4) + this.f;
                        this.f3458g = (d3 / 1000.0d) + this.f3458g;
                        this.f3459h++;
                    }
                }
            }
            if (wgVar.f4479y != null && (num = wgVar.f4480z) != null && wgVar.A != null) {
                double dIntValue = ((double) num.intValue()) * ((double) wgVar.A.intValue());
                double dIntValue2 = wgVar.f4479y.intValue();
                this.f3469r++;
                this.f3470s += dIntValue;
                this.f3471t += dIntValue2;
                this.f3472u = (dIntValue * dIntValue2) + this.f3472u;
                this.f3473v = (dIntValue * dIntValue) + this.f3473v;
                this.f3474w = (dIntValue2 * dIntValue2) + this.f3474w;
            }
            if (f != null) {
                if (f.floatValue() > this.I) {
                    this.I = f.floatValue();
                }
                this.J += f.floatValue();
                this.K++;
                long j6 = this.A;
                if (j6 > 0) {
                    float f6 = (j3 - j6) / 3600000.0f;
                    if (f6 > 0.0f && f6 < 0.02f) {
                        this.N = (f.floatValue() * f6) + this.N;
                    }
                }
            }
            if (f3 != null) {
                Float f7 = this.H;
                if (f7 != null) {
                    float fFloatValue = f7.floatValue() - f3.floatValue();
                    float fAbs = (Math.abs(fFloatValue) / 100.0f) * 39.0f;
                    if (fFloatValue > 0.0f) {
                        this.L += fAbs;
                    } else {
                        this.M += fAbs;
                    }
                }
                this.H = f3;
                this.F = f3;
            }
            if (f4 != null) {
                this.E = f4;
            }
            if (r9 != 0) {
                this.G = f5;
            }
            this.A = j3;
            if (num2 != null && num2.intValue() == 4) {
                a(j3);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void d(long j3, Float f, Float f3, Float f4, Float f5, String str) {
        this.f3476y = true;
        this.f3477z = j3;
        this.A = j3;
        this.b = new w3(P, false);
        this.f3454a = new w3(P, true);
        this.f3455c = new w3(P, false);
        this.f3456d = new w3(P, true);
        this.f3457e = 0.0d;
        this.f = 0.0d;
        this.f3458g = 0.0d;
        this.f3459h = 0;
        this.f3460i = 0;
        this.f3461j = 0;
        this.f3462k = 0;
        this.f3463l = 0;
        this.f3464m = 0;
        this.f3465n = 0;
        this.f3466o = 0;
        this.f3467p = 0;
        this.f3468q = 0;
        this.f3469r = 0L;
        this.f3470s = 0.0d;
        this.f3471t = 0.0d;
        this.f3472u = 0.0d;
        this.f3473v = 0.0d;
        this.f3474w = 0.0d;
        this.b.a(f);
        this.f3455c.a(f3);
        this.B = f4;
        this.C = f3;
        this.D = f5;
        this.E = f4;
        this.F = f3;
        this.G = f5;
        this.H = f3;
        this.O = str;
        this.I = f != null ? f.floatValue() : 0.0f;
        this.J = f != null ? f.floatValue() : 0.0f;
        this.K = f == null ? 0 : 1;
        this.L = 0.0f;
        this.M = 0.0f;
        this.N = 0.0f;
    }
}
