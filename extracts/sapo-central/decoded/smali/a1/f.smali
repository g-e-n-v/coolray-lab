.class public final synthetic La1/f;
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

    iput p2, p0, La1/f;->a:I

    iput-object p1, p0, La1/f;->b:Lcom/geely/hvacstepperv2/TempStepperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, La1/f;->a:I

    iget-object v1, p0, La1/f;->b:Lcom/geely/hvacstepperv2/TempStepperService;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/geely/hvacstepperv2/TempStepperService;->c0:[I

    invoke-virtual {v1}, Lcom/geely/hvacstepperv2/TempStepperService;->b()V

    return-void

    :pswitch_0
    sget-object v0, Lcom/geely/hvacstepperv2/TempStepperService;->c0:[I

    const/high16 v0, -0x41000000    # -0.5f

    invoke-virtual {v1, v0}, Lcom/geely/hvacstepperv2/TempStepperService;->l(F)V

    return-void

    :pswitch_1
    iget-object v0, v1, Lcom/geely/hvacstepperv2/TempStepperService;->E:La1/q;

    iget-object v2, v1, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v0, "CarService n\u00e3o dispon\u00edvel"

    invoke-virtual {v1, v3, v0}, Lcom/geely/hvacstepperv2/TempStepperService;->m(ILjava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    iget-boolean v2, v1, Lcom/geely/hvacstepperv2/TempStepperService;->t:Z

    const-string v4, "init"

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/geely/hvacstepperv2/TempStepperService;->n()V

    invoke-virtual {v1}, Lcom/geely/hvacstepperv2/TempStepperService;->p()V

    invoke-virtual {v1, v4}, Lcom/geely/hvacstepperv2/TempStepperService;->q(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Lcom/geely/hvacstepperv2/TempStepperService;->a()V

    iget-boolean v2, v1, Lcom/geely/hvacstepperv2/TempStepperService;->u:Z

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    iget v2, v1, Lcom/geely/hvacstepperv2/TempStepperService;->v:I

    if-ltz v2, :cond_2

    iput-boolean v3, v1, Lcom/geely/hvacstepperv2/TempStepperService;->D:Z

    iput-boolean v5, v1, Lcom/geely/hvacstepperv2/TempStepperService;->t:Z

    const/4 v2, -0x1

    iput v2, v1, Lcom/geely/hvacstepperv2/TempStepperService;->y:I

    iget-object v2, v1, Lcom/geely/hvacstepperv2/TempStepperService;->p:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, v1, Lcom/geely/hvacstepperv2/TempStepperService;->p:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "AUTO: ventoinha conforme sensor cabina"

    invoke-virtual {v1, v3, v0}, Lcom/geely/hvacstepperv2/TempStepperService;->m(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/geely/hvacstepperv2/TempStepperService;->c()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, v1, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    iget v2, v1, Lcom/geely/hvacstepperv2/TempStepperService;->l:I

    invoke-static {v0, v2, v5}, Lw0/p1;->h(Landroid/car/hardware/property/CarPropertyManager;IZ)Z

    move-result v0

    const-string v2, "HvacStepperV2"

    if-eqz v0, :cond_4

    const-string v6, "AUTO OEM: HVAC_AUTO_ON=true"

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/geely/hvacstepperv2/TempStepperService;->c()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v0, v1, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    invoke-static {v0, v3, v5}, Lw0/p1;->h(Landroid/car/hardware/property/CarPropertyManager;IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v6, "AUTO OEM: HVAC_AUTO_ON=true (area global)"

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    if-nez v0, :cond_6

    const-string v0, "AUTO indispon\u00edvel: HAL n\u00e3o aceitou HVAC_AUTO_ON em nenhuma \u00e1rea"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AUTO indispon\u00edvel (sensor e OEM n\u00e3o responderam)"

    invoke-virtual {v1, v5, v0}, Lcom/geely/hvacstepperv2/TempStepperService;->m(ILjava/lang/String;)V

    goto :goto_2

    :cond_6
    iput-boolean v5, v1, Lcom/geely/hvacstepperv2/TempStepperService;->D:Z

    iput-boolean v5, v1, Lcom/geely/hvacstepperv2/TempStepperService;->t:Z

    const-string v0, "AUTO: modo climatiza\u00e7\u00e3o do sistema"

    invoke-virtual {v1, v3, v0}, Lcom/geely/hvacstepperv2/TempStepperService;->m(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {v1}, Lcom/geely/hvacstepperv2/TempStepperService;->p()V

    invoke-virtual {v1, v4}, Lcom/geely/hvacstepperv2/TempStepperService;->q(Ljava/lang/String;)V

    :goto_2
    return-void

    :pswitch_2
    sget-object v0, Lcom/geely/hvacstepperv2/TempStepperService;->c0:[I

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {v1, v0}, Lcom/geely/hvacstepperv2/TempStepperService;->l(F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
