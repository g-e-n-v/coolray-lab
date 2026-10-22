.class public final synthetic Lw0/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lw0/v;->a:I

    iput p1, p0, Lw0/v;->b:I

    iput-object p2, p0, Lw0/v;->c:Ljava/lang/Object;

    iput-object p3, p0, Lw0/v;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 2
    iput p4, p0, Lw0/v;->a:I

    iput-object p1, p0, Lw0/v;->c:Ljava/lang/Object;

    iput-object p2, p0, Lw0/v;->d:Ljava/lang/Object;

    iput p3, p0, Lw0/v;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget v0, p0, Lw0/v;->a:I

    const/4 v1, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/v;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    iget-object v1, p0, Lw0/v;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p0, Lw0/v;->b:I

    const-string v3, "DR"

    const-string v4, ""

    const-string v5, "msgAck ok: "

    const-string v6, "Nome (recovery): "

    const-string v7, "[CentralEXAuto] Aviso visto: "

    :try_start_0
    const-string v8, "recovery_name"

    invoke-interface {v0, v8, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    sget-object v0, Lw0/k5;->a:Lw0/k5;

    invoke-static {}, Lw0/k5;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lw0/k5;->l()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4}, Lw0/k5;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x2e

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " \u2014 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\nMensagem: "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\nXDSN: "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\nSerial: "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nmsg-ack"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lw0/k5;->r(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msgAck: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/v;->c:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/CentralWatchdogService;

    iget-object v1, p0, Lw0/v;->d:Ljava/lang/Object;

    check-cast v1, Lh2/l;

    iget v2, p0, Lw0/v;->b:I

    sget-boolean v3, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ne v2, v3, :cond_2

    sget-boolean v2, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->M:Z

    if-nez v2, :cond_2

    iget-object v0, v0, Lcom/ex/auto/CentralWatchdogService;->i:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v1, v0}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_2
    return-void

    :pswitch_1
    iget v0, p0, Lw0/v;->b:I

    iget-object v4, p0, Lw0/v;->c:Ljava/lang/Object;

    check-cast v4, Lcom/ex/auto/CentralWatchdogService;

    iget-object v5, p0, Lw0/v;->d:Ljava/lang/Object;

    check-cast v5, Landroid/content/ComponentName;

    sget-boolean v6, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v6, :cond_7

    iget-object v6, v4, Lcom/ex/auto/CentralWatchdogService;->d2:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-eq v0, v6, :cond_3

    goto :goto_5

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    const-string v6, "com.njda.aauto"

    invoke-static {v0, v6}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v6, "getClassName(...)"

    if-eqz v0, :cond_5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "AutoMainActivity"

    invoke-static {v0, v7, v3}, Lo2/t;->Z(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v1, v4, Lcom/ex/auto/CentralWatchdogService;->a2:Z

    iput-boolean v1, v4, Lcom/ex/auto/CentralWatchdogService;->b2:Z

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    const-string v0, "com.njda.carplay"

    invoke-static {v2, v0}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "CarplayMainActivity"

    invoke-static {v0, v2, v3}, Lo2/t;->Z(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-boolean v1, v4, Lcom/ex/auto/CentralWatchdogService;->Z1:Z

    iput-boolean v1, v4, Lcom/ex/auto/CentralWatchdogService;->c2:Z

    :try_start_1
    sget-object v0, Lw0/od;->a:Lw0/od;

    invoke-static {v1}, Lw0/od;->o(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    iget-boolean v0, v4, Lcom/ex/auto/CentralWatchdogService;->W0:Z

    if-eqz v0, :cond_7

    const-string v0, "CarPlay em primeiro plano"

    invoke-virtual {v4, v0}, Lcom/ex/auto/CentralWatchdogService;->R0(Ljava/lang/String;)V

    :cond_7
    :goto_5
    return-void

    :pswitch_2
    iget-object v0, p0, Lw0/v;->c:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lw0/f1;

    iget-object v10, v5, Lw0/f1;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lw0/v;->d:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/car/hardware/property/CarPropertyManager;

    iget v6, p0, Lw0/v;->b:I

    :try_start_2
    iget-object v0, v5, Lw0/f1;->k:[I

    new-instance v4, Ljava/util/ArrayList;

    array-length v8, v0

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    array-length v8, v0

    move v9, v3

    :goto_6
    if-ge v9, v8, :cond_b

    aget v11, v0, v9

    sget-object v12, Lw0/p1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v12, 0x1f4

    invoke-static {v7, v11, v3, v12, v13}, Lw0/p1;->d(Landroid/car/hardware/property/CarPropertyManager;IIJ)Landroid/car/hardware/CarPropertyValue;

    move-result-object v11

    if-eqz v11, :cond_a

    invoke-virtual {v11}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v12

    instance-of v13, v12, Ljava/lang/Integer;

    if-eqz v13, :cond_8

    check-cast v12, Ljava/lang/Integer;

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_a

    :cond_8
    const/4 v12, 0x0

    :goto_7
    if-eqz v12, :cond_a

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    new-instance v13, Lw0/x0;

    invoke-virtual {v11}, Landroid/car/hardware/CarPropertyValue;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v11}, Landroid/car/hardware/CarPropertyValue;->getStatus()I

    move-result v11

    if-nez v11, :cond_9

    const/4 v11, 0x1

    goto :goto_8

    :cond_9
    move v11, v3

    :goto_8
    invoke-direct {v13, v12, v1, v2, v11}, Lw0/x0;-><init>(IJZ)V

    goto :goto_9

    :cond_a
    const/4 v13, 0x0

    :goto_9
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    sget-object v0, Lw0/y0;->b:Ljava/util/Set;

    new-array v0, v3, [Lw0/x0;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw0/x0;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw0/x0;

    invoke-static {v0}, Lw0/t1;->T([Lw0/x0;)Ljava/lang/Integer;

    move-result-object v8

    iget-object v0, v5, Lw0/f1;->c:Landroid/os/Handler;

    new-instance v4, Lw0/d1;

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lw0/d1;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v10, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :goto_a
    invoke-virtual {v10, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0

    :pswitch_3
    iget v0, p0, Lw0/v;->b:I

    iget-object v1, p0, Lw0/v;->c:Ljava/lang/Object;

    check-cast v1, Lw0/lg;

    iget-object v2, p0, Lw0/v;->d:Ljava/lang/Object;

    check-cast v2, Lcom/ex/auto/AppPipFloaterService;

    sget-object v4, Lcom/ex/auto/AppPipFloaterService;->x:Lcom/ex/auto/AppPipFloaterService;

    invoke-static {v0, v1}, Lw0/og;->m(ILw0/lg;)Z

    move-result v0

    if-eqz v0, :cond_c

    iput-object v1, v2, Lcom/ex/auto/AppPipFloaterService;->k:Lw0/lg;

    :cond_c
    iput-boolean v3, v2, Lcom/ex/auto/AppPipFloaterService;->n:Z

    iget-object v0, v2, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    new-instance v1, Lw0/b0;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lw0/b0;-><init>(Lcom/ex/auto/AppPipFloaterService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
