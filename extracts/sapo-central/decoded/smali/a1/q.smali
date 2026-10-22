.class public final La1/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/geely/hvacstepperv2/TempStepperService;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvacstepperv2/TempStepperService;I)V
    .locals 0

    iput p2, p0, La1/q;->a:I

    iput-object p1, p0, La1/q;->b:Lcom/geely/hvacstepperv2/TempStepperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, La1/q;->a:I

    const v1, 0x15600502

    const-string v2, "HvacStepperV2"

    const/4 v3, 0x1

    iget-object v4, p0, La1/q;->b:Lcom/geely/hvacstepperv2/TempStepperService;

    packed-switch v0, :pswitch_data_0

    iget-object v0, v4, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, v4, Lcom/geely/hvacstepperv2/TempStepperService;->c:Landroid/view/WindowManager;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v3, v4, Lcom/geely/hvacstepperv2/TempStepperService;->N:Z

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v4, Lcom/geely/hvacstepperv2/TempStepperService;->H:I

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, v4, Lcom/geely/hvacstepperv2/TempStepperService;->I:I

    iget v0, v4, Lcom/geely/hvacstepperv2/TempStepperService;->L:F

    iput v0, v4, Lcom/geely/hvacstepperv2/TempStepperService;->J:F

    iget v0, v4, Lcom/geely/hvacstepperv2/TempStepperService;->M:F

    iput v0, v4, Lcom/geely/hvacstepperv2/TempStepperService;->K:F

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/geely/hvacstepperv2/TempStepperService;->c0:[I

    invoke-virtual {v4}, Lcom/geely/hvacstepperv2/TempStepperService;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, v4, Lcom/geely/hvacstepperv2/TempStepperService;->F:Z

    if-nez v0, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object v0, v4, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_d

    invoke-virtual {v4}, Lcom/geely/hvacstepperv2/TempStepperService;->c()Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_4

    :cond_3
    iget v0, v4, Lcom/geely/hvacstepperv2/TempStepperService;->z:F

    iget-boolean v5, v4, Lcom/geely/hvacstepperv2/TempStepperService;->u:Z

    if-eqz v5, :cond_4

    iget v5, v4, Lcom/geely/hvacstepperv2/TempStepperService;->v:I

    if-ltz v5, :cond_4

    :try_start_0
    iget-object v6, v4, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v6, v1, v5}, Landroid/car/hardware/property/CarPropertyManager;->getFloatProperty(II)F

    move-result v1

    iput v1, v4, Lcom/geely/hvacstepperv2/TempStepperService;->z:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    invoke-virtual {v4}, Lcom/geely/hvacstepperv2/TempStepperService;->c()Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_4

    :cond_5
    const/4 v1, 0x0

    :try_start_1
    iget-object v5, v4, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    iget v6, v4, Lcom/geely/hvacstepperv2/TempStepperService;->l:I

    const v7, 0x15600503

    invoke-virtual {v5, v7, v6}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/Float;

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget v7, v4, Lcom/geely/hvacstepperv2/TempStepperService;->a:F

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_6

    iget v7, v4, Lcom/geely/hvacstepperv2/TempStepperService;->b:F

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_6

    iget v7, v4, Lcom/geely/hvacstepperv2/TempStepperService;->m:F

    sub-float v7, v6, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3c23d70a    # 0.01f

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_6

    const-string v7, "Poll UI: %.1f\u00b0C \u2192 %.1f\u00b0C (HAL=%.1f area=0x%x)"

    iget v8, v4, Lcom/geely/hvacstepperv2/TempStepperService;->m:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iget v9, v4, Lcom/geely/hvacstepperv2/TempStepperService;->l:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v8, v5, v5, v9}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, v4, Lcom/geely/hvacstepperv2/TempStepperService;->m:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v3

    goto :goto_1

    :catch_1
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "pollCurrentTemp falhou: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v2, v1

    :goto_1
    iget-boolean v5, v4, Lcom/geely/hvacstepperv2/TempStepperService;->u:Z

    const v6, 0x3d4ccccd    # 0.05f

    if-eqz v5, :cond_8

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    iget v7, v4, Lcom/geely/hvacstepperv2/TempStepperService;->z:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-ne v5, v7, :cond_7

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_8

    iget v5, v4, Lcom/geely/hvacstepperv2/TempStepperService;->z:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_8

    iget v5, v4, Lcom/geely/hvacstepperv2/TempStepperService;->z:F

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_8

    :cond_7
    move v0, v3

    goto :goto_2

    :cond_8
    move v0, v1

    :goto_2
    iget v5, v4, Lcom/geely/hvacstepperv2/TempStepperService;->C:F

    iget-boolean v7, v4, Lcom/geely/hvacstepperv2/TempStepperService;->A:Z

    if-eqz v7, :cond_9

    iget v7, v4, Lcom/geely/hvacstepperv2/TempStepperService;->B:I

    if-ltz v7, :cond_9

    invoke-virtual {v4, v7}, Lcom/geely/hvacstepperv2/TempStepperService;->i(I)Ljava/lang/Float;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iput v7, v4, Lcom/geely/hvacstepperv2/TempStepperService;->C:F

    :cond_9
    iget-boolean v7, v4, Lcom/geely/hvacstepperv2/TempStepperService;->A:Z

    if-eqz v7, :cond_a

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    iget v8, v4, Lcom/geely/hvacstepperv2/TempStepperService;->C:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-ne v7, v8, :cond_b

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_a

    iget v7, v4, Lcom/geely/hvacstepperv2/TempStepperService;->C:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_a

    iget v7, v4, Lcom/geely/hvacstepperv2/TempStepperService;->C:F

    sub-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_a

    goto :goto_3

    :cond_a
    move v3, v1

    :cond_b
    :goto_3
    if-nez v2, :cond_c

    if-nez v0, :cond_c

    if-eqz v3, :cond_d

    :cond_c
    const-string v0, "poll"

    invoke-virtual {v4, v0}, Lcom/geely/hvacstepperv2/TempStepperService;->q(Ljava/lang/String;)V

    :cond_d
    :goto_4
    invoke-virtual {v4}, Lcom/geely/hvacstepperv2/TempStepperService;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, v4, Lcom/geely/hvacstepperv2/TempStepperService;->F:Z

    if-eqz v0, :cond_e

    iget-object v0, v4, Lcom/geely/hvacstepperv2/TempStepperService;->p:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_e
    :goto_5
    return-void

    :pswitch_1
    sget-object v0, Lcom/geely/hvacstepperv2/TempStepperService;->c0:[I

    invoke-virtual {v4}, Lcom/geely/hvacstepperv2/TempStepperService;->c()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-boolean v0, v4, Lcom/geely/hvacstepperv2/TempStepperService;->t:Z

    if-nez v0, :cond_f

    goto/16 :goto_9

    :cond_f
    invoke-virtual {v4}, Lcom/geely/hvacstepperv2/TempStepperService;->c()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, v4, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_1c

    iget-boolean v5, v4, Lcom/geely/hvacstepperv2/TempStepperService;->t:Z

    if-eqz v5, :cond_1c

    iget-boolean v5, v4, Lcom/geely/hvacstepperv2/TempStepperService;->D:Z

    if-eqz v5, :cond_10

    goto/16 :goto_8

    :cond_10
    iget-boolean v5, v4, Lcom/geely/hvacstepperv2/TempStepperService;->U:Z

    if-eqz v5, :cond_11

    goto/16 :goto_8

    :cond_11
    iget-boolean v5, v4, Lcom/geely/hvacstepperv2/TempStepperService;->u:Z

    if-eqz v5, :cond_1c

    iget v5, v4, Lcom/geely/hvacstepperv2/TempStepperService;->v:I

    if-gez v5, :cond_12

    goto/16 :goto_8

    :cond_12
    :try_start_2
    invoke-virtual {v0, v1, v5}, Landroid/car/hardware/property/CarPropertyManager;->getFloatProperty(II)F

    move-result v0

    iput v0, v4, Lcom/geely/hvacstepperv2/TempStepperService;->z:F

    iget v1, v4, Lcom/geely/hvacstepperv2/TempStepperService;->m:F

    sub-float v5, v1, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, v4, Lcom/geely/hvacstepperv2/TempStepperService;->x:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    const v7, 0x3eb33333    # 0.35f

    cmpg-float v7, v5, v7

    if-gtz v7, :cond_13

    goto :goto_6

    :cond_13
    const v3, 0x3f333333    # 0.7f

    cmpg-float v3, v5, v3

    if-gtz v3, :cond_14

    const/4 v3, 0x2

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_6

    :cond_14
    const v3, 0x3f99999a    # 1.2f

    cmpg-float v3, v5, v3

    if-gtz v3, :cond_15

    const/4 v3, 0x3

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_6

    :cond_15
    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v3, v5, v3

    if-gtz v3, :cond_16

    const/4 v3, 0x4

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_6

    :cond_16
    const/high16 v3, 0x40600000    # 3.5f

    cmpg-float v3, v5, v3

    if-gtz v3, :cond_17

    const/4 v3, 0x5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_6

    :cond_17
    const/high16 v3, 0x40a00000    # 5.0f

    cmpg-float v3, v5, v3

    if-gtz v3, :cond_18

    const/4 v3, 0x6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_6

    :cond_18
    move v3, v6

    :goto_6
    invoke-virtual {v4}, Lcom/geely/hvacstepperv2/TempStepperService;->k()I

    move-result v6

    invoke-virtual {v4}, Lcom/geely/hvacstepperv2/TempStepperService;->c()Z

    move-result v7

    if-nez v7, :cond_19

    goto :goto_8

    :cond_19
    iget v7, v4, Lcom/geely/hvacstepperv2/TempStepperService;->y:I

    if-eq v3, v7, :cond_1b

    iget-object v7, v4, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    const v8, 0x15400500

    invoke-static {v7, v8, v6, v3}, Lw0/p1;->k(Landroid/car/hardware/property/CarPropertyManager;III)Z

    move-result v7

    if-nez v7, :cond_1a

    const-string v0, "AUTO tick: escrita da ventoinha falhou"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_7

    :cond_1a
    iput v3, v4, Lcom/geely/hvacstepperv2/TempStepperService;->y:I

    const-string v7, "AUTO: cabina=%.1f\u00b0C alvo=%.1f\u00b0C err=%.1f \u2192 ventoinha=%d (area=0x%x)"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v0, v1, v5, v3, v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const-string v0, "auto"

    invoke-virtual {v4, v0}, Lcom/geely/hvacstepperv2/TempStepperService;->q(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "AUTO tick: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1c
    :goto_8
    invoke-virtual {v4}, Lcom/geely/hvacstepperv2/TempStepperService;->c()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-boolean v0, v4, Lcom/geely/hvacstepperv2/TempStepperService;->t:Z

    if-eqz v0, :cond_1d

    iget-object v0, v4, Lcom/geely/hvacstepperv2/TempStepperService;->p:Landroid/os/Handler;

    const-wide/16 v1, 0x9c4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1d
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
