.class public final synthetic Lw0/i3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/a;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(ZLcom/ex/auto/CentralWatchdogService;ZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lw0/i3;->a:Z

    iput-object p2, p0, Lw0/i3;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean p3, p0, Lw0/i3;->c:Z

    iput-boolean p4, p0, Lw0/i3;->d:Z

    iput-boolean p5, p0, Lw0/i3;->e:Z

    iput-boolean p6, p0, Lw0/i3;->f:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lw0/i3;->a:Z

    iget-object v2, v0, Lw0/i3;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean v5, v0, Lw0/i3;->c:Z

    iget-boolean v7, v0, Lw0/i3;->d:Z

    iget-boolean v9, v0, Lw0/i3;->e:Z

    iget-boolean v11, v0, Lw0/i3;->f:Z

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-wide/16 v12, 0x7d0

    invoke-static {v12, v13}, Lcom/ex/auto/VhalProviderService;->b(J)Lw0/wg;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v10, 0x0

    if-eqz v3, :cond_2

    if-eqz v6, :cond_0

    iget-object v12, v6, Lw0/wg;->p:Ljava/lang/Float;

    if-nez v12, :cond_3

    :cond_0
    sget v12, Lw0/pg;->a:I

    iget-object v12, v2, Lcom/ex/auto/CentralWatchdogService;->k:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v12, :cond_1

    goto :goto_0

    :cond_1
    sget-object v13, Lw0/p1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v13, Lw0/pg;->a:I

    invoke-static {v12, v13, v10}, Lw0/p1;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v12}, Lw0/e8;->R(Ljava/lang/Integer;)Ljava/lang/Float;

    move-result-object v12

    goto :goto_1

    :cond_2
    :goto_0
    move-object v12, v8

    :cond_3
    :goto_1
    if-eqz v5, :cond_5

    if-eqz v6, :cond_4

    iget-object v13, v6, Lw0/wg;->d:Ljava/lang/Float;

    if-nez v13, :cond_6

    :cond_4
    sget v13, Lw0/pg;->a:I

    iget-object v13, v2, Lcom/ex/auto/CentralWatchdogService;->k:Landroid/car/hardware/property/CarPropertyManager;

    invoke-static {v13}, Lw0/pg;->l(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Float;

    move-result-object v13

    goto :goto_2

    :cond_5
    move-object v13, v8

    :cond_6
    :goto_2
    if-nez v7, :cond_8

    if-eqz v9, :cond_7

    goto :goto_4

    :cond_7
    :goto_3
    move-object v6, v12

    goto :goto_6

    :cond_8
    :goto_4
    if-eqz v6, :cond_a

    iget-object v6, v6, Lw0/wg;->f:Ljava/lang/Float;

    if-nez v6, :cond_9

    goto :goto_5

    :cond_9
    move-object v8, v6

    goto :goto_3

    :cond_a
    :goto_5
    sget v6, Lw0/pg;->a:I

    iget-object v6, v2, Lcom/ex/auto/CentralWatchdogService;->k:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v6, :cond_b

    goto :goto_3

    :cond_b
    const v8, 0x11400204

    invoke-static {v6, v8}, Lw0/pg;->k(Landroid/car/hardware/property/CarPropertyManager;I)Ljava/lang/Float;

    move-result-object v8

    if-nez v8, :cond_7

    const v8, 0x11600204

    invoke-static {v6, v8}, Lw0/pg;->k(Landroid/car/hardware/property/CarPropertyManager;I)Ljava/lang/Float;

    move-result-object v8

    goto :goto_3

    :goto_6
    new-instance v12, Li2/l;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    move-object v14, v6

    move-object v6, v13

    new-instance v13, Li2/j;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    if-eqz v11, :cond_e

    move/from16 v16, v1

    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_c

    :try_start_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v17

    if-eqz v17, :cond_c

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :catchall_0
    move v15, v10

    goto :goto_8

    :cond_c
    move/from16 v17, v10

    :goto_7
    move/from16 v15, v17

    :goto_8
    :try_start_2
    iput v15, v12, Li2/l;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_d

    :try_start_3
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_9

    :catchall_1
    :cond_d
    move v1, v10

    :goto_9
    :try_start_4
    iput-boolean v1, v13, Li2/j;->a:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_a

    :cond_e
    move/from16 v16, v1

    :catchall_2
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v15, "totalKmOn="

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " tripKmOn="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " odo="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v15, "KmIconProbe"

    invoke-static {v15, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Li2/m;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    if-eqz v9, :cond_11

    if-eqz v8, :cond_11

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v15

    cmpl-float v15, v15, v16

    if-lez v15, :cond_11

    sget-object v15, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v2}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v15

    const/high16 v10, -0x40800000    # -1.0f

    const-string v0, "trip_start_odometer_km"

    invoke-interface {v15, v0, v10}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v10

    cmpg-float v15, v10, v16

    move/from16 v16, v3

    const-string v3, "CentralWatchdog"

    if-gtz v15, :cond_f

    invoke-virtual {v2}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v15

    invoke-interface {v10, v0, v15}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "viagem: in\u00edcio gravado pela primeira vez em "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " km"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    invoke-static {v3, v0, v10}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v4, v1, Li2/m;->a:Ljava/lang/Object;

    goto :goto_b

    :cond_f
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v10, v0

    if-lez v0, :cond_10

    iput-object v4, v1, Li2/m;->a:Ljava/lang/Object;

    iget-boolean v0, v2, Lcom/ex/auto/CentralWatchdogService;->L2:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/ex/auto/CentralWatchdogService;->L2:Z

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "viagem: od\u00f4metro ("

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") < in\u00edcio guardado ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v4, v10

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") \u2014 leitura suspeita, mantendo o in\u00edcio"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_b

    :cond_10
    const/4 v4, 0x0

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v1, Li2/m;->a:Ljava/lang/Object;

    iput-boolean v4, v2, Lcom/ex/auto/CentralWatchdogService;->L2:Z

    goto :goto_b

    :cond_11
    move/from16 v16, v3

    :cond_12
    :goto_b
    iget-object v0, v2, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    move-object v10, v1

    new-instance v1, Lw0/j3;

    move-object v4, v14

    move/from16 v3, v16

    invoke-direct/range {v1 .. v13}, Lw0/j3;-><init>(Lcom/ex/auto/CentralWatchdogService;ZLjava/lang/Float;ZLjava/lang/Float;ZLjava/lang/Float;ZLi2/m;ZLi2/l;Li2/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0
.end method
