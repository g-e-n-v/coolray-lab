.class public final synthetic Lw0/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/car/hardware/property/CarPropertyManager;ILcom/ex/auto/MainActivity;Lw0/i9;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lw0/d1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/d1;->d:Ljava/lang/Object;

    iput p2, p0, Lw0/d1;->b:I

    iput-object p3, p0, Lw0/d1;->c:Ljava/lang/Object;

    iput-object p4, p0, Lw0/d1;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p5, p0, Lw0/d1;->a:I

    iput-object p1, p0, Lw0/d1;->c:Ljava/lang/Object;

    iput p2, p0, Lw0/d1;->b:I

    iput-object p3, p0, Lw0/d1;->d:Ljava/lang/Object;

    iput-object p4, p0, Lw0/d1;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Lw0/d1;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/d1;->d:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/property/CarPropertyManager;

    iget v3, p0, Lw0/d1;->b:I

    iget-object v4, p0, Lw0/d1;->c:Ljava/lang/Object;

    check-cast v4, Lcom/ex/auto/MainActivity;

    iget-object v5, p0, Lw0/d1;->e:Ljava/lang/Object;

    check-cast v5, Lw0/i9;

    sget v6, Lcom/ex/auto/MainActivity;->z1:I

    new-instance v6, Li2/j;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    sget-object v7, Lw0/u;->c:[I

    array-length v8, v7

    :goto_0
    if-ge v1, v8, :cond_1

    aget v9, v7, v1

    sget v10, Lw0/u;->b:I

    invoke-static {v0, v10, v9, v3}, Lw0/p1;->l(Landroid/car/hardware/property/CarPropertyManager;III)Z

    move-result v10

    if-eqz v10, :cond_0

    iput-boolean v2, v6, Li2/j;->a:Z

    goto :goto_1

    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "AVAS sound type write area="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " falhou"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "MainActivity"

    invoke-static {v10, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-boolean v0, v6, Li2/j;->a:Z

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "avas_sound_type_saved"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    iget-object v0, v4, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v1, La1/g;

    const/16 v2, 0x13

    invoke-direct {v1, v4, v5, v6, v2}, La1/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/d1;->c:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/CentralWatchdogService;

    iget v3, p0, Lw0/d1;->b:I

    iget-object v4, p0, Lw0/d1;->d:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lw0/d1;->e:Ljava/lang/Object;

    check-cast v5, Lw0/a3;

    sget-object v6, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-boolean v6, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v6, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object v6, v0, Lcom/ex/auto/CentralWatchdogService;->e0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    const-wide/16 v7, 0x1770

    if-eq v6, v3, :cond_4

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->M2:Lw0/a3;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->t()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-object v0, v0, Lcom/ex/auto/CentralWatchdogService;->M2:Lw0/a3;

    invoke-virtual {v1, v0, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    :cond_4
    iget-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->b0:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v3, v2

    goto :goto_2

    :cond_5
    move v3, v1

    :goto_2
    const/4 v6, 0x3

    const-string v9, "auto_proxy_enabled"

    if-eqz v4, :cond_9

    iput v1, v0, Lcom/ex/auto/CentralWatchdogService;->m0:I

    iget-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->b0:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-object v4, v0, Lcom/ex/auto/CentralWatchdogService;->b0:Ljava/lang/String;

    const-string v10, "auto_route_on_aa_connect"

    if-nez v3, :cond_6

    sget-object v3, Lw0/ae;->a:Lw0/ae;

    const-string v3, "AutoRota: celular detectado em ap0 ip="

    const-string v11, " rotas="

    invoke-static {v3, v4, v11}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11, v10, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " proxy="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11, v9, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v11, "CentralWatchdog"

    invoke-static {v11, v3, v1}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->e0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    const-wide/16 v13, 0x1388

    add-long/2addr v11, v13

    iput-wide v11, v0, Lcom/ex/auto/CentralWatchdogService;->g0:J

    iput-wide v13, v0, Lcom/ex/auto/CentralWatchdogService;->j0:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    add-long/2addr v11, v13

    iput-wide v11, v0, Lcom/ex/auto/CentralWatchdogService;->k0:J

    :cond_6
    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v10, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, v0, Lcom/ex/auto/CentralWatchdogService;->g0:J

    cmp-long v3, v10, v12

    if-ltz v3, :cond_7

    invoke-static {v0, v4}, Lcom/ex/auto/CentralWatchdogService;->h(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v9, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->i0:Ljava/lang/String;

    invoke-static {v3, v4}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-boolean v3, v0, Lcom/ex/auto/CentralWatchdogService;->l0:Z

    if-nez v3, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v11, v0, Lcom/ex/auto/CentralWatchdogService;->k0:J

    cmp-long v3, v9, v11

    if-ltz v3, :cond_8

    iput-boolean v2, v0, Lcom/ex/auto/CentralWatchdogService;->l0:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v9, v0, Lcom/ex/auto/CentralWatchdogService;->j0:J

    add-long/2addr v1, v9

    iput-wide v1, v0, Lcom/ex/auto/CentralWatchdogService;->k0:J

    new-instance v1, Lw0/z1;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v4, v2}, Lw0/z1;-><init>(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;I)V

    invoke-static {v1}, Lw0/n3;->a(Lh2/a;)V

    goto :goto_3

    :cond_8
    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->i0:Ljava/lang/String;

    invoke-static {v1, v4}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, v0, Lcom/ex/auto/CentralWatchdogService;->n0:Z

    if-nez v1, :cond_b

    iput-boolean v2, v0, Lcom/ex/auto/CentralWatchdogService;->n0:Z

    new-instance v1, Lw0/z1;

    invoke-direct {v1, v0, v4, v6}, Lw0/z1;-><init>(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;I)V

    invoke-static {v1}, Lw0/n3;->a(Lh2/a;)V

    goto :goto_3

    :cond_9
    iget v4, v0, Lcom/ex/auto/CentralWatchdogService;->m0:I

    add-int/2addr v4, v2

    iput v4, v0, Lcom/ex/auto/CentralWatchdogService;->m0:I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, v9, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget v4, v0, Lcom/ex/auto/CentralWatchdogService;->m0:I

    if-lt v4, v6, :cond_b

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->i0:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-boolean v1, v0, Lcom/ex/auto/CentralWatchdogService;->l0:Z

    if-nez v1, :cond_a

    iput-boolean v2, v0, Lcom/ex/auto/CentralWatchdogService;->l0:Z

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->i0:Ljava/lang/String;

    invoke-static {v1}, Li2/g;->b(Ljava/lang/Object;)V

    new-instance v2, Lw0/z1;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v1, v3}, Lw0/z1;-><init>(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;I)V

    invoke-static {v2}, Lw0/n3;->a(Lh2/a;)V

    goto :goto_3

    :cond_a
    invoke-static {v0, v3}, Lcom/ex/auto/CentralWatchdogService;->f(Lcom/ex/auto/CentralWatchdogService;Z)V

    :cond_b
    :goto_3
    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->t()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v0, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    invoke-virtual {v0, v5, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    :goto_4
    return-void

    :pswitch_1
    iget-object v0, p0, Lw0/d1;->c:Ljava/lang/Object;

    check-cast v0, Lw0/f1;

    iget v3, p0, Lw0/d1;->b:I

    iget-object v4, p0, Lw0/d1;->d:Ljava/lang/Object;

    check-cast v4, Landroid/car/hardware/property/CarPropertyManager;

    iget-object v5, p0, Lw0/d1;->e:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    iget-boolean v6, v0, Lw0/f1;->j:Z

    if-nez v6, :cond_11

    iget v6, v0, Lw0/f1;->i:I

    if-ne v3, v6, :cond_11

    iget-object v3, v0, Lw0/f1;->h:Landroid/car/hardware/property/CarPropertyManager;

    if-ne v4, v3, :cond_11

    invoke-virtual {v0}, Lw0/f1;->c()Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, v0, Lw0/f1;->f:Lw0/y0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v5, :cond_10

    sget-object v4, Lw0/y0;->b:Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x8

    if-lt v4, v5, :cond_e

    move v4, v2

    goto :goto_5

    :cond_e
    move v4, v1

    :goto_5
    if-eqz v4, :cond_f

    iget-boolean v5, v3, Lw0/y0;->a:Z

    if-nez v5, :cond_f

    goto :goto_6

    :cond_f
    move v2, v1

    :goto_6
    iput-boolean v4, v3, Lw0/y0;->a:Z

    goto :goto_8

    :cond_10
    :goto_7
    move v2, v1

    :goto_8
    if-eqz v2, :cond_11

    const-string v2, "Entrada em D: abrindo aplicativo de c\u00e2mera"

    const-string v3, "CameraOnDrive"

    invoke-static {v3, v2, v1}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, v0, Lw0/f1;->a:Lcom/ex/auto/CentralWatchdogService;

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.ecarx.parking"

    const-string v4, "com.ecarx.parking.MainAvmActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "N\u00e3o foi poss\u00edvel abrir a c\u00e2mera: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "CarCamera"

    invoke-static {v0, v1, v2}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_11
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
