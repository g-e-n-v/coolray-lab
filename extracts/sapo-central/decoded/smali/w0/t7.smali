.class public final Lw0/t7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/HomeFloatingWidgetsService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V
    .locals 0

    iput p2, p0, Lw0/t7;->a:I

    iput-object p1, p0, Lw0/t7;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v13, p0

    iget v0, v13, Lw0/t7;->a:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lw0/n3;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v0, v13, Lw0/t7;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    new-instance v1, Lw0/x6;

    const/16 v2, 0xd

    invoke-direct {v1, v0, v2}, Lw0/x6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    const-string v2, "widgets-sysinfo"

    invoke-static {v2, v1}, Lw0/n3;->b(Ljava/lang/String;Lh2/a;)V

    iget-object v0, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v13, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_0
    iget-object v0, v13, Lw0/t7;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-boolean v0, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lw0/n3;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v0, v13, Lw0/t7;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    new-instance v1, Lw0/y2;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2, v13}, Lw0/y2;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v1}, Lw0/n3;->a(Lh2/a;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, v13, Lw0/t7;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-boolean v0, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->d:Z

    if-eqz v0, :cond_1

    goto/16 :goto_f

    :cond_1
    iget-object v0, v13, Lw0/t7;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-wide v0, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->k:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, v13, Lw0/t7;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v2, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const-wide/16 v3, 0x0

    if-gtz v2, :cond_e

    cmp-long v2, v0, v3

    if-lez v2, :cond_2

    goto/16 :goto_d

    :cond_2
    iget-object v0, v13, Lw0/t7;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v0, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    iget-object v0, v13, Lw0/t7;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v2, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->f:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v0, v13, Lw0/t7;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v3, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->B:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    move v5, v4

    move v9, v5

    goto :goto_1

    :cond_3
    move v9, v1

    move v5, v4

    :goto_1
    iget-object v4, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->C:Landroid/view/View;

    if-nez v4, :cond_5

    iget-object v6, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->F:Landroid/view/View;

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    move v12, v1

    move v6, v5

    goto :goto_3

    :cond_5
    :goto_2
    move v6, v5

    move v12, v6

    :goto_3
    iget-object v5, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->D:Landroid/view/View;

    if-eqz v5, :cond_6

    move v7, v6

    move v14, v7

    goto :goto_4

    :cond_6
    move v14, v1

    move v7, v6

    :goto_4
    iget-object v6, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->E:Landroid/view/View;

    if-nez v6, :cond_8

    iget-object v8, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->F:Landroid/view/View;

    if-eqz v8, :cond_7

    goto :goto_5

    :cond_7
    move v15, v1

    move v8, v7

    goto :goto_6

    :cond_8
    :goto_5
    move v8, v7

    move v15, v8

    :goto_6
    iget-object v7, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->F:Landroid/view/View;

    move/from16 v16, v9

    if-eqz v7, :cond_9

    move v9, v8

    goto :goto_7

    :cond_9
    move v9, v1

    :goto_7
    iget-object v0, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->G:Landroid/view/View;

    if-eqz v0, :cond_a

    move/from16 v17, v8

    goto :goto_8

    :cond_a
    move/from16 v17, v1

    :goto_8
    if-nez v15, :cond_c

    if-eqz v17, :cond_b

    goto :goto_a

    :cond_b
    :goto_9
    move-object v8, v0

    goto :goto_b

    :cond_c
    :goto_a
    move v1, v8

    goto :goto_9

    :goto_b
    filled-new-array/range {v3 .. v8}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move v4, v12

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v0}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_d
    :try_start_0
    iget-object v0, v13, Lw0/t7;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v3, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->X:Ljava/util/concurrent/ThreadPoolExecutor;

    move v7, v1

    move-object v1, v0

    new-instance v0, Lw0/r7;

    move v5, v14

    move v6, v15

    move/from16 v8, v17

    move-object v14, v3

    move/from16 v3, v16

    invoke-direct/range {v0 .. v13}, Lw0/r7;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;Landroid/car/hardware/property/CarPropertyManager;ZZZZZZZJLjava/util/ArrayList;Lw0/t7;)V

    invoke-virtual {v14, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_f

    :cond_e
    :goto_d
    iget-object v2, v13, Lw0/t7;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v2, v2, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    cmp-long v3, v0, v3

    if-lez v3, :cond_f

    goto :goto_e

    :cond_f
    const-wide/16 v0, 0xbb8

    :goto_e
    invoke-virtual {v2, v13, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :catch_0
    :goto_f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
