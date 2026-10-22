.class public final synthetic Lw0/y2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lw0/y2;->a:I

    iput-object p1, p0, Lw0/y2;->b:Ljava/lang/Object;

    iput-object p3, p0, Lw0/y2;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lw0/y2;->b:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothSocket;

    iget-object v1, p0, Lw0/y2;->c:Ljava/lang/Object;

    check-cast v1, Lcom/ex/auto/PhoneSyncService;

    sget-boolean v2, Lcom/ex/auto/PhoneSyncService;->z:Z

    :try_start_0
    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->V2:Lcom/ex/auto/CentralWatchdogService;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget-wide v5, Lcom/ex/auto/CentralWatchdogService;->X2:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x4e20

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    goto :goto_0

    :cond_1
    sput-wide v3, Lcom/ex/auto/CentralWatchdogService;->X2:J

    iget-object v3, v2, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v4, Lw0/v2;

    const/4 v5, 0x6

    invoke-direct {v4, v2, v5}, Lw0/v2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v4, v6, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    :cond_2
    :goto_1
    iget-boolean v4, v1, Lcom/ex/auto/PhoneSyncService;->a:Z

    if-eqz v4, :cond_5

    invoke-static {v2}, Lcom/ex/auto/PhoneSyncService;->q(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_4

    :cond_3
    invoke-static {v4}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_2

    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_0
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_4

    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "ok"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "error"

    const-string v6, "JSON inv\u00e1lido"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    goto :goto_3

    :cond_4
    const-string v4, "op"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "optString(...)"

    invoke-static {v4, v6}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "body"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/ex/auto/PhoneSyncService;->h(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_5
    :goto_4
    :try_start_3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :goto_5
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_5
    invoke-static {v0, v1}, La1/b;->p(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cliente BT: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "PhoneSyncService"

    invoke-static {v0, v1, v2}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_7
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0
.end method

.method private final c()Ljava/lang/Object;
    .locals 23

    move-object/from16 v1, p0

    iget-object v0, v1, Lw0/y2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/PhoneSyncService;

    iget-object v2, v1, Lw0/y2;->c:Ljava/lang/Object;

    check-cast v2, Ljava/net/Socket;

    sget-boolean v3, Lcom/ex/auto/PhoneSyncService;->z:Z

    const-string v3, "substring(...)"

    const-string v4, "GET"

    const-string v5, "POST"

    :try_start_0
    iget-object v6, v0, Lcom/ex/auto/PhoneSyncService;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lw0/i6;

    const/4 v8, 0x1

    invoke-direct {v7, v2, v8}, Lw0/i6;-><init>(Ljava/net/Socket;I)V

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x2

    invoke-interface {v6, v7, v10, v11, v9}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v6
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_3

    const/16 v7, 0x4e20

    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v2, v7}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-static {v7}, Lcom/ex/auto/PhoneSyncService;->s(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v11

    const-string v12, " "

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x6

    invoke-static {v11, v12, v9, v13}, Lo2/k;->v0(Ljava/lang/String;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    const/4 v14, 0x2

    if-ge v12, v14, :cond_0

    invoke-static {v10}, Li2/g;->b(Ljava/lang/Object;)V

    const-string v0, "{\"ok\":false,\"error\":\"linha HTTP inv\u00e1lida\"}"

    const/16 v3, 0x190

    invoke-static {v10, v3, v0}, Lcom/ex/auto/PhoneSyncService;->D(Ljava/io/OutputStream;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-interface {v6, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    move v2, v9

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto/16 :goto_6

    :cond_0
    :try_start_3
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v12, v14}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    const-string v14, "toUpperCase(...)"

    invoke-static {v12, v14}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move/from16 v21, v8

    move/from16 v16, v9

    move/from16 v17, v16

    move/from16 v20, v17

    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x0

    :goto_1
    invoke-static {v7}, Lcom/ex/auto/PhoneSyncService;->s(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v22

    if-nez v22, :cond_c

    invoke-virtual {v12, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v8, "toString(...)"

    const/16 v13, 0xc8

    if-eqz v3, :cond_1

    :try_start_4
    const-string v3, "/sync/carlock"

    invoke-static {v11, v3}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v10}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v7, v11, v14, v15}, Lcom/ex/auto/PhoneSyncService;->k(Ljava/io/BufferedInputStream;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v13, v0}, Lcom/ex/auto/PhoneSyncService;->D(Ljava/io/OutputStream;ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_6
    invoke-virtual {v12, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "/sync/avas_sound"

    invoke-static {v11, v3}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v10}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-static {v7, v11, v14, v15}, Lcom/ex/auto/PhoneSyncService;->i(Ljava/io/BufferedInputStream;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v13, v0}, Lcom/ex/auto/PhoneSyncService;->D(Ljava/io/OutputStream;ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :cond_2
    :try_start_8
    invoke-virtual {v12, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const-string v13, "UTF_8"

    const-wide/16 v17, 0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_4

    :try_start_9
    const-string v3, "/sync/logs_zip"

    invoke-static {v11, v3}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v3, :cond_4

    cmp-long v3, v17, v14

    if-gtz v3, :cond_3

    const-wide/32 v3, 0x10001

    cmp-long v3, v14, v3

    if-gez v3, :cond_3

    :try_start_a
    new-instance v3, Lorg/json/JSONObject;

    long-to-int v4, v14

    invoke-static {v7, v4}, Lcom/ex/auto/PhoneSyncService;->p(Ljava/io/BufferedInputStream;I)[B

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v5, v13}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object v9, v3

    :catch_1
    :cond_3
    :try_start_b
    invoke-static {v10}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v9, v10}, Lcom/ex/auto/PhoneSyncService;->w(Lorg/json/JSONObject;Ljava/io/OutputStream;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    const/4 v2, 0x0

    :goto_2
    invoke-interface {v6, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto/16 :goto_9

    :catchall_2
    move-exception v0

    const/4 v2, 0x0

    goto/16 :goto_8

    :cond_4
    const-wide/32 v19, 0x100000

    cmp-long v3, v14, v19

    if-lez v3, :cond_5

    :try_start_d
    invoke-static {v10}, Li2/g;->b(Ljava/lang/Object;)V

    const-string v0, "{\"ok\":false,\"error\":\"payload too large\"}"

    const/16 v3, 0x19d

    invoke-static {v10, v3, v0}, Lcom/ex/auto/PhoneSyncService;->D(Ljava/io/OutputStream;ILjava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    :try_start_f
    invoke-virtual {v12, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    cmp-long v17, v17, v14

    if-gtz v17, :cond_6

    if-gtz v3, :cond_6

    long-to-int v3, v14

    invoke-static {v7, v3}, Lcom/ex/auto/PhoneSyncService;->p(Ljava/io/BufferedInputStream;I)[B

    move-result-object v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    new-instance v7, Lorg/json/JSONObject;

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v14, v13}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v3, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v7, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_3

    :catch_2
    :cond_6
    move-object v7, v9

    :goto_3
    :try_start_11
    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "/sync/ping"

    invoke-static {v11, v3}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "ping"

    invoke-virtual {v0, v3, v9}, Lcom/ex/auto/PhoneSyncService;->h(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_4

    :cond_7
    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "/sync/state"

    invoke-static {v11, v3}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "state"

    invoke-virtual {v0, v3, v9}, Lcom/ex/auto/PhoneSyncService;->h(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_4

    :cond_8
    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "/sync/telemetry"

    invoke-static {v11, v3}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "telemetry"

    invoke-virtual {v0, v3, v9}, Lcom/ex/auto/PhoneSyncService;->h(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_4

    :cond_9
    invoke-virtual {v12, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "/sync/merge"

    invoke-static {v11, v3}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "merge"

    invoke-virtual {v0, v3, v7}, Lcom/ex/auto/PhoneSyncService;->h(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_4

    :cond_a
    invoke-virtual {v12, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "/sync/action"

    invoke-static {v11, v3}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "action"

    invoke-virtual {v0, v3, v7}, Lcom/ex/auto/PhoneSyncService;->h(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_4

    :cond_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "ok"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "error"

    const-string v4, "endpoint n\u00e3o encontrado"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_4
    invoke-static {v10}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0xc8

    invoke-static {v10, v3, v0}, Lcom/ex/auto/PhoneSyncService;->D(Ljava/io/OutputStream;ILjava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_c
    :try_start_13
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int v9, v16, v9

    add-int/lit8 v13, v17, 0x1

    move-object/from16 v17, v0

    const/16 v0, 0x40

    if-gt v13, v0, :cond_13

    const v0, 0x8000

    if-gt v9, v0, :cond_13

    const/16 v0, 0x3a

    move-object/from16 v16, v4

    const/4 v1, 0x6

    const/4 v4, 0x0

    invoke-static {v8, v0, v4, v1}, Lo2/k;->j0(Ljava/lang/CharSequence;CII)I

    move-result v0

    if-lez v0, :cond_12

    invoke-virtual {v8, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "transfer-encoding"

    invoke-static {v1, v4}, Lo2/t;->a0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "content-length"

    invoke-static {v1, v4}, Lo2/t;->a0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    if-nez v20, :cond_f

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2/s;->Y(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v0, v14, v18

    if-ltz v0, :cond_d

    move-object/from16 v1, p0

    move-object/from16 v4, v16

    move-object/from16 v0, v17

    move/from16 v20, v21

    :goto_5
    move/from16 v16, v9

    move/from16 v17, v13

    const/4 v9, 0x0

    const/4 v13, 0x6

    goto/16 :goto_1

    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Negative content length"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid content length"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Duplicate content length"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move-object/from16 v1, p0

    move-object/from16 v4, v16

    move-object/from16 v0, v17

    goto :goto_5

    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported transfer encoding"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed HTTP header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v1, "HTTP headers too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :goto_6
    :try_start_14
    throw v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_15
    invoke-static {v2, v1}, La1/b;->p(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :goto_7
    :try_start_16
    const-string v1, "PhoneSyncService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleHttpClient: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    const/4 v2, 0x0

    goto/16 :goto_2

    :goto_8
    invoke-interface {v6, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    throw v0

    :catch_3
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    :goto_9
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 37

    move-object/from16 v1, p0

    iget v0, v1, Lw0/y2;->a:I

    const/4 v2, 0x2

    const/16 v3, 0xbb8

    const/16 v4, 0x15b3

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lw0/y2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/QuickAccessFloaterService;

    iget-object v2, v1, Lw0/y2;->c:Ljava/lang/Object;

    check-cast v2, Lw0/j0;

    sget v3, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/ex/auto/AppPipFloaterService;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "pacote"

    iget-object v2, v2, Lw0/j0;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->j()V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_0
    iget-object v0, v1, Lw0/y2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/QuickAccessFloaterService;

    iget-object v2, v1, Lw0/y2;->c:Ljava/lang/Object;

    check-cast v2, Lw0/k0;

    sget v3, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/ex/auto/SplitFloaterService;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->j()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v3, La1/r;

    const/16 v4, 0xd

    invoke-direct {v3, v4, v2}, La1/r;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_1
    invoke-direct {v1}, Lw0/y2;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-direct {v1}, Lw0/y2;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, v1, Lw0/y2;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v2, v1, Lw0/y2;->c:Ljava/lang/Object;

    check-cast v2, Lw0/q6;

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lw0/pd;

    invoke-direct {v4, v0, v2, v8}, Lw0/pd;-><init>(Landroid/content/Context;Lw0/q6;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_4
    iget-object v0, v1, Lw0/y2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MediaBarFloaterService;

    iget-object v2, v1, Lw0/y2;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/activity/d;

    :try_start_0
    const-string v5, "tela_preta_prefs"

    invoke-virtual {v0, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "media_bar_floater_pinned"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, v0, Lcom/ex/auto/MediaBarFloaterService;->k:Landroid/media/session/MediaController;

    if-nez v5, :cond_1

    iget-boolean v7, v0, Lcom/ex/auto/MediaBarFloaterService;->t:Z

    goto :goto_0

    :cond_1
    new-instance v5, Lkotlinx/coroutines/scheduling/h;

    invoke-direct {v5, v4}, Lkotlinx/coroutines/scheduling/h;-><init>(I)V

    const-string v4, "dumpsys window windows 2>/dev/null | sed -n \'/Window{.*CarNavigationBar}/,/mWindowRemovalAllowed/p\' | grep -o \'isReadyForDisplay()=[a-z]*\'"

    invoke-virtual {v5, v3, v4}, Lkotlinx/coroutines/scheduling/h;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-static {v3}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v7, v0, Lcom/ex/auto/MediaBarFloaterService;->t:Z

    goto :goto_0

    :cond_2
    const-string v4, "=false"

    invoke-static {v3, v4, v7}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    iget-boolean v7, v0, Lcom/ex/auto/MediaBarFloaterService;->t:Z

    :goto_0
    iget-object v3, v0, Lcom/ex/auto/MediaBarFloaterService;->c:Landroid/os/Handler;

    new-instance v4, Lw0/c0;

    const/4 v5, 0x4

    invoke-direct {v4, v7, v0, v2, v5}, Lw0/c0;-><init>(ZLandroid/content/ContextWrapper;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_5
    iget-object v0, v1, Lw0/y2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-object v2, v1, Lw0/y2;->c:Ljava/lang/Object;

    check-cast v2, Le/i;

    iput-boolean v7, v0, Lcom/ex/auto/MainActivity;->n1:Z

    :try_start_1
    invoke-virtual {v2}, Le/i;->dismiss()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->W0()V

    :cond_3
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_6
    iget-object v0, v1, Lw0/y2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-object v2, v1, Lw0/y2;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    const-string v3, "RotasRoot"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cria\u00e7\u00e3o manual: envio em partes bytes="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lo2/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const-string v7, "getBytes(...)"

    invoke-static {v5, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lw0/t1;->e:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    new-instance v4, Lw0/l9;

    invoke-direct {v4, v0, v8}, Lw0/l9;-><init>(Lcom/ex/auto/MainActivity;I)V

    const/16 v0, 0x7530

    invoke-static {v2, v0, v6, v4}, Lw0/m;->x(Ljava/lang/String;ILh2/l;Lh2/p;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v3

    return-object v0

    :catchall_2
    move-exception v0

    monitor-exit v3

    throw v0

    :pswitch_7
    iget-object v0, v1, Lw0/y2;->b:Ljava/lang/Object;

    check-cast v0, Lw0/h0;

    iget-object v2, v1, Lw0/y2;->c:Ljava/lang/Object;

    check-cast v2, Lcom/ex/auto/MainActivity;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lw0/h0;->a()Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->n1()V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_8
    iget-object v0, v1, Lw0/y2;->b:Ljava/lang/Object;

    check-cast v0, Lw0/kc;

    iget-object v2, v1, Lw0/y2;->c:Ljava/lang/Object;

    check-cast v2, Lcom/ex/auto/MainActivity;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lw0/kc;->a()Lw0/xb;

    move-result-object v3

    iput-boolean v8, v3, Lw0/xb;->g:Z

    invoke-virtual {v0}, Lw0/kc;->a()Lw0/xb;

    move-result-object v0

    iput-boolean v8, v0, Lw0/xb;->f:Z

    iget-object v0, v2, Lcom/ex/auto/MainActivity;->B:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lw0/x8;

    const/16 v4, 0x12

    invoke-direct {v3, v2, v4}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_9
    iget-object v0, v1, Lw0/y2;->b:Ljava/lang/Object;

    check-cast v0, Li2/j;

    iget-object v2, v1, Lw0/y2;->c:Ljava/lang/Object;

    check-cast v2, Lcom/ex/auto/MainActivity;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    sget-object v3, Lw0/qe;->a:Lw0/qe;

    const-string v3, "audio.restaurarSomTravaPersistente"

    const-string v4, "fabrica"

    sget-object v6, Lw0/u;->v:Ljava/lang/String;

    new-instance v7, Lx1/a;

    invoke-direct {v7, v4, v6}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v7}, Ly1/s;->W(Lx1/a;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v2, v3, v4, v5}, Lw0/qe;->e(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)Z

    move-result v2

    iput-boolean v2, v0, Li2/j;->a:Z

    if-eqz v2, :cond_4

    const-string v0, "exit_code=0"

    goto :goto_1

    :cond_4
    const-string v0, "ERROR: sem playbook \u2014 sincronize a central uma vez"

    :goto_1
    return-object v0

    :pswitch_a
    iget-object v0, v1, Lw0/y2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-object v2, v1, Lw0/y2;->c:Ljava/lang/Object;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    const-string v3, "ok"

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->O()Z

    move-result v4

    const-string v6, "rede.ativarConnAdaptor"

    invoke-static {v0, v6, v2, v5}, Lw0/qe;->e(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)Z

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->O()Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v4, :cond_5

    move v7, v8

    :cond_5
    iput-boolean v7, v0, Lcom/ex/auto/MainActivity;->m0:Z

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->O()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    const-string v3, "ERROR: a ativa\u00e7\u00e3o n\u00e3o vingou \u2014 o ConnAdaptor n\u00e3o est\u00e1 em /data/app"

    :goto_2
    return-object v3

    :pswitch_b
    iget-object v0, v1, Lw0/y2;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v3, v1, Lw0/y2;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v6, v3, v2}, Lw0/d8;->b(Landroid/content/Context;Lh2/l;Ljava/lang/String;I)Z

    sget-object v0, Lw0/d8;->b:Lw0/b4;

    return-object v0

    :pswitch_c
    iget-object v0, v1, Lw0/y2;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v0, v1, Lw0/y2;->c:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lw0/t7;

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    const-string v0, "com.flyme.auto.launcher"

    const-string v10, "AppListActivity"

    :try_start_3
    const-string v11, "activity"

    invoke-virtual {v2, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {v11, v12}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Landroid/app/ActivityManager;

    invoke-virtual {v11, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v11

    const-string v12, "getRunningTasks(...)"

    invoke-static {v11, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Ly1/g;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v11, :cond_8

    invoke-static {v11}, Landroidx/lifecycle/y;->b(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object v6

    :cond_8
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    const-string v11, "flattenToShortString(...)"

    invoke-static {v6, v11}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v10, v7}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v11

    new-instance v12, Lw0/o7;

    invoke-static {v6, v0, v7}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6

    if-eqz v6, :cond_9

    if-nez v11, :cond_9

    move v6, v8

    goto :goto_3

    :cond_9
    move v6, v7

    :goto_3
    invoke-direct {v12, v6, v11}, Lw0/o7;-><init>(ZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_5

    :catchall_3
    :cond_a
    :try_start_4
    new-instance v6, Lkotlinx/coroutines/scheduling/h;

    invoke-direct {v6, v4}, Lkotlinx/coroutines/scheduling/h;-><init>(I)V

    const-string v4, "dumpsys activity activities 2>/dev/null | grep mResumedActivity"

    invoke-virtual {v6, v3, v4}, Lkotlinx/coroutines/scheduling/h;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-static {v3, v10, v7}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    new-instance v6, Lw0/o7;

    invoke-static {v3, v0, v7}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    if-nez v4, :cond_b

    goto :goto_4

    :cond_b
    move v8, v7

    :goto_4
    invoke-direct {v6, v8, v4}, Lw0/o7;-><init>(ZZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object v12, v6

    goto :goto_5

    :catchall_4
    move-exception v0

    const-string v3, "HomeFloatingWidgets"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "checkForegroundState: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lw0/o7;

    invoke-direct {v0, v7, v7}, Lw0/o7;-><init>(ZZ)V

    move-object v12, v0

    :goto_5
    iget-object v0, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    new-instance v3, La1/g;

    invoke-direct {v3, v2, v12, v9, v5}, La1/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_d
    iget-object v0, v1, Lw0/y2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/CentralWatchdogService;

    iget-object v3, v1, Lw0/y2;->c:Ljava/lang/Object;

    check-cast v3, Landroid/car/hardware/property/CarPropertyManager;

    sget-object v4, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    const v4, 0x11400400

    const v5, 0x11400401

    filled-new-array {v4, v5}, [I

    move-result-object v4

    move v5, v7

    :goto_6
    if-ge v5, v2, :cond_e

    aget v8, v4, v5

    invoke-static {v3, v8, v7}, Lw0/p1;->e(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Ljava/lang/Integer;

    if-eqz v9, :cond_c

    check-cast v8, Ljava/lang/Integer;

    goto :goto_7

    :cond_c
    move-object v8, v6

    :goto_7
    if-eqz v8, :cond_d

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_d

    move-object v6, v8

    goto :goto_8

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_e
    :goto_8
    if-eqz v6, :cond_10

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v0, Lcom/ex/auto/CentralWatchdogService;->M:I

    if-eq v2, v3, :cond_10

    iput v2, v0, Lcom/ex/auto/CentralWatchdogService;->M:I

    const-string v3, "CentralWatchdog"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "poll: troca de marcha (val="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") \u2014 reaplicar drive/regen"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->D2:Lw0/p2;

    iget-object v0, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    sget-boolean v3, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->M:Z

    if-eqz v3, :cond_f

    goto :goto_9

    :cond_f
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x258

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_10
    :goto_9
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_e
    const-string v0, "update_check_next_at"

    const-string v2, "install:"

    const-string v3, "download:"

    iget-object v4, v1, Lw0/y2;->b:Ljava/lang/Object;

    check-cast v4, Lcom/ex/auto/CentralWatchdogService;

    iget-object v5, v1, Lw0/y2;->c:Ljava/lang/Object;

    check-cast v5, Lw0/a3;

    const-string v9, "AutoUpdate"

    const-string v10, "update_attempt_count"

    const-string v11, "auto"

    const-string v12, "update_attempt_vc"

    const-string v13, "CentralWatchdog"

    const-string v14, "ok (vc="

    const-string v15, "falha download "

    const-string v6, "install vc="

    move/from16 v16, v8

    const-string v8, "Auto-update install "

    const-string v7, "adiado: outra instala\u00e7\u00e3o em andamento ("

    const-string v1, "instalando "

    move-object/from16 v17, v14

    const-string v14, "Auto-update re-check falhou: "

    move-object/from16 v18, v15

    const-string v15, "baixando "

    move-object/from16 v19, v8

    const-string v8, "Auto-update: vers\u00e3o ainda mais recente ("

    move-object/from16 v20, v7

    const-string v7, "Auto-update: nova vers\u00e3o "

    move-object/from16 v21, v9

    const-string v9, "Auto-update adiado: "

    move-object/from16 v22, v6

    const-string v6, "adiado: atualiza\u00e7\u00e3o "

    move-object/from16 v23, v2

    const-string v2, "Auto-update: vc="

    move-object/from16 v24, v1

    const-string v1, "instala\u00e7\u00e3o da "

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    :try_start_5
    sget-object v27, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v4}, Lcom/ex/auto/CentralWatchdogService;->c1()Z

    move-result v14

    if-nez v14, :cond_12

    invoke-static {}, Lcom/ex/auto/CentralWatchdogService;->v()Z

    move-result v15

    if-nez v15, :cond_11

    goto :goto_a

    :cond_11
    move-object/from16 v28, v8

    goto :goto_b

    :catchall_5
    move-exception v0

    move-object/from16 v35, v5

    goto/16 :goto_14

    :cond_12
    :goto_a
    invoke-virtual {v4}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v15

    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    move-object/from16 v28, v8

    const-string v8, "wifi_cliente_ativo_antes"

    invoke-interface {v15, v8, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v4}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v8

    move-wide/from16 v29, v14

    const-wide/16 v14, 0x0

    invoke-interface {v8, v0, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v31

    cmp-long v8, v29, v31

    if-gez v8, :cond_13

    sub-long v31, v31, v29

    const-wide/32 v33, 0x2932e00

    cmp-long v8, v31, v33

    if-gez v8, :cond_13

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->W2:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, "aguardando a pr\u00f3xima janela de consulta"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-boolean v0, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v0, :cond_23

    iget-object v0, v4, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_17

    :cond_13
    invoke-virtual {v4}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-wide/32 v31, 0x124f80

    move-wide/from16 v33, v14

    add-long v14, v29, v31

    invoke-interface {v8, v0, v14, v15}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v8, Lcom/ex/auto/CentralWatchdogService;->W2:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v14, "verificando\u2026"

    invoke-virtual {v8, v14}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/ex/auto/CentralWatchdogService;->k(Lcom/ex/auto/CentralWatchdogService;)Lw0/x2;

    move-result-object v14

    invoke-virtual {v4}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v15

    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    const-wide/32 v31, 0x36ee80

    move-object/from16 v35, v5

    move-object/from16 v36, v6

    add-long v5, v29, v31

    :try_start_6
    invoke-interface {v15, v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v0

    move-wide/from16 v29, v5

    const-wide/16 v5, -0x1

    invoke-interface {v0, v12, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v31

    cmp-long v0, v33, v31

    if-gtz v0, :cond_14

    cmp-long v0, v31, v29

    if-gtz v0, :cond_14

    invoke-virtual {v4}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v12}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_c

    :catchall_6
    move-exception v0

    goto/16 :goto_14

    :cond_14
    :goto_c
    iget-wide v5, v14, Lw0/x2;->a:J

    cmp-long v0, v5, v29

    if-lez v0, :cond_21

    invoke-virtual {v4}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v5, -0x1

    invoke-interface {v0, v12, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v33

    invoke-virtual {v4}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v6, 0x0

    invoke-interface {v0, v10, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-wide v5, v14, Lw0/x2;->a:J

    cmp-long v5, v33, v5

    if-nez v5, :cond_15

    iget v5, v4, Lcom/ex/auto/CentralWatchdogService;->N2:I

    if-lt v0, v5, :cond_15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v14, Lw0/x2;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " falhou "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x \u2014 pausada (aguardando nova vers\u00e3o; ou instale manualmente)"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v14, Lw0/x2;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " pausada ap\u00f3s "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " falhas (guard anti-loop)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    :cond_15
    sget-object v0, Lw0/i0;->a:Landroidx/emoji2/text/m;

    iget-object v0, v14, Lw0/x2;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "phase"

    invoke-static {v0, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lw0/i0;->a:Landroidx/emoji2/text/m;

    invoke-virtual {v1, v11, v0}, Landroidx/emoji2/text/m;->u(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, v1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/n6;

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v36

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_16

    iget-object v2, v0, Lw0/n6;->a:Ljava/lang/String;

    if-nez v2, :cond_17

    :cond_16
    const-string v2, "desconhecida"

    :cond_17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " em andamento"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_18

    iget-object v2, v0, Lw0/n6;->a:Ljava/lang/String;

    goto :goto_d

    :cond_18
    const/4 v2, 0x0

    :goto_d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_19

    iget-object v6, v0, Lw0/n6;->b:Ljava/lang/String;

    goto :goto_e

    :cond_19
    const/4 v6, 0x0

    :goto_e
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v14, Lw0/x2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (vc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v14, Lw0/x2;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v15, 0x29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v14, Lw0/x2;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2026

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :try_start_7
    invoke-static {v4, v14}, Lcom/ex/auto/CentralWatchdogService;->j(Lcom/ex/auto/CentralWatchdogService;Lw0/x2;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :try_start_8
    invoke-static {v4}, Lcom/ex/auto/CentralWatchdogService;->k(Lcom/ex/auto/CentralWatchdogService;)Lw0/x2;

    move-result-object v2

    iget-wide v5, v2, Lw0/x2;->a:J

    move-wide/from16 v17, v5

    iget-wide v5, v14, Lw0/x2;->a:J

    cmp-long v0, v17, v5

    if-lez v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v3, v28

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lw0/x2;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") \u2014 re-baixando"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Lw0/x2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (re-check)\u2026"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {v4, v2}, Lcom/ex/auto/CentralWatchdogService;->j(Lcom/ex/auto/CentralWatchdogService;Lw0/x2;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    move-object v14, v2

    goto :goto_10

    :catchall_7
    move-exception v0

    goto/16 :goto_13

    :catch_0
    move-exception v0

    move-object v14, v2

    goto :goto_f

    :catch_1
    move-exception v0

    :goto_f
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_10
    invoke-virtual {v4}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v5, -0x1

    invoke-interface {v0, v12, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iget-wide v2, v14, Lw0/x2;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    invoke-virtual {v4}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v6, 0x0

    invoke-interface {v0, v10, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_11

    :cond_1c
    const/4 v0, 0x0

    :goto_11
    invoke-virtual {v4}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-wide v2, v14, Lw0/x2;->a:J

    invoke-interface {v1, v12, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v10, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->W2:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v24

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v14, Lw0/x2;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (a central pode reiniciar)\u2026"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v2, Lw0/i0;->a:Landroidx/emoji2/text/m;

    iget-object v2, v14, Lw0/x2;->b:Ljava/lang/String;

    move-object/from16 v3, v23

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lw0/i0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "self-update:auto"

    sget-object v3, Lw0/zd;->a:Landroidx/emoji2/text/m;

    invoke-static {v2}, Lw0/zd;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1f

    sget-object v0, Lw0/zd;->a:Landroidx/emoji2/text/m;

    iget-object v0, v0, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/n6;

    if-eqz v0, :cond_1d

    iget-object v0, v0, Lw0/n6;->a:Ljava/lang/String;

    if-nez v0, :cond_1e

    :cond_1d
    const-string v0, "?"

    :cond_1e
    sget-object v2, Lw0/ae;->a:Lw0/ae;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v14, Lw0/x2;->a:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ADIADO: outra instala\u00e7\u00e3o em andamento (dono="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0x29

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, v21

    const/4 v6, 0x0

    invoke-static {v5, v2, v6}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0x29

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :try_start_b
    sget-object v0, Lw0/i0;->a:Landroidx/emoji2/text/m;

    invoke-virtual {v0, v11}, Landroidx/emoji2/text/m;->r(Ljava/lang/String;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto/16 :goto_17

    :cond_1f
    move-object/from16 v5, v21

    move-object/from16 v3, v22

    :try_start_c
    invoke-static {v4}, Lcom/ex/auto/CentralWatchdogService;->l(Lcom/ex/auto/CentralWatchdogService;)Ljava/lang/String;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    :try_start_d
    invoke-static {v2}, Lw0/zd;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v6, v19

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v14, Lw0/x2;->b:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (destacado): "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x12c

    invoke-static {v6, v1}, Lo2/k;->D0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lw0/ae;->a:Lw0/ae;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, v14, Lw0/x2;->a:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Lw0/x2;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") tentativa="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u2192 "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v1}, Lo2/k;->D0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-static {v5, v0, v6}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :try_start_e
    sget-object v0, Lw0/i0;->a:Landroidx/emoji2/text/m;

    invoke-virtual {v0, v11}, Landroidx/emoji2/text/m;->r(Ljava/lang/String;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto/16 :goto_16

    :catchall_8
    move-exception v0

    :try_start_f
    sget-object v1, Lw0/zd;->a:Landroidx/emoji2/text/m;

    invoke-static {v2}, Lw0/zd;->a(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->W2:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v14, Lw0/x2;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_20

    const/16 v5, 0x78

    invoke-static {v5, v3}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_12

    :cond_20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    :goto_12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :goto_13
    :try_start_10
    sget-object v1, Lw0/i0;->a:Landroidx/emoji2/text/m;

    invoke-virtual {v1, v11}, Landroidx/emoji2/text/m;->r(Ljava/lang/String;)Z

    throw v0

    :cond_21
    move-wide/from16 v1, v29

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", latest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v14, Lw0/x2;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v15, 0x29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    goto :goto_16

    :goto_14
    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->W2:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    const/16 v3, 0xa0

    invoke-static {v3, v2}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_15

    :cond_22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    :goto_15
    const-string v3, "erro: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Auto-update erro: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v13}, Landroidx/activity/result/b;->s(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_16
    sget-boolean v0, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v0, :cond_23

    iget-object v0, v4, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    move-object/from16 v5, v35

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_23
    :goto_17
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_f
    move v6, v7

    move/from16 v16, v8

    iget-object v0, v1, Lw0/y2;->b:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lcom/ex/auto/CentralWatchdogService;

    iget-object v0, v1, Lw0/y2;->c:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Lw0/a3;

    invoke-static {}, Lcom/ex/auto/CentralWatchdogService;->b()Z

    move-result v9

    iget v0, v8, Lcom/ex/auto/CentralWatchdogService;->Z0:I

    iget v2, v8, Lcom/ex/auto/CentralWatchdogService;->U0:I

    if-lt v0, v2, :cond_24

    move/from16 v10, v16

    goto :goto_18

    :cond_24
    move v10, v6

    :goto_18
    if-eqz v10, :cond_25

    invoke-virtual {v8}, Lcom/ex/auto/CentralWatchdogService;->M0()Z

    move-result v0

    if-eqz v0, :cond_25

    move/from16 v12, v16

    goto :goto_19

    :cond_25
    move v12, v6

    :goto_19
    iget-object v0, v8, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v7, Lw0/z2;

    invoke-direct/range {v7 .. v12}, Lw0/z2;-><init>(Lcom/ex/auto/CentralWatchdogService;ZZLw0/a3;Z)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
