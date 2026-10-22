.class public final synthetic Lw0/a2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    iput v0, p0, Lw0/a2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/a2;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-object p2, p0, Lw0/a2;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;I)V
    .locals 0

    .line 2
    iput p3, p0, Lw0/a2;->a:I

    iput-object p1, p0, Lw0/a2;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-object p2, p0, Lw0/a2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/ex/auto/CentralWatchdogService;I)V
    .locals 0

    .line 3
    iput p3, p0, Lw0/a2;->a:I

    iput-object p1, p0, Lw0/a2;->c:Ljava/lang/String;

    iput-object p2, p0, Lw0/a2;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Lw0/a2;->a:I

    const-string v1, ") falhou: "

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "requestDriveRegen("

    const/4 v6, 0x1

    const-string v7, "CentralWatchdog"

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/a2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v1, p0, Lw0/a2;->c:Ljava/lang/String;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lw0/g2;

    const-string v4, "ACL_CONNECTED"

    invoke-direct {v3, v1, v0, v4}, Lw0/g2;-><init>(Ljava/lang/String;Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/a2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v1, p0, Lw0/a2;->c:Ljava/lang/String;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lcom/ex/auto/CentralWatchdogService;->Z1:Z

    if-eqz v2, :cond_1

    invoke-static {v0, v1}, Lw0/m;->j(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lw0/a2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v1, p0, Lw0/a2;->c:Ljava/lang/String;

    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->i:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/ex/auto/CentralWatchdogService;->D(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "): cpm continua null ap\u00f3s init"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_2
    iget-object v0, p0, Lw0/a2;->c:Ljava/lang/String;

    iget-object v1, p0, Lw0/a2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    sget-boolean v2, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->M:Z

    if-eqz v2, :cond_4

    sget-object v2, Lw0/ae;->a:Lw0/ae;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "condu\u00e7\u00e3o/regenera\u00e7\u00e3o ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "): repassado ao floater por broadcast"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v8}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "UPDATE_DRIVE_REGEN_MODES"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    iget-object v2, v1, Lcom/ex/auto/CentralWatchdogService;->i:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "): cpm null \u2014 initDriveRegenCar e retentando"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/ex/auto/CentralWatchdogService;->Y()V

    iget-object v2, v1, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v3, Lw0/a2;

    const/16 v4, 0xa

    invoke-direct {v3, v1, v0, v4}, Lw0/a2;-><init>(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;I)V

    const-wide/16 v0, 0x5dc

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v0}, Lcom/ex/auto/CentralWatchdogService;->D(Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_3
    iget-object v0, p0, Lw0/a2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v1, p0, Lw0/a2;->c:Ljava/lang/String;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    :try_start_0
    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->u()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/ex/auto/CentralWatchdogService;->n0()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    move v6, v8

    :cond_7
    :goto_2
    move v8, v6

    :catchall_0
    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v3, Lw0/h2;

    invoke-direct {v3, v8, v1, v0}, Lw0/h2;-><init>(ZLjava/lang/String;Lcom/ex/auto/CentralWatchdogService;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_4
    iget-object v0, p0, Lw0/a2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v1, p0, Lw0/a2;->c:Ljava/lang/String;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v2, :cond_8

    goto/16 :goto_7

    :cond_8
    iget-boolean v2, v0, Lcom/ex/auto/CentralWatchdogService;->Z1:Z

    if-nez v2, :cond_9

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, "BT: n\u00e3o religo \u2014 a sess\u00e3o do CarPlay j\u00e1 n\u00e3o est\u00e1 ativa"

    invoke-static {v7, v0, v8}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    :cond_9
    :try_start_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-object v2, v4

    :goto_3
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    goto/16 :goto_7

    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    :try_start_2
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move v2, v8

    :goto_4
    sget-object v3, Lw0/ae;->a:Lw0/ae;

    if-eqz v2, :cond_b

    const-string v2, "aceito"

    goto :goto_5

    :cond_b
    const-string v2, "recusado"

    :goto_5
    const-string v3, "BT: religado depois do CarPlay (para os outros aparelhos) \u2014 enable() "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2, v8}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v2, v0, Lcom/ex/auto/CentralWatchdogService;->n2:Z

    if-nez v2, :cond_c

    :try_start_3
    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->m2:Lw0/c3;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v6, v0, Lcom/ex/auto/CentralWatchdogService;->n2:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "perfilDoIphoneReceiver: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v7}, Landroidx/activity/result/b;->s(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_c
    :goto_6
    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "auto_connect_preferred_bt"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-static {v2}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->r()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v3, Lw0/a2;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v0, v4}, Lw0/a2;-><init>(Ljava/lang/String;Lcom/ex/auto/CentralWatchdogService;I)V

    const-wide/16 v4, 0xfa0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_e
    :goto_7
    return-void

    :pswitch_5
    iget-object v0, p0, Lw0/a2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v4, p0, Lw0/a2;->c:Ljava/lang/String;

    sget-object v5, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    const-string v5, "precoce/"

    const-string v6, "sa\u00fade precoce ("

    move v9, v8

    :goto_8
    :try_start_4
    iget-boolean v10, v0, Lcom/ex/auto/CentralWatchdogService;->K2:Z

    if-eqz v10, :cond_f

    const v10, 0x9c40

    if-ge v9, v10, :cond_f

    const-wide/16 v10, 0x7d0

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit16 v9, v9, 0x7d0

    goto :goto_8

    :catchall_4
    move-exception v0

    goto/16 :goto_a

    :cond_f
    invoke-static {}, Lcom/ex/auto/CentralWatchdogService;->d1()Z

    move-result v9

    if-eqz v9, :cond_10

    goto/16 :goto_b

    :cond_10
    const-string v9, "netstat -tln 2>/dev/null | grep -cE \'3051[56]\'"

    const/16 v10, 0x2710

    invoke-static {v10, v9}, Lcom/ex/auto/CentralWatchdogService;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lo2/s;->W(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_11

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_9

    :cond_11
    move v9, v8

    :goto_9
    if-lez v9, :cond_12

    goto/16 :goto_b

    :cond_12
    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M()Z

    move-result v9

    if-nez v9, :cond_13

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "): wlan1 ausente, mas ConnAdaptor de f\u00e1brica \u2014 nada a recriar"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v8}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_b

    :cond_13
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/ex/auto/CentralWatchdogService;->m0(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    goto :goto_b

    :cond_14
    sget-object v9, Lw0/ae;->a:Lw0/ae;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "): wlan1 ausente \u2014 recriando j\u00e1, sem esperar os 90s"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v8}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-wide v2, v0, Lcom/ex/auto/CentralWatchdogService;->f1:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ex/auto/CentralWatchdogService;->H(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_b

    :goto_a
    sget-object v2, Lw0/ae;->a:Lw0/ae;

    invoke-static {v6, v4, v1}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v8}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_b
    return-void

    :pswitch_6
    iget-object v0, p0, Lw0/a2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v1, p0, Lw0/a2;->c:Ljava/lang/String;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    const-string v2, "WiFi auto-enable ("

    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") derrubou o AP"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/ex/auto/CentralWatchdogService;->U(Ljava/lang/String;Z)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catchall_5
    return-void

    :pswitch_7
    iget-object v0, p0, Lw0/a2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v1, p0, Lw0/a2;->c:Ljava/lang/String;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_15

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lw0/a2;

    const/4 v4, 0x5

    invoke-direct {v3, v0, v1, v4}, Lw0/a2;-><init>(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_15
    return-void

    :pswitch_8
    iget-object v0, p0, Lw0/a2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->W1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lw0/a2;->c:Ljava/lang/String;

    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    :try_start_6
    invoke-virtual {v0, v2}, Lcom/ex/auto/CentralWatchdogService;->N0(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_6
    move-exception v0

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0

    :pswitch_9
    iget-object v0, p0, Lw0/a2;->c:Ljava/lang/String;

    iget-object v1, p0, Lw0/a2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v2, :cond_16

    goto :goto_c

    :cond_16
    sget-object v2, Lw0/ae;->a:Lw0/ae;

    const-string v2, "BT: chamando o preferido "

    const-string v3, " depois do religamento"

    invoke-static {v2, v0, v3, v7, v8}, Landroidx/activity/result/b;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_7
    invoke-static {v1, v0, v4}, Lw0/m;->i(Landroid/content/Context;Ljava/lang/String;Lh2/l;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :catchall_7
    :goto_c
    return-void

    :pswitch_a
    iget-object v0, p0, Lw0/a2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v1, p0, Lw0/a2;->c:Ljava/lang/String;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    :try_start_8
    invoke-virtual {v0, v1}, Lcom/ex/auto/CentralWatchdogService;->H(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_d

    :catchall_8
    move-exception v0

    sget-object v2, Lw0/ae;->a:Lw0/ae;

    const-string v2, "sa\u00fade ("

    const-string v3, "): falhou \u2014 "

    invoke-static {v2, v1, v3}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v8}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_d
    return-void

    :pswitch_b
    const-string v0, "antes do AP/"

    iget-object v4, p0, Lw0/a2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v5, p0, Lw0/a2;->c:Ljava/lang/String;

    sget-object v9, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    const-string v9, "AP sempre aberto ("

    :try_start_9
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/ex/auto/CentralWatchdogService;->d1()Z

    move-result v10

    if-nez v10, :cond_17

    invoke-virtual {v4, v5}, Lcom/ex/auto/CentralWatchdogService;->m0(Ljava/lang/String;)Z

    goto :goto_e

    :catchall_9
    move-exception v0

    goto :goto_f

    :cond_17
    :goto_e
    invoke-static {}, Lcom/ex/auto/CentralWatchdogService;->d1()Z

    move-result v11

    if-nez v11, :cond_18

    invoke-static {}, Lcom/ex/auto/CentralWatchdogService;->v()Z

    move-result v11

    if-eqz v11, :cond_19

    :cond_18
    invoke-static {}, Lcom/ex/auto/CentralWatchdogService;->d1()Z

    move-result v11

    if-nez v11, :cond_19

    sget-object v11, Lw0/ae;->a:Lw0/ae;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "): wlan1 ausente \u2014 conserto a interface antes de gastar a tentativa"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11, v8}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-wide v2, v4, Lcom/ex/auto/CentralWatchdogService;->f1:J

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ex/auto/CentralWatchdogService;->H(Ljava/lang/String;)V

    :cond_19
    invoke-static {}, Lcom/ex/auto/CentralWatchdogService;->v()Z

    move-result v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x29

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11, v6}, Lcom/ex/auto/CentralWatchdogService;->U(Ljava/lang/String;Z)Z

    move-result v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    const-string v11, "ap\u00f3s abrir o AP/"

    if-eqz v6, :cond_1a

    if-nez v10, :cond_1a

    :try_start_a
    iget-boolean v10, v4, Lcom/ex/auto/CentralWatchdogService;->z1:Z

    if-nez v10, :cond_1a

    invoke-virtual {v11, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/ex/auto/CentralWatchdogService;->v0(Ljava/lang/String;)V

    :cond_1a
    if-eqz v6, :cond_1b

    if-nez v0, :cond_1b

    iput-wide v2, v4, Lcom/ex/auto/CentralWatchdogService;->f1:J

    invoke-virtual {v11, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ex/auto/CentralWatchdogService;->H(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    goto :goto_10

    :goto_f
    sget-object v2, Lw0/ae;->a:Lw0/ae;

    invoke-static {v9, v5, v1}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v8}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1b
    :goto_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
