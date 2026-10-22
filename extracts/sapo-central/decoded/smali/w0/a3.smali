.class public final Lw0/a3;
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

    iput p2, p0, Lw0/a3;->a:I

    iput-object p1, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Lw0/a3;->a:I

    const/4 v1, 0x2

    const-wide/16 v2, 0x3a98

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-boolean v0, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lw0/wd;->a:Lw0/wd;

    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "modo_oficina"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {v0}, Lw0/wd;->i(Landroid/content/Context;)V

    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {v0}, Lw0/wd;->l(Landroid/content/Context;)V

    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v0, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "status_temp_ext_enabled"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "status_battery_enabled"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "status_total_km_enabled"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "status_trip_km_enabled"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "status_signal_enabled"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "status_wifi_enabled"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v7, :cond_2

    if-nez v9, :cond_2

    if-nez v10, :cond_2

    if-nez v11, :cond_2

    if-nez v12, :cond_2

    if-nez v0, :cond_2

    sget v0, Lw0/pg;->a:I

    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {v0}, Lw0/pg;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {v0}, Lw0/pg;->f(Landroid/content/Context;)V

    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {v0}, Lw0/pg;->g(Landroid/content/Context;)V

    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_5

    const/16 v1, 0x3ab6

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    :cond_2
    if-nez v7, :cond_3

    if-nez v9, :cond_3

    if-nez v10, :cond_3

    if-eqz v11, :cond_4

    :cond_3
    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v0, v0, Lcom/ex/auto/CentralWatchdogService;->k:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_4

    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {v0}, Lcom/ex/auto/CentralWatchdogService;->e(Lcom/ex/auto/CentralWatchdogService;)V

    :cond_4
    sget-object v0, Lw0/n3;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v8, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    new-instance v6, Lw0/i3;

    invoke-direct/range {v6 .. v12}, Lw0/i3;-><init>(ZLcom/ex/auto/CentralWatchdogService;ZZZZ)V

    const-string v0, "status-icons"

    invoke-static {v0, v6}, Lw0/n3;->b(Ljava/lang/String;Lh2/a;)V

    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v0, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-boolean v0, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "screen_rest_timeout_sec"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_7

    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/ex/auto/CentralWatchdogService;->z0:J

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-wide v2, v0, Lcom/ex/auto/CentralWatchdogService;->w0:J

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_7
    sget v2, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    sget-boolean v2, Lcom/ex/auto/QuickAccessFloaterService;->z0:Z

    if-eqz v2, :cond_8

    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ex/auto/CentralWatchdogService;->A0:J

    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean v5, v0, Lcom/ex/auto/CentralWatchdogService;->B0:Z

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-wide v2, v0, Lcom/ex/auto/CentralWatchdogService;->w0:J

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_8
    sget-object v2, Lw0/n3;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    new-instance v3, Lw0/q2;

    invoke-direct {v3, v2, v0, p0, v1}, Lw0/q2;-><init>(Lcom/ex/auto/CentralWatchdogService;ILjava/lang/Runnable;I)V

    invoke-static {v3}, Lw0/n3;->a(Lh2/a;)V

    :goto_1
    return-void

    :pswitch_1
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-boolean v0, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v0, v0, Lcom/ex/auto/CentralWatchdogService;->u:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean v1, v1, Lcom/ex/auto/CentralWatchdogService;->A:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean v4, v1, Lcom/ex/auto/CentralWatchdogService;->A:Z

    :try_start_0
    sget-object v1, Lw0/n3;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    new-instance v3, La1/i;

    const/16 v4, 0x9

    invoke-direct {v3, v2, v4, v0}, La1/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean v5, v0, Lcom/ex/auto/CentralWatchdogService;->A:Z

    :cond_a
    :goto_2
    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v0, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x9c4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    :goto_3
    return-void

    :pswitch_2
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-boolean v0, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v0, :cond_d

    sget-object v0, Lw0/wd;->a:Lw0/wd;

    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {v0}, Lw0/wd;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {v0}, Lw0/wd;->l(Landroid/content/Context;)V

    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v0, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d
    :goto_4
    return-void

    :pswitch_3
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-boolean v0, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v0, :cond_e

    goto :goto_5

    :cond_e
    sget-object v0, Lw0/ud;->a:Lw0/ud;

    invoke-virtual {v0}, Lw0/ud;->f()Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Lw0/ae;->a:Lw0/ae;

    const-string v1, "Metricas"

    invoke-virtual {v0}, Lw0/ud;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_f
    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-wide v2, v0, Lcom/ex/auto/CentralWatchdogService;->O2:J

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_5
    return-void

    :pswitch_4
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-boolean v0, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v0, :cond_10

    goto :goto_6

    :cond_10
    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {v0}, Lw0/t1;->N(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_6

    :cond_11
    iget-object v1, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget v2, v1, Lcom/ex/auto/CentralWatchdogService;->s0:I

    rem-int/lit8 v3, v2, 0x3

    if-nez v3, :cond_12

    move v5, v4

    :cond_12
    add-int/2addr v2, v4

    iput v2, v1, Lcom/ex/auto/CentralWatchdogService;->s0:I

    new-instance v1, Lw0/d3;

    invoke-direct {v1, v0, v5}, Lw0/d3;-><init>(Ljava/util/List;Z)V

    const-string v0, "keep-alive"

    invoke-static {v0, v1}, Lw0/n3;->b(Ljava/lang/String;Lh2/a;)V

    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v0, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_6
    return-void

    :pswitch_5
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-boolean v0, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v0, :cond_13

    goto :goto_9

    :cond_13
    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v0, v0, Lcom/ex/auto/CentralWatchdogService;->i:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_14

    sget-boolean v2, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->M:Z

    if-nez v2, :cond_14

    sget-object v2, Lw0/n3;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    new-instance v3, Lw0/y2;

    invoke-direct {v3, v2, v1, v0}, Lw0/y2;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const-string v0, "drive-regen-gear"

    invoke-static {v0, v3}, Lw0/n3;->b(Ljava/lang/String;Lh2/a;)V

    :cond_14
    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget v1, v0, Lcom/ex/auto/CentralWatchdogService;->M:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_15

    goto :goto_7

    :cond_15
    const/16 v2, 0x10

    if-lt v1, v2, :cond_16

    const/16 v2, 0x1000

    if-gt v1, v2, :cond_16

    :goto_7
    iget-wide v0, v0, Lcom/ex/auto/CentralWatchdogService;->O:J

    goto :goto_8

    :cond_16
    iget-wide v0, v0, Lcom/ex/auto/CentralWatchdogService;->N:J

    :goto_8
    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_17

    iget-object v2, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v2, v2, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_17
    :goto_9
    return-void

    :pswitch_6
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-boolean v0, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v0, :cond_18

    goto :goto_a

    :cond_18
    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "remember_brightness"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lw0/n3;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    new-instance v1, Lw0/d2;

    const/16 v2, 0x11

    invoke-direct {v1, v0, v2}, Lw0/d2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    const-string v0, "brightness-memory"

    invoke-static {v0, v1}, Lw0/n3;->b(Ljava/lang/String;Lh2/a;)V

    :cond_19
    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v0, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x1f40

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_a
    return-void

    :pswitch_7
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-boolean v0, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v0, :cond_1a

    goto :goto_b

    :cond_1a
    sget-object v0, Lw0/wd;->a:Lw0/wd;

    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {v0}, Lw0/wd;->l(Landroid/content/Context;)V

    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "auto_update_enabled"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->W2:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, "auto-update desligado (Config \u2192 Atualiza\u00e7\u00f5es)"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v0, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b

    :cond_1b
    sget-object v0, Lw0/n3;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    new-instance v1, Lw0/y2;

    invoke-direct {v1, v0, v4, p0}, Lw0/y2;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v1}, Lw0/n3;->a(Lh2/a;)V

    :goto_b
    return-void

    :pswitch_8
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-boolean v0, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v0, :cond_1c

    goto :goto_c

    :cond_1c
    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->t()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->b0:Ljava/lang/String;

    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->i0:Ljava/lang/String;

    goto :goto_c

    :cond_1d
    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v0, v0, Lcom/ex/auto/CentralWatchdogService;->e0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    sget-object v1, Lw0/n3;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    new-instance v2, Lw0/q2;

    invoke-direct {v2, v1, v0, p0, v4}, Lw0/q2;-><init>(Lcom/ex/auto/CentralWatchdogService;ILjava/lang/Runnable;I)V

    invoke-static {v2}, Lw0/n3;->a(Lh2/a;)V

    :goto_c
    return-void

    :pswitch_9
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-boolean v0, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lw0/a3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean v1, v0, Lcom/ex/auto/CentralWatchdogService;->W0:Z

    if-nez v1, :cond_1e

    goto :goto_d

    :cond_1e
    iget v1, v0, Lcom/ex/auto/CentralWatchdogService;->Y0:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/ex/auto/CentralWatchdogService;->Y0:I

    iget v1, v0, Lcom/ex/auto/CentralWatchdogService;->Z0:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/ex/auto/CentralWatchdogService;->Z0:I

    new-instance v1, Lw0/y2;

    invoke-direct {v1, v0, v5, p0}, Lw0/y2;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v1}, Lw0/n3;->a(Lh2/a;)V

    :cond_1f
    :goto_d
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
.end method
