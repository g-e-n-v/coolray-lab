package w0;

import android.app.Service;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class m3 extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3878a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m3(Service service, int i3) {
        super(service.getApplicationContext(), "central_charges.db", (SQLiteDatabase.CursorFactory) null, 2);
        this.f3878a = i3;
        switch (i3) {
            case 1:
                super(service.getApplicationContext(), "central_trips.db", (SQLiteDatabase.CursorFactory) null, 10);
                break;
            default:
                break;
        }
    }

    public static void b(JSONObject jSONObject, String str, Cursor cursor, String str2) {
        try {
            int columnIndexOrThrow = cursor.getColumnIndexOrThrow(str2);
            if (cursor.isNull(columnIndexOrThrow)) {
                return;
            }
            jSONObject.put(str, Math.round(cursor.getDouble(columnIndexOrThrow) * 10.0d) / 10.0d);
        } catch (Throwable unused) {
        }
    }

    public static void c(JSONObject jSONObject, String str, Cursor cursor, String str2) throws JSONException {
        int columnIndex = cursor.getColumnIndex(str2);
        if (columnIndex >= 0 && !cursor.isNull(columnIndex)) {
            jSONObject.put(str, e(cursor.getDouble(columnIndex)));
        }
    }

    public static void d(JSONObject jSONObject, String str, Cursor cursor, String str2) throws JSONException {
        String string;
        int columnIndex = cursor.getColumnIndex(str2);
        if (columnIndex < 0 || cursor.isNull(columnIndex) || (string = cursor.getString(columnIndex)) == null || string.isEmpty()) {
            return;
        }
        jSONObject.put(str, string);
    }

    public static double e(double d3) {
        return Math.round(d3 * 100.0d) / 100.0d;
    }

    public final synchronized ArrayList a() {
        int i3 = this.f3878a;
        synchronized (this) {
            switch (i3) {
                case 0:
                    ArrayList arrayList = new ArrayList();
                    try {
                        Cursor cursorRawQuery = getReadableDatabase().rawQuery("SELECT * FROM charges WHERE end_ms > 0 ORDER BY start_ms ASC", null);
                        while (cursorRawQuery.moveToNext()) {
                            try {
                                JSONObject jSONObject = new JSONObject();
                                jSONObject.put("sourceKey", cursorRawQuery.getString(cursorRawQuery.getColumnIndexOrThrow("source_key")));
                                long j3 = cursorRawQuery.getLong(cursorRawQuery.getColumnIndexOrThrow("start_ms"));
                                long j4 = cursorRawQuery.getLong(cursorRawQuery.getColumnIndexOrThrow("end_ms"));
                                jSONObject.put("startMs", j3);
                                jSONObject.put("endMs", j4);
                                jSONObject.put("durationS", Math.max(0L, (j4 - j3) / 1000));
                                b(jSONObject, "socStart", cursorRawQuery, "soc_start");
                                b(jSONObject, "socEnd", cursorRawQuery, "soc_end");
                                b(jSONObject, "odoStart", cursorRawQuery, "odo_start");
                                b(jSONObject, "odoEnd", cursorRawQuery, "odo_end");
                                boolean z2 = false;
                                jSONObject.put("dcfc", cursorRawQuery.getInt(cursorRawQuery.getColumnIndexOrThrow("dcfc")) == 1);
                                if (cursorRawQuery.getInt(cursorRawQuery.getColumnIndexOrThrow("complete")) == 1) {
                                    z2 = true;
                                }
                                jSONObject.put("complete", z2);
                                arrayList.add(new JSONObject().put("charge", jSONObject).toString());
                            } catch (Throwable th) {
                                if (cursorRawQuery != null) {
                                    try {
                                        cursorRawQuery.close();
                                    } catch (Throwable th2) {
                                        th.addSuppressed(th2);
                                    }
                                    break;
                                }
                                throw th;
                            }
                        }
                        cursorRawQuery.close();
                    } catch (Throwable unused) {
                    }
                    return arrayList;
                default:
                    ArrayList arrayList2 = new ArrayList();
                    try {
                        Cursor cursorRawQuery2 = getReadableDatabase().rawQuery("SELECT * FROM trips ORDER BY start_ms ASC", null);
                        while (cursorRawQuery2.moveToNext()) {
                            try {
                                JSONObject jSONObject2 = new JSONObject();
                                jSONObject2.put("sourceKey", cursorRawQuery2.getString(cursorRawQuery2.getColumnIndexOrThrow("source_key")));
                                long j5 = cursorRawQuery2.getLong(cursorRawQuery2.getColumnIndexOrThrow("start_ms"));
                                long j6 = cursorRawQuery2.getLong(cursorRawQuery2.getColumnIndexOrThrow("end_ms"));
                                jSONObject2.put("startMs", j5);
                                jSONObject2.put("endMs", j6);
                                jSONObject2.put("durationS", Math.max(0L, (j6 - j5) / 1000));
                                jSONObject2.put("distanceKm", e(cursorRawQuery2.getDouble(cursorRawQuery2.getColumnIndexOrThrow("distance_km"))));
                                jSONObject2.put("kwhUsed", e(cursorRawQuery2.getDouble(cursorRawQuery2.getColumnIndexOrThrow("kwh_used"))));
                                jSONObject2.put("kwhRegen", e(cursorRawQuery2.getDouble(cursorRawQuery2.getColumnIndexOrThrow("kwh_regen"))));
                                jSONObject2.put("avgSpeedKmh", e(cursorRawQuery2.getDouble(cursorRawQuery2.getColumnIndexOrThrow("avg_speed"))));
                                jSONObject2.put("maxSpeedKmh", e(cursorRawQuery2.getDouble(cursorRawQuery2.getColumnIndexOrThrow("max_speed"))));
                                jSONObject2.put("avgConsKwh100", e(cursorRawQuery2.getDouble(cursorRawQuery2.getColumnIndexOrThrow("avg_cons"))));
                                c(jSONObject2, "socStart", cursorRawQuery2, "soc_start");
                                c(jSONObject2, "socEnd", cursorRawQuery2, "soc_end");
                                c(jSONObject2, "rangeStart", cursorRawQuery2, "range_start");
                                c(jSONObject2, "rangeEnd", cursorRawQuery2, "range_end");
                                c(jSONObject2, "odoStartKm", cursorRawQuery2, "odo_start");
                                c(jSONObject2, "odoEndKm", cursorRawQuery2, "odo_end");
                                d(jSONObject2, "curvaVel", cursorRawQuery2, "curva_vel");
                                d(jSONObject2, "curvaVelMax", cursorRawQuery2, "curva_vel_max");
                                d(jSONObject2, "curvaPot", cursorRawQuery2, "curva_pot");
                                d(jSONObject2, "curvaPotPico", cursorRawQuery2, "curva_pot_pico");
                                d(jSONObject2, "curvaSoc", cursorRawQuery2, "curva_soc");
                                d(jSONObject2, "curvaPotBruta", cursorRawQuery2, "curva_pot_bruta");
                                d(jSONObject2, "potFonte", cursorRawQuery2, "pot_fonte");
                                c(jSONObject2, "potBrutaIntegral", cursorRawQuery2, "pot_bruta_integral");
                                c(jSONObject2, "potBrutaIntegralMod", cursorRawQuery2, "pot_bruta_integral_mod");
                                c(jSONObject2, "potBrutaSeg", cursorRawQuery2, "pot_bruta_seg");
                                c(jSONObject2, "potBrutaN", cursorRawQuery2, "pot_bruta_n");
                                c(jSONObject2, "potIvR0", cursorRawQuery2, "pot_iv_r0");
                                c(jSONObject2, "potIvDesloc", cursorRawQuery2, "pot_iv_desloc");
                                c(jSONObject2, "potIvR", cursorRawQuery2, "pot_iv_r");
                                c(jSONObject2, "potIvEscala", cursorRawQuery2, "pot_iv_escala");
                                c(jSONObject2, "potIvN", cursorRawQuery2, "pot_iv_n");
                                c(jSONObject2, "potDiagV", cursorRawQuery2, "pot_diag_v");
                                c(jSONObject2, "potDiagPwrErro", cursorRawQuery2, "pot_diag_pwr_erro");
                                c(jSONObject2, "potDiagPwrZero", cursorRawQuery2, "pot_diag_pwr_zero");
                                c(jSONObject2, "potDiagPwrOk", cursorRawQuery2, "pot_diag_pwr_ok");
                                c(jSONObject2, "potDiagCurErro", cursorRawQuery2, "pot_diag_cur_erro");
                                c(jSONObject2, "potDiagCurZero", cursorRawQuery2, "pot_diag_cur_zero");
                                c(jSONObject2, "potDiagCurOk", cursorRawQuery2, "pot_diag_cur_ok");
                                c(jSONObject2, "potDiagVolErro", cursorRawQuery2, "pot_diag_vol_erro");
                                c(jSONObject2, "potDiagVolZero", cursorRawQuery2, "pot_diag_vol_zero");
                                c(jSONObject2, "potDiagVolOk", cursorRawQuery2, "pot_diag_vol_ok");
                                arrayList2.add(new JSONObject().put("trip", jSONObject2).toString());
                            } catch (Throwable th3) {
                                if (cursorRawQuery2 != null) {
                                    try {
                                        cursorRawQuery2.close();
                                    } catch (Throwable th4) {
                                        th3.addSuppressed(th4);
                                    }
                                    break;
                                }
                                throw th3;
                            }
                        }
                        cursorRawQuery2.close();
                    } catch (Throwable unused2) {
                    }
                    return arrayList2;
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        switch (this.f3878a) {
            case 0:
                sQLiteDatabase.execSQL("CREATE TABLE charges (source_key TEXT PRIMARY KEY, start_ms INTEGER, end_ms INTEGER, soc_start REAL, soc_end REAL, odo_start REAL, odo_end REAL, dcfc INTEGER, complete INTEGER)");
                break;
            default:
                sQLiteDatabase.execSQL("CREATE TABLE trips (source_key TEXT PRIMARY KEY, start_ms INTEGER, end_ms INTEGER, distance_km REAL, kwh_used REAL, kwh_regen REAL, avg_speed REAL, max_speed REAL, avg_cons REAL, soc_start REAL, soc_end REAL, range_start REAL, range_end REAL, odo_start REAL, odo_end REAL, curva_vel TEXT, curva_vel_max TEXT, curva_pot TEXT, curva_pot_pico TEXT, curva_soc TEXT, curva_pot_bruta TEXT, pot_fonte TEXT, pot_bruta_integral REAL, pot_bruta_seg REAL, pot_bruta_n INTEGER, pot_iv_r REAL, pot_iv_escala REAL, pot_iv_n INTEGER, pot_iv_r0 REAL, pot_iv_desloc REAL, pot_bruta_integral_mod REAL, pot_diag_v INTEGER, pot_diag_pwr_erro INTEGER, pot_diag_pwr_zero INTEGER, pot_diag_pwr_ok INTEGER, pot_diag_cur_erro INTEGER, pot_diag_cur_zero INTEGER, pot_diag_cur_ok INTEGER, pot_diag_vol_erro INTEGER, pot_diag_vol_zero INTEGER, pot_diag_vol_ok INTEGER)");
                break;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i3, int i4) {
        switch (this.f3878a) {
            case 0:
                if (i3 < 2) {
                    try {
                        sQLiteDatabase.execSQL("ALTER TABLE charges ADD COLUMN odo_start REAL");
                        break;
                    } catch (Throwable unused) {
                    }
                    try {
                        sQLiteDatabase.execSQL("ALTER TABLE charges ADD COLUMN odo_end REAL");
                    } catch (Throwable unused2) {
                        return;
                    }
                }
                break;
            default:
                if (i3 < 3) {
                    String[] strArr = {"curva_vel", "curva_vel_max", "curva_pot", "curva_pot_pico", "curva_soc"};
                    for (int i5 = 0; i5 < 5; i5++) {
                        try {
                            sQLiteDatabase.execSQL("ALTER TABLE trips ADD COLUMN " + strArr[i5] + " TEXT");
                        } catch (Throwable unused3) {
                        }
                    }
                }
                if (i3 < 4) {
                    String[] strArr2 = {"curva_pot_bruta", "pot_fonte"};
                    for (int i6 = 0; i6 < 2; i6++) {
                        try {
                            sQLiteDatabase.execSQL("ALTER TABLE trips ADD COLUMN " + strArr2[i6] + " TEXT");
                        } catch (Throwable unused4) {
                        }
                    }
                }
                if (i3 < 5) {
                    try {
                        sQLiteDatabase.execSQL("ALTER TABLE trips ADD COLUMN pot_bruta_integral REAL");
                        break;
                    } catch (Throwable unused5) {
                    }
                    try {
                        sQLiteDatabase.execSQL("ALTER TABLE trips ADD COLUMN pot_bruta_seg REAL");
                        break;
                    } catch (Throwable unused6) {
                    }
                    try {
                        sQLiteDatabase.execSQL("ALTER TABLE trips ADD COLUMN pot_bruta_n INTEGER");
                        break;
                    } catch (Throwable unused7) {
                    }
                }
                if (i3 < 6) {
                    try {
                        sQLiteDatabase.execSQL("ALTER TABLE trips ADD COLUMN pot_iv_r REAL");
                        break;
                    } catch (Throwable unused8) {
                    }
                    try {
                        sQLiteDatabase.execSQL("ALTER TABLE trips ADD COLUMN pot_iv_escala REAL");
                        break;
                    } catch (Throwable unused9) {
                    }
                    try {
                        sQLiteDatabase.execSQL("ALTER TABLE trips ADD COLUMN pot_iv_n INTEGER");
                        break;
                    } catch (Throwable unused10) {
                    }
                }
                if (i3 < 7) {
                    try {
                        sQLiteDatabase.execSQL("ALTER TABLE trips ADD COLUMN pot_iv_r0 REAL");
                        break;
                    } catch (Throwable unused11) {
                    }
                }
                if (i3 < 8) {
                    try {
                        sQLiteDatabase.execSQL("ALTER TABLE trips ADD COLUMN pot_iv_desloc REAL");
                        break;
                    } catch (Throwable unused12) {
                    }
                }
                if (i3 < 9) {
                    try {
                        sQLiteDatabase.execSQL("ALTER TABLE trips ADD COLUMN pot_bruta_integral_mod REAL");
                        break;
                    } catch (Throwable unused13) {
                    }
                }
                if (i3 < 10) {
                    try {
                        sQLiteDatabase.execSQL("ALTER TABLE trips ADD COLUMN pot_diag_v INTEGER");
                        break;
                    } catch (Throwable unused14) {
                    }
                    try {
                        sQLiteDatabase.execSQL("ALTER TABLE trips ADD COLUMN pot_diag_pwr_erro INTEGER");
                        break;
                    } catch (Throwable unused15) {
                    }
                    try {
                        sQLiteDatabase.execSQL("ALTER TABLE trips ADD COLUMN pot_diag_pwr_zero INTEGER");
                        break;
                    } catch (Throwable unused16) {
                    }
                    try {
                        sQLiteDatabase.execSQL("ALTER TABLE trips ADD COLUMN pot_diag_pwr_ok INTEGER");
                        break;
                    } catch (Throwable unused17) {
                    }
                    try {
                        sQLiteDatabase.execSQL("ALTER TABLE trips ADD COLUMN pot_diag_cur_erro INTEGER");
                        break;
                    } catch (Throwable unused18) {
                    }
                    try {
                        sQLiteDatabase.execSQL("ALTER TABLE trips ADD COLUMN pot_diag_cur_zero INTEGER");
                        break;
                    } catch (Throwable unused19) {
                    }
                    try {
                        sQLiteDatabase.execSQL("ALTER TABLE trips ADD COLUMN pot_diag_cur_ok INTEGER");
                        break;
                    } catch (Throwable unused20) {
                    }
                    try {
                        sQLiteDatabase.execSQL("ALTER TABLE trips ADD COLUMN pot_diag_vol_erro INTEGER");
                        break;
                    } catch (Throwable unused21) {
                    }
                    try {
                        sQLiteDatabase.execSQL("ALTER TABLE trips ADD COLUMN pot_diag_vol_zero INTEGER");
                        break;
                    } catch (Throwable unused22) {
                    }
                    try {
                        sQLiteDatabase.execSQL("ALTER TABLE trips ADD COLUMN pot_diag_vol_ok INTEGER");
                    } catch (Throwable unused23) {
                        return;
                    }
                }
                break;
        }
    }
}
