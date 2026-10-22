.class public final synthetic Lw0/v2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;I)V
    .locals 0

    iput p2, p0, Lw0/v2;->a:I

    iput-object p1, p0, Lw0/v2;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lw0/v2;->a:I

    const/4 v1, 0x1

    const-string v2, "CentralWatchdog"

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/v2;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {v0}, Lk1/a;->M(Landroid/content/Context;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/v2;->b:Lcom/ex/auto/CentralWatchdogService;

    const v2, 0x7f0f03c3

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lw0/v2;->b:Lcom/ex/auto/CentralWatchdogService;

    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "wifi"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    invoke-static {v3, v5}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/ex/auto/CentralWatchdogService;->P0:J

    sub-long v7, v5, v7

    iget-wide v9, v0, Lcom/ex/auto/CentralWatchdogService;->Q0:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    move v7, v1

    goto :goto_0

    :cond_0
    move v7, v4

    :goto_0
    if-nez v7, :cond_1

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->u()Z

    move-result v8

    if-eqz v8, :cond_1

    iput-wide v5, v0, Lcom/ex/auto/CentralWatchdogService;->P0:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    sget-object v1, Lw0/ae;->a:Lw0/ae;

    const-string v1, "\u00edcone WiFi: N\u00c3O liguei \u2014 h\u00e1 celular no ap0 (sess\u00e3o em curso). Toque de novo pra ligar assim mesmo"

    invoke-static {v2, v1, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v3, Lw0/v2;

    const/16 v5, 0x17

    invoke-direct {v3, v0, v5}, Lw0/v2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    move v1, v4

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v3

    move v4, v1

    move-object v1, v3

    goto :goto_2

    :cond_1
    if-eqz v7, :cond_2

    :try_start_3
    sget-object v5, Lw0/ae;->a:Lw0/ae;

    const-string v5, "\u00edcone WiFi: ligando mesmo com sess\u00e3o no ap0 (confirmado pelo 2\u00ba toque)"

    invoke-static {v2, v5, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "statusWifiApplyReceiver: falha ao ligar WiFi: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v2}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v2, Lw0/v2;

    const/16 v3, 0x18

    invoke-direct {v2, v0, v3}, Lw0/v2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    :pswitch_2
    iget-object v0, p0, Lw0/v2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lw0/k5;->a:Lw0/k5;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw0/k5;->d(Landroid/content/SharedPreferences;)I

    return-void

    :pswitch_3
    iget-object v0, p0, Lw0/v2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    sget-boolean v1, Lw0/sd;->a:Z

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1}, Lw0/sd;->b(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    sget-boolean v1, Lw0/n0;->a:Z

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1}, Lw0/n0;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    sget-object v1, Lw0/k5;->a:Lw0/k5;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lw0/k5;->f(Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lw0/v2;

    const/16 v3, 0x15

    invoke-direct {v2, v0, v3}, Lw0/v2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_6
    :goto_4
    return-void

    :pswitch_4
    iget-object v0, p0, Lw0/v2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v1, :cond_7

    invoke-static {v0}, Lcom/ex/auto/CentralWatchdogService;->V0(Lcom/ex/auto/CentralWatchdogService;)V

    :cond_7
    return-void

    :pswitch_5
    iget-object v0, p0, Lw0/v2;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->z2:Lw0/v2;

    invoke-virtual {v0, v4}, Lcom/ex/auto/CentralWatchdogService;->L0(Z)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lw0/v2;->b:Lcom/ex/auto/CentralWatchdogService;

    :try_start_4
    const-string v1, "AP sempre aberto (caiu)"

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0, v1, v4}, Lcom/ex/auto/CentralWatchdogService;->U(Ljava/lang/String;Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    return-void

    :pswitch_7
    iget-object v0, p0, Lw0/v2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lw0/v2;

    const/16 v3, 0x11

    invoke-direct {v2, v0, v3}, Lw0/v2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_8
    return-void

    :pswitch_8
    iget-object v0, p0, Lw0/v2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v1, :cond_9

    iget-boolean v1, v0, Lcom/ex/auto/CentralWatchdogService;->W0:Z

    if-eqz v1, :cond_9

    new-instance v1, Lw0/d2;

    const/16 v2, 0x10

    invoke-direct {v1, v0, v2}, Lw0/d2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-static {v1}, Lw0/n3;->a(Lh2/a;)V

    :cond_9
    return-void

    :pswitch_9
    iget-object v0, p0, Lw0/v2;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "swc_media_control_enabled"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lw0/od;->a:Lw0/od;

    invoke-virtual {v1, v0}, Lw0/od;->p(Landroid/content/Context;)V

    iget-boolean v0, v0, Lcom/ex/auto/CentralWatchdogService;->Z1:Z

    invoke-static {v0}, Lw0/od;->o(Z)V

    goto :goto_5

    :cond_a
    sget-object v0, Lw0/od;->a:Lw0/od;

    invoke-virtual {v0}, Lw0/od;->q()V

    :goto_5
    return-void

    :pswitch_a
    iget-object v0, p0, Lw0/v2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "rear_cam_turn_signal_enabled"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    iput v4, v0, Lcom/ex/auto/CentralWatchdogService;->I:I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->Z()V

    goto :goto_6

    :cond_b
    :try_start_5
    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->H:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v1, :cond_c

    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->A2:Lw0/b3;

    invoke-virtual {v1, v2}, Landroid/car/hardware/property/CarPropertyManager;->unregisterCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    :cond_c
    :try_start_6
    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->G:Landroid/car/Car;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/car/Car;->disconnect()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    :cond_d
    iput-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->G:Landroid/car/Car;

    iput-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->H:Landroid/car/hardware/property/CarPropertyManager;

    iput-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->J:Ljava/lang/Integer;

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->z2:Lw0/v2;

    if-eqz v1, :cond_e

    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->z2:Lw0/v2;

    :cond_e
    invoke-virtual {v0, v4}, Lcom/ex/auto/CentralWatchdogService;->L0(Z)V

    :goto_6
    return-void

    :pswitch_b
    iget-object v0, p0, Lw0/v2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->Y()V

    :cond_f
    return-void

    :pswitch_c
    iget-object v0, p0, Lw0/v2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "DriveRegen: floater parou, iniciando watchdog"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->Y()V

    return-void

    :pswitch_d
    iget-object v0, p0, Lw0/v2;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "keyserver_bind_enabled"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_10

    iput v4, v0, Lcom/ex/auto/CentralWatchdogService;->s:I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->b0()V

    goto :goto_7

    :cond_10
    :try_start_7
    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->r:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v1, :cond_11

    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->w2:Lw0/k3;

    invoke-virtual {v1, v2}, Landroid/car/hardware/property/CarPropertyManager;->unregisterCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    :cond_11
    :try_start_8
    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->q:Landroid/car/Car;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/car/Car;->disconnect()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    :cond_12
    iput-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->q:Landroid/car/Car;

    iput-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->r:Landroid/car/hardware/property/CarPropertyManager;

    sget v0, Lw0/rg;->a:I

    sput-boolean v4, Lw0/rg;->c:Z

    sget-object v0, Lw0/rg;->d:Landroid/os/Handler;

    if-eqz v0, :cond_13

    sget-object v1, Lw0/rg;->f:Lw0/r0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_13
    const-string v0, "SwcModeCtrl"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-void

    :pswitch_e
    iget-object v0, p0, Lw0/v2;->b:Lcom/ex/auto/CentralWatchdogService;

    :try_start_9
    const-string v1, "celular por outro canal (sync por Bluetooth)"

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0, v1, v4}, Lcom/ex/auto/CentralWatchdogService;->U(Ljava/lang/String;Z)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :catchall_6
    return-void

    :pswitch_f
    iget-object v0, p0, Lw0/v2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->P0()V

    return-void

    :pswitch_10
    iget-object v0, p0, Lw0/v2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "aeb_restore_on_boot"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_14

    iput v4, v0, Lcom/ex/auto/CentralWatchdogService;->D:I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->X()V

    goto :goto_8

    :cond_14
    :try_start_a
    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->C:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v1, :cond_15

    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->F2:Lw0/b3;

    invoke-virtual {v1, v2}, Landroid/car/hardware/property/CarPropertyManager;->unregisterCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :catchall_7
    :cond_15
    :try_start_b
    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->B:Landroid/car/Car;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/car/Car;->disconnect()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    :catchall_8
    :cond_16
    iput-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->B:Landroid/car/Car;

    iput-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->C:Landroid/car/hardware/property/CarPropertyManager;

    :goto_8
    return-void

    :pswitch_11
    iget-object v0, p0, Lw0/v2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "ap_sempre_aberto"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_a

    :cond_17
    invoke-static {}, Lcom/ex/auto/CentralWatchdogService;->v()Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v3, "j\u00e1 no ar \u2014 nada a fazer"

    goto :goto_9

    :cond_18
    const-string v3, "fechado \u2014 vou reabrir"

    :goto_9
    const-string v5, "pedido de AP pelo celular (sync por Bluetooth): ap0 "

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_19

    goto :goto_a

    :cond_19
    sget-object v1, Lw0/ae;->a:Lw0/ae;

    const-string v1, "celular chegou por outro canal (sync por Bluetooth) com o ap0 fechado \u2014 reabrindo o AP"

    invoke-static {v2, v1, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lw0/v2;

    const/16 v3, 0x9

    invoke-direct {v2, v0, v3}, Lw0/v2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_a
    return-void

    :pswitch_12
    iget-object v0, p0, Lw0/v2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->t0()V

    return-void

    :pswitch_13
    iget-object v0, p0, Lw0/v2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->Q0()V

    return-void

    :pswitch_14
    iget-object v0, p0, Lw0/v2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->Q0()V

    return-void

    :pswitch_15
    iget-object v0, p0, Lw0/v2;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {v0}, Lcom/ex/auto/CentralWatchdogService;->e(Lcom/ex/auto/CentralWatchdogService;)V

    return-void

    :pswitch_16
    iget-object v0, p0, Lw0/v2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "recirc_guard_enabled"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1a

    iput v4, v0, Lcom/ex/auto/CentralWatchdogService;->v:I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->a0()V

    goto :goto_b

    :cond_1a
    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->x2:Lw0/a3;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :try_start_c
    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->u:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v1, :cond_1b

    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->y2:Lw0/b3;

    invoke-virtual {v1, v2}, Landroid/car/hardware/property/CarPropertyManager;->unregisterCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    :catchall_9
    :cond_1b
    :try_start_d
    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->t:Landroid/car/Car;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/car/Car;->disconnect()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    :catchall_a
    :cond_1c
    iput-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->t:Landroid/car/Car;

    iput-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->u:Landroid/car/hardware/property/CarPropertyManager;

    :goto_b
    return-void

    :pswitch_17
    iget-object v0, p0, Lw0/v2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->s0()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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
