.class public final synthetic Lw0/u2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;IIILjava/util/List;I)V
    .locals 0

    iput p6, p0, Lw0/u2;->a:I

    iput-object p1, p0, Lw0/u2;->b:Lcom/ex/auto/CentralWatchdogService;

    iput p2, p0, Lw0/u2;->c:I

    iput p3, p0, Lw0/u2;->d:I

    iput p4, p0, Lw0/u2;->e:I

    iput-object p5, p0, Lw0/u2;->f:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lw0/u2;->a:I

    const-string v2, " \u2014 reaplicando"

    const-string v3, " gen="

    const-string v4, " want="

    const-string v5, " \u2014 n\u00e3o reaplicar"

    const-string v6, ", gen="

    const-string v9, "cpm"

    const-string v11, "CentralWatchdog"

    iget-object v12, v0, Lw0/u2;->f:Ljava/util/List;

    iget v13, v0, Lw0/u2;->e:I

    iget v14, v0, Lw0/u2;->d:I

    iget v15, v0, Lw0/u2;->c:I

    iget-object v7, v0, Lw0/u2;->b:Lcom/ex/auto/CentralWatchdogService;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Landroid/car/hardware/property/CarPropertyManager;

    sget-object v16, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-static {v1, v9}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lcom/ex/auto/CentralWatchdogService;->T2:[I

    const/4 v8, 0x0

    :goto_0
    const/4 v10, 0x3

    if-ge v8, v10, :cond_1

    aget v10, v9, v8

    const v0, 0x22010100

    invoke-static {v1, v0, v10}, Lw0/p1;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v15, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "drive reassert: HAL j\u00e1 em "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_3
    :goto_2
    invoke-static {v12}, Ly1/h;->U(Ljava/util/List;)I

    move-result v5

    if-ne v13, v5, :cond_4

    const/4 v10, 0x1

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "drive reassert: HAL="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v2, :cond_5

    aget v3, v9, v8

    const v4, 0x22010100

    invoke-static {v1, v4, v3, v15}, Lw0/p1;->l(Landroid/car/hardware/property/CarPropertyManager;III)Z

    move-result v3

    if-nez v3, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    if-eqz v10, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v15, :cond_6

    const-string v1, "drive"

    invoke-virtual {v7, v1, v0, v15}, Lcom/ex/auto/CentralWatchdogService;->s(Ljava/lang/String;Ljava/lang/Integer;I)V

    :cond_6
    :goto_5
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, Landroid/car/hardware/property/CarPropertyManager;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-static {v0, v9}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    const/4 v8, 0x0

    :goto_6
    const v9, 0x20020500

    const/4 v10, 0x2

    if-ge v8, v10, :cond_8

    aget v10, v1, v8

    invoke-static {v0, v9, v10}, Lw0/p1;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_7

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    :goto_7
    if-nez v8, :cond_9

    goto :goto_8

    :cond_9
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v15, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "regen reassert: HAL j\u00e1 em "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_a
    :goto_8
    invoke-static {v12}, Ly1/h;->U(Ljava/util/List;)I

    move-result v5

    if-ne v13, v5, :cond_b

    const/4 v10, 0x1

    goto :goto_9

    :cond_b
    const/4 v10, 0x0

    :goto_9
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "regen reassert: HAL="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x2

    :goto_a
    if-ge v2, v3, :cond_c

    aget v4, v1, v2

    invoke-static {v0, v9, v4, v15}, Lw0/p1;->l(Landroid/car/hardware/property/CarPropertyManager;III)Z

    move-result v4

    if-nez v4, :cond_c

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_c
    if-eqz v10, :cond_d

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v15, :cond_d

    const-string v0, "regen"

    invoke-virtual {v7, v0, v8, v15}, Lcom/ex/auto/CentralWatchdogService;->s(Ljava/lang/String;Ljava/lang/Integer;I)V

    :cond_d
    :goto_b
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
