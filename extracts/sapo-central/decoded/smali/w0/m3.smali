.class public final Lw0/m3;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>(Landroid/app/Service;I)V
    .locals 2

    iput p2, p0, Lw0/m3;->a:I

    packed-switch p2, :pswitch_data_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x2

    const-string v1, "central_charges.db"

    invoke-direct {p0, p1, v1, p2, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const/16 v0, 0xa

    const-string v1, "central_trips.db"

    invoke-direct {p0, p1, v1, p2, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p2, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide p2

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    long-to-double p2, p2

    div-double/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static c(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 1

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide p2

    invoke-static {p2, p3}, Lw0/m3;->e(D)D

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_1
    :goto_0
    return-void
.end method

.method public static d(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 1

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    if-ltz p3, :cond_1

    invoke-interface {p2, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    :goto_0
    return-void
.end method

.method public static e(D)D
    .locals 2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-double p0, p0

    div-double/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/util/ArrayList;
    .locals 8

    iget v0, p0, Lw0/m3;->a:I

    monitor-enter p0

    packed-switch v0, :pswitch_data_0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SELECT * FROM trips ORDER BY start_ms ASC"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_0
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "sourceKey"

    const-string v4, "source_key"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "start_ms"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-string v5, "end_ms"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-string v7, "startMs"

    invoke-virtual {v2, v7, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v7, "endMs"

    invoke-virtual {v2, v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v7, "durationS"

    sub-long/2addr v5, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v5, v3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-virtual {v2, v7, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "distanceKm"

    const-string v4, "distance_km"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Lw0/m3;->e(D)D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "kwhUsed"

    const-string v4, "kwh_used"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Lw0/m3;->e(D)D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "kwhRegen"

    const-string v4, "kwh_regen"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Lw0/m3;->e(D)D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "avgSpeedKmh"

    const-string v4, "avg_speed"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Lw0/m3;->e(D)D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "maxSpeedKmh"

    const-string v4, "max_speed"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Lw0/m3;->e(D)D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "avgConsKwh100"

    const-string v4, "avg_cons"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Lw0/m3;->e(D)D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "socStart"

    const-string v4, "soc_start"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->c(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "socEnd"

    const-string v4, "soc_end"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->c(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "rangeStart"

    const-string v4, "range_start"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->c(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "rangeEnd"

    const-string v4, "range_end"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->c(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "odoStartKm"

    const-string v4, "odo_start"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->c(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "odoEndKm"

    const-string v4, "odo_end"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->c(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "curvaVel"

    const-string v4, "curva_vel"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->d(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "curvaVelMax"

    const-string v4, "curva_vel_max"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->d(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "curvaPot"

    const-string v4, "curva_pot"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->d(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "curvaPotPico"

    const-string v4, "curva_pot_pico"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->d(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "curvaSoc"

    const-string v4, "curva_soc"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->d(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "curvaPotBruta"

    const-string v4, "curva_pot_bruta"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->d(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "potFonte"

    const-string v4, "pot_fonte"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->d(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "potBrutaIntegral"

    const-string v4, "pot_bruta_integral"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->c(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "potBrutaIntegralMod"

    const-string v4, "pot_bruta_integral_mod"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->c(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "potBrutaSeg"

    const-string v4, "pot_bruta_seg"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->c(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "potBrutaN"

    const-string v4, "pot_bruta_n"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->c(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "potIvR0"

    const-string v4, "pot_iv_r0"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->c(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "potIvDesloc"

    const-string v4, "pot_iv_desloc"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->c(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "potIvR"

    const-string v4, "pot_iv_r"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->c(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "potIvEscala"

    const-string v4, "pot_iv_escala"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->c(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "potIvN"

    const-string v4, "pot_iv_n"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->c(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "potDiagV"

    const-string v4, "pot_diag_v"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->c(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "potDiagPwrErro"

    const-string v4, "pot_diag_pwr_erro"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->c(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "potDiagPwrZero"

    const-string v4, "pot_diag_pwr_zero"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->c(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "potDiagPwrOk"

    const-string v4, "pot_diag_pwr_ok"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->c(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "potDiagCurErro"

    const-string v4, "pot_diag_cur_erro"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->c(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "potDiagCurZero"

    const-string v4, "pot_diag_cur_zero"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->c(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "potDiagCurOk"

    const-string v4, "pot_diag_cur_ok"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->c(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "potDiagVolErro"

    const-string v4, "pot_diag_vol_erro"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->c(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "potDiagVolZero"

    const-string v4, "pot_diag_vol_zero"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->c(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "potDiagVolOk"

    const-string v4, "pot_diag_vol_ok"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->c(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "trip"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :goto_1
    if-eqz v1, :cond_1

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    :goto_3
    monitor-exit p0

    return-object v0

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :pswitch_0
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :try_start_8
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SELECT * FROM charges WHERE end_ms > 0 ORDER BY start_ms ASC"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :goto_4
    :try_start_9
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "sourceKey"

    const-string v4, "source_key"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "start_ms"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-string v5, "end_ms"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-string v7, "startMs"

    invoke-virtual {v2, v7, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v7, "endMs"

    invoke-virtual {v2, v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v7, "durationS"

    sub-long/2addr v5, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v5, v3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-virtual {v2, v7, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "socStart"

    const-string v4, "soc_start"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->b(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "socEnd"

    const-string v4, "soc_end"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->b(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "odoStart"

    const-string v4, "odo_start"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->b(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "odoEnd"

    const-string v4, "odo_end"

    invoke-static {v2, v3, v1, v4}, Lw0/m3;->b(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v3, "dcfc"

    const-string v4, "dcfc"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    move v4, v6

    goto :goto_5

    :cond_2
    move v4, v5

    :goto_5
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "complete"

    const-string v4, "complete"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v6, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "charge"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto/16 :goto_4

    :catchall_4
    move-exception v2

    goto :goto_6

    :cond_4
    :try_start_a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_8

    :goto_6
    if-eqz v1, :cond_5

    :try_start_b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v1

    :try_start_c
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_7
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    :goto_8
    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget v0, p0, Lw0/m3;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "CREATE TABLE trips (source_key TEXT PRIMARY KEY, start_ms INTEGER, end_ms INTEGER, distance_km REAL, kwh_used REAL, kwh_regen REAL, avg_speed REAL, max_speed REAL, avg_cons REAL, soc_start REAL, soc_end REAL, range_start REAL, range_end REAL, odo_start REAL, odo_end REAL, curva_vel TEXT, curva_vel_max TEXT, curva_pot TEXT, curva_pot_pico TEXT, curva_soc TEXT, curva_pot_bruta TEXT, pot_fonte TEXT, pot_bruta_integral REAL, pot_bruta_seg REAL, pot_bruta_n INTEGER, pot_iv_r REAL, pot_iv_escala REAL, pot_iv_n INTEGER, pot_iv_r0 REAL, pot_iv_desloc REAL, pot_bruta_integral_mod REAL, pot_diag_v INTEGER, pot_diag_pwr_erro INTEGER, pot_diag_pwr_zero INTEGER, pot_diag_pwr_ok INTEGER, pot_diag_cur_erro INTEGER, pot_diag_cur_zero INTEGER, pot_diag_cur_ok INTEGER, pot_diag_vol_erro INTEGER, pot_diag_vol_zero INTEGER, pot_diag_vol_ok INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string v0, "CREATE TABLE charges (source_key TEXT PRIMARY KEY, start_ms INTEGER, end_ms INTEGER, soc_start REAL, soc_end REAL, odo_start REAL, odo_end REAL, dcfc INTEGER, complete INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 8

    iget p3, p0, Lw0/m3;->a:I

    packed-switch p3, :pswitch_data_0

    const/4 p3, 0x3

    const-string v0, " TEXT"

    const-string v1, "ALTER TABLE trips ADD COLUMN "

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-ge p2, p3, :cond_0

    const-string p3, "curva_pot_pico"

    const-string v4, "curva_soc"

    const-string v5, "curva_vel"

    const-string v6, "curva_vel_max"

    const-string v7, "curva_pot"

    filled-new-array {v5, v6, v7, p3, v4}, [Ljava/lang/String;

    move-result-object p3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, p3, v4

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x4

    if-ge p2, p3, :cond_1

    const-string p3, "curva_pot_bruta"

    const-string v4, "pot_fonte"

    filled-new-array {p3, v4}, [Ljava/lang/String;

    move-result-object p3

    :goto_1
    const/4 v4, 0x2

    if-ge v2, v4, :cond_1

    aget-object v4, p3, v2

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    if-ge p2, v3, :cond_2

    :try_start_2
    const-string p3, "ALTER TABLE trips ADD COLUMN pot_bruta_integral REAL"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    :try_start_3
    const-string p3, "ALTER TABLE trips ADD COLUMN pot_bruta_seg REAL"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    :try_start_4
    const-string p3, "ALTER TABLE trips ADD COLUMN pot_bruta_n INTEGER"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    :cond_2
    const/4 p3, 0x6

    if-ge p2, p3, :cond_3

    :try_start_5
    const-string p3, "ALTER TABLE trips ADD COLUMN pot_iv_r REAL"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catchall_5
    :try_start_6
    const-string p3, "ALTER TABLE trips ADD COLUMN pot_iv_escala REAL"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :catchall_6
    :try_start_7
    const-string p3, "ALTER TABLE trips ADD COLUMN pot_iv_n INTEGER"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :catchall_7
    :cond_3
    const/4 p3, 0x7

    if-ge p2, p3, :cond_4

    :try_start_8
    const-string p3, "ALTER TABLE trips ADD COLUMN pot_iv_r0 REAL"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    :catchall_8
    :cond_4
    const/16 p3, 0x8

    if-ge p2, p3, :cond_5

    :try_start_9
    const-string p3, "ALTER TABLE trips ADD COLUMN pot_iv_desloc REAL"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    :catchall_9
    :cond_5
    const/16 p3, 0x9

    if-ge p2, p3, :cond_6

    :try_start_a
    const-string p3, "ALTER TABLE trips ADD COLUMN pot_bruta_integral_mod REAL"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    :catchall_a
    :cond_6
    const/16 p3, 0xa

    if-ge p2, p3, :cond_7

    :try_start_b
    const-string p2, "ALTER TABLE trips ADD COLUMN pot_diag_v INTEGER"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    :catchall_b
    :try_start_c
    const-string p2, "ALTER TABLE trips ADD COLUMN pot_diag_pwr_erro INTEGER"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    :catchall_c
    :try_start_d
    const-string p2, "ALTER TABLE trips ADD COLUMN pot_diag_pwr_zero INTEGER"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    :catchall_d
    :try_start_e
    const-string p2, "ALTER TABLE trips ADD COLUMN pot_diag_pwr_ok INTEGER"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    :catchall_e
    :try_start_f
    const-string p2, "ALTER TABLE trips ADD COLUMN pot_diag_cur_erro INTEGER"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    :catchall_f
    :try_start_10
    const-string p2, "ALTER TABLE trips ADD COLUMN pot_diag_cur_zero INTEGER"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    :catchall_10
    :try_start_11
    const-string p2, "ALTER TABLE trips ADD COLUMN pot_diag_cur_ok INTEGER"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    :catchall_11
    :try_start_12
    const-string p2, "ALTER TABLE trips ADD COLUMN pot_diag_vol_erro INTEGER"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    :catchall_12
    :try_start_13
    const-string p2, "ALTER TABLE trips ADD COLUMN pot_diag_vol_zero INTEGER"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    :catchall_13
    :try_start_14
    const-string p2, "ALTER TABLE trips ADD COLUMN pot_diag_vol_ok INTEGER"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    :catchall_14
    :cond_7
    return-void

    :pswitch_0
    const/4 p3, 0x2

    if-ge p2, p3, :cond_8

    :try_start_15
    const-string p2, "ALTER TABLE charges ADD COLUMN odo_start REAL"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    :catchall_15
    :try_start_16
    const-string p2, "ALTER TABLE charges ADD COLUMN odo_end REAL"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    :catchall_16
    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
