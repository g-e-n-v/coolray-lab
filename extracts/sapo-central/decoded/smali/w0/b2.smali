.class public final synthetic Lw0/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/car/Car$CarServiceLifecycleListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;I)V
    .locals 0

    iput p2, p0, Lw0/b2;->a:I

    iput-object p1, p0, Lw0/b2;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLifecycleChanged(Landroid/car/Car;Z)V
    .locals 11

    iget v0, p0, Lw0/b2;->a:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "CentralWatchdog"

    const-string v6, "property"

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/b2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    if-nez p2, :cond_0

    const-string p1, "windowDriver: Car desconectado (ready=false)"

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->D0()V

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v6}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v7

    :goto_0
    instance-of p2, p1, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz p2, :cond_2

    check-cast p1, Landroid/car/hardware/property/CarPropertyManager;

    goto :goto_1

    :cond_2
    move-object p1, v7

    :goto_1
    if-nez p1, :cond_3

    const-string p1, "windowDriver: getCarManager(PROPERTY_SERVICE) devolveu null"

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->D0()V

    goto :goto_2

    :cond_3
    iget-object p2, v0, Lcom/ex/auto/CentralWatchdogService;->n:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    iput-object v7, v0, Lcom/ex/auto/CentralWatchdogService;->o:Ljava/lang/Integer;

    :try_start_0
    iget-object p2, v0, Lcom/ex/auto/CentralWatchdogService;->u2:Lw0/b3;

    const v1, 0x16400b00

    invoke-virtual {p1, p2, v1, v4}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    iput-object p1, v0, Lcom/ex/auto/CentralWatchdogService;->m:Landroid/car/hardware/property/CarPropertyManager;

    iput v3, v0, Lcom/ex/auto/CentralWatchdogService;->t2:I

    const-string p1, "windowDriver: registerCallback(DOOR_POS) OK \u2014 aguardando eventos de porta"

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "windowDriver: registerCallback DOOR_POS falhou: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->D0()V

    :goto_2
    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/b2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    if-nez p2, :cond_4

    const-string p1, "rearCamTurnSignal: Car desconectado (ready=false)"

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->A0()V

    goto :goto_4

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1, v6}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    :cond_5
    move-object p1, v7

    :goto_3
    instance-of p2, p1, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz p2, :cond_6

    move-object v7, p1

    check-cast v7, Landroid/car/hardware/property/CarPropertyManager;

    :cond_6
    if-nez v7, :cond_7

    const-string p1, "rearCamTurnSignal: getCarManager(PROPERTY_SERVICE) devolveu null"

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->A0()V

    goto :goto_4

    :cond_7
    :try_start_1
    iget-object p1, v0, Lcom/ex/auto/CentralWatchdogService;->A2:Lw0/b3;

    sget p2, Lw0/u;->j:I

    invoke-virtual {v7, p1, p2, v4}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    iput-object v7, v0, Lcom/ex/auto/CentralWatchdogService;->H:Landroid/car/hardware/property/CarPropertyManager;

    iput v3, v0, Lcom/ex/auto/CentralWatchdogService;->I:I

    const-string p1, "rearCamTurnSignal: registerCallback OK \u2014 aguardando seta"

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "rearCamTurnSignal: registerCallback falhou: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->A0()V

    :goto_4
    return-void

    :pswitch_1
    iget-object v0, p0, Lw0/b2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v8, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    if-nez p2, :cond_8

    const-string p1, "Car desconectado"

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/ex/auto/CentralWatchdogService;->T:J

    goto/16 :goto_8

    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual {p1, v6}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_5

    :cond_9
    move-object p1, v7

    :goto_5
    instance-of p2, p1, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz p2, :cond_a

    move-object v7, p1

    check-cast v7, Landroid/car/hardware/property/CarPropertyManager;

    :cond_a
    iput-object v7, v0, Lcom/ex/auto/CentralWatchdogService;->i:Landroid/car/hardware/property/CarPropertyManager;

    iget-object p1, v0, Lcom/ex/auto/CentralWatchdogService;->i:Landroid/car/hardware/property/CarPropertyManager;

    if-nez p1, :cond_b

    const-string p1, "CarPropertyManager null"

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_b
    iget-wide p1, v0, Lcom/ex/auto/CentralWatchdogService;->T:J

    cmp-long p1, p1, v1

    if-eqz p1, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v6, v0, Lcom/ex/auto/CentralWatchdogService;->T:J

    sub-long/2addr p1, v6

    const/16 v6, 0x3e8

    int-to-long v6, v6

    div-long/2addr p1, v6

    iput-wide v1, v0, Lcom/ex/auto/CentralWatchdogService;->T:J

    sget-object v1, Lw0/ae;->a:Lw0/ae;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CarService voltou ap\u00f3s "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "s fora \u2014 tratando como despertar"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1, v3}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance p2, Lw0/x1;

    const/16 v1, 0x1b

    invoke-direct {p2, v0, v1}, Lw0/x1;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    :try_start_2
    iget-object p1, v0, Lcom/ex/auto/CentralWatchdogService;->i:Landroid/car/hardware/property/CarPropertyManager;

    invoke-static {p1}, Li2/g;->b(Ljava/lang/Object;)V

    iget-object p2, v0, Lcom/ex/auto/CentralWatchdogService;->C2:Lw0/b3;

    const v1, 0x11400400

    invoke-virtual {p1, p2, v1, v4}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "registerCallback GEAR_SELECTION falhou: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, v5}, Landroidx/activity/result/b;->s(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_6
    :try_start_3
    iget-object p1, v0, Lcom/ex/auto/CentralWatchdogService;->i:Landroid/car/hardware/property/CarPropertyManager;

    invoke-static {p1}, Li2/g;->b(Ljava/lang/Object;)V

    iget-object p2, v0, Lcom/ex/auto/CentralWatchdogService;->C2:Lw0/b3;

    const v1, 0x11400401

    invoke-virtual {p1, p2, v1, v4}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "registerCallback CURRENT_GEAR falhou: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, v5}, Landroidx/activity/result/b;->s(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_7
    const-string p1, "boot"

    invoke-virtual {v0, p1}, Lcom/ex/auto/CentralWatchdogService;->D(Ljava/lang/String;)V

    iput v3, v0, Lcom/ex/auto/CentralWatchdogService;->M:I

    iget-object p1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-object p2, v0, Lcom/ex/auto/CentralWatchdogService;->E2:Lw0/a3;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-object p2, v0, Lcom/ex/auto/CentralWatchdogService;->E2:Lw0/a3;

    iget-wide v0, v0, Lcom/ex/auto/CentralWatchdogService;->N:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p1, "DriveRegen watchdog iniciado"

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    return-void

    :pswitch_2
    iget-object v0, p0, Lw0/b2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    const-string v1, "recircGuard: registerCallback OK (hvacPower="

    if-nez p2, :cond_d

    const-string p1, "recircGuard: Car desconectado (ready=false)"

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->B0()V

    goto/16 :goto_a

    :cond_d
    if-eqz p1, :cond_e

    invoke-virtual {p1, v6}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_9

    :cond_e
    move-object p1, v7

    :goto_9
    instance-of p2, p1, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz p2, :cond_f

    move-object v7, p1

    check-cast v7, Landroid/car/hardware/property/CarPropertyManager;

    :cond_f
    if-nez v7, :cond_10

    const-string p1, "recircGuard: getCarManager(PROPERTY_SERVICE) devolveu null"

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->B0()V

    goto/16 :goto_a

    :cond_10
    const/4 p1, 0x5

    const p2, 0x15200510

    :try_start_4
    invoke-static {v7, p2, p1}, Lw0/p1;->a(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/ex/auto/CentralWatchdogService;->w:Ljava/lang/Boolean;

    invoke-static {v7}, Lw0/v7;->f(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/ex/auto/CentralWatchdogService;->x:Ljava/lang/Boolean;

    invoke-static {v7}, Lw0/v7;->n(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/ex/auto/CentralWatchdogService;->y:Ljava/lang/Boolean;

    invoke-static {v7}, Lw0/v7;->i(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/ex/auto/CentralWatchdogService;->z:Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/ex/auto/CentralWatchdogService;->y2:Lw0/b3;

    invoke-virtual {v7, p1, p2, v4}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    iget-object p1, v0, Lcom/ex/auto/CentralWatchdogService;->y2:Lw0/b3;

    const p2, 0x15200507

    invoke-virtual {v7, p1, p2, v4}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    iget-object p1, v0, Lcom/ex/auto/CentralWatchdogService;->y2:Lw0/b3;

    const p2, 0x10200c00

    invoke-virtual {v7, p1, p2, v4}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    iput-object v7, v0, Lcom/ex/auto/CentralWatchdogService;->u:Landroid/car/hardware/property/CarPropertyManager;

    iput v3, v0, Lcom/ex/auto/CentralWatchdogService;->v:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v0, Lcom/ex/auto/CentralWatchdogService;->w:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", frontMaxDefrost="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/ex/auto/CentralWatchdogService;->x:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", windshieldHeat="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/ex/auto/CentralWatchdogService;->y:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", recirc="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/ex/auto/CentralWatchdogService;->z:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-object p2, v0, Lcom/ex/auto/CentralWatchdogService;->x2:Lw0/a3;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_a

    :catchall_4
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "recircGuard: registerCallback falhou: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->B0()V

    :goto_a
    return-void

    :pswitch_3
    iget-object v0, p0, Lw0/b2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v8, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    if-nez p2, :cond_11

    const-string p1, "swcModes: Car desconectado (ready=false)"

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->C0()V

    goto/16 :goto_e

    :cond_11
    if-eqz p1, :cond_12

    invoke-virtual {p1, v6}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_b

    :cond_12
    move-object p1, v7

    :goto_b
    instance-of p2, p1, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz p2, :cond_13

    move-object v7, p1

    check-cast v7, Landroid/car/hardware/property/CarPropertyManager;

    :cond_13
    if-nez v7, :cond_14

    const-string p1, "swcModes: getCarManager(PROPERTY_SERVICE) null"

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->C0()V

    goto :goto_e

    :cond_14
    sget-object p1, Lw0/rg;->b:[I

    array-length p2, p1

    move v6, v3

    move v8, v6

    :goto_c
    if-ge v6, p2, :cond_15

    aget v9, p1, v6

    :try_start_5
    iget-object v10, v0, Lcom/ex/auto/CentralWatchdogService;->w2:Lw0/k3;

    invoke-virtual {v7, v10, v9, v4}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :catchall_5
    move-exception v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    const-string v10, "swcModes: registro 0x%x ignorado (%s)"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_15
    if-nez v8, :cond_16

    const-string p1, "swcModes: nenhum prop registrou"

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->C0()V

    goto :goto_e

    :cond_16
    iput-object v7, v0, Lcom/ex/auto/CentralWatchdogService;->r:Landroid/car/hardware/property/CarPropertyManager;

    iput v3, v0, Lcom/ex/auto/CentralWatchdogService;->s:I

    sget p1, Lw0/rg;->a:I

    iget-object p1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    const-string p2, "h"

    invoke-static {p1, p2}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lw0/rg;->d:Landroid/os/Handler;

    sput-wide v1, Lw0/rg;->e:J

    const/4 p1, 0x1

    sput-boolean p1, Lw0/rg;->c:Z

    const-string p1, "SwcModeCtrl"

    const-string p2, "start: observando mic pra cancelar o Gemini no segurar"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "swcModes: registerCallback OK ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " props) \u2014 aguardando bot\u00f5es do volante"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    return-void

    :pswitch_4
    iget-object v0, p0, Lw0/b2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    if-nez p2, :cond_17

    goto :goto_10

    :cond_17
    if-eqz p1, :cond_18

    invoke-virtual {p1, v6}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_f

    :cond_18
    move-object p1, v7

    :goto_f
    instance-of p2, p1, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz p2, :cond_19

    move-object v7, p1

    check-cast v7, Landroid/car/hardware/property/CarPropertyManager;

    :cond_19
    iput-object v7, v0, Lcom/ex/auto/CentralWatchdogService;->k:Landroid/car/hardware/property/CarPropertyManager;

    :goto_10
    return-void

    :pswitch_5
    iget-object v0, p0, Lw0/b2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    if-nez p2, :cond_1a

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->y0()V

    goto :goto_12

    :cond_1a
    if-eqz p1, :cond_1b

    invoke-virtual {p1, v6}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_11

    :cond_1b
    move-object p1, v7

    :goto_11
    instance-of p2, p1, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz p2, :cond_1c

    move-object v7, p1

    check-cast v7, Landroid/car/hardware/property/CarPropertyManager;

    :cond_1c
    if-nez v7, :cond_1d

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->y0()V

    goto :goto_12

    :cond_1d
    :try_start_6
    iput-boolean v3, v0, Lcom/ex/auto/CentralWatchdogService;->E:Z

    iget-object p1, v0, Lcom/ex/auto/CentralWatchdogService;->F2:Lw0/b3;

    sget p2, Lw0/u;->a:I

    invoke-virtual {v7, p1, p2, v4}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    iput-object v7, v0, Lcom/ex/auto/CentralWatchdogService;->C:Landroid/car/hardware/property/CarPropertyManager;

    iput v3, v0, Lcom/ex/auto/CentralWatchdogService;->D:I

    const-string p1, "aebObserver: registerCallback(AEB) OK"

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_12

    :catchall_6
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "aebObserver: registerCallback falhou: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->y0()V

    :goto_12
    return-void

    nop

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
