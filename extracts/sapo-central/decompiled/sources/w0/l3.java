package w0;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: loaded from: classes.dex */
public final class l3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final m3 f3820a;
    public String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Float f3821c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Float f3822d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f3823e;
    public Boolean f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f3824g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f3825h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Float f3826i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Float f3827j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f3828k;

    public l3(m3 m3Var) {
        boolean z2;
        Float f;
        String string;
        Float fValueOf;
        this.f3820a = m3Var;
        synchronized (m3Var) {
            z2 = false;
            f = null;
            try {
                Cursor cursorRawQuery = m3Var.getReadableDatabase().rawQuery("SELECT source_key FROM charges WHERE end_ms = 0 ORDER BY start_ms DESC LIMIT 1", null);
                try {
                    string = cursorRawQuery.moveToNext() ? cursorRawQuery.getString(0) : null;
                    cursorRawQuery.close();
                    this.b = string;
                    synchronized (m3Var) {
                        try {
                            Cursor cursorRawQuery2 = m3Var.getReadableDatabase().rawQuery("SELECT soc_start FROM charges WHERE end_ms = 0 ORDER BY start_ms DESC LIMIT 1", null);
                            try {
                                fValueOf = (!cursorRawQuery2.moveToNext() || cursorRawQuery2.isNull(0)) ? null : Float.valueOf((float) cursorRawQuery2.getDouble(0));
                                cursorRawQuery2.close();
                            } catch (Throwable th) {
                                if (cursorRawQuery2 != null) {
                                    try {
                                        cursorRawQuery2.close();
                                    } catch (Throwable th2) {
                                        th.addSuppressed(th2);
                                    }
                                }
                                throw th;
                            }
                        } catch (Throwable unused) {
                        }
                    }
                } catch (Throwable th3) {
                    if (cursorRawQuery != null) {
                        try {
                            cursorRawQuery.close();
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                    }
                    throw th3;
                }
            } catch (Throwable unused2) {
                string = null;
            }
        }
        f = fValueOf;
        this.f3821c = f;
        if (this.b != null && f == null) {
            z2 = true;
        }
        this.f3823e = z2;
    }

    public final void a(long j3, Float f, boolean z2, Float f3, String str) {
        if (str == null || str.isEmpty()) {
            str = "central";
        }
        this.b = "c-" + str + "-" + j3;
        this.f3821c = f;
        this.f3823e = f == null;
        ContentValues contentValues = new ContentValues();
        contentValues.put("source_key", this.b);
        contentValues.put("start_ms", Long.valueOf(j3));
        contentValues.put("end_ms", (Long) 0L);
        if (f != null) {
            contentValues.put("soc_start", f);
        }
        if (f3 != null) {
            contentValues.put("odo_start", f3);
        }
        contentValues.put("dcfc", Integer.valueOf(z2 ? 1 : 0));
        contentValues.put("complete", (Integer) 0);
        m3 m3Var = this.f3820a;
        synchronized (m3Var) {
            try {
                SQLiteDatabase writableDatabase = m3Var.getWritableDatabase();
                writableDatabase.insertWithOnConflict("charges", null, contentValues, 4);
                writableDatabase.execSQL("DELETE FROM charges WHERE source_key NOT IN (SELECT source_key FROM charges ORDER BY start_ms DESC LIMIT 20)");
            } catch (Throwable unused) {
            }
        }
        ae aeVar = ae.f3361a;
        StringBuilder sb = new StringBuilder("início: soc=");
        sb.append(f);
        sb.append(z2 ? " (DC)" : "");
        sb.append(" key=");
        sb.append(this.b);
        String string = sb.toString();
        i2.g.e(string, "msg");
        ae.b("Carga", string, false);
    }

    public final void b(long j3, Float f) {
        String str = this.b;
        if (str == null) {
            return;
        }
        this.b = null;
        int i3 = (this.f3823e || this.f3821c == null || f == null) ? 0 : 1;
        m3 m3Var = this.f3820a;
        Float f3 = this.f3822d;
        synchronized (m3Var) {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("end_ms", Long.valueOf(j3));
                if (f != null) {
                    contentValues.put("soc_end", f);
                }
                if (f3 != null) {
                    contentValues.put("odo_end", f3);
                }
                contentValues.put("complete", Integer.valueOf(i3));
                m3Var.getWritableDatabase().update("charges", contentValues, "source_key=?", new String[]{str});
            } catch (Throwable unused) {
            }
        }
        ae aeVar = ae.f3361a;
        StringBuilder sb = new StringBuilder("fim: ");
        sb.append(this.f3821c);
        sb.append("% → ");
        sb.append(f);
        sb.append("%");
        sb.append(i3 != 0 ? " (completa)" : " (sem o início — o celular tem o SoC inicial melhor)");
        String string = sb.toString();
        i2.g.e(string, "msg");
        ae.b("Carga", string, false);
        this.f3821c = null;
        this.f3823e = false;
        this.f3822d = null;
        this.f3824g = 0L;
        this.f3825h = 0L;
        this.f3826i = null;
        this.f3827j = null;
    }

    public final synchronized void c(wg wgVar, long j3) {
        if (wgVar == null) {
            return;
        }
        try {
            Boolean bool = wgVar.E;
            if (bool == null) {
                return;
            }
            Float f = wgVar.f4459d;
            Boolean bool2 = Boolean.TRUE;
            boolean zEquals = bool2.equals(wgVar.F);
            if (bool.booleanValue()) {
                this.f3824g = 0L;
                Float f3 = wgVar.f;
                if (f3 != null) {
                    this.f3822d = f3;
                }
                if (this.b == null) {
                    long j4 = this.f3825h;
                    if (j4 == 0) {
                        this.f3825h = j3;
                        this.f3826i = f;
                        this.f3827j = f3;
                        this.f3828k = zEquals;
                    } else if (j3 - j4 >= 90000) {
                        a(j4, this.f3826i, this.f3828k, this.f3827j, wgVar.I);
                        this.f3825h = 0L;
                        this.f3826i = null;
                        this.f3827j = null;
                    }
                }
            } else if (bool2.equals(this.f) || this.b != null) {
                this.f3825h = 0L;
                this.f3826i = null;
                this.f3827j = null;
                if (this.f3824g == 0) {
                    this.f3824g = j3;
                }
                long j5 = this.f3824g;
                if (j3 - j5 >= 300000) {
                    b(j5, f);
                }
            }
            this.f = bool;
        } catch (Throwable th) {
            throw th;
        }
    }
}
