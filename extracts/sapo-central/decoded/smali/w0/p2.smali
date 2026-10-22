.class public final synthetic Lw0/p2;
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

    iput p2, p0, Lw0/p2;->a:I

    iput-object p1, p0, Lw0/p2;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    iget v0, v1, Lw0/p2;->a:I

    const-string v2, "wifi_auto_enable_on_wake"

    const/16 v3, 0xb

    const-string v4, "FALHOU ao reaplicar"

    const-string v5, "reaplicado"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v8, "despertar"

    const/16 v9, 0x8

    const/4 v10, 0x0

    const-string v11, "CentralWatchdog"

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lw0/p2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->i:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "DriveRegen: floater iniciou, liberando Car"

    invoke-static {v11, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->N()V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, v1, Lw0/p2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/ex/auto/CentralWatchdogService;->V0(Lcom/ex/auto/CentralWatchdogService;)V

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, v1, Lw0/p2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-static {}, Lw0/ih;->f()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lw0/ih;->c(Landroid/content/Context;)Z

    move-result v0

    sget-object v2, Lw0/ae;->a:Lw0/ae;

    if-eqz v0, :cond_2

    move-object v4, v5

    :cond_2
    const-string v0, "v\u00eddeo 60 fps [boot]: pedido mas nao valendo \u2014 "

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0, v7}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, "v\u00eddeo 60 fps [boot]: pedido e ja valendo"

    invoke-static {v11, v0, v7}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return-void

    :pswitch_2
    iget-object v0, v1, Lw0/p2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lw0/x1;

    const/16 v4, 0x17

    invoke-direct {v3, v0, v4}, Lw0/x1;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :goto_2
    return-void

    :pswitch_3
    iget-object v0, v1, Lw0/p2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->u0()V

    return-void

    :pswitch_4
    iget-object v0, v1, Lw0/p2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lw0/x1;

    const/16 v4, 0x1d

    invoke-direct {v3, v0, v4}, Lw0/x1;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :goto_3
    return-void

    :pswitch_5
    iget-object v0, v1, Lw0/p2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_6

    sget-boolean v2, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->M:Z

    if-nez v2, :cond_6

    const-string v2, "gear_change"

    invoke-virtual {v0, v2}, Lcom/ex/auto/CentralWatchdogService;->D(Ljava/lang/String;)V

    :cond_6
    return-void

    :pswitch_6
    iget-object v0, v1, Lw0/p2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->J()V

    :cond_7
    return-void

    :pswitch_7
    iget-object v0, v1, Lw0/p2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v2, :cond_8

    goto :goto_4

    :cond_8
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lw0/x1;

    const/4 v4, 0x5

    invoke-direct {v3, v0, v4}, Lw0/x1;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :goto_4
    return-void

    :pswitch_8
    iget-object v0, v1, Lw0/p2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->c1()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lw0/x1;

    invoke-direct {v4, v0, v3}, Lw0/x1;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_a
    :goto_5
    return-void

    :pswitch_9
    iget-object v0, v1, Lw0/p2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    :try_start_0
    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_b

    goto :goto_6

    :cond_b
    const-string v3, "setGlobalProxy"

    const-class v4, Landroid/net/ProxyInfo;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setGlobalProxy(null) erro: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v11}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_6
    :try_start_1
    new-instance v0, Lkotlinx/coroutines/scheduling/h;

    const/16 v2, 0x15b3

    invoke-direct {v0, v2}, Lkotlinx/coroutines/scheduling/h;-><init>(I)V

    const-string v2, "settings delete global global_http_proxy_host 2>/dev/null || true\nsettings delete global global_http_proxy_port 2>/dev/null || true\nsettings delete global http_proxy 2>/dev/null || true\necho \"PROXY_AUTO_CLEARED\""

    const/16 v3, 0x1770

    invoke-virtual {v0, v3, v2}, Lkotlinx/coroutines/scheduling/h;->b(ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clearProxyOnCentral erro: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v11}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_7
    return-void

    :pswitch_a
    iget-object v0, v1, Lw0/p2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v2, :cond_c

    goto :goto_8

    :cond_c
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lw0/x1;

    invoke-direct {v3, v0, v9}, Lw0/x1;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :goto_8
    return-void

    :pswitch_b
    iget-object v0, v1, Lw0/p2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v2, :cond_d

    goto :goto_9

    :cond_d
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lw0/x1;

    const/16 v4, 0xe

    invoke-direct {v3, v0, v4}, Lw0/x1;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :goto_9
    return-void

    :pswitch_c
    iget-object v0, v1, Lw0/p2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lw0/g2;

    const-string v4, "wakeup"

    invoke-direct {v3, v6, v0, v4}, Lw0/g2;-><init>(Ljava/lang/String;Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_e
    return-void

    :pswitch_d
    iget-object v0, v1, Lw0/p2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_f

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->L()V

    :cond_f
    return-void

    :pswitch_e
    iget-object v0, v1, Lw0/p2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_10

    invoke-virtual {v0, v8}, Lcom/ex/auto/CentralWatchdogService;->G(Ljava/lang/String;)V

    :cond_10
    return-void

    :pswitch_f
    iget-object v0, v1, Lw0/p2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_11

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lw0/a2;

    const/4 v4, 0x6

    invoke-direct {v3, v0, v8, v4}, Lw0/a2;-><init>(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_11
    return-void

    :pswitch_10
    iget-object v0, v1, Lw0/p2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_12

    invoke-virtual {v0, v10, v8}, Lcom/ex/auto/CentralWatchdogService;->g0(ILjava/lang/String;)V

    :cond_12
    return-void

    :pswitch_11
    iget-object v0, v1, Lw0/p2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_13

    new-instance v2, Lw0/d2;

    invoke-direct {v2, v0, v10}, Lw0/d2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-static {v2}, Lw0/n3;->a(Lh2/a;)V

    :cond_13
    return-void

    :pswitch_12
    iget-object v0, v1, Lw0/p2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_14

    invoke-virtual {v0, v8}, Lcom/ex/auto/CentralWatchdogService;->h0(Ljava/lang/String;)V

    :cond_14
    return-void

    :pswitch_13
    iget-object v0, v1, Lw0/p2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_16

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    sget-boolean v2, Lcom/ex/auto/QuickAccessFloaterService;->z0:Z

    if-nez v2, :cond_16

    sget-boolean v2, Lcom/ex/auto/BlackoutFloaterService;->q:Z

    if-nez v2, :cond_16

    iget-boolean v2, v0, Lcom/ex/auto/CentralWatchdogService;->E0:Z

    if-eqz v2, :cond_15

    goto :goto_a

    :cond_15
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lw0/x1;

    const/4 v4, 0x3

    invoke-direct {v3, v0, v4}, Lw0/x1;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_16
    :goto_a
    return-void

    :pswitch_14
    iget-object v0, v1, Lw0/p2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_19

    sget-boolean v2, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->M:Z

    if-eqz v2, :cond_17

    goto :goto_b

    :cond_17
    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->i:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v2, :cond_18

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->Y()V

    goto :goto_b

    :cond_18
    const-string v2, "wake"

    invoke-virtual {v0, v2}, Lcom/ex/auto/CentralWatchdogService;->D(Ljava/lang/String;)V

    :cond_19
    :goto_b
    return-void

    :pswitch_15
    iget-object v0, v1, Lw0/p2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v2, :cond_1a

    goto :goto_c

    :cond_1a
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lw0/x1;

    const/16 v4, 0x14

    invoke-direct {v3, v0, v4}, Lw0/x1;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :goto_c
    return-void

    :pswitch_16
    iget-object v0, v1, Lw0/p2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v3, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v3, :cond_1d

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v2, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_d

    :cond_1b
    iget-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-object v4, v0, Lcom/ex/auto/CentralWatchdogService;->X:Lw0/p2;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput v10, v0, Lcom/ex/auto/CentralWatchdogService;->U:I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v2, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_d

    :cond_1c
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lw0/a2;

    const-string v4, "ipo_wakeup"

    invoke-direct {v3, v0, v4, v9}, Lw0/a2;-><init>(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_1d
    :goto_d
    return-void

    :pswitch_17
    iget-object v0, v1, Lw0/p2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v2, :cond_1e

    goto :goto_e

    :cond_1e
    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->Y()V

    :goto_e
    return-void

    :pswitch_18
    iget-object v0, v1, Lw0/p2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v2, :cond_1f

    goto :goto_f

    :cond_1f
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lw0/x1;

    const/16 v4, 0x10

    invoke-direct {v3, v0, v4}, Lw0/x1;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :goto_f
    return-void

    :pswitch_19
    iget-object v0, v1, Lw0/p2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_2
    invoke-virtual {v2, v10}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    const-string v4, "getInstalledApplications(...)"

    invoke-static {v2, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    iget v12, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v13, v12, 0x1

    if-nez v13, :cond_20

    and-int/lit16 v12, v12, 0x80

    if-nez v12, :cond_20

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_20

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_21
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v4}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v8, v10

    :goto_11
    if-ge v8, v5, :cond_22

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v8, v8, 0x1

    check-cast v12, Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_11

    :catchall_0
    sget-object v2, Ly1/p;->a:Ly1/p;

    :cond_22
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_23

    goto/16 :goto_1f

    :cond_23
    invoke-static {v2}, Lw0/r5;->i(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_24

    goto/16 :goto_1f

    :cond_24
    const v4, 0x15f90

    invoke-static {v4, v2}, Lcom/ex/auto/CentralWatchdogService;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lw0/r5;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_25

    goto/16 :goto_1f

    :cond_25
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_26
    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_27

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Lw0/o5;

    invoke-static {v12}, Lw0/r5;->j(Lw0/o5;)Z

    move-result v13

    if-eqz v13, :cond_26

    invoke-static {v12}, Lw0/r5;->g(Lw0/o5;)Z

    move-result v12

    if-eqz v12, :cond_26

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_27
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v12, v10

    :goto_13
    if-ge v12, v8, :cond_28

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Lw0/o5;

    iget-object v13, v13, Lw0/o5;->a:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_28
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_29

    goto/16 :goto_1f

    :cond_29
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v12, v10

    :cond_2a
    :goto_14
    if-ge v12, v8, :cond_2b

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    move-object v14, v13

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Lw0/r5;->e(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2a

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_2b
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2c

    const-string v4, ""

    goto :goto_15

    :cond_2c
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "for p in "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    const/16 v12, 0x3e

    invoke-static {v4, v8, v6, v12}, Ly1/g;->e0(Ljava/lang/Iterable;Ljava/lang/String;Lh2/l;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; do pidof \"$p\" >/dev/null 2>&1 || echo \"OCIOSO:$p\"; done"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_15
    const/16 v5, 0x4e20

    invoke-static {v5, v4}, Lcom/ex/auto/CentralWatchdogService;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "saida"

    invoke-static {v4, v5}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lo2/k;->n0(Ljava/lang/CharSequence;)Ln2/c;

    move-result-object v4

    new-instance v5, Lw0/n2;

    invoke-direct {v5, v9}, Lw0/n2;-><init>(I)V

    new-instance v8, Ln2/c;

    const/4 v9, 0x2

    invoke-direct {v8, v4, v5, v9}, Ln2/c;-><init>(Ln2/f;Ljava/lang/Object;I)V

    new-instance v4, Lw0/n2;

    const/16 v5, 0x9

    invoke-direct {v4, v5}, Lw0/n2;-><init>(I)V

    new-instance v5, Ln2/d;

    invoke-direct {v5, v8, v7, v4}, Ln2/d;-><init>(Ln2/f;ZLh2/l;)V

    new-instance v4, Lw0/n2;

    const/16 v8, 0xa

    invoke-direct {v4, v8}, Lw0/n2;-><init>(I)V

    new-instance v8, Ln2/c;

    invoke-direct {v8, v5, v4, v9}, Ln2/c;-><init>(Ln2/f;Ljava/lang/Object;I)V

    new-instance v4, Lw0/n2;

    invoke-direct {v4, v3}, Lw0/n2;-><init>(I)V

    new-instance v3, Ln2/d;

    invoke-direct {v3, v8, v7, v4}, Ln2/d;-><init>(Ln2/f;ZLh2/l;)V

    invoke-static {v3}, Ln2/g;->X(Ln2/f;)Ljava/util/Set;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2d
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lw0/o5;

    iget-object v12, v8, Lw0/o5;->a:Ljava/lang/String;

    invoke-interface {v3, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2d

    invoke-static {v8}, Lw0/r5;->j(Lw0/o5;)Z

    move-result v12

    if-eqz v12, :cond_2d

    invoke-static {v8}, Lw0/r5;->g(Lw0/o5;)Z

    move-result v8

    if-eqz v8, :cond_2d

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_2e
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v4}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v10

    :goto_17
    if-ge v5, v3, :cond_2f

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v5, v5, 0x1

    check-cast v8, Lw0/o5;

    iget-object v8, v8, Lw0/o5;->a:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2f
    invoke-static {v2, v9}, Ly1/g;->j0(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_30

    goto/16 :goto_1f

    :cond_30
    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "perf_rodada_elapsed"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "rodada de otimizacao: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " alvo(s)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v0, v10

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    if-ltz v0, :cond_3c

    check-cast v3, Ljava/lang/String;

    sget-boolean v5, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v5, :cond_31

    goto/16 :goto_1f

    :cond_31
    if-lez v0, :cond_32

    const-wide/32 v8, 0x15f90

    :try_start_3
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    sget-boolean v0, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v0, :cond_32

    goto/16 :goto_1f

    :cond_32
    const-wide/16 v8, 0x0

    :try_start_4
    new-instance v0, Ljava/io/File;

    const-string v5, "/proc/meminfo"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v5, Lo2/a;->a:Ljava/nio/charset/Charset;

    new-instance v12, Ljava/io/InputStreamReader;

    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v12, v13, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v5, Ljava/io/BufferedReader;

    const/16 v0, 0x2000

    invoke-direct {v5, v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-static {v5}, La1/b;->F(Ljava/io/BufferedReader;)Ln2/f;

    move-result-object v0

    check-cast v0, Ln2/a;

    invoke-virtual {v0}, Ln2/a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Ljava/lang/String;

    const-string v14, "MemAvailable:"

    invoke-static {v13, v14}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_33

    goto :goto_19

    :catchall_1
    move-exception v0

    move-object v12, v0

    goto :goto_1c

    :cond_34
    move-object v12, v6

    :goto_19
    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_37

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    move v14, v10

    :goto_1a
    if-ge v14, v13, :cond_36

    invoke-virtual {v12, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->isDigit(C)Z

    move-result v16

    if-eqz v16, :cond_35

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    :cond_35
    add-int/lit8 v14, v14, 0x1

    goto :goto_1a

    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "toString(...)"

    invoke-static {v0, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lo2/s;->Y(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1b

    :cond_37
    move-wide v12, v8

    :goto_1b
    :try_start_6
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1d

    :goto_1c
    :try_start_7
    throw v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_8
    invoke-static {v5, v12}, La1/b;->p(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-wide v12, v8

    :goto_1d
    :try_start_9
    new-instance v0, Landroid/os/StatFs;

    const-string v5, "/data"

    invoke-direct {v0, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v14

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    mul-long/2addr v8, v14

    :catchall_4
    const-wide/32 v14, 0xc8000

    cmp-long v0, v12, v14

    if-gez v0, :cond_38

    sget-object v0, Lw0/p5;->a:Lw0/p5;

    goto :goto_1e

    :cond_38
    const-wide/32 v12, 0x3b9aca00

    cmp-long v0, v8, v12

    if-gez v0, :cond_39

    sget-object v0, Lw0/p5;->b:Lw0/p5;

    goto :goto_1e

    :cond_39
    move-object v0, v6

    :goto_1e
    if-eqz v0, :cond_3a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rodada de otimizacao interrompida: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    :cond_3a
    const-string v0, "speed-profile"

    invoke-static {v3, v0, v7}, Lw0/r5;->h(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3b

    const v5, 0x2bf20

    invoke-static {v5, v0}, Lcom/ex/auto/CentralWatchdogService;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "otimizado "

    const-string v8, ": "

    invoke-static {v5, v3, v8}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x50

    invoke-static {v5, v0}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    move v0, v4

    goto/16 :goto_18

    :cond_3c
    invoke-static {}, Ly1/h;->W()V

    throw v6

    :catch_2
    :cond_3d
    :goto_1f
    return-void

    :pswitch_1a
    iget-object v0, v1, Lw0/p2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v2, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3e

    goto :goto_20

    :cond_3e
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lw0/a2;

    const-string v4, "retry"

    invoke-direct {v3, v0, v4, v9}, Lw0/a2;-><init>(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :goto_20
    return-void

    :pswitch_1b
    iget-object v0, v1, Lw0/p2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-static {}, Lw0/eg;->c()Z

    move-result v2

    if-nez v2, :cond_40

    invoke-static {v0}, Lw0/eg;->b(Landroid/content/Context;)Z

    move-result v0

    sget-object v2, Lw0/ae;->a:Lw0/ae;

    if-eqz v0, :cond_3f

    move-object v4, v5

    :cond_3f
    const-string v0, "fundo preto da r\u00e9 [boot]: pedido mas nao valendo \u2014 "

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0, v7}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_21

    :cond_40
    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, "fundo preto da r\u00e9 [boot]: pedido e ja valendo"

    invoke-static {v11, v0, v7}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_21
    return-void

    :pswitch_1c
    iget-object v0, v1, Lw0/p2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_41

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->Q0()V

    :cond_41
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
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
