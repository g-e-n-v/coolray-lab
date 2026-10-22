.class public final Lw0/yg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/TempBattPillFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/TempBattPillFloaterService;I)V
    .locals 0

    iput p2, p0, Lw0/yg;->a:I

    iput-object p1, p0, Lw0/yg;->b:Lcom/ex/auto/TempBattPillFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lw0/yg;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/yg;->b:Lcom/ex/auto/TempBattPillFloaterService;

    iget-object v0, v0, Lcom/ex/auto/TempBattPillFloaterService;->g:Landroid/car/hardware/property/CarPropertyManager;

    sget-object v1, Lw0/n3;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lw0/yg;->b:Lcom/ex/auto/TempBattPillFloaterService;

    new-instance v2, Lw0/h0;

    const/4 v3, 0x6

    invoke-direct {v2, v0, v1, p0, v3}, Lw0/h0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v2}, Lw0/n3;->a(Lh2/a;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/yg;->b:Lcom/ex/auto/TempBattPillFloaterService;

    iget-object v1, v0, Lcom/ex/auto/TempBattPillFloaterService;->l:Lw0/k;

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v2, v1, Lw0/k;->a:Ljava/util/ArrayList;

    iget v3, v0, Lcom/ex/auto/TempBattPillFloaterService;->m:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    if-lt v3, v4, :cond_2

    iget-boolean v1, v1, Lw0/k;->b:Z

    if-eqz v1, :cond_1

    iput v5, v0, Lcom/ex/auto/TempBattPillFloaterService;->m:I

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/ex/auto/TempBattPillFloaterService;->e()V

    goto/16 :goto_6

    :cond_2
    :goto_0
    iget v1, v0, Lcom/ex/auto/TempBattPillFloaterService;->m:I

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw0/l;

    iget v2, v0, Lcom/ex/auto/TempBattPillFloaterService;->m:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/ex/auto/TempBattPillFloaterService;->m:I

    iget-object v2, v1, Lw0/l;->a:Ljava/lang/String;

    iget-wide v6, v1, Lw0/l;->b:D

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string v1, "wait"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_4

    :cond_3
    iget-object v0, v0, Lcom/ex/auto/TempBattPillFloaterService;->e:Landroid/os/Handler;

    const/16 v1, 0x3e8

    int-to-double v1, v1

    mul-double/2addr v6, v1

    double-to-long v1, v6

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_6

    :sswitch_1
    const-string v1, "temp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    double-to-float v1, v6

    iget-object v2, v0, Lcom/ex/auto/TempBattPillFloaterService;->g:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    :try_start_0
    sget v4, Lw0/u;->d:I

    invoke-virtual {v2, v4, v3, v1}, Landroid/car/hardware/property/CarPropertyManager;->setFloatProperty(IIF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    sget v3, Lw0/u;->d:I

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4, v1}, Landroid/car/hardware/property/CarPropertyManager;->setFloatProperty(IIF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :goto_1
    iget-object v0, v0, Lcom/ex/auto/TempBattPillFloaterService;->e:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :sswitch_2
    const-string v1, "fan"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    double-to-int v1, v6

    iget-object v2, v0, Lcom/ex/auto/TempBattPillFloaterService;->g:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    iget-object v3, v0, Lcom/ex/auto/TempBattPillFloaterService;->j:[I

    array-length v4, v3

    :goto_2
    if-ge v5, v4, :cond_8

    aget v6, v3, v5

    const v7, 0x15400500

    :try_start_2
    invoke-virtual {v2, v7, v6, v1}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    iget-object v0, v0, Lcom/ex/auto/TempBattPillFloaterService;->e:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :sswitch_3
    const-string v1, "recirc"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_4
    iget-object v0, v0, Lcom/ex/auto/TempBattPillFloaterService;->e:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_9
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v6, v1

    if-nez v1, :cond_a

    move v5, v3

    :cond_a
    iget-object v1, v0, Lcom/ex/auto/TempBattPillFloaterService;->g:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v1, :cond_b

    goto :goto_5

    :cond_b
    :try_start_3
    sget v2, Lw0/u;->e:I

    sget v3, Lw0/u;->f:I

    invoke-virtual {v1, v2, v3, v5}, Landroid/car/hardware/property/CarPropertyManager;->setBooleanProperty(IIZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    :goto_5
    iget-object v0, v0, Lcom/ex/auto/TempBattPillFloaterService;->e:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x37b9aa36 -> :sswitch_3
        0x18b13 -> :sswitch_2
        0x3643d4 -> :sswitch_1
        0x379175 -> :sswitch_0
    .end sparse-switch
.end method
