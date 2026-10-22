.class public final synthetic Lw0/fe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/PhoneSyncService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/PhoneSyncService;I)V
    .locals 0

    iput p2, p0, Lw0/fe;->a:I

    iput-object p1, p0, Lw0/fe;->b:Lcom/ex/auto/PhoneSyncService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Lw0/fe;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/fe;->b:Lcom/ex/auto/PhoneSyncService;

    :goto_0
    iget-boolean v1, v0, Lcom/ex/auto/PhoneSyncService;->a:Z

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lw0/u0;->a:Lw0/u0;

    invoke-static {}, Lw0/u0;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const-wide/16 v1, 0x3e8

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/fe;->b:Lcom/ex/auto/PhoneSyncService;

    :goto_1
    iget-boolean v3, v0, Lcom/ex/auto/PhoneSyncService;->a:Z

    if-eqz v3, :cond_6

    :try_start_2
    invoke-virtual {v0}, Lcom/ex/auto/PhoneSyncService;->r()Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/ex/auto/PhoneSyncService;->j:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v4, :cond_2

    :cond_1
    move-object v4, v2

    goto :goto_2

    :cond_2
    sget-object v5, Lw0/p1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v5, Lw0/u;->d:I

    invoke-static {v4, v5, v1}, Lw0/p1;->b(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_2
    invoke-virtual {v0}, Lcom/ex/auto/PhoneSyncService;->o()Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, v0, Lcom/ex/auto/PhoneSyncService;->o:Ljava/lang/Object;

    monitor-enter v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v3, :cond_3

    :try_start_3
    iget-object v9, v0, Lcom/ex/auto/PhoneSyncService;->p:Ljava/lang/Integer;

    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    iput-object v3, v0, Lcom/ex/auto/PhoneSyncService;->p:Ljava/lang/Integer;

    iput-wide v6, v0, Lcom/ex/auto/PhoneSyncService;->q:J

    goto :goto_3

    :catchall_1
    move-exception v3

    goto :goto_4

    :cond_3
    :goto_3
    if-eqz v4, :cond_4

    iget-object v3, v0, Lcom/ex/auto/PhoneSyncService;->r:Ljava/lang/Integer;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iput-object v4, v0, Lcom/ex/auto/PhoneSyncService;->r:Ljava/lang/Integer;

    iput-wide v6, v0, Lcom/ex/auto/PhoneSyncService;->s:J

    :cond_4
    if-eqz v5, :cond_5

    iget-object v3, v0, Lcom/ex/auto/PhoneSyncService;->t:Ljava/lang/Boolean;

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iput-object v5, v0, Lcom/ex/auto/PhoneSyncService;->t:Ljava/lang/Boolean;

    iput-wide v6, v0, Lcom/ex/auto/PhoneSyncService;->u:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :goto_4
    :try_start_4
    monitor-exit v8

    throw v3

    :cond_5
    :goto_5
    monitor-exit v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    const-wide/16 v3, 0xbb8

    :try_start_5
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    :cond_6
    return-void

    :pswitch_1
    iget-object v0, p0, Lw0/fe;->b:Lcom/ex/auto/PhoneSyncService;

    sget-boolean v1, Lcom/ex/auto/PhoneSyncService;->z:Z

    const-string v1, "PhoneSyncService"

    :try_start_6
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_6

    :catch_3
    move-object v3, v2

    :goto_6
    if-nez v3, :cond_7

    const-string v0, "sem adaptador BT \u2014 sync s\u00f3 por WiFi"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_7
    const-string v4, "b5b9a1e0-3c2f-4d6a-8f4e-7a2b9c1d0e5f"

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    :goto_7
    iget-boolean v5, v0, Lcom/ex/auto/PhoneSyncService;->a:Z

    if-eqz v5, :cond_c

    const-wide/16 v5, 0x3a98

    :try_start_7
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catch_4
    :cond_8
    :goto_8
    iput-object v2, v0, Lcom/ex/auto/PhoneSyncService;->c:Landroid/bluetooth/BluetoothServerSocket;

    goto :goto_7

    :catchall_2
    move-exception v1

    goto :goto_c

    :catch_5
    move-exception v7

    goto :goto_b

    :cond_9
    :try_start_8
    const-string v7, "TelaPretaSync"

    invoke-virtual {v3, v7, v4}, Landroid/bluetooth/BluetoothAdapter;->listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v7

    iput-object v7, v0, Lcom/ex/auto/PhoneSyncService;->c:Landroid/bluetooth/BluetoothServerSocket;

    const-string v8, "RFCOMM sync ouvindo (TelaPretaSync)"

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    iget-boolean v8, v0, Lcom/ex/auto/PhoneSyncService;->a:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v8, :cond_b

    :try_start_9
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v8
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-nez v8, :cond_a

    goto :goto_a

    :cond_a
    :try_start_a
    iget-object v9, v0, Lcom/ex/auto/PhoneSyncService;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v10, Lw0/y2;

    const/16 v11, 0xd

    invoke-direct {v10, v8, v11, v0}, Lw0/y2;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v8, v9, v10}, Lcom/ex/auto/PhoneSyncService;->g(Ljava/io/Closeable;Ljava/util/concurrent/ThreadPoolExecutor;Lh2/a;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_9

    :catch_6
    :cond_b
    :goto_a
    :try_start_b
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_8

    :goto_b
    :try_start_c
    iget-boolean v8, v0, Lcom/ex/auto/PhoneSyncService;->a:Z

    if-eqz v8, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "serveBt: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " \u2014 retry em 15 s"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_8

    :catch_7
    iput-object v2, v0, Lcom/ex/auto/PhoneSyncService;->c:Landroid/bluetooth/BluetoothServerSocket;

    goto :goto_d

    :goto_c
    iput-object v2, v0, Lcom/ex/auto/PhoneSyncService;->c:Landroid/bluetooth/BluetoothServerSocket;

    throw v1

    :cond_c
    :goto_d
    return-void

    :pswitch_2
    iget-object v0, p0, Lw0/fe;->b:Lcom/ex/auto/PhoneSyncService;

    sget-boolean v3, Lcom/ex/auto/PhoneSyncService;->z:Z

    const-string v3, "PhoneSyncService"

    :try_start_e
    new-instance v4, Ljava/net/ServerSocket;

    invoke-direct {v4}, Ljava/net/ServerSocket;-><init>()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    invoke-virtual {v4, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    new-instance v1, Ljava/net/InetSocketAddress;

    const v5, 0xbab9

    invoke-direct {v1, v5}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    iput-object v4, v0, Lcom/ex/auto/PhoneSyncService;->b:Ljava/net/ServerSocket;

    const-string v1, "HTTP sync em 0.0.0.0:47801"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    iget-boolean v1, v0, Lcom/ex/auto/PhoneSyncService;->a:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    if-eqz v1, :cond_e

    :try_start_10
    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_f

    :catchall_3
    move-exception v1

    goto :goto_11

    :catch_8
    move-object v1, v2

    :goto_f
    if-nez v1, :cond_d

    goto :goto_e

    :cond_d
    :try_start_11
    iget-object v5, v0, Lcom/ex/auto/PhoneSyncService;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v6, Lw0/y2;

    const/16 v7, 0xe

    invoke-direct {v6, v0, v7, v1}, Lw0/y2;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1, v5, v6}, Lcom/ex/auto/PhoneSyncService;->g(Ljava/io/Closeable;Ljava/util/concurrent/ThreadPoolExecutor;Lh2/a;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto :goto_e

    :cond_e
    :try_start_12
    invoke-virtual {v4}, Ljava/net/ServerSocket;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    :cond_f
    :goto_10
    iput-object v2, v0, Lcom/ex/auto/PhoneSyncService;->b:Ljava/net/ServerSocket;

    goto :goto_13

    :catchall_4
    move-exception v1

    goto :goto_14

    :catch_9
    move-exception v1

    goto :goto_12

    :goto_11
    :try_start_13
    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :catchall_5
    move-exception v5

    :try_start_14
    invoke-static {v4, v1}, La1/b;->p(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :goto_12
    :try_start_15
    iget-boolean v4, v0, Lcom/ex/auto/PhoneSyncService;->a:Z

    if-eqz v4, :cond_f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "serveTcp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    goto :goto_10

    :goto_13
    return-void

    :goto_14
    iput-object v2, v0, Lcom/ex/auto/PhoneSyncService;->b:Ljava/net/ServerSocket;

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
