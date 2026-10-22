.class public final synthetic Lw0/a8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/HomeWidgetsPollService;

.field public final synthetic c:Lw0/y7;

.field public final synthetic d:Landroid/appwidget/AppWidgetManager;

.field public final synthetic e:J

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/car/hardware/property/CarPropertyManager;Lcom/ex/auto/HomeWidgetsPollService;Landroidx/activity/d;Lw0/y7;Landroid/appwidget/AppWidgetManager;J)V
    .locals 0

    .line 1
    const/4 p3, 0x0

    iput p3, p0, Lw0/a8;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/a8;->f:Ljava/lang/Object;

    iput-object p2, p0, Lw0/a8;->b:Lcom/ex/auto/HomeWidgetsPollService;

    iput-object p4, p0, Lw0/a8;->c:Lw0/y7;

    iput-object p5, p0, Lw0/a8;->d:Landroid/appwidget/AppWidgetManager;

    iput-wide p6, p0, Lw0/a8;->e:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/HomeWidgetsPollService;Lw0/z7;Lw0/y7;Landroid/appwidget/AppWidgetManager;J)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lw0/a8;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/a8;->b:Lcom/ex/auto/HomeWidgetsPollService;

    iput-object p2, p0, Lw0/a8;->f:Ljava/lang/Object;

    iput-object p3, p0, Lw0/a8;->c:Lw0/y7;

    iput-object p4, p0, Lw0/a8;->d:Landroid/appwidget/AppWidgetManager;

    iput-wide p5, p0, Lw0/a8;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    move-object/from16 v1, p0

    iget v0, v1, Lw0/a8;->a:I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lw0/a8;->b:Lcom/ex/auto/HomeWidgetsPollService;

    iget-object v3, v1, Lw0/a8;->f:Ljava/lang/Object;

    check-cast v3, Lw0/z7;

    iget-object v4, v1, Lw0/a8;->c:Lw0/y7;

    iget-object v5, v1, Lw0/a8;->d:Landroid/appwidget/AppWidgetManager;

    iget-wide v6, v1, Lw0/a8;->e:J

    iget-boolean v8, v0, Lcom/ex/auto/HomeWidgetsPollService;->e:Z

    if-eqz v8, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz v3, :cond_2

    iget-object v8, v0, Lcom/ex/auto/HomeWidgetsPollService;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    move-object v2, v3

    :cond_1
    if-eqz v2, :cond_2

    iget-object v3, v2, Lw0/z7;->a:Ljava/lang/Integer;

    iput-object v3, v0, Lcom/ex/auto/HomeWidgetsPollService;->k:Ljava/lang/Integer;

    iget-object v3, v2, Lw0/z7;->b:Ljava/lang/Integer;

    iput-object v3, v0, Lcom/ex/auto/HomeWidgetsPollService;->l:Ljava/lang/Integer;

    iget-object v3, v2, Lw0/z7;->c:Ljava/lang/Integer;

    iput-object v3, v0, Lcom/ex/auto/HomeWidgetsPollService;->m:Ljava/lang/Integer;

    iget-object v3, v2, Lw0/z7;->d:Ljava/lang/Float;

    iput-object v3, v0, Lcom/ex/auto/HomeWidgetsPollService;->n:Ljava/lang/Float;

    iget-object v3, v2, Lw0/z7;->e:Ljava/lang/Integer;

    iput-object v3, v0, Lcom/ex/auto/HomeWidgetsPollService;->q:Ljava/lang/Integer;

    iget-object v3, v2, Lw0/z7;->f:Ljava/lang/Boolean;

    iput-object v3, v0, Lcom/ex/auto/HomeWidgetsPollService;->r:Ljava/lang/Boolean;

    iget-object v3, v2, Lw0/z7;->g:Ljava/lang/Boolean;

    iput-object v3, v0, Lcom/ex/auto/HomeWidgetsPollService;->s:Ljava/lang/Boolean;

    iget-object v3, v2, Lw0/z7;->h:Ljava/lang/Boolean;

    iput-object v3, v0, Lcom/ex/auto/HomeWidgetsPollService;->t:Ljava/lang/Boolean;

    iget-object v3, v2, Lw0/z7;->i:Ljava/lang/Boolean;

    iput-object v3, v0, Lcom/ex/auto/HomeWidgetsPollService;->u:Ljava/lang/Boolean;

    iget-object v3, v2, Lw0/z7;->j:Ljava/lang/Boolean;

    iput-object v3, v0, Lcom/ex/auto/HomeWidgetsPollService;->v:Ljava/lang/Boolean;

    iget-object v3, v2, Lw0/z7;->k:Ljava/lang/Integer;

    iput-object v3, v0, Lcom/ex/auto/HomeWidgetsPollService;->w:Ljava/lang/Integer;

    iget-object v3, v2, Lw0/z7;->l:Ljava/lang/Integer;

    iput-object v3, v0, Lcom/ex/auto/HomeWidgetsPollService;->x:Ljava/lang/Integer;

    iget-object v2, v2, Lw0/z7;->m:Ljava/lang/Boolean;

    iput-object v2, v0, Lcom/ex/auto/HomeWidgetsPollService;->y:Ljava/lang/Boolean;

    :cond_2
    iget-boolean v2, v4, Lw0/y7;->a:Z

    if-eqz v2, :cond_3

    invoke-virtual {v0, v5}, Lcom/ex/auto/HomeWidgetsPollService;->j(Landroid/appwidget/AppWidgetManager;)V

    :cond_3
    iget-boolean v2, v4, Lw0/y7;->b:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0, v5}, Lcom/ex/auto/HomeWidgetsPollService;->k(Landroid/appwidget/AppWidgetManager;)V

    :cond_4
    iget-boolean v2, v4, Lw0/y7;->c:Z

    if-eqz v2, :cond_5

    invoke-virtual {v0, v5}, Lcom/ex/auto/HomeWidgetsPollService;->m(Landroid/appwidget/AppWidgetManager;)V

    :cond_5
    iget-boolean v2, v4, Lw0/y7;->d:Z

    if-eqz v2, :cond_6

    invoke-virtual {v0, v5}, Lcom/ex/auto/HomeWidgetsPollService;->o(Landroid/appwidget/AppWidgetManager;)V

    :cond_6
    iget-boolean v2, v4, Lw0/y7;->e:Z

    if-eqz v2, :cond_7

    invoke-virtual {v0, v5}, Lcom/ex/auto/HomeWidgetsPollService;->n(Landroid/appwidget/AppWidgetManager;)V

    :cond_7
    iget-boolean v2, v4, Lw0/y7;->f:Z

    if-eqz v2, :cond_8

    invoke-virtual {v0, v5}, Lcom/ex/auto/HomeWidgetsPollService;->l(Landroid/appwidget/AppWidgetManager;)V

    :cond_8
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/ex/auto/HomeWidgetsPollService;->d:Z

    iget-object v2, v0, Lcom/ex/auto/HomeWidgetsPollService;->a:Landroid/os/Handler;

    iget-object v0, v0, Lcom/ex/auto/HomeWidgetsPollService;->z:Landroidx/activity/d;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, v1, Lw0/a8;->f:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/property/CarPropertyManager;

    iget-object v4, v1, Lw0/a8;->b:Lcom/ex/auto/HomeWidgetsPollService;

    iget-object v6, v1, Lw0/a8;->c:Lw0/y7;

    iget-object v7, v1, Lw0/a8;->d:Landroid/appwidget/AppWidgetManager;

    iget-wide v8, v1, Lw0/a8;->e:J

    if-eqz v0, :cond_1c

    :try_start_0
    new-instance v10, Lw0/z7;

    iget-boolean v3, v6, Lw0/y7;->a:Z

    if-eqz v3, :cond_9

    sget-object v3, Lw0/v7;->a:[I

    sget-object v3, Lw0/v7;->f:[I

    sget-object v5, Lw0/v7;->h:Ljava/util/Set;

    const v11, 0x22010100

    invoke-static {v0, v11, v3, v5}, Lw0/v7;->g(Landroid/car/hardware/property/CarPropertyManager;I[ILjava/util/Set;)Ljava/lang/Integer;

    move-result-object v3

    :goto_1
    move-object v11, v3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_1e

    :cond_9
    iget-object v3, v4, Lcom/ex/auto/HomeWidgetsPollService;->k:Ljava/lang/Integer;

    goto :goto_1

    :goto_2
    iget-boolean v3, v6, Lw0/y7;->a:Z

    if-eqz v3, :cond_a

    sget-object v3, Lw0/v7;->a:[I

    sget-object v3, Lw0/v7;->e:[I

    sget-object v5, Lw0/v7;->i:Ljava/util/Set;

    const v12, 0x20020500

    invoke-static {v0, v12, v3, v5}, Lw0/v7;->g(Landroid/car/hardware/property/CarPropertyManager;I[ILjava/util/Set;)Ljava/lang/Integer;

    move-result-object v3

    :goto_3
    move-object v12, v3

    goto :goto_4

    :cond_a
    iget-object v3, v4, Lcom/ex/auto/HomeWidgetsPollService;->l:Ljava/lang/Integer;

    goto :goto_3

    :goto_4
    iget-boolean v3, v6, Lw0/y7;->b:Z

    if-nez v3, :cond_c

    iget-boolean v3, v6, Lw0/y7;->e:Z

    if-eqz v3, :cond_b

    goto :goto_6

    :cond_b
    iget-object v3, v4, Lcom/ex/auto/HomeWidgetsPollService;->m:Ljava/lang/Integer;

    :goto_5
    move-object v13, v3

    goto :goto_7

    :cond_c
    :goto_6
    invoke-static {v0}, Lw0/v7;->e(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_5

    :goto_7
    iget-boolean v3, v6, Lw0/y7;->c:Z

    if-eqz v3, :cond_d

    invoke-static {v0}, Lw0/v7;->k(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Float;

    move-result-object v3

    :goto_8
    move-object v14, v3

    goto :goto_9

    :cond_d
    iget-object v3, v4, Lcom/ex/auto/HomeWidgetsPollService;->n:Ljava/lang/Float;

    goto :goto_8

    :goto_9
    iget-boolean v3, v6, Lw0/y7;->d:Z

    if-nez v3, :cond_f

    iget-boolean v3, v6, Lw0/y7;->e:Z

    if-eqz v3, :cond_e

    goto :goto_b

    :cond_e
    iget-object v3, v4, Lcom/ex/auto/HomeWidgetsPollService;->q:Ljava/lang/Integer;

    :goto_a
    move-object v15, v3

    goto :goto_c

    :cond_f
    :goto_b
    invoke-static {v0}, Lw0/v7;->l(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_a

    :goto_c
    iget-boolean v3, v6, Lw0/y7;->f:Z

    if-eqz v3, :cond_10

    invoke-static {v0}, Lw0/v7;->h(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v3

    :goto_d
    move-object/from16 v16, v3

    goto :goto_e

    :cond_10
    iget-object v3, v4, Lcom/ex/auto/HomeWidgetsPollService;->r:Ljava/lang/Boolean;

    goto :goto_d

    :goto_e
    iget-boolean v3, v6, Lw0/y7;->d:Z

    if-nez v3, :cond_12

    iget-boolean v3, v6, Lw0/y7;->e:Z

    if-eqz v3, :cond_11

    goto :goto_10

    :cond_11
    iget-object v3, v4, Lcom/ex/auto/HomeWidgetsPollService;->s:Ljava/lang/Boolean;

    :goto_f
    move-object/from16 v17, v3

    goto :goto_11

    :cond_12
    :goto_10
    invoke-static {v0}, Lw0/v7;->i(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_f

    :goto_11
    iget-boolean v3, v6, Lw0/y7;->f:Z

    if-eqz v3, :cond_13

    invoke-static {v0}, Lw0/v7;->m(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v3

    :goto_12
    move-object/from16 v18, v3

    goto :goto_13

    :cond_13
    iget-object v3, v4, Lcom/ex/auto/HomeWidgetsPollService;->t:Ljava/lang/Boolean;

    goto :goto_12

    :goto_13
    iget-boolean v3, v6, Lw0/y7;->f:Z

    if-eqz v3, :cond_14

    invoke-static {v0}, Lw0/v7;->f(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v3

    :goto_14
    move-object/from16 v19, v3

    goto :goto_15

    :cond_14
    iget-object v3, v4, Lcom/ex/auto/HomeWidgetsPollService;->u:Ljava/lang/Boolean;

    goto :goto_14

    :goto_15
    iget-boolean v3, v6, Lw0/y7;->f:Z

    if-eqz v3, :cond_15

    invoke-static {v0}, Lw0/v7;->n(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v3

    :goto_16
    move-object/from16 v20, v3

    goto :goto_17

    :cond_15
    iget-object v3, v4, Lcom/ex/auto/HomeWidgetsPollService;->v:Ljava/lang/Boolean;

    goto :goto_16

    :goto_17
    iget-boolean v3, v6, Lw0/y7;->f:Z

    if-eqz v3, :cond_16

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lw0/v7;->j(Landroid/car/hardware/property/CarPropertyManager;I)Ljava/lang/Integer;

    move-result-object v3

    :goto_18
    move-object/from16 v21, v3

    goto :goto_19

    :cond_16
    iget-object v3, v4, Lcom/ex/auto/HomeWidgetsPollService;->w:Ljava/lang/Integer;

    goto :goto_18

    :goto_19
    iget-boolean v3, v6, Lw0/y7;->f:Z

    if-eqz v3, :cond_17

    const/4 v3, 0x4

    invoke-static {v0, v3}, Lw0/v7;->j(Landroid/car/hardware/property/CarPropertyManager;I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1a
    move-object/from16 v22, v3

    goto :goto_1b

    :cond_17
    iget-object v3, v4, Lcom/ex/auto/HomeWidgetsPollService;->x:Ljava/lang/Integer;

    goto :goto_1a

    :goto_1b
    iget-boolean v3, v6, Lw0/y7;->e:Z

    if-eqz v3, :cond_18

    invoke-static {v0}, Lw0/v7;->d(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1c
    move-object/from16 v23, v0

    goto :goto_1d

    :cond_18
    iget-object v0, v4, Lcom/ex/auto/HomeWidgetsPollService;->y:Ljava/lang/Boolean;

    goto :goto_1c

    :goto_1d
    invoke-direct/range {v10 .. v23}, Lw0/z7;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1f

    :goto_1e
    new-instance v10, Lx1/b;

    invoke-direct {v10, v0}, Lx1/b;-><init>(Ljava/lang/Throwable;)V

    :goto_1f
    instance-of v0, v10, Lx1/b;

    if-eqz v0, :cond_19

    move-object v3, v10

    check-cast v3, Lx1/b;

    iget-object v3, v3, Lx1/b;->a:Ljava/lang/Throwable;

    goto :goto_20

    :cond_19
    move-object v3, v2

    :goto_20
    if-eqz v3, :cond_1a

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "poll VHAL: "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "HomeWidgetsPoll"

    invoke-static {v3, v5, v11}, Landroidx/activity/result/b;->s(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1a
    if-eqz v0, :cond_1b

    goto :goto_21

    :cond_1b
    move-object v2, v10

    :goto_21
    check-cast v2, Lw0/z7;

    :cond_1c
    move-object v5, v2

    iget-object v0, v4, Lcom/ex/auto/HomeWidgetsPollService;->a:Landroid/os/Handler;

    new-instance v3, Lw0/a8;

    invoke-direct/range {v3 .. v9}, Lw0/a8;-><init>(Lcom/ex/auto/HomeWidgetsPollService;Lw0/z7;Lw0/y7;Landroid/appwidget/AppWidgetManager;J)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
