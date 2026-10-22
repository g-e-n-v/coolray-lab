.class public final synthetic La1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/geely/hvacstepperv2/TempStepperService;

.field public final synthetic b:J

.field public final synthetic c:Z

.field public final synthetic d:Landroid/car/Car;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvacstepperv2/TempStepperService;JZLandroid/car/Car;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La1/h;->a:Lcom/geely/hvacstepperv2/TempStepperService;

    iput-wide p2, p0, La1/h;->b:J

    iput-boolean p4, p0, La1/h;->c:Z

    iput-object p5, p0, La1/h;->d:Landroid/car/Car;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, La1/h;->d:Landroid/car/Car;

    sget-object v1, Lcom/geely/hvacstepperv2/TempStepperService;->c0:[I

    iget-object v1, p0, La1/h;->a:Lcom/geely/hvacstepperv2/TempStepperService;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/geely/hvacstepperv2/TempStepperService;->F:Z

    iget-object v3, v1, Lcom/geely/hvacstepperv2/TempStepperService;->p:Landroid/os/Handler;

    iget-object v4, v1, Lcom/geely/hvacstepperv2/TempStepperService;->G:La1/q;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v3, "Polling parado"

    const-string v5, "HvacStepperV2"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/geely/hvacstepperv2/TempStepperService;->p:Landroid/os/Handler;

    iget-object v6, v1, Lcom/geely/hvacstepperv2/TempStepperService;->E:La1/q;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lcom/geely/hvacstepperv2/TempStepperService;->a()V

    invoke-virtual {v1}, Lcom/geely/hvacstepperv2/TempStepperService;->o()V

    iget-object v3, v1, Lcom/geely/hvacstepperv2/TempStepperService;->q:La1/d;

    iget-wide v7, p0, La1/h;->b:J

    invoke-virtual {v3, v7, v8}, La1/d;->a(J)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    iput-wide v7, v1, Lcom/geely/hvacstepperv2/TempStepperService;->r:J

    const/4 v3, 0x0

    iget-boolean v7, p0, La1/h;->c:Z

    if-eqz v7, :cond_9

    :try_start_0
    const-string v7, "property"

    invoke-virtual {v0, v7}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/property/CarPropertyManager;

    iput-object v0, v1, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v1}, Lcom/geely/hvacstepperv2/TempStepperService;->d()V

    invoke-virtual {v1}, Lcom/geely/hvacstepperv2/TempStepperService;->h()V

    invoke-virtual {v1}, Lcom/geely/hvacstepperv2/TempStepperService;->c()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v0, v1, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v7, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/geely/hvacstepperv2/TempStepperService;->c()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v8, v1, Lcom/geely/hvacstepperv2/TempStepperService;->r:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v0, La1/u;

    invoke-direct {v0, v1, v8, v9, v2}, La1/u;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;JI)V

    iput-object v0, v1, Lcom/geely/hvacstepperv2/TempStepperService;->Y:La1/u;

    iget-object v2, v1, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    const v8, 0x15600503

    invoke-virtual {v2, v0, v8, v7}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "registerCallback falhou: "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v5}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iput-object v3, v1, Lcom/geely/hvacstepperv2/TempStepperService;->Y:La1/u;

    :cond_3
    :goto_0
    iget-object v0, v1, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lcom/geely/hvacstepperv2/TempStepperService;->c()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget-wide v8, v1, Lcom/geely/hvacstepperv2/TempStepperService;->r:J

    new-instance v0, La1/u;

    invoke-direct {v0, v1, v8, v9, v2}, La1/u;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;JI)V

    iput-object v0, v1, Lcom/geely/hvacstepperv2/TempStepperService;->Z:La1/u;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iget-object v3, v1, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    const v8, 0x15400500

    invoke-virtual {v3, v0, v8, v7}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "registerCallback ventoinha falhou: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v5}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_5
    :goto_1
    invoke-virtual {v1}, Lcom/geely/hvacstepperv2/TempStepperService;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, v1, Lcom/geely/hvacstepperv2/TempStepperService;->F:Z

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    iput-boolean v2, v1, Lcom/geely/hvacstepperv2/TempStepperService;->F:Z

    iget-object v0, v1, Lcom/geely/hvacstepperv2/TempStepperService;->p:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "Polling iniciado (intervalo=3000ms)"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    invoke-virtual {v1}, Lcom/geely/hvacstepperv2/TempStepperService;->g()V

    invoke-virtual {v1}, Lcom/geely/hvacstepperv2/TempStepperService;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, v1, Lcom/geely/hvacstepperv2/TempStepperService;->t:Z

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/geely/hvacstepperv2/TempStepperService;->p:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :catch_2
    move-exception v0

    goto :goto_4

    :cond_8
    :goto_3
    return-void

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Erro ao inicializar CarService: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    iput-object v3, v1, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    const-string v0, "CarService desconectado \u2014 opera\u00e7\u00e3o offline"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
