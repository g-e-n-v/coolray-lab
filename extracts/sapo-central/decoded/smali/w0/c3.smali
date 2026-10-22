.class public final Lw0/c3;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;I)V
    .locals 0

    iput p2, p0, Lw0/c3;->a:I

    iput-object p1, p0, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    iget v3, v1, Lw0/c3;->a:I

    const/16 v4, 0xb

    const/16 v5, 0x73

    const/4 v6, 0x2

    const/16 v7, 0x3e8

    const/4 v8, -0x1

    const/16 v10, 0xc

    const/4 v11, 0x1

    const/4 v12, 0x0

    packed-switch v3, :pswitch_data_0

    const-string v3, "context"

    invoke-static {v0, v3}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {v2, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-static {v0, v3}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "networkInfo"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-ne v0, v11, :cond_1

    goto :goto_0

    :cond_1
    move v11, v12

    :goto_0
    iget-object v0, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean v0, v0, Lcom/ex/auto/CentralWatchdogService;->Y:Z

    iget-object v2, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean v11, v2, Lcom/ex/auto/CentralWatchdogService;->Y:Z

    if-nez v11, :cond_2

    invoke-static {}, Lcom/ex/auto/CentralWatchdogService;->v()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v2}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "wifi_cliente_ativo_antes"

    invoke-interface {v2, v3, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    if-eqz v11, :cond_7

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    const-string v2, "WiFi autom\u00e1tico"

    invoke-virtual {v0, v2}, Lcom/ex/auto/CentralWatchdogService;->F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const-string v0, "CentralWatchdog"

    const-string v2, "WiFi reconectado \u2014 reaplicando drive/regen"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v0, v0, Lcom/ex/auto/CentralWatchdogService;->i:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_6

    iget-object v0, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->Y()V

    goto :goto_1

    :cond_6
    iget-object v0, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    const-string v2, "wifi_reconnected"

    invoke-virtual {v0, v2}, Lcom/ex/auto/CentralWatchdogService;->D(Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void

    :pswitch_0
    const-string v3, "context"

    invoke-static {v0, v3}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {v2, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-static {v0, v2}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    iget-object v0, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    const-string v2, "ACTION_SCREEN_ON"

    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0, v2}, Lcom/ex/auto/CentralWatchdogService;->S(Ljava/lang/String;)V

    :goto_2
    return-void

    :pswitch_1
    new-instance v0, Ljava/lang/Thread;

    iget-object v2, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    new-instance v3, Lw0/v2;

    const/16 v4, 0x16

    invoke-direct {v3, v2, v4}, Lw0/v2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :pswitch_2
    iget-object v7, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-boolean v0, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v0, :cond_9

    goto/16 :goto_9

    :cond_9
    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    sget-boolean v0, Lcom/ex/auto/QuickAccessFloaterService;->z0:Z

    if-nez v0, :cond_12

    sget-boolean v0, Lcom/ex/auto/BlackoutFloaterService;->q:Z

    if-eqz v0, :cond_a

    goto/16 :goto_8

    :cond_a
    invoke-virtual {v7}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "status_brightness2_enabled"

    invoke-interface {v0, v2, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget v2, v7, Lcom/ex/auto/CentralWatchdogService;->F0:I

    if-eqz v2, :cond_d

    if-eq v2, v11, :cond_c

    :cond_b
    move v6, v12

    goto :goto_3

    :cond_c
    if-eqz v0, :cond_b

    goto :goto_3

    :cond_d
    move v6, v11

    :goto_3
    if-nez v6, :cond_e

    invoke-virtual {v7}, Lcom/ex/auto/CentralWatchdogService;->x0()V

    goto :goto_9

    :cond_e
    invoke-virtual {v7}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v0

    if-ne v6, v11, :cond_f

    const-string v2, "status_brightness_pct"

    goto :goto_4

    :cond_f
    const-string v2, "status_brightness_pct2"

    :goto_4
    const/16 v3, 0x32

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_10

    move v9, v11

    goto :goto_5

    :cond_10
    move v9, v12

    :goto_5
    if-eqz v9, :cond_11

    :goto_6
    move v10, v6

    move v8, v12

    goto :goto_7

    :cond_11
    const/4 v2, 0x5

    const/16 v3, 0x64

    invoke-static {v0, v2, v3}, Lk1/a;->k(III)I

    move-result v2

    const/16 v4, 0xff

    mul-int/2addr v2, v4

    div-int/2addr v2, v3

    invoke-static {v2, v10, v4}, Lk1/a;->k(III)I

    move-result v12

    goto :goto_6

    :goto_7
    iget-boolean v6, v7, Lcom/ex/auto/CentralWatchdogService;->E0:Z

    new-instance v2, Ljava/lang/Thread;

    new-instance v5, Lw0/r2;

    move v11, v0

    invoke-direct/range {v5 .. v11}, Lw0/r2;-><init>(ZLcom/ex/auto/CentralWatchdogService;IZII)V

    invoke-direct {v2, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_9

    :cond_12
    :goto_8
    const-string v0, "CentralWatchdog"

    const-string v2, "applyStatusBrightnessFromSlider: tela j\u00e1 apagada por outro mecanismo \u2014 ignorando"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    return-void

    :pswitch_3
    const-string v0, "CentralWatchdog"

    if-eqz v2, :cond_13

    const-string v3, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/16 v4, 0xa

    if-eq v8, v4, :cond_16

    if-eq v8, v10, :cond_14

    goto :goto_a

    :cond_14
    iget-object v2, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean v2, v2, Lcom/ex/auto/CentralWatchdogService;->l1:Z

    if-eqz v2, :cond_15

    iget-object v2, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean v12, v2, Lcom/ex/auto/CentralWatchdogService;->l1:Z

    sget-object v2, Lw0/ae;->a:Lw0/ae;

    const-string v2, "BT: ligado de novo \u2014 volto a poder religar quando fizer falta"

    invoke-static {v0, v2, v12}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_15
    iget-object v0, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "bt_desligado_por_nos"

    invoke-interface {v0, v2, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_a

    :cond_16
    iget-object v4, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-wide v4, v4, Lcom/ex/auto/CentralWatchdogService;->m1:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_17

    sget-object v2, Lw0/ae;->a:Lw0/ae;

    const-string v2, "BT: desligou por pedido NOSSO"

    invoke-static {v0, v2, v12}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_a

    :cond_17
    iget-object v2, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean v11, v2, Lcom/ex/auto/CentralWatchdogService;->l1:Z

    sget-object v2, Lw0/ae;->a:Lw0/ae;

    const-string v2, "BT: desligado por FORA (usu\u00e1rio ou CarPlay) \u2014 n\u00e3o vou religar"

    invoke-static {v0, v2, v12}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_a
    return-void

    :pswitch_4
    iget-object v0, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean v2, v0, Lcom/ex/auto/CentralWatchdogService;->E0:Z

    if-eqz v2, :cond_18

    const-string v2, "CentralWatchdog"

    const-string v3, "Volume (broadcast) alterado \u2014 restaurando brilho anterior"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->x0()V

    :cond_18
    return-void

    :pswitch_5
    const-string v0, "background"

    const-string v3, "foreground"

    const-string v4, "connected"

    const-string v5, "disconnected"

    const-string v6, "CentralWatchdog"

    if-eqz v2, :cond_22

    const-string v8, "notification"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_19

    goto/16 :goto_e

    :cond_19
    sget-object v10, Lw0/ae;->a:Lw0/ae;

    const-string v10, "CarPlay broadcast: notification="

    invoke-virtual {v10, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10, v12}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    filled-new-array {v4, v3, v0, v5}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lk1/a;->P([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v10

    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v14, "ROOT"

    invoke-static {v13, v14}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "toLowerCase(...)"

    invoke-static {v13, v14}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    iget-object v10, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean v11, v10, Lcom/ex/auto/CentralWatchdogService;->c2:Z

    iget-object v10, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v10, v10, Lcom/ex/auto/CentralWatchdogService;->d2:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_1a
    const-string v10, "disable_bluetooth"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1d

    iget-object v10, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean v11, v10, Lcom/ex/auto/CentralWatchdogService;->l1:Z

    const-string v10, "device"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v10, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v10}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v10

    iget-object v13, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v13, v13, Lcom/ex/auto/CentralWatchdogService;->k2:Ljava/lang/String;

    invoke-interface {v10, v13, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_1c

    if-eqz v2, :cond_1c

    invoke-static {v2}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1b

    goto :goto_b

    :cond_1b
    iget-object v10, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-object v2, v10, Lcom/ex/auto/CentralWatchdogService;->j2:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "BT: o CarPlay desligou o r\u00e1dio inteiro \u2014 religo em "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v14, v10, Lcom/ex/auto/CentralWatchdogService;->l2:J

    move-object/from16 p1, v10

    int-to-long v9, v7

    div-long/2addr v14, v9

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "s, sem o iPhone "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v12}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v7, p1

    iget-object v9, v7, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v10, Lw0/a2;

    const/4 v13, 0x7

    invoke-direct {v10, v7, v2, v13}, Lw0/a2;-><init>(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;I)V

    iget-wide v13, v7, Lcom/ex/auto/CentralWatchdogService;->l2:J

    invoke-virtual {v9, v10, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c

    :cond_1c
    :goto_b
    const-string v2, "BT: o CarPlay desligou o Bluetooth de prop\u00f3sito \u2014 n\u00e3o vou religar"

    invoke-static {v6, v2, v12}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1d
    :goto_c
    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_d

    :cond_1e
    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    move v11, v12

    goto :goto_d

    :cond_1f
    iget-object v0, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean v11, v0, Lcom/ex/auto/CentralWatchdogService;->Z1:Z

    :cond_20
    :goto_d
    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->j2:Ljava/lang/String;

    :cond_21
    :try_start_0
    sget-object v0, Lw0/od;->a:Lw0/od;

    invoke-static {v11}, Lw0/od;->o(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object v0, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean v0, v0, Lcom/ex/auto/CentralWatchdogService;->Z1:Z

    if-eq v11, v0, :cond_22

    iget-object v0, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean v11, v0, Lcom/ex/auto/CentralWatchdogService;->Z1:Z

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, "CarPlay sess\u00e3o: "

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v12}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v11, :cond_22

    iget-object v0, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean v2, v0, Lcom/ex/auto/CentralWatchdogService;->W0:Z

    if-eqz v2, :cond_22

    const-string v2, "CarPlay conectado"

    invoke-virtual {v0, v2}, Lcom/ex/auto/CentralWatchdogService;->R0(Ljava/lang/String;)V

    :cond_22
    :goto_e
    return-void

    :pswitch_6
    if-eqz v2, :cond_29

    const-string v0, "notification"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_23

    goto/16 :goto_12

    :cond_23
    const-string v2, "connected"

    const-string v3, "foreground"

    const-string v4, "background"

    const-string v5, "disconnected"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lk1/a;->P([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "ROOT"

    invoke-static {v3, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "toLowerCase(...)"

    invoke-static {v3, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean v11, v2, Lcom/ex/auto/CentralWatchdogService;->b2:Z

    iget-object v2, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v2, v2, Lcom/ex/auto/CentralWatchdogService;->d2:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_24
    const-string v2, "connected"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    const-string v2, "foreground"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    const-string v2, "background"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_f

    :cond_25
    const-string v2, "disconnected"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    move v11, v12

    goto :goto_f

    :cond_26
    iget-object v2, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean v11, v2, Lcom/ex/auto/CentralWatchdogService;->a2:Z

    :cond_27
    :goto_f
    iget-object v2, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean v2, v2, Lcom/ex/auto/CentralWatchdogService;->a2:Z

    if-eq v11, v2, :cond_29

    iget-object v2, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean v11, v2, Lcom/ex/auto/CentralWatchdogService;->a2:Z

    sget-object v2, Lw0/ae;->a:Lw0/ae;

    const-string v2, "CentralWatchdog"

    const-string v3, "AA sess\u00e3o: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v12}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_1
    sget-object v2, Lw0/u0;->a:Lw0/u0;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v11, :cond_28

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sput-wide v3, Lw0/u0;->n:J

    goto :goto_10

    :catchall_1
    move-exception v0

    goto :goto_11

    :cond_28
    :goto_10
    invoke-virtual {v2, v11}, Lw0/u0;->d(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_12

    :goto_11
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    :cond_29
    :goto_12
    return-void

    :pswitch_7
    const-string v0, "conex\u00e3o BT"

    const-string v3, "CentralWatchdog"

    const-string v6, "android.bluetooth.device.extra.DEVICE"

    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    goto :goto_13

    :cond_2a
    const/4 v9, 0x0

    :goto_13
    if-eqz v9, :cond_36

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto/16 :goto_1c

    :sswitch_0
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto/16 :goto_1c

    :cond_2b
    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {v2, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v10, :cond_36

    :try_start_6
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v9, v0

    goto :goto_14

    :catchall_3
    const/4 v9, 0x0

    :goto_14
    if-eqz v9, :cond_36

    iget-object v0, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    const-string v2, "pareamento"

    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0, v9, v2}, Lcom/ex/auto/CentralWatchdogService;->d0(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    goto/16 :goto_1c

    :sswitch_1
    const-string v0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto/16 :goto_1c

    :cond_2c
    iget-object v0, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v4, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    iget-object v4, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-object v8, v0, Lcom/ex/auto/CentralWatchdogService;->b1:Lw0/a3;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v12, v0, Lcom/ex/auto/CentralWatchdogService;->W0:Z

    iput v12, v0, Lcom/ex/auto/CentralWatchdogService;->X0:I

    iput v12, v0, Lcom/ex/auto/CentralWatchdogService;->Y0:I

    iput v12, v0, Lcom/ex/auto/CentralWatchdogService;->Z0:I

    iget-object v0, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean v12, v0, Lcom/ex/auto/CentralWatchdogService;->h2:Z

    :try_start_7
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_15

    :catchall_4
    :cond_2d
    const/4 v9, 0x0

    :goto_15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-object v0, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-wide v12, v0, Lcom/ex/auto/CentralWatchdogService;->H1:J

    iget-wide v14, v0, Lcom/ex/auto/CentralWatchdogService;->I1:J

    sub-long/2addr v12, v14

    sub-long/2addr v10, v12

    if-eqz v9, :cond_2e

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v2, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v2, v2, Lcom/ex/auto/CentralWatchdogService;->G1:Ljava/util/HashMap;

    invoke-virtual {v2, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "CarPlay identity: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " desconectou \u2014 pr\u00f3xima inje\u00e7\u00e3o liberada em "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-wide v8, v2, Lcom/ex/auto/CentralWatchdogService;->I1:J

    int-to-long v6, v7

    div-long/2addr v8, v6

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    :cond_2e
    iget-object v0, v0, Lcom/ex/auto/CentralWatchdogService;->G1:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v2, "<get-keys>(...)"

    invoke-static {v0, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ly1/g;->m0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iget-object v2, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, v2, Lcom/ex/auto/CentralWatchdogService;->G1:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :sswitch_2
    const-string v5, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    :try_start_8
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_17

    :catchall_5
    const/4 v2, 0x0

    :goto_17
    if-eqz v2, :cond_34

    iget-object v5, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v6, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v5, v2}, Lcom/ex/auto/CentralWatchdogService;->S0(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-nez v5, :cond_2f

    goto/16 :goto_1a

    :cond_2f
    iget-object v5, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    :try_start_9
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_18

    :catchall_6
    const/4 v6, 0x0

    :goto_18
    iput-object v6, v5, Lcom/ex/auto/CentralWatchdogService;->c1:Ljava/lang/String;

    iget-object v5, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    const/4 v11, 0x0

    iput-object v11, v5, Lcom/ex/auto/CentralWatchdogService;->d0:Ljava/lang/String;

    iget-object v5, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v5, v5, Lcom/ex/auto/CentralWatchdogService;->e0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v5, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/ex/auto/CentralWatchdogService;->g0:J

    invoke-virtual {v5}, Lcom/ex/auto/CentralWatchdogService;->t()Z

    move-result v5

    if-eqz v5, :cond_30

    iget-object v5, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v6, v5, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-object v5, v5, Lcom/ex/auto/CentralWatchdogService;->M2:Lw0/a3;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v5, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v6, v5, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-object v5, v5, Lcom/ex/auto/CentralWatchdogService;->M2:Lw0/a3;

    const-wide/16 v7, 0x1388

    invoke-virtual {v6, v5, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_30
    iget-object v5, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v5, v5, Lcom/ex/auto/CentralWatchdogService;->j2:Ljava/lang/String;

    const-wide/16 v6, 0x5dc

    if-eqz v5, :cond_31

    iget-object v8, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean v8, v8, Lcom/ex/auto/CentralWatchdogService;->Z1:Z

    if-eqz v8, :cond_31

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Lo2/t;->a0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_31

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, "BT: o iPhone do CarPlay voltou ao Bluetooth \u2014 desconecto s\u00f3 o \u00e1udio/telefone dele"

    invoke-static {v3, v0, v12}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v3, Lw0/a2;

    invoke-direct {v3, v0, v5, v4}, Lw0/a2;-><init>(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;I)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1c

    :cond_31
    iget-object v3, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    const-string v4, "ACL_CONNECTED"

    invoke-virtual {v3, v2, v4}, Lcom/ex/auto/CentralWatchdogService;->d0(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    iget-object v3, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v3, v0}, Lcom/ex/auto/CentralWatchdogService;->h0(Ljava/lang/String;)V

    iget-object v3, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v3, v0}, Lcom/ex/auto/CentralWatchdogService;->G(Ljava/lang/String;)V

    iget-object v0, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0, v2}, Lcom/ex/auto/CentralWatchdogService;->l0(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    iget-object v3, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean v0, v3, Lcom/ex/auto/CentralWatchdogService;->h2:Z

    if-eqz v0, :cond_32

    iget-object v3, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v3}, Lcom/ex/auto/CentralWatchdogService;->K()Z

    move-result v3

    if-eqz v3, :cond_32

    :try_start_a
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto :goto_19

    :catchall_7
    move-object v9, v11

    :goto_19
    iget-object v2, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v3, v2, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v4, Lw0/a2;

    invoke-direct {v4, v2, v9, v10}, Lw0/a2;-><init>(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;I)V

    const-wide/16 v8, 0xfa0

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_32
    if-nez v0, :cond_33

    iget-object v2, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v2}, Lcom/ex/auto/CentralWatchdogService;->r()Z

    move-result v2

    if-eqz v2, :cond_33

    sget-object v2, Lw0/n3;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v2, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    new-instance v3, Lw0/d2;

    const/16 v4, 0x12

    invoke-direct {v3, v2, v4}, Lw0/d2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-static {v3}, Lw0/n3;->a(Lh2/a;)V

    :cond_33
    if-nez v0, :cond_36

    iget-object v0, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->r()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v3, Lw0/v2;

    const/16 v4, 0x13

    invoke-direct {v3, v0, v4}, Lw0/v2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1c

    :cond_34
    :goto_1a
    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, "BT: acess\u00f3rio conectado \u2014 n\u00e3o preparo AP nem disparo proje\u00e7\u00e3o"

    invoke-static {v3, v0, v12}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1c

    :sswitch_3
    const/4 v11, 0x0

    const-string v0, "android.bluetooth.device.action.UUID"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_1c

    :cond_35
    :try_start_b
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    move-object v9, v0

    goto :goto_1b

    :catchall_8
    move-object v9, v11

    :goto_1b
    if-eqz v9, :cond_36

    iget-object v0, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    const-string v2, "ACTION_UUID"

    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0, v9, v2}, Lcom/ex/auto/CentralWatchdogService;->d0(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    :cond_36
    :goto_1c
    return-void

    :pswitch_8
    const/4 v11, 0x0

    if-eqz v2, :cond_3b

    const-string v0, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v2, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v6, :cond_37

    goto :goto_1f

    :cond_37
    :try_start_c
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    goto :goto_1d

    :catchall_9
    move-object v0, v11

    :goto_1d
    iget-object v3, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v3, v3, Lcom/ex/auto/CentralWatchdogService;->j2:Ljava/lang/String;

    if-nez v3, :cond_38

    goto :goto_1f

    :cond_38
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lo2/t;->a0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean v0, v0, Lcom/ex/auto/CentralWatchdogService;->Z1:Z

    if-nez v0, :cond_39

    goto :goto_1f

    :cond_39
    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, "CentralWatchdog"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "BT: o iPhone do CarPlay conectou "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    const/16 v5, 0x2e

    invoke-static {v2, v5}, Lo2/k;->z0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v9

    goto :goto_1e

    :cond_3a
    move-object v9, v11

    :goto_1e
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " por BT \u2014 desconecto (o \u00e1udio \u00e9 do CarPlay)"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v12}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {v0, v3}, Lw0/m;->j(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3b
    :goto_1f
    return-void

    :pswitch_9
    const/4 v11, 0x0

    sget-object v0, Lw0/g5;->a:Lw0/g5;

    const-string v3, "AP caiu (estado="

    const-string v6, "CentralWatchdog"

    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    goto :goto_20

    :cond_3c
    move-object v9, v11

    :goto_20
    const-string v8, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-static {v9, v8}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3d

    goto/16 :goto_22

    :cond_3d
    const-string v8, "wifi_state"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v8, 0xe

    if-ne v2, v8, :cond_3e

    iget-object v9, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iput-wide v13, v9, Lcom/ex/auto/CentralWatchdogService;->v1:J

    :cond_3e
    if-eq v2, v10, :cond_47

    const/16 v9, 0xd

    if-eq v2, v9, :cond_47

    if-eq v2, v4, :cond_3f

    if-eq v2, v8, :cond_3f

    goto/16 :goto_22

    :cond_3f
    iget-object v4, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-wide v8, v4, Lcom/ex/auto/CentralWatchdogService;->L0:J

    iget-wide v10, v4, Lcom/ex/auto/CentralWatchdogService;->M0:J

    invoke-static {v8, v9, v10, v11}, Lw0/t1;->c0(JJ)Z

    move-result v8

    invoke-virtual {v4}, Lcom/ex/auto/CentralWatchdogService;->c1()Z

    move-result v9

    if-nez v9, :cond_40

    if-eqz v8, :cond_40

    move-object v9, v0

    goto :goto_21

    :cond_40
    sget-object v9, Lw0/g5;->b:Lw0/g5;

    :goto_21
    if-eq v9, v0, :cond_46

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "STA apos AP (estado="

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "): nada a devolver (tomada="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " staLigada="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/ex/auto/CentralWatchdogService;->c1()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "ap_sempre_aberto"

    invoke-interface {v0, v4, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_41

    goto/16 :goto_22

    :cond_41
    iget-object v0, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "wifi_auto_enable_on_wake"

    invoke-interface {v0, v4, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_42

    goto/16 :goto_22

    :cond_42
    iget-object v0, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->c1()Z

    move-result v0

    if-eqz v0, :cond_43

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") \u2014 n\u00e3o reabro: o WiFi cliente est\u00e1 ligado e a r\u00e1dio \u00e9 uma s\u00f3"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v12}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_22

    :cond_43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-object v0, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-wide v10, v0, Lcom/ex/auto/CentralWatchdogService;->B1:J

    sub-long/2addr v8, v10

    iget-object v0, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-wide v10, v0, Lcom/ex/auto/CentralWatchdogService;->C1:J

    cmp-long v0, v8, v10

    if-lez v0, :cond_44

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, ") \u2014 fora da janela de arranque ("

    invoke-static {v3, v2, v0}, Landroidx/activity/result/b;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-wide v2, v2, Lcom/ex/auto/CentralWatchdogService;->C1:J

    const v4, 0xea60

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " min); s\u00f3 reabro no boot, ao acordar ou quando o celular chegar"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v12}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_22

    :cond_44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-object v0, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-wide v10, v0, Lcom/ex/auto/CentralWatchdogService;->A1:J

    sub-long v10, v8, v10

    iget-object v0, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-wide v13, v0, Lcom/ex/auto/CentralWatchdogService;->D1:J

    cmp-long v4, v10, v13

    if-gez v4, :cond_45

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, ") \u2014 n\u00e3o reabro: \u00faltima reabertura h\u00e1 "

    invoke-static {v3, v2, v0}, Landroidx/activity/result/b;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-wide v2, v2, Lcom/ex/auto/CentralWatchdogService;->A1:J

    sub-long/2addr v8, v2

    int-to-long v2, v7

    div-long/2addr v8, v2

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v12}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_22

    :cond_45
    iput-wide v8, v0, Lcom/ex/auto/CentralWatchdogService;->A1:J

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") \u2014 reabrindo para o pr\u00f3ximo telefone achar a rede pronta"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v12}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v3, Lw0/v2;

    const/16 v4, 0x10

    invoke-direct {v3, v0, v4}, Lw0/v2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_22

    :cond_46
    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, ") \u2014 o hotspot tinha tomado o Wi-Fi; devolvendo em "

    invoke-static {v3, v2, v0}, Landroidx/activity/result/b;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, v4, Lcom/ex/auto/CentralWatchdogService;->E1:J

    int-to-long v7, v7

    div-long/2addr v2, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v12}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, v4, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v2, Lw0/x1;

    const/4 v3, 0x4

    invoke-direct {v2, v4, v3}, Lw0/x1;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    iget-wide v3, v4, Lcom/ex/auto/CentralWatchdogService;->E1:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_22

    :cond_47
    iget-object v0, v1, Lw0/c3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/ex/auto/CentralWatchdogService;->M0:J

    :goto_22
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

    :sswitch_data_0
    .sparse-switch
        -0x16809cc6 -> :sswitch_3
        -0x11f77b4b -> :sswitch_2
        0x6c9330ef -> :sswitch_1
        0x7e2cc189 -> :sswitch_0
    .end sparse-switch
.end method
