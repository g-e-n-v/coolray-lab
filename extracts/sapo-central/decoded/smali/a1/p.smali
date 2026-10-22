.class public final synthetic La1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/car/Car$CarServiceLifecycleListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/ContextWrapper;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContextWrapper;I)V
    .locals 0

    iput p2, p0, La1/p;->a:I

    iput-object p1, p0, La1/p;->b:Landroid/content/ContextWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLifecycleChanged(Landroid/car/Car;Z)V
    .locals 12

    iget v0, p0, La1/p;->a:I

    const/4 v1, 0x0

    const-string v2, "property"

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, La1/p;->b:Landroid/content/ContextWrapper;

    check-cast v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    sget-boolean v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->M:Z

    new-instance v1, Lw0/c0;

    const/4 v2, 0x7

    invoke-direct {v1, v0, p1, p2, v2}, Lw0/c0;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    iget-object p1, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->u:Landroid/os/Handler;

    if-eqz p1, :cond_1

    iget-object p2, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->v:La1/d;

    iget-boolean p2, p2, La1/d;->b:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lw0/ab;

    const/16 v2, 0xf

    invoke-direct {p2, v0, v2, v1}, Lw0/ab;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, La1/p;->b:Landroid/content/ContextWrapper;

    check-cast v0, Lcom/ex/auto/VhalProviderService;

    sget-boolean v1, Lcom/ex/auto/VhalProviderService;->l:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_2

    new-instance p2, Lw0/xg;

    invoke-virtual {p1, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/property/CarPropertyManager;

    invoke-direct {p2, p1}, Lw0/xg;-><init>(Landroid/car/hardware/property/CarPropertyManager;)V

    iput-object p2, v0, Lcom/ex/auto/VhalProviderService;->b:Lw0/xg;

    :cond_2
    return-void

    :pswitch_1
    iget-object v0, p0, La1/p;->b:Landroid/content/ContextWrapper;

    check-cast v0, Lcom/ex/auto/TempBattPillFloaterService;

    sget-object v3, Lcom/ex/auto/TempBattPillFloaterService;->v:Lcom/ex/auto/TempBattPillFloaterService;

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_4
    move-object p1, v1

    :goto_1
    instance-of p2, p1, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz p2, :cond_5

    move-object v1, p1

    check-cast v1, Landroid/car/hardware/property/CarPropertyManager;

    :cond_5
    iput-object v1, v0, Lcom/ex/auto/TempBattPillFloaterService;->g:Landroid/car/hardware/property/CarPropertyManager;

    :goto_2
    return-void

    :pswitch_2
    iget-object v0, p0, La1/p;->b:Landroid/content/ContextWrapper;

    check-cast v0, Lcom/ex/auto/PhoneSyncService;

    if-eqz p2, :cond_8

    sget-boolean p2, Lcom/ex/auto/PhoneSyncService;->z:Z

    invoke-virtual {p1, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    instance-of v2, p2, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v2, :cond_6

    check-cast p2, Landroid/car/hardware/property/CarPropertyManager;

    goto :goto_3

    :cond_6
    move-object p2, v1

    :goto_3
    iput-object p2, v0, Lcom/ex/auto/PhoneSyncService;->j:Landroid/car/hardware/property/CarPropertyManager;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Landroid/car/media/CarAudioManager;

    if-eqz p2, :cond_7

    move-object v1, p1

    check-cast v1, Landroid/car/media/CarAudioManager;

    :cond_7
    iput-object v1, v0, Lcom/ex/auto/PhoneSyncService;->k:Landroid/car/media/CarAudioManager;

    iget-object p1, v0, Lcom/ex/auto/PhoneSyncService;->j:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz p1, :cond_9

    new-instance p2, Lw0/xg;

    invoke-direct {p2, p1}, Lw0/xg;-><init>(Landroid/car/hardware/property/CarPropertyManager;)V

    iput-object p2, v0, Lcom/ex/auto/PhoneSyncService;->l:Lw0/xg;

    goto :goto_4

    :cond_8
    iput-object v1, v0, Lcom/ex/auto/PhoneSyncService;->j:Landroid/car/hardware/property/CarPropertyManager;

    iput-object v1, v0, Lcom/ex/auto/PhoneSyncService;->k:Landroid/car/media/CarAudioManager;

    iput-object v1, v0, Lcom/ex/auto/PhoneSyncService;->l:Lw0/xg;

    :cond_9
    :goto_4
    return-void

    :pswitch_3
    iget-object v0, p0, La1/p;->b:Landroid/content/ContextWrapper;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    :try_start_0
    iget-object v3, v0, Lcom/ex/auto/MainActivity;->z:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v4, Lw0/c1;

    invoke-direct {v4, v2, v0, p2, p1}, Lw0/c1;-><init>(ILcom/ex/auto/MainActivity;ZLandroid/car/Car;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    iput-object v1, v0, Lcom/ex/auto/MainActivity;->M:Landroid/car/hardware/property/CarPropertyManager;

    iput-object v1, v0, Lcom/ex/auto/MainActivity;->N:Landroid/car/media/CarAudioManager;

    :goto_5
    return-void

    :pswitch_4
    iget-object v0, p0, La1/p;->b:Landroid/content/ContextWrapper;

    move-object v2, v0

    check-cast v2, Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v0, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    :try_start_1
    iget-object v0, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lw0/c1;

    const/4 v6, 0x1

    move-object v5, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lw0/c1;-><init>(Ljava/lang/Object;IZLandroid/car/Car;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void

    :pswitch_5
    move-object v5, p1

    move v4, p2

    iget-object p1, p0, La1/p;->b:Landroid/content/ContextWrapper;

    move-object v3, p1

    check-cast v3, Lcom/geely/hvacstepperv2/TempStepperService;

    iget-boolean p1, v3, Lcom/geely/hvacstepperv2/TempStepperService;->s:Z

    if-eqz p1, :cond_a

    goto :goto_6

    :cond_a
    iget-object p1, v3, Lcom/geely/hvacstepperv2/TempStepperService;->q:La1/d;

    iget-object p1, p1, La1/d;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v6

    iget-object p1, v3, Lcom/geely/hvacstepperv2/TempStepperService;->p:Landroid/os/Handler;

    iget-object p2, v3, Lcom/geely/hvacstepperv2/TempStepperService;->q:La1/d;

    new-instance v2, La1/h;

    move-wide v10, v6

    move v6, v4

    move-object v7, v5

    move-wide v4, v10

    invoke-direct/range {v2 .. v7}, La1/h;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;JZLandroid/car/Car;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide v6, v4

    new-instance v4, La1/c;

    const/4 v9, 0x0

    move-object v5, p2

    move-object v8, v2

    invoke-direct/range {v4 .. v9}, La1/c;-><init>(Ljava/lang/Object;JLjava/lang/Runnable;I)V

    invoke-virtual {p1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
