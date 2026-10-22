.class public final synthetic Lw0/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Landroid/car/Car;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/MainActivity;ZLandroid/car/Car;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    iput v0, p0, Lw0/c1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lw0/c1;->b:I

    iput-object p2, p0, Lw0/c1;->e:Ljava/lang/Object;

    iput-boolean p3, p0, Lw0/c1;->c:Z

    iput-object p4, p0, Lw0/c1;->d:Landroid/car/Car;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;IZLandroid/car/Car;I)V
    .locals 0

    .line 2
    iput p5, p0, Lw0/c1;->a:I

    iput-object p1, p0, Lw0/c1;->e:Ljava/lang/Object;

    iput p2, p0, Lw0/c1;->b:I

    iput-boolean p3, p0, Lw0/c1;->c:Z

    iput-object p4, p0, Lw0/c1;->d:Landroid/car/Car;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lw0/c1;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/c1;->e:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/QuickAccessFloaterService;

    iget v1, p0, Lw0/c1;->b:I

    iget-boolean v2, p0, Lw0/c1;->c:Z

    iget-object v3, p0, Lw0/c1;->d:Landroid/car/Car;

    iget-boolean v4, v0, Lcom/ex/auto/QuickAccessFloaterService;->M:Z

    if-nez v4, :cond_5

    iget-object v4, v0, Lcom/ex/auto/QuickAccessFloaterService;->P:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-eq v1, v4, :cond_0

    goto :goto_3

    :cond_0
    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-eqz v3, :cond_1

    :try_start_0
    const-string v5, "property"

    invoke-virtual {v3, v5}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v4

    :goto_0
    instance-of v6, v5, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v6, :cond_2

    check-cast v5, Landroid/car/hardware/property/CarPropertyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    :cond_2
    move-object v5, v4

    :goto_1
    if-eqz v2, :cond_4

    if-eqz v3, :cond_3

    :try_start_1
    const-string v2, "audio"

    invoke-virtual {v3, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v4

    :goto_2
    instance-of v3, v2, Landroid/car/media/CarAudioManager;

    if-eqz v3, :cond_4

    check-cast v2, Landroid/car/media/CarAudioManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v2

    :catchall_1
    :cond_4
    iget-boolean v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->M:Z

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->P:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v1, v2, :cond_5

    iput-object v5, v0, Lcom/ex/auto/QuickAccessFloaterService;->K:Landroid/car/hardware/property/CarPropertyManager;

    iput-object v4, v0, Lcom/ex/auto/QuickAccessFloaterService;->L:Landroid/car/media/CarAudioManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ex/auto/QuickAccessFloaterService;->N:Z

    if-eqz v5, :cond_5

    iget-object v1, v0, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v2, Lw0/ve;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v0}, Lw0/ve;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_3
    return-void

    :pswitch_0
    iget v0, p0, Lw0/c1;->b:I

    iget-object v1, p0, Lw0/c1;->e:Ljava/lang/Object;

    check-cast v1, Lcom/ex/auto/MainActivity;

    iget-boolean v2, p0, Lw0/c1;->c:Z

    iget-object v3, p0, Lw0/c1;->d:Landroid/car/Car;

    iget-object v4, v1, Lcom/ex/auto/MainActivity;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-eq v0, v4, :cond_6

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    if-eqz v2, :cond_a

    :try_start_2
    const-string v2, "property"

    invoke-virtual {v3, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v5, :cond_7

    check-cast v2, Landroid/car/hardware/property/CarPropertyManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    :cond_7
    move-object v2, v4

    :goto_4
    :try_start_3
    const-string v5, "audio"

    invoke-virtual {v3, v5}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Landroid/car/media/CarAudioManager;

    if-eqz v5, :cond_8

    check-cast v3, Landroid/car/media/CarAudioManager;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v4, v3

    :catchall_3
    :cond_8
    iget-object v3, v1, Lcom/ex/auto/MainActivity;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eq v0, v3, :cond_9

    goto :goto_5

    :cond_9
    iput-object v2, v1, Lcom/ex/auto/MainActivity;->M:Landroid/car/hardware/property/CarPropertyManager;

    iput-object v4, v1, Lcom/ex/auto/MainActivity;->N:Landroid/car/media/CarAudioManager;

    iget-object v3, v1, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, Lw0/y9;

    invoke-direct {v4, v0, v1, v2}, Lw0/y9;-><init>(ILcom/ex/auto/MainActivity;Landroid/car/hardware/property/CarPropertyManager;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :cond_a
    iput-object v4, v1, Lcom/ex/auto/MainActivity;->M:Landroid/car/hardware/property/CarPropertyManager;

    iput-object v4, v1, Lcom/ex/auto/MainActivity;->N:Landroid/car/media/CarAudioManager;

    iget-object v2, v1, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, Lw0/a9;

    const/4 v4, 0x6

    invoke-direct {v3, v0, v1, v4}, Lw0/a9;-><init>(ILcom/ex/auto/MainActivity;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_5
    return-void

    :pswitch_1
    iget-object v0, p0, Lw0/c1;->e:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeWidgetsPollService;

    iget v1, p0, Lw0/c1;->b:I

    iget-boolean v2, p0, Lw0/c1;->c:Z

    iget-object v3, p0, Lw0/c1;->d:Landroid/car/Car;

    iget-boolean v4, v0, Lcom/ex/auto/HomeWidgetsPollService;->e:Z

    if-nez v4, :cond_e

    iget-object v4, v0, Lcom/ex/auto/HomeWidgetsPollService;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-eq v1, v4, :cond_b

    goto :goto_7

    :cond_b
    const/4 v4, 0x0

    if-eqz v2, :cond_d

    if-eqz v3, :cond_c

    :try_start_4
    const-string v2, "property"

    invoke-virtual {v3, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_6

    :cond_c
    move-object v2, v4

    :goto_6
    instance-of v3, v2, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v3, :cond_d

    check-cast v2, Landroid/car/hardware/property/CarPropertyManager;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v4, v2

    :catch_0
    :cond_d
    iget-boolean v2, v0, Lcom/ex/auto/HomeWidgetsPollService;->e:Z

    if-nez v2, :cond_e

    iget-object v2, v0, Lcom/ex/auto/HomeWidgetsPollService;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v1, v2, :cond_e

    iput-object v4, v0, Lcom/ex/auto/HomeWidgetsPollService;->j:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v4, :cond_e

    invoke-virtual {v0, v4}, Lcom/ex/auto/HomeWidgetsPollService;->h(Landroid/car/hardware/property/CarPropertyManager;)V

    :cond_e
    :goto_7
    return-void

    :pswitch_2
    iget-object v0, p0, Lw0/c1;->e:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeFloatingWidgetsService;

    iget v1, p0, Lw0/c1;->b:I

    iget-boolean v2, p0, Lw0/c1;->c:Z

    iget-object v3, p0, Lw0/c1;->d:Landroid/car/Car;

    iget-boolean v4, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->d:Z

    if-nez v4, :cond_12

    iget-object v4, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-eq v1, v4, :cond_f

    goto :goto_9

    :cond_f
    const/4 v4, 0x0

    if-eqz v2, :cond_11

    if-eqz v3, :cond_10

    :try_start_5
    const-string v2, "property"

    invoke-virtual {v3, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_8

    :cond_10
    move-object v2, v4

    :goto_8
    instance-of v3, v2, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v3, :cond_11

    check-cast v2, Landroid/car/hardware/property/CarPropertyManager;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object v4, v2

    :catch_1
    :cond_11
    iget-boolean v2, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->d:Z

    if-nez v2, :cond_12

    iget-object v2, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v1, v2, :cond_12

    iput-object v4, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->f:Landroid/car/hardware/property/CarPropertyManager;

    :cond_12
    :goto_9
    return-void

    :pswitch_3
    iget-object v0, p0, Lw0/c1;->e:Ljava/lang/Object;

    check-cast v0, Lw0/f1;

    iget v1, p0, Lw0/c1;->b:I

    iget-boolean v2, p0, Lw0/c1;->c:Z

    iget-object v3, p0, Lw0/c1;->d:Landroid/car/Car;

    iget-boolean v4, v0, Lw0/f1;->j:Z

    if-nez v4, :cond_18

    iget v4, v0, Lw0/f1;->i:I

    if-ne v1, v4, :cond_18

    invoke-virtual {v0}, Lw0/f1;->c()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_c

    :cond_13
    const/4 v1, 0x0

    if-nez v2, :cond_14

    iput-object v1, v0, Lw0/f1;->h:Landroid/car/hardware/property/CarPropertyManager;

    goto :goto_c

    :cond_14
    const-string v2, "property"

    invoke-virtual {v3, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v3, :cond_15

    move-object v1, v2

    check-cast v1, Landroid/car/hardware/property/CarPropertyManager;

    :cond_15
    iput-object v1, v0, Lw0/f1;->h:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v1, :cond_16

    goto :goto_c

    :cond_16
    iget-object v2, v0, Lw0/f1;->k:[I

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_a
    if-ge v5, v3, :cond_17

    aget v6, v2, v5

    :try_start_6
    iget-object v7, v0, Lw0/f1;->m:Lw0/e1;

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v6, v8}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_b

    :catch_2
    move-exception v7

    const-string v8, "Callback "

    const-string v9, " indispon\u00edvel: "

    invoke-static {v8, v6, v9}, Landroidx/activity/result/b;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CameraOnDrive"

    invoke-static {v7, v6, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_17
    invoke-virtual {v0}, Lw0/f1;->e()V

    :cond_18
    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
