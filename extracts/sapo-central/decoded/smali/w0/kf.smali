.class public final synthetic Lw0/kf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/QuickAccessFloaterService;


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/QuickAccessFloaterService;)V
    .locals 0

    iput p1, p0, Lw0/kf;->a:I

    iput-object p2, p0, Lw0/kf;->b:Lcom/ex/auto/QuickAccessFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lw0/kf;->a:I

    const-string v1, "manager"

    const/4 v2, 0x0

    iget-object v3, p0, Lw0/kf;->b:Lcom/ex/auto/QuickAccessFloaterService;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/String;

    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    const-string v0, "cmd"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x3a98

    invoke-virtual {v3, v0, p1}, Lcom/ex/auto/QuickAccessFloaterService;->b(ILjava/lang/String;)Ljava/lang/String;

    :goto_0
    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_0
    check-cast p1, Landroid/car/hardware/property/CarPropertyManager;

    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    const-string v0, "QuickAccessFloater"

    invoke-static {p1, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget v1, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    sget-object v4, Lw0/p1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v4, "Integer"

    invoke-static {v4, v1, v2}, Lw0/p1;->m(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lw0/k1;

    invoke-direct {v5, p1, v1, v2}, Lw0/k1;-><init>(Ljava/lang/Object;II)V

    invoke-static {v4, v5}, Lw0/p1;->n(Ljava/lang/String;Lh2/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "sendPowerOff: MMI_POWER_ON_OFF_REQ=2 escrito com sucesso"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "escrita falhou ou estourou o prazo"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendPowerOff: falhou escrever a property ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "), tentando broadcast como fallback"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    const-string p1, "am broadcast -a com.flyme.auto.settings.action.CAR_POWER_OFF"

    const/16 v0, 0x1f40

    invoke-virtual {v3, v0, p1}, Lcom/ex/auto/QuickAccessFloaterService;->b(ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_2
    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_1
    check-cast p1, Landroid/car/hardware/property/CarPropertyManager;

    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-static {p1, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x11400400

    const v1, 0x11400401

    filled-new-array {v0, v1}, [I

    move-result-object v0

    move v1, v2

    :goto_3
    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ge v1, v5, :cond_3

    aget v5, v0, v1

    const-wide/16 v6, 0x320

    :try_start_2
    invoke-static {p1, v5, v2, v6, v7}, Lw0/p1;->d(Landroid/car/hardware/property/CarPropertyManager;IIJ)Landroid/car/hardware/CarPropertyValue;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/car/hardware/CarPropertyValue;->getStatus()I

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_1

    move-object v4, v5

    check-cast v4, Ljava/lang/Integer;

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_2

    goto :goto_4

    :catchall_0
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    iget-object p1, v3, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v0, Lw0/ab;

    const/16 v1, 0x9

    invoke-direct {v0, v3, v1, v4}, Lw0/ab;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
