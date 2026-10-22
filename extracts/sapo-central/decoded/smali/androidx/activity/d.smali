.class public final Landroidx/activity/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/activity/d;->a:I

    iput-object p2, p0, Landroidx/activity/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    move-object/from16 v3, p0

    iget v0, v3, Landroidx/activity/d;->a:I

    const-wide/16 v6, 0x3e8

    const-wide/16 v8, 0xbb8

    const/4 v10, 0x0

    const/4 v11, 0x1

    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->M:Z

    if-eqz v0, :cond_1

    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    iget-object v0, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->v:La1/d;

    iget-boolean v0, v0, La1/d;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    invoke-virtual {v0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->m()V

    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    iget-object v1, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->u:Landroid/os/Handler;

    if-eqz v1, :cond_1

    sget-boolean v2, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->M:Z

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->v:La1/d;

    iget-boolean v0, v0, La1/d;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {v1, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/QuickAccessFloaterService;

    iget-object v1, v0, Lcom/ex/auto/QuickAccessFloaterService;->Y:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    const-string v2, "HH:mm"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, v0, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_1
    sget-object v0, Lw0/n3;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MediaBarFloaterService;

    new-instance v1, Lw0/y2;

    const/16 v2, 0xb

    invoke-direct {v1, v0, v2, v3}, Lw0/y2;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v1}, Lw0/n3;->a(Lh2/a;)V

    return-void

    :pswitch_2
    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-boolean v1, v0, Lcom/ex/auto/MainActivity;->O:Z

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v11}, Lcom/ex/auto/MainActivity;->z(Z)V

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->z1()V

    iget-object v0, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    invoke-virtual {v0, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    :pswitch_3
    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/LyricsFloaterService;

    sget-object v1, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/ex/auto/LyricsFloaterService;->q()V

    iget-object v0, v0, Lcom/ex/auto/LyricsFloaterService;->c:Landroid/os/Handler;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_4
    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeWidgetsPollService;

    iget-boolean v0, v0, Lcom/ex/auto/HomeWidgetsPollService;->e:Z

    if-eqz v0, :cond_4

    goto/16 :goto_c

    :cond_4
    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeWidgetsPollService;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeWidgetsPollService;

    invoke-static {v5}, Li2/g;->b(Ljava/lang/Object;)V

    new-instance v4, Lw0/y7;

    const-class v1, Lcom/ex/auto/DriveRegenWidgetProvider;

    invoke-static {v5, v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->a(Landroid/appwidget/AppWidgetManager;Lcom/ex/auto/HomeWidgetsPollService;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_6

    const-class v1, Lcom/ex/auto/DriveModeVerticalWidgetProvider;

    invoke-static {v5, v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->a(Landroid/appwidget/AppWidgetManager;Lcom/ex/auto/HomeWidgetsPollService;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_6

    const-class v1, Lcom/ex/auto/RegenVerticalWidgetProvider;

    invoke-static {v5, v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->a(Landroid/appwidget/AppWidgetManager;Lcom/ex/auto/HomeWidgetsPollService;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move v13, v10

    goto :goto_3

    :cond_6
    :goto_2
    move v13, v11

    :goto_3
    const-class v1, Lcom/ex/auto/FanSpeedWidgetProvider;

    invoke-static {v5, v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->a(Landroid/appwidget/AppWidgetManager;Lcom/ex/auto/HomeWidgetsPollService;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_8

    const-class v1, Lcom/ex/auto/FanSpeedVerticalWidgetProvider;

    invoke-static {v5, v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->a(Landroid/appwidget/AppWidgetManager;Lcom/ex/auto/HomeWidgetsPollService;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    move v14, v10

    goto :goto_5

    :cond_8
    :goto_4
    move v14, v11

    :goto_5
    const-class v1, Lcom/ex/auto/TemperatureWidgetProvider;

    invoke-static {v5, v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->a(Landroid/appwidget/AppWidgetManager;Lcom/ex/auto/HomeWidgetsPollService;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_a

    const-class v1, Lcom/ex/auto/TemperatureVerticalWidgetProvider;

    invoke-static {v5, v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->a(Landroid/appwidget/AppWidgetManager;Lcom/ex/auto/HomeWidgetsPollService;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_6

    :cond_9
    move v15, v10

    goto :goto_7

    :cond_a
    :goto_6
    move v15, v11

    :goto_7
    const-class v1, Lcom/ex/auto/HvacDirectionWidgetProvider;

    invoke-static {v5, v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->a(Landroid/appwidget/AppWidgetManager;Lcom/ex/auto/HomeWidgetsPollService;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_c

    const-class v1, Lcom/ex/auto/HvacDirectionVerticalWidgetProvider;

    invoke-static {v5, v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->a(Landroid/appwidget/AppWidgetManager;Lcom/ex/auto/HomeWidgetsPollService;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_8

    :cond_b
    move/from16 v16, v10

    goto :goto_9

    :cond_c
    :goto_8
    move/from16 v16, v11

    :goto_9
    const-class v1, Lcom/ex/auto/HvacDirectionFanWidgetProvider;

    invoke-static {v5, v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->a(Landroid/appwidget/AppWidgetManager;Lcom/ex/auto/HomeWidgetsPollService;Ljava/lang/Class;)Z

    move-result v17

    const-class v1, Lcom/ex/auto/HeatingTestWidgetProvider;

    invoke-static {v5, v0, v1}, Lcom/ex/auto/HomeWidgetsPollService;->a(Landroid/appwidget/AppWidgetManager;Lcom/ex/auto/HomeWidgetsPollService;Ljava/lang/Class;)Z

    move-result v18

    move-object v12, v4

    invoke-direct/range {v12 .. v18}, Lw0/y7;-><init>(ZZZZZZ)V

    if-nez v13, :cond_10

    if-nez v14, :cond_10

    if-nez v15, :cond_10

    if-nez v16, :cond_10

    if-nez v17, :cond_10

    if-eqz v18, :cond_d

    goto :goto_b

    :cond_d
    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeWidgetsPollService;

    iget-object v0, v0, Lcom/ex/auto/HomeWidgetsPollService;->A:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeWidgetsPollService;

    iget-object v0, v0, Lcom/ex/auto/HomeWidgetsPollService;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_e

    goto :goto_a

    :cond_e
    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeWidgetsPollService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    goto :goto_c

    :cond_f
    :goto_a
    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeWidgetsPollService;

    iget-object v0, v0, Lcom/ex/auto/HomeWidgetsPollService;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c

    :cond_10
    :goto_b
    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeWidgetsPollService;

    iget-boolean v0, v0, Lcom/ex/auto/HomeWidgetsPollService;->d:Z

    if-eqz v0, :cond_11

    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeWidgetsPollService;

    iget-object v0, v0, Lcom/ex/auto/HomeWidgetsPollService;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c

    :cond_11
    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeWidgetsPollService;

    iget-object v0, v0, Lcom/ex/auto/HomeWidgetsPollService;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_12

    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeWidgetsPollService;

    iget-object v0, v0, Lcom/ex/auto/HomeWidgetsPollService;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c

    :cond_12
    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeWidgetsPollService;

    iput-boolean v11, v0, Lcom/ex/auto/HomeWidgetsPollService;->d:Z

    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeWidgetsPollService;

    iget-object v0, v0, Lcom/ex/auto/HomeWidgetsPollService;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeWidgetsPollService;

    iget-object v1, v0, Lcom/ex/auto/HomeWidgetsPollService;->j:Landroid/car/hardware/property/CarPropertyManager;

    :try_start_0
    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/ex/auto/HomeWidgetsPollService;

    iget-object v8, v2, Lcom/ex/auto/HomeWidgetsPollService;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lw0/a8;

    invoke-direct/range {v0 .. v7}, Lw0/a8;-><init>(Landroid/car/hardware/property/CarPropertyManager;Lcom/ex/auto/HomeWidgetsPollService;Landroidx/activity/d;Lw0/y7;Landroid/appwidget/AppWidgetManager;J)V

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeWidgetsPollService;

    iput-boolean v10, v0, Lcom/ex/auto/HomeWidgetsPollService;->d:Z

    :goto_c
    return-void

    :pswitch_5
    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lw0/f1;

    iget-boolean v1, v0, Lw0/f1;->j:Z

    if-nez v1, :cond_15

    invoke-virtual {v0}, Lw0/f1;->c()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_d

    :cond_13
    iget-object v1, v0, Lw0/f1;->g:Landroid/car/Car;

    if-nez v1, :cond_14

    invoke-virtual {v0}, Lw0/f1;->b()V

    :cond_14
    invoke-virtual {v0}, Lw0/f1;->e()V

    iget-object v0, v0, Lw0/f1;->c:Landroid/os/Handler;

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_15
    :goto_d
    return-void

    :pswitch_6
    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lq0/b;

    iget-object v1, v0, Lq0/b;->d:Ljava/lang/Object;

    check-cast v1, Lw0/ah;

    invoke-virtual {v1}, Lw0/ah;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Lq0/b;->j()V

    :cond_16
    return-void

    :pswitch_7
    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v0()Z

    return-void

    :pswitch_8
    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->H:Lq0/e0;

    if-eqz v6, :cond_23

    check-cast v6, Lq0/j;

    iget-wide v7, v6, Lq0/e0;->d:J

    iget-object v9, v6, Lq0/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    iget-object v13, v6, Lq0/j;->j:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    iget-object v15, v6, Lq0/j;->k:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    const-wide/16 v17, 0x0

    iget-object v4, v6, Lq0/j;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v12, :cond_17

    if-eqz v14, :cond_17

    if-eqz v5, :cond_17

    if-eqz v16, :cond_17

    goto/16 :goto_16

    :cond_17
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v11, v10

    :goto_e
    if-ge v11, v2, :cond_18

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v10, v20

    check-cast v10, Lq0/w0;

    iget-object v1, v10, Lq0/w0;->a:Landroid/view/View;

    move/from16 v21, v2

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    move/from16 v22, v5

    iget-object v5, v6, Lq0/j;->q:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    move-object/from16 v23, v9

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v9, Lq0/e;

    invoke-direct {v9, v6, v10, v2, v1}, Lq0/e;-><init>(Lq0/j;Lq0/w0;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v5, v9}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    move/from16 v2, v21

    move/from16 v5, v22

    move-object/from16 v9, v23

    const/4 v10, 0x0

    goto :goto_e

    :cond_18
    move/from16 v22, v5

    move-object/from16 v23, v9

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    if-nez v14, :cond_1a

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v6, Lq0/j;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    new-instance v2, Lq0/d;

    const/4 v5, 0x0

    invoke-direct {v2, v6, v1, v5}, Lq0/d;-><init>(Lq0/j;Ljava/util/ArrayList;I)V

    if-nez v12, :cond_19

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq0/i;

    iget-object v1, v1, Lq0/i;->a:Lq0/w0;

    iget-object v1, v1, Lq0/w0;->a:Landroid/view/View;

    sget-object v5, Lc0/p0;->a:Ljava/util/WeakHashMap;

    invoke-static {v1, v2, v7, v8}, Lc0/a0;->n(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_f

    :cond_19
    invoke-virtual {v2}, Lq0/d;->run()V

    :cond_1a
    :goto_f
    if-nez v16, :cond_1c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v6, Lq0/j;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    new-instance v2, Lq0/d;

    const/4 v5, 0x1

    invoke-direct {v2, v6, v1, v5}, Lq0/d;-><init>(Lq0/j;Ljava/util/ArrayList;I)V

    if-nez v12, :cond_1b

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq0/h;

    iget-object v1, v1, Lq0/h;->a:Lq0/w0;

    iget-object v1, v1, Lq0/w0;->a:Landroid/view/View;

    sget-object v5, Lc0/p0;->a:Ljava/util/WeakHashMap;

    invoke-static {v1, v2, v7, v8}, Lc0/a0;->n(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_10

    :cond_1b
    invoke-virtual {v2}, Lq0/d;->run()V

    :cond_1c
    :goto_10
    if-nez v22, :cond_22

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v6, Lq0/j;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    new-instance v2, Lq0/d;

    const/4 v4, 0x2

    invoke-direct {v2, v6, v1, v4}, Lq0/d;-><init>(Lq0/j;Ljava/util/ArrayList;I)V

    if-eqz v12, :cond_1e

    if-eqz v14, :cond_1e

    if-nez v16, :cond_1d

    goto :goto_11

    :cond_1d
    invoke-virtual {v2}, Lq0/d;->run()V

    goto :goto_15

    :cond_1e
    :goto_11
    if-nez v12, :cond_1f

    goto :goto_12

    :cond_1f
    move-wide/from16 v7, v17

    :goto_12
    if-nez v14, :cond_20

    iget-wide v4, v6, Lq0/e0;->e:J

    goto :goto_13

    :cond_20
    move-wide/from16 v4, v17

    :goto_13
    if-nez v16, :cond_21

    iget-wide v9, v6, Lq0/e0;->f:J

    goto :goto_14

    :cond_21
    move-wide/from16 v9, v17

    :goto_14
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-long/2addr v4, v7

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq0/w0;

    iget-object v1, v1, Lq0/w0;->a:Landroid/view/View;

    sget-object v7, Lc0/p0;->a:Ljava/util/WeakHashMap;

    invoke-static {v1, v2, v4, v5}, Lc0/a0;->n(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_17

    :cond_22
    :goto_15
    const/4 v6, 0x0

    goto :goto_17

    :cond_23
    :goto_16
    move v6, v10

    :goto_17
    iput-boolean v6, v0, Landroidx/recyclerview/widget/RecyclerView;->i0:Z

    return-void

    :pswitch_9
    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lq0/m;

    iget-object v1, v0, Lq0/m;->z:Landroid/animation/ValueAnimator;

    iget v2, v0, Lq0/m;->A:I

    const/4 v5, 0x1

    if-eq v2, v5, :cond_24

    const/4 v4, 0x2

    if-eq v2, v4, :cond_25

    goto :goto_18

    :cond_24
    const/4 v4, 0x2

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_25
    const/4 v2, 0x3

    iput v2, v0, Lq0/m;->A:I

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    new-array v2, v4, [F

    const/4 v5, 0x0

    aput v0, v2, v5

    const/16 v19, 0x1

    const/16 v20, 0x0

    aput v20, v2, v19

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const/16 v0, 0x1f4

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :goto_18
    return-void

    :pswitch_a
    move v5, v10

    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Li0/e;

    invoke-virtual {v0, v5}, Li0/e;->n(I)V

    return-void

    :pswitch_b
    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_26

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->t:Li/j;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Li/j;->l()Z

    :cond_26
    return-void

    :pswitch_c
    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Li/q1;

    const/4 v1, 0x0

    iput-object v1, v0, Li/q1;->l:Landroidx/activity/d;

    invoke-virtual {v0}, Li/q1;->drawableStateChanged()V

    return-void

    :pswitch_d
    const-wide/16 v17, 0x0

    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Lf0/g;

    iget-object v1, v0, Lf0/g;->c:Li/q1;

    iget-object v2, v0, Lf0/g;->a:Lf0/a;

    iget-boolean v4, v0, Lf0/g;->o:Z

    if-nez v4, :cond_27

    goto/16 :goto_1b

    :cond_27
    iget-boolean v4, v0, Lf0/g;->m:Z

    if-eqz v4, :cond_28

    const/4 v5, 0x0

    iput-boolean v5, v0, Lf0/g;->m:Z

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lf0/a;->e:J

    const-wide/16 v6, -0x1

    iput-wide v6, v2, Lf0/a;->g:J

    iput-wide v4, v2, Lf0/a;->f:J

    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, v2, Lf0/a;->h:F

    :cond_28
    iget-wide v4, v2, Lf0/a;->g:J

    cmp-long v4, v4, v17

    if-lez v4, :cond_29

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-wide v6, v2, Lf0/a;->g:J

    iget v8, v2, Lf0/a;->i:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-lez v4, :cond_29

    :goto_19
    const/4 v5, 0x0

    goto :goto_1a

    :cond_29
    invoke-virtual {v0}, Lf0/g;->e()Z

    move-result v4

    if-nez v4, :cond_2a

    goto :goto_19

    :goto_1a
    iput-boolean v5, v0, Lf0/g;->o:Z

    goto :goto_1b

    :cond_2a
    const/4 v5, 0x0

    iget-boolean v4, v0, Lf0/g;->n:Z

    if-eqz v4, :cond_2b

    iput-boolean v5, v0, Lf0/g;->n:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    move-wide v8, v6

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v1, v4}, Li/q1;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    :cond_2b
    iget-wide v4, v2, Lf0/a;->f:J

    cmp-long v4, v4, v17

    if-eqz v4, :cond_2c

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lf0/a;->a(J)F

    move-result v6

    const/high16 v7, -0x3f800000    # -4.0f

    mul-float/2addr v7, v6

    mul-float/2addr v7, v6

    const/high16 v8, 0x40800000    # 4.0f

    mul-float/2addr v6, v8

    add-float/2addr v6, v7

    iget-wide v7, v2, Lf0/a;->f:J

    sub-long v7, v4, v7

    iput-wide v4, v2, Lf0/a;->f:J

    long-to-float v4, v7

    mul-float/2addr v4, v6

    iget v2, v2, Lf0/a;->d:F

    mul-float/2addr v4, v2

    float-to-int v2, v4

    iget-object v0, v0, Lf0/g;->q:Li/q1;

    invoke-static {v0, v2}, Lf0/h;->b(Landroid/widget/ListView;I)V

    sget-object v0, Lc0/p0;->a:Ljava/util/WeakHashMap;

    invoke-static {v1, v3}, Lc0/a0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_1b
    return-void

    :cond_2c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot compute scroll delta before calling start()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_e
    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/a0;

    iget-object v1, v0, Landroidx/lifecycle/a0;->f:Landroidx/lifecycle/s;

    iget v2, v0, Landroidx/lifecycle/a0;->b:I

    if-nez v2, :cond_2d

    const/4 v5, 0x1

    iput-boolean v5, v0, Landroidx/lifecycle/a0;->c:Z

    sget-object v2, Landroidx/lifecycle/k;->ON_PAUSE:Landroidx/lifecycle/k;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/s;->d(Landroidx/lifecycle/k;)V

    goto :goto_1c

    :cond_2d
    const/4 v5, 0x1

    :goto_1c
    iget v2, v0, Landroidx/lifecycle/a0;->a:I

    if-nez v2, :cond_2e

    iget-boolean v2, v0, Landroidx/lifecycle/a0;->c:Z

    if-eqz v2, :cond_2e

    sget-object v2, Landroidx/lifecycle/k;->ON_STOP:Landroidx/lifecycle/k;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/s;->d(Landroidx/lifecycle/k;)V

    iput-boolean v5, v0, Landroidx/lifecycle/a0;->d:Z

    :cond_2e
    return-void

    :pswitch_f
    move v5, v11

    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/h0;

    invoke-virtual {v0, v5}, Landroidx/fragment/app/h0;->w(Z)Z

    return-void

    :pswitch_10
    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/n;

    iget-object v1, v0, Landroidx/fragment/app/n;->S:Landroidx/fragment/app/l;

    iget-object v0, v0, Landroidx/fragment/app/n;->a0:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/l;->onDismiss(Landroid/content/DialogInterface;)V

    return-void

    :pswitch_11
    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/e;

    iget-object v1, v0, Landroidx/fragment/app/e;->a:Landroid/view/ViewGroup;

    iget-object v2, v0, Landroidx/fragment/app/e;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v0, v0, Landroidx/fragment/app/e;->c:Landroidx/fragment/app/g;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->d()V

    return-void

    :pswitch_12
    :try_start_1
    iget-object v0, v3, Landroidx/activity/d;->b:Ljava/lang/Object;

    check-cast v0, Le/j;

    invoke-static {v0}, Landroidx/activity/h;->c(Le/j;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1d

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can not perform this action after onSaveInstanceState"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    :goto_1d
    return-void

    :cond_2f
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
