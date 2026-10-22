.class public final synthetic Lw0/x1;
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

    iput p2, p0, Lw0/x1;->a:I

    iput-object p1, p0, Lw0/x1;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lw0/x1;->a:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const-string v3, "CentralWatchdog"

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/x1;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    :try_start_0
    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->x()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lw0/ae;->a:Lw0/ae;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "observa\u00e7\u00e3o do ConnAdaptor falhou: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/x1;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->b0()V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lw0/x1;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v1, :cond_1

    const-string v1, "CarService voltou"

    invoke-virtual {v0, v1}, Lcom/ex/auto/CentralWatchdogService;->S(Ljava/lang/String;)V

    :cond_1
    return-void

    :pswitch_2
    iget-object v0, p0, Lw0/x1;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->M0()Z

    move-result v3

    iget-object v4, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    if-eqz v3, :cond_2

    new-instance v1, Lw0/j2;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lw0/j2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->p()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v2, Lw0/j2;

    invoke-direct {v2, v0, v1}, Lw0/j2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/ex/auto/CentralWatchdogService;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lw0/j2;

    const/4 v2, 0x5

    invoke-direct {v1, v0, v2}, Lw0/j2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v2}, Lcom/ex/auto/CentralWatchdogService;->a(Z)V

    new-instance v1, Lw0/j2;

    const/4 v2, 0x6

    invoke-direct {v1, v0, v2}, Lw0/j2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    :pswitch_3
    iget-object v0, p0, Lw0/x1;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->c0()V

    :cond_5
    return-void

    :pswitch_4
    iget-object v0, p0, Lw0/x1;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v1, :cond_6

    iget-wide v1, v0, Lcom/ex/auto/CentralWatchdogService;->o1:J

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-nez v1, :cond_6

    sget-object v1, Lw0/ae;->a:Lw0/ae;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CarplayMonitor n\u00e3o confirmou em "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v0, Lcom/ex/auto/CentralWatchdogService;->q1:J

    const/16 v2, 0x3e8

    int-to-long v7, v2

    div-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "s \u2014 libero BT e AP sem ele"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->f0()V

    :cond_6
    return-void

    :pswitch_5
    iget-object v0, p0, Lw0/x1;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->y()V

    return-void

    :pswitch_6
    iget-object v0, p0, Lw0/x1;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->o0:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lcom/ex/auto/CentralWatchdogService;->e0(ILjava/lang/String;)V

    :cond_7
    return-void

    :pswitch_7
    iget-object v0, p0, Lw0/x1;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->X()V

    :cond_8
    return-void

    :pswitch_8
    iget-object v0, p0, Lw0/x1;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->y()V

    return-void

    :pswitch_9
    iget-object v0, p0, Lw0/x1;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->a0()V

    :cond_9
    return-void

    :pswitch_a
    iget-object v0, p0, Lw0/x1;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->c0()V

    :cond_a
    return-void

    :pswitch_b
    iget-object v0, p0, Lw0/x1;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->O0()V

    :cond_b
    return-void

    :pswitch_c
    iget-object v0, p0, Lw0/x1;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->z()V

    return-void

    :pswitch_d
    iget-object v0, p0, Lw0/x1;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->L()V

    :cond_c
    return-void

    :pswitch_e
    iget-object v0, p0, Lw0/x1;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->z()V

    return-void

    :pswitch_f
    iget-object v0, p0, Lw0/x1;->b:Lcom/ex/auto/CentralWatchdogService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->v2:Lw0/x1;

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->m:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v1, :cond_d

    goto :goto_2

    :cond_d
    iget-object v5, v0, Lcom/ex/auto/CentralWatchdogService;->o:Ljava/lang/Integer;

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v1, v4}, Lcom/ex/auto/CentralWatchdogService;->q(Landroid/car/hardware/property/CarPropertyManager;I)Z

    move-result v6

    if-eqz v6, :cond_f

    const-string v1, "janela: reconfer\u00eancia \u2014 ainda h\u00e1 porta aberta, o filete fica"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->v2:Lw0/x1;

    if-eqz v2, :cond_e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_e
    new-instance v2, Lw0/x1;

    const/16 v3, 0xd

    invoke-direct {v2, v0, v3}, Lw0/x1;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    iput-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->v2:Lw0/x1;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_f
    sget-object v6, Lw0/ae;->a:Lw0/ae;

    const-string v6, "janela: reconfer\u00eancia achou todas as portas fechadas \u2014 fechando o filete que tinha ficado para tr\u00e1s"

    invoke-static {v3, v6, v2}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v5, v4}, Lcom/ex/auto/CentralWatchdogService;->T(Landroid/car/hardware/property/CarPropertyManager;II)V

    :cond_10
    :goto_2
    return-void

    :pswitch_10
    iget-object v0, p0, Lw0/x1;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-static {}, Lw0/e8;->x()Lw0/z4;

    move-result-object v1

    sget-object v4, Lw0/z4;->b:Lw0/z4;

    if-ne v1, v4, :cond_11

    sget-object v1, Lw0/ae;->a:Lw0/ae;

    const-string v1, "PiP nativo [boot]: pedido mas nao valendo \u2014 reaplicando"

    invoke-static {v3, v1, v2}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lw0/e8;->c(Landroid/content/Context;)Z

    goto :goto_3

    :cond_11
    sget-object v0, Lw0/z4;->a:Lw0/z4;

    if-ne v1, v0, :cond_12

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, "PiP nativo [boot]: pedido e ja valendo"

    invoke-static {v3, v0, v2}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_12
    :goto_3
    return-void

    :pswitch_11
    iget-object v0, p0, Lw0/x1;->b:Lcom/ex/auto/CentralWatchdogService;

    :try_start_1
    invoke-static {}, Lcom/ex/auto/CentralWatchdogService;->v()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move v1, v4

    :goto_4
    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v3, Lw0/k2;

    invoke-direct {v3, v0, v1, v4}, Lw0/k2;-><init>(Lcom/ex/auto/CentralWatchdogService;ZI)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_12
    iget-object v0, p0, Lw0/x1;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    :try_start_2
    sget-object v1, Lw0/u;->A:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ex/auto/CentralWatchdogService;->w(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    :catchall_2
    :cond_13
    return-void

    :pswitch_13
    iget-object v0, p0, Lw0/x1;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->L()V

    :cond_14
    return-void

    :pswitch_14
    iget-object v0, p0, Lw0/x1;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->A()V

    return-void

    :pswitch_15
    iget-object v0, p0, Lw0/x1;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->A()V

    return-void

    :pswitch_16
    iget-object v0, p0, Lw0/x1;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->Z()V

    :cond_15
    return-void

    :pswitch_17
    iget-object v0, p0, Lw0/x1;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    const-string v1, "applyGesturesIfNeeded: reaplicado ao boot = "

    const-string v2, "gestos do volante (aplicar)"

    invoke-virtual {v0, v2}, Lcom/ex/auto/CentralWatchdogService;->F(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_7

    :cond_16
    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "gestures_enabled"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_7

    :cond_17
    :try_start_3
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/ex/auto/QuickAccessFloaterService;

    invoke-direct {v2, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    :try_start_4
    const-string v2, "DST=$(pm path com.flyme.auto.launcher | sed \'s/^package://\'); grep -F \" $DST \" /proc/mounts >/dev/null 2>&1 && echo Y || echo N"

    const/16 v5, 0x1770

    invoke-static {v5, v2}, Lw0/m;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "Y"

    invoke-static {v2, v5, v4}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_18

    new-instance v2, Lw0/n2;

    const/16 v4, 0x12

    invoke-direct {v2, v4}, Lw0/n2;-><init>(I)V

    invoke-static {v0, v2}, Lw0/m;->d(Landroid/content/Context;Lh2/l;)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catchall_4
    move-exception v0

    goto :goto_6

    :cond_18
    const-string v0, "applyGesturesIfNeeded: j\u00e1 montado, nenhuma a\u00e7\u00e3o necess\u00e1ria"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_7

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "applyGesturesIfNeeded falhou: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v3}, Landroidx/activity/result/b;->s(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_7
    return-void

    :pswitch_18
    sget-object v0, Lw0/g5;->a:Lw0/g5;

    iget-object v1, p0, Lw0/x1;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v5, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v5, :cond_19

    goto :goto_9

    :cond_19
    invoke-virtual {v1}, Lcom/ex/auto/CentralWatchdogService;->c1()Z

    move-result v5

    iget-wide v6, v1, Lcom/ex/auto/CentralWatchdogService;->L0:J

    iget-wide v8, v1, Lcom/ex/auto/CentralWatchdogService;->M0:J

    invoke-static {v6, v7, v8, v9}, Lw0/t1;->c0(JJ)Z

    move-result v6

    if-nez v5, :cond_1a

    if-eqz v6, :cond_1a

    move-object v5, v0

    goto :goto_8

    :cond_1a
    sget-object v5, Lw0/g5;->b:Lw0/g5;

    :goto_8
    if-eq v5, v0, :cond_1b

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, "STA apos AP: desisti \u2014 a situa\u00e7\u00e3o mudou na espera"

    invoke-static {v3, v0, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_9

    :cond_1b
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lw0/j2;

    invoke-direct {v3, v1, v2}, Lw0/j2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_9
    return-void

    :pswitch_19
    iget-object v0, p0, Lw0/x1;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1}, Lw0/m;->w(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    invoke-static {v0}, Lw0/m;->q(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->a0:Ljava/lang/Boolean;

    return-void

    :pswitch_1a
    iget-object v0, p0, Lw0/x1;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_1c

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lw0/r0;

    invoke-direct {v3, v1, v0}, Lw0/r0;-><init>(ILjava/lang/Object;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_1c
    return-void

    :pswitch_1b
    iget-object v0, p0, Lw0/x1;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v1, :cond_1d

    goto :goto_a

    :cond_1d
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lw0/x1;

    const/4 v3, 0x7

    invoke-direct {v2, v0, v3}, Lw0/x1;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_a
    return-void

    :pswitch_1c
    iget-object v0, p0, Lw0/x1;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v1, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v1, :cond_1e

    goto :goto_b

    :cond_1e
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lw0/x1;

    const/16 v3, 0xc

    invoke-direct {v2, v0, v3}, Lw0/x1;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_b
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
