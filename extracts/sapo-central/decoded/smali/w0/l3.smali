.class public final Lw0/l3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lw0/m3;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Float;

.field public d:Ljava/lang/Float;

.field public e:Z

.field public f:Ljava/lang/Boolean;

.field public g:J

.field public h:J

.field public i:Ljava/lang/Float;

.field public j:Ljava/lang/Float;

.field public k:Z


# direct methods
.method public constructor <init>(Lw0/m3;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/l3;->a:Lw0/m3;

    monitor-enter p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "SELECT source_key FROM charges WHERE end_ms = 0 ORDER BY start_ms DESC LIMIT 1"

    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :cond_0
    move-object v3, v1

    :goto_0
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit p1

    goto :goto_3

    :goto_1
    if-eqz v2, :cond_1

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    monitor-exit p1

    move-object v3, v1

    :goto_3
    iput-object v3, p0, Lw0/l3;->b:Ljava/lang/String;

    monitor-enter p1

    :try_start_5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "SELECT soc_start FROM charges WHERE end_ms = 0 ORDER BY start_ms DESC LIMIT 1"

    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v3

    goto :goto_5

    :cond_2
    move-object v3, v1

    :goto_4
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    monitor-exit p1

    move-object v1, v3

    goto :goto_7

    :goto_5
    if-eqz v2, :cond_3

    :try_start_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v2

    :try_start_9
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    monitor-exit p1

    :goto_7
    iput-object v1, p0, Lw0/l3;->c:Ljava/lang/Float;

    iget-object p1, p0, Lw0/l3;->b:Ljava/lang/String;

    if-eqz p1, :cond_4

    if-nez v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    iput-boolean v0, p0, Lw0/l3;->e:Z

    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/Float;ZLjava/lang/Float;Ljava/lang/String;)V
    .locals 3

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p6, "central"

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "c-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, "-"

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    iput-object p6, p0, Lw0/l3;->b:Ljava/lang/String;

    iput-object p3, p0, Lw0/l3;->c:Ljava/lang/Float;

    const/4 p6, 0x0

    if-nez p3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, p6

    :goto_0
    iput-boolean v0, p0, Lw0/l3;->e:Z

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "source_key"

    iget-object v2, p0, Lw0/l3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "start_ms"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "end_ms"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p3, :cond_3

    const-string p1, "soc_start"

    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_3
    if-eqz p5, :cond_4

    const-string p1, "odo_start"

    invoke-virtual {v0, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_4
    const-string p1, "dcfc"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "complete"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p1, p0, Lw0/l3;->a:Lw0/m3;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string p5, "charges"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p2, p5, v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    const-string p5, "DELETE FROM charges WHERE source_key NOT IN (SELECT source_key FROM charges ORDER BY start_ms DESC LIMIT 20)"

    invoke-virtual {p2, p5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    monitor-exit p1

    sget-object p1, Lw0/ae;->a:Lw0/ae;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "in\u00edcio: soc="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_5

    const-string p2, " (DC)"

    goto :goto_1

    :cond_5
    const-string p2, ""

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " key="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lw0/l3;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Carga"

    const-string p3, "msg"

    invoke-static {p1, p3}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1, p6}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final b(JLjava/lang/Float;)V
    .locals 8

    iget-object v0, p0, Lw0/l3;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lw0/l3;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lw0/l3;->e:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lw0/l3;->c:Ljava/lang/Float;

    if-eqz v2, :cond_1

    if-eqz p3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iget-object v4, p0, Lw0/l3;->a:Lw0/m3;

    iget-object v5, p0, Lw0/l3;->d:Ljava/lang/Float;

    monitor-enter v4

    :try_start_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "end_ms"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p3, :cond_2

    const-string p1, "soc_end"

    invoke-virtual {v6, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_2
    if-eqz v5, :cond_3

    const-string p1, "odo_end"

    invoke-virtual {v6, p1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_3
    const-string p1, "complete"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "charges"

    const-string v5, "source_key=?"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v6, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    monitor-exit v4

    sget-object p1, Lw0/ae;->a:Lw0/ae;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "fim: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lw0/l3;->c:Ljava/lang/Float;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "% \u2192 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_4

    const-string p2, " (completa)"

    goto :goto_1

    :cond_4
    const-string p2, " (sem o in\u00edcio \u2014 o celular tem o SoC inicial melhor)"

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Carga"

    const-string p3, "msg"

    invoke-static {p1, p3}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1, v3}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v1, p0, Lw0/l3;->c:Ljava/lang/Float;

    iput-boolean v3, p0, Lw0/l3;->e:Z

    iput-object v1, p0, Lw0/l3;->d:Ljava/lang/Float;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lw0/l3;->g:J

    iput-wide p1, p0, Lw0/l3;->h:J

    iput-object v1, p0, Lw0/l3;->i:Ljava/lang/Float;

    iput-object v1, p0, Lw0/l3;->j:Ljava/lang/Float;

    return-void
.end method

.method public final declared-synchronized c(Lw0/wg;J)V
    .locals 14

    move-wide/from16 v2, p2

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v8, p1, Lw0/wg;->E:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v4, p1, Lw0/wg;->d:Ljava/lang/Float;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v6, p1, Lw0/wg;->F:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    if-eqz v7, :cond_4

    iput-wide v10, p0, Lw0/l3;->g:J

    iget-object v5, p1, Lw0/wg;->f:Ljava/lang/Float;

    if-eqz v5, :cond_2

    iput-object v5, p0, Lw0/l3;->d:Ljava/lang/Float;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_0
    iget-object v7, p0, Lw0/l3;->b:Ljava/lang/String;

    if-nez v7, :cond_7

    iget-wide v12, p0, Lw0/l3;->h:J

    cmp-long v7, v12, v10

    if-nez v7, :cond_3

    iput-wide v2, p0, Lw0/l3;->h:J

    iput-object v4, p0, Lw0/l3;->i:Ljava/lang/Float;

    iput-object v5, p0, Lw0/l3;->j:Ljava/lang/Float;

    iput-boolean v6, p0, Lw0/l3;->k:Z

    goto :goto_1

    :cond_3
    sub-long/2addr v2, v12

    const-wide/32 v4, 0x15f90

    cmp-long v2, v2, v4

    if-ltz v2, :cond_7

    iget-object v4, p0, Lw0/l3;->i:Ljava/lang/Float;

    iget-boolean v5, p0, Lw0/l3;->k:Z

    iget-object v6, p0, Lw0/l3;->j:Ljava/lang/Float;

    iget-object v7, p1, Lw0/wg;->I:Ljava/lang/String;

    move-object v1, p0

    move-wide v2, v12

    invoke-virtual/range {v1 .. v7}, Lw0/l3;->a(JLjava/lang/Float;ZLjava/lang/Float;Ljava/lang/String;)V

    iput-wide v10, p0, Lw0/l3;->h:J

    iput-object v9, p0, Lw0/l3;->i:Ljava/lang/Float;

    iput-object v9, p0, Lw0/l3;->j:Ljava/lang/Float;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lw0/l3;->f:Ljava/lang/Boolean;

    invoke-virtual {v5, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lw0/l3;->b:Ljava/lang/String;

    if-eqz v0, :cond_7

    :cond_5
    iput-wide v10, p0, Lw0/l3;->h:J

    iput-object v9, p0, Lw0/l3;->i:Ljava/lang/Float;

    iput-object v9, p0, Lw0/l3;->j:Ljava/lang/Float;

    iget-wide v5, p0, Lw0/l3;->g:J

    cmp-long v0, v5, v10

    if-nez v0, :cond_6

    iput-wide v2, p0, Lw0/l3;->g:J

    :cond_6
    iget-wide v5, p0, Lw0/l3;->g:J

    sub-long/2addr v2, v5

    const-wide/32 v9, 0x493e0

    cmp-long v0, v2, v9

    if-ltz v0, :cond_7

    invoke-virtual {p0, v5, v6, v4}, Lw0/l3;->b(JLjava/lang/Float;)V

    :cond_7
    :goto_1
    iput-object v8, p0, Lw0/l3;->f:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
