.class public final synthetic Lw0/we;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/QuickAccessFloaterService;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/QuickAccessFloaterService;II)V
    .locals 0

    iput p3, p0, Lw0/we;->a:I

    iput-object p1, p0, Lw0/we;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iput p2, p0, Lw0/we;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lw0/we;->a:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const-string v3, "adjustFanSpeed: escrita falhou"

    const-string v4, "QuickAccessFloater"

    const v5, 0x15400500

    const-string v6, "manager"

    packed-switch v0, :pswitch_data_0

    iget-object v8, p0, Lw0/we;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iget v0, p0, Lw0/we;->c:I

    check-cast p1, Landroid/car/hardware/property/CarPropertyManager;

    sget v1, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-static {p1, v6}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Lcom/ex/auto/QuickAccessFloaterService;->L(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v1, v8, Lcom/ex/auto/QuickAccessFloaterService;->n0:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    move v9, v1

    goto :goto_2

    :cond_0
    invoke-static {p1, v5, v11}, Lw0/p1;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_1

    :goto_2
    add-int/2addr v0, v9

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lk1/a;->k(III)I

    move-result v10

    if-eq v10, v9, :cond_2

    invoke-static {p1, v5, v11, v10}, Lw0/p1;->l(Landroid/car/hardware/property/CarPropertyManager;III)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v8, Lcom/ex/auto/QuickAccessFloaterService;->n0:Ljava/lang/Integer;

    iget-object p1, v8, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v7, Lw0/ef;

    const/4 v12, 0x1

    invoke-direct/range {v7 .. v12}, Lw0/ef;-><init>(Lcom/ex/auto/QuickAccessFloaterService;IIII)V

    invoke-virtual {p1, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_3
    const-string p1, "adjustFanSpeed: nenhuma \u00e1rea respondeu HVAC_FAN_SPEED"

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lw0/we;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iget v1, p0, Lw0/we;->c:I

    check-cast p1, Landroid/car/hardware/property/CarPropertyManager;

    sget v2, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-static {p1, v6}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/ex/auto/QuickAccessFloaterService;->o0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eq v2, v1, :cond_4

    goto :goto_4

    :cond_4
    iget-object v1, v0, Lcom/ex/auto/QuickAccessFloaterService;->n0:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p1}, Lcom/ex/auto/QuickAccessFloaterService;->L(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v5, v0, v1}, Lw0/p1;->l(Landroid/car/hardware/property/CarPropertyManager;III)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_4
    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_1
    iget-object v0, p0, Lw0/we;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iget v3, p0, Lw0/we;->c:I

    check-cast p1, Landroid/car/hardware/property/CarPropertyManager;

    sget v4, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-static {p1, v6}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/ex/auto/QuickAccessFloaterService;->q0:Ljava/lang/Float;

    if-eqz v4, :cond_6

    :goto_5
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_6

    :cond_6
    invoke-static {p1}, Lw0/v7;->k(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_7

    goto :goto_5

    :cond_7
    const/high16 v4, 0x41b00000    # 22.0f

    :goto_6
    int-to-float v3, v3

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x41880000    # 17.0f

    const/high16 v6, 0x42000000    # 32.0f

    invoke-static {v3, v5, v6}, Lk1/a;->j(FFF)F

    move-result v3

    cmpg-float v5, v3, v4

    if-nez v5, :cond_8

    goto :goto_7

    :cond_8
    sget v5, Lw0/u;->d:I

    invoke-static {p1, v5, v2, v3}, Lw0/p1;->j(Landroid/car/hardware/property/CarPropertyManager;IIF)Z

    invoke-static {p1, v5, v1, v3}, Lw0/p1;->j(Landroid/car/hardware/property/CarPropertyManager;IIF)Z

    :goto_7
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, v0, Lcom/ex/auto/QuickAccessFloaterService;->q0:Ljava/lang/Float;

    iget-object p1, v0, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v1, Lw0/ff;

    invoke-direct {v1, v0, v4, v3}, Lw0/ff;-><init>(Lcom/ex/auto/QuickAccessFloaterService;FF)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_2
    iget-object v0, p0, Lw0/we;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iget v3, p0, Lw0/we;->c:I

    check-cast p1, Landroid/car/hardware/property/CarPropertyManager;

    sget v4, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-static {p1, v6}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/ex/auto/QuickAccessFloaterService;->p0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-eq v4, v3, :cond_9

    goto :goto_8

    :cond_9
    iget-object v0, v0, Lcom/ex/auto/QuickAccessFloaterService;->q0:Ljava/lang/Float;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sget v3, Lw0/u;->d:I

    invoke-static {p1, v3, v2, v0}, Lw0/p1;->j(Landroid/car/hardware/property/CarPropertyManager;IIF)Z

    invoke-static {p1, v3, v1, v0}, Lw0/p1;->j(Landroid/car/hardware/property/CarPropertyManager;IIF)Z

    :cond_a
    :goto_8
    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
