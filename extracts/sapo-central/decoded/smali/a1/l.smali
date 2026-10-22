.class public final synthetic La1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Z

.field public final synthetic e:Landroid/content/ContextWrapper;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/HomeWidgetsPollService;ZLjava/lang/String;Landroid/appwidget/AppWidgetManager;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, La1/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La1/l;->e:Landroid/content/ContextWrapper;

    iput-boolean p2, p0, La1/l;->b:Z

    iput-object p3, p0, La1/l;->c:Ljava/lang/Object;

    iput-object p4, p0, La1/l;->f:Ljava/lang/Object;

    iput-boolean p5, p0, La1/l;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, La1/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La1/l;->e:Landroid/content/ContextWrapper;

    iput-object p2, p0, La1/l;->c:Ljava/lang/Object;

    iput-object p3, p0, La1/l;->f:Ljava/lang/Object;

    iput-boolean p4, p0, La1/l;->b:Z

    iput-boolean p5, p0, La1/l;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Lw0/z4;ZZLw0/p4;)V
    .locals 1

    .line 3
    const/4 v0, 0x3

    iput v0, p0, La1/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La1/l;->e:Landroid/content/ContextWrapper;

    iput-object p2, p0, La1/l;->c:Ljava/lang/Object;

    iput-boolean p3, p0, La1/l;->b:Z

    iput-boolean p4, p0, La1/l;->d:Z

    iput-object p5, p0, La1/l;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/geely/hvacstepperv2/TempStepperService;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 1

    .line 4
    const/4 v0, 0x0

    iput v0, p0, La1/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La1/l;->e:Landroid/content/ContextWrapper;

    iput-object p2, p0, La1/l;->c:Ljava/lang/Object;

    iput-boolean p3, p0, La1/l;->b:Z

    iput-object p4, p0, La1/l;->f:Ljava/lang/Object;

    iput-boolean p5, p0, La1/l;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 27

    move-object/from16 v1, p0

    iget v0, v1, La1/l;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, La1/l;->e:Landroid/content/ContextWrapper;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-object v4, v1, La1/l;->c:Ljava/lang/Object;

    check-cast v4, Lw0/z4;

    iget-boolean v5, v1, La1/l;->b:Z

    iget-boolean v6, v1, La1/l;->d:Z

    iget-object v7, v1, La1/l;->f:Ljava/lang/Object;

    check-cast v7, Lw0/p4;

    iput-boolean v2, v0, Lcom/ex/auto/MainActivity;->d1:Z

    sget-object v8, Lw0/z4;->a:Lw0/z4;

    if-eq v4, v8, :cond_0

    sget-object v8, Lw0/z4;->d:Lw0/z4;

    if-ne v4, v8, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/ex/auto/MainActivity;->c1:Ljava/lang/Boolean;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Lw0/z4;->e:Lw0/z4;

    const-string v8, "getString(...)"

    if-ne v4, v2, :cond_2

    const v2, 0x7f0f0299

    invoke-static {v2, v3, v0, v8}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-eqz v5, :cond_4

    if-eqz v6, :cond_3

    const v2, 0x7f0f00a5

    goto :goto_1

    :cond_3
    const v2, 0x7f0f02d7

    goto :goto_1

    :cond_4
    if-nez v7, :cond_5

    const/4 v2, -0x1

    goto :goto_0

    :cond_5
    sget-object v2, Lw0/ic;->a:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    :goto_0
    if-eq v2, v3, :cond_7

    const/4 v4, 0x2

    if-eq v2, v4, :cond_6

    const v2, 0x7f0f0296

    goto :goto_1

    :cond_6
    const v2, 0x7f0f00a6

    goto :goto_1

    :cond_7
    const v2, 0x7f0f0297

    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/2addr v3, v5

    invoke-virtual {v0, v2, v3}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    :goto_2
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->v1()V

    :cond_8
    return-void

    :pswitch_0
    sget-object v0, Lw0/g4;->b:Lw0/g4;

    sget-object v4, Lw0/g4;->d:Lw0/g4;

    sget-object v5, Lw0/g4;->a:Lw0/g4;

    iget-object v6, v1, La1/l;->e:Landroid/content/ContextWrapper;

    move-object v9, v6

    check-cast v9, Lcom/ex/auto/MainActivity;

    iget-object v6, v1, La1/l;->c:Ljava/lang/Object;

    move-object v10, v6

    check-cast v10, Ljava/lang/String;

    iget-object v6, v1, La1/l;->f:Ljava/lang/Object;

    move-object v11, v6

    check-cast v11, Ljava/lang/String;

    iget-boolean v12, v1, La1/l;->b:Z

    iget-boolean v13, v1, La1/l;->d:Z

    sget v6, Lcom/ex/auto/MainActivity;->z1:I

    :try_start_0
    invoke-virtual {v9, v10, v11}, Lcom/ex/auto/MainActivity;->d0(Ljava/lang/String;Ljava/lang/String;)Lw0/zb;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-static {v11, v10}, Lw0/u;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lw0/zb;->a()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v15, "getPath(...)"

    invoke-static {v8, v15}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Lw0/f8;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_b

    :cond_9
    const/4 v8, 0x0

    :goto_3
    iget-object v15, v6, Lw0/zb;->d:Ljava/lang/String;

    sget-object v14, Lw0/f8;->a:Lo2/h;

    invoke-virtual {v14, v15, v2}, Lo2/h;->b(Ljava/lang/CharSequence;I)Lo2/e;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lo2/e;->a()Ljava/util/List;

    move-result-object v2

    check-cast v2, Lo2/d;

    invoke-virtual {v2, v3}, Lo2/d;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_a

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toLowerCase(...)"

    invoke-static {v2, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v9}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v11, v10}, Lcom/ex/auto/MainActivity;->I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v15, v4

    move-object/from16 v17, v5

    const-wide/16 v4, 0x0

    invoke-interface {v3, v14, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    new-instance v3, Lw0/yb;

    const-string v14, ""

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v20

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v21

    if-eqz v21, :cond_b

    invoke-virtual {v9, v7}, Lcom/ex/auto/MainActivity;->y2(Ljava/io/File;)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v16, v7

    :goto_5
    move-wide/from16 v21, v4

    goto :goto_6

    :cond_b
    const/16 v16, 0x0

    goto :goto_5

    :goto_6
    iget-wide v4, v6, Lw0/zb;->c:J

    move-wide/from16 v23, v4

    iget-wide v4, v6, Lw0/zb;->e:J

    if-nez v20, :cond_c

    sget-object v0, Lw0/g4;->c:Lw0/g4;

    goto :goto_8

    :cond_c
    cmp-long v7, v23, v21

    if-gtz v7, :cond_d

    :goto_7
    move-object v0, v15

    goto :goto_8

    :cond_d
    if-nez v16, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    cmp-long v7, v25, v23

    if-eqz v7, :cond_f

    goto :goto_8

    :cond_f
    if-eqz v2, :cond_14

    if-nez v8, :cond_10

    goto :goto_7

    :cond_10
    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_11
    move-object/from16 v0, v17

    goto :goto_8

    :cond_12
    cmp-long v2, v4, v21

    if-lez v2, :cond_15

    cmp-long v2, v18, v21

    if-gtz v2, :cond_13

    goto :goto_8

    :cond_13
    cmp-long v2, v4, v18

    if-lez v2, :cond_11

    goto :goto_8

    :cond_14
    cmp-long v2, v4, v21

    if-lez v2, :cond_11

    cmp-long v2, v18, v21

    if-lez v2, :cond_11

    cmp-long v2, v4, v18

    if-lez v2, :cond_11

    :cond_15
    :goto_8
    invoke-direct {v3, v6, v14, v0}, Lw0/yb;-><init>(Lw0/zb;Ljava/lang/String;Lw0/g4;)V

    goto :goto_a

    :cond_16
    iget-object v0, v6, Lw0/zb;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/ex/auto/MainActivity;->K0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    new-instance v3, Lw0/yb;

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v2

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-virtual {v9, v7}, Lcom/ex/auto/MainActivity;->H0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v14

    goto :goto_9

    :cond_17
    const/4 v14, 0x0

    :goto_9
    invoke-static {v14, v0, v2}, Lw0/t1;->x(Ljava/lang/String;Ljava/lang/String;Z)Lw0/g4;

    move-result-object v2

    invoke-direct {v3, v6, v0, v2}, Lw0/yb;-><init>(Lw0/zb;Ljava/lang/String;Lw0/g4;)V

    :goto_a
    move-object v8, v3

    goto :goto_c

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const v2, 0x7f0f0120

    invoke-virtual {v9, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_b
    move-object v8, v0

    :goto_c
    iget-object v0, v9, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v7, Lw0/ka;

    invoke-direct/range {v7 .. v13}, Lw0/ka;-><init>(Ljava/lang/Object;Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1
    iget-object v0, v1, La1/l;->e:Landroid/content/ContextWrapper;

    check-cast v0, Lcom/ex/auto/HomeWidgetsPollService;

    iget-boolean v2, v1, La1/l;->b:Z

    iget-object v3, v1, La1/l;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v1, La1/l;->f:Ljava/lang/Object;

    check-cast v4, Landroid/appwidget/AppWidgetManager;

    iget-boolean v5, v1, La1/l;->d:Z

    iget-object v6, v0, Lcom/ex/auto/HomeWidgetsPollService;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-boolean v6, v0, Lcom/ex/auto/HomeWidgetsPollService;->e:Z

    if-eqz v6, :cond_19

    goto/16 :goto_e

    :cond_19
    if-eqz v2, :cond_20

    invoke-static {v4}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_d

    :sswitch_0
    const-string v2, "com.ex.auto.widget.WHEEL_HEAT_TOGGLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto/16 :goto_d

    :sswitch_1
    const-string v2, "com.ex.auto.widget.FAN_MINUS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto/16 :goto_d

    :sswitch_2
    const-string v2, "com.ex.auto.widget.REGEN_MID"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto/16 :goto_d

    :sswitch_3
    const-string v2, "com.ex.auto.widget.REGEN_LOW"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto/16 :goto_d

    :sswitch_4
    const-string v2, "com.ex.auto.widget.SEAT_HEAT_PASSENGER_CYCLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto/16 :goto_d

    :sswitch_5
    const-string v2, "com.ex.auto.widget.SEAT_HEAT_DRIVER_CYCLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto/16 :goto_d

    :sswitch_6
    const-string v2, "com.ex.auto.widget.VENT_FLOOR_WINDSHIELD"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto/16 :goto_d

    :sswitch_7
    const-string v2, "com.ex.auto.widget.VENT_PREV"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto/16 :goto_d

    :sswitch_8
    const-string v2, "com.ex.auto.widget.VENT_NEXT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto/16 :goto_d

    :sswitch_9
    const-string v2, "com.ex.auto.widget.VENT_FACE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto/16 :goto_d

    :sswitch_a
    const-string v2, "com.ex.auto.widget.DRIVE_ECO"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto/16 :goto_d

    :sswitch_b
    const-string v2, "com.ex.auto.widget.REGEN_PREV"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto/16 :goto_d

    :sswitch_c
    const-string v2, "com.ex.auto.widget.REGEN_NEXT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto/16 :goto_d

    :sswitch_d
    const-string v2, "com.ex.auto.widget.REGEN_HIGH"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto/16 :goto_d

    :sswitch_e
    const-string v2, "com.ex.auto.widget.VENT_FLOOR"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto/16 :goto_d

    :sswitch_f
    const-string v2, "com.ex.auto.widget.DRIVE_COMFORT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto/16 :goto_d

    :sswitch_10
    const-string v2, "com.ex.auto.widget.REAR_DEFROST_TOGGLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto/16 :goto_d

    :sswitch_11
    const-string v2, "com.ex.auto.widget.TEMP_PLUS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto/16 :goto_d

    :sswitch_12
    const-string v2, "com.ex.auto.widget.DRIVE_SPORT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto/16 :goto_d

    :sswitch_13
    const-string v2, "com.ex.auto.widget.TEMP_MINUS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto/16 :goto_d

    :cond_1a
    invoke-virtual {v0, v4}, Lcom/ex/auto/HomeWidgetsPollService;->m(Landroid/appwidget/AppWidgetManager;)V

    goto/16 :goto_d

    :sswitch_14
    const-string v2, "com.ex.auto.widget.AC_TOGGLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto/16 :goto_d

    :cond_1b
    invoke-virtual {v0, v4}, Lcom/ex/auto/HomeWidgetsPollService;->n(Landroid/appwidget/AppWidgetManager;)V

    goto :goto_d

    :sswitch_15
    const-string v2, "com.ex.auto.widget.WINDSHIELD_HEAT_TOGGLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_d

    :sswitch_16
    const-string v2, "com.ex.auto.widget.RECIRC_TOGGLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_d

    :sswitch_17
    const-string v2, "com.ex.auto.widget.FAN_PLUS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_d

    :cond_1c
    invoke-virtual {v0, v4}, Lcom/ex/auto/HomeWidgetsPollService;->k(Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {v0, v4}, Lcom/ex/auto/HomeWidgetsPollService;->n(Landroid/appwidget/AppWidgetManager;)V

    goto :goto_d

    :sswitch_18
    const-string v2, "com.ex.auto.widget.VENT_WINDSHIELD"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_d

    :sswitch_19
    const-string v2, "com.ex.auto.widget.FRONT_MAX_DEFROST_TOGGLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_d

    :cond_1d
    invoke-virtual {v0, v4}, Lcom/ex/auto/HomeWidgetsPollService;->l(Landroid/appwidget/AppWidgetManager;)V

    goto :goto_d

    :sswitch_1a
    const-string v2, "com.ex.auto.widget.VENT_FACE_FLOOR"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_d

    :cond_1e
    invoke-virtual {v0, v4}, Lcom/ex/auto/HomeWidgetsPollService;->o(Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {v0, v4}, Lcom/ex/auto/HomeWidgetsPollService;->n(Landroid/appwidget/AppWidgetManager;)V

    goto :goto_d

    :sswitch_1b
    const-string v2, "com.ex.auto.widget.DRIVE_PREV"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_d

    :sswitch_1c
    const-string v2, "com.ex.auto.widget.DRIVE_NEXT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_d

    :cond_1f
    invoke-virtual {v0, v4}, Lcom/ex/auto/HomeWidgetsPollService;->j(Landroid/appwidget/AppWidgetManager;)V

    :goto_d
    if-eqz v5, :cond_20

    invoke-virtual {v0, v3}, Lcom/ex/auto/HomeWidgetsPollService;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_20

    invoke-virtual {v0, v2}, Lcom/ex/auto/HomeWidgetsPollService;->p(Ljava/lang/String;)V

    :cond_20
    iget-object v2, v0, Lcom/ex/auto/HomeWidgetsPollService;->a:Landroid/os/Handler;

    iget-object v3, v0, Lcom/ex/auto/HomeWidgetsPollService;->z:Landroidx/activity/d;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, v0, Lcom/ex/auto/HomeWidgetsPollService;->a:Landroid/os/Handler;

    iget-object v0, v0, Lcom/ex/auto/HomeWidgetsPollService;->z:Landroidx/activity/d;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_e
    return-void

    :pswitch_2
    iget-object v0, v1, La1/l;->e:Landroid/content/ContextWrapper;

    check-cast v0, Lcom/geely/hvacstepperv2/TempStepperService;

    iget-object v2, v1, La1/l;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-boolean v3, v1, La1/l;->b:Z

    iget-object v4, v1, La1/l;->f:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-boolean v5, v1, La1/l;->d:Z

    iget-object v6, v0, Lcom/geely/hvacstepperv2/TempStepperService;->h:Landroid/widget/TextView;

    if-eqz v6, :cond_24

    iget-object v7, v0, Lcom/geely/hvacstepperv2/TempStepperService;->i:Landroid/widget/TextView;

    if-nez v7, :cond_21

    goto :goto_10

    :cond_21
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/geely/hvacstepperv2/TempStepperService;->h:Landroid/widget/TextView;

    const v6, -0x55007778

    const v7, -0xb52180

    if-eqz v3, :cond_22

    move v3, v7

    goto :goto_f

    :cond_22
    move v3, v6

    :goto_f
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/geely/hvacstepperv2/TempStepperService;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/geely/hvacstepperv2/TempStepperService;->i:Landroid/widget/TextView;

    if-eqz v5, :cond_23

    move v6, v7

    :cond_23
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_24
    :goto_10
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x7d170a7f -> :sswitch_1c
        -0x7d15f33f -> :sswitch_1b
        -0x79a167e5 -> :sswitch_1a
        -0x78bc9446 -> :sswitch_19
        -0x713635fe -> :sswitch_18
        -0x67c00581 -> :sswitch_17
        -0x5308b810 -> :sswitch_16
        -0x4b46c9f2 -> :sswitch_15
        -0x35606de8 -> :sswitch_14
        -0x327c1702 -> :sswitch_13
        -0x257ef17a -> :sswitch_12
        -0x22a7c0d4 -> :sswitch_11
        -0x15ccf06e -> :sswitch_10
        -0x11c2b3a2 -> :sswitch_f
        -0xed05f45 -> :sswitch_e
        0x13c0295d -> :sswitch_d
        0x13c2d6ae -> :sswitch_c
        0x13c3edee -> :sswitch_b
        0x14bd0f23 -> :sswitch_a
        0x419603ae -> :sswitch_9
        0x4199b844 -> :sswitch_8
        0x419acf84 -> :sswitch_7
        0x44661775 -> :sswitch_6
        0x47c53f7d -> :sswitch_5
        0x48c8a473 -> :sswitch_4
        0x63bbf019 -> :sswitch_3
        0x63bbf30d -> :sswitch_2
        0x6f93980b -> :sswitch_1
        0x71967a86 -> :sswitch_0
    .end sparse-switch
.end method
