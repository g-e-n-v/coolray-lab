.class public final synthetic Lw0/j3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Float;

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/Float;

.field public final synthetic f:Z

.field public final synthetic g:Ljava/lang/Float;

.field public final synthetic h:Z

.field public final synthetic i:Li2/m;

.field public final synthetic j:Z

.field public final synthetic k:Li2/l;

.field public final synthetic l:Li2/j;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;ZLjava/lang/Float;ZLjava/lang/Float;ZLjava/lang/Float;ZLi2/m;ZLi2/l;Li2/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/j3;->a:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean p2, p0, Lw0/j3;->b:Z

    iput-object p3, p0, Lw0/j3;->c:Ljava/lang/Float;

    iput-boolean p4, p0, Lw0/j3;->d:Z

    iput-object p5, p0, Lw0/j3;->e:Ljava/lang/Float;

    iput-boolean p6, p0, Lw0/j3;->f:Z

    iput-object p7, p0, Lw0/j3;->g:Ljava/lang/Float;

    iput-boolean p8, p0, Lw0/j3;->h:Z

    iput-object p9, p0, Lw0/j3;->i:Li2/m;

    iput-boolean p10, p0, Lw0/j3;->j:Z

    iput-object p11, p0, Lw0/j3;->k:Li2/l;

    iput-object p12, p0, Lw0/j3;->l:Li2/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 36

    move-object/from16 v0, p0

    iget-object v1, v0, Lw0/j3;->a:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean v2, v0, Lw0/j3;->b:Z

    iget-object v3, v0, Lw0/j3;->c:Ljava/lang/Float;

    iget-boolean v10, v0, Lw0/j3;->d:Z

    iget-object v11, v0, Lw0/j3;->e:Ljava/lang/Float;

    iget-boolean v12, v0, Lw0/j3;->f:Z

    iget-object v13, v0, Lw0/j3;->g:Ljava/lang/Float;

    iget-boolean v14, v0, Lw0/j3;->h:Z

    iget-object v15, v0, Lw0/j3;->i:Li2/m;

    iget-boolean v4, v0, Lw0/j3;->j:Z

    iget-object v5, v0, Lw0/j3;->k:Li2/l;

    iget-object v6, v0, Lw0/j3;->l:Li2/j;

    sget-object v7, Lw0/wd;->a:Lw0/wd;

    sget-object v7, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v1}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "modo_oficina"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_16

    :cond_0
    sget-boolean v7, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v7, :cond_21

    const-string v16, ""

    const/16 v17, -0x1

    const-string v18, "?"

    const-string v8, "getApplicationContext(...)"

    move/from16 v19, v2

    const-string v2, "getString(...)"

    if-eqz v19, :cond_6

    sget v19, Lw0/pg;->a:I

    invoke-static {v1}, Lw0/wd;->a(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_1

    move-object v0, v2

    move/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v8

    goto/16 :goto_3

    :cond_1
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v9

    const/16 v7, -0x64

    if-lt v9, v7, :cond_3

    const/16 v7, 0x64

    if-le v9, v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "\u00b0C"

    move-object/from16 v20, v3

    move-object v0, v9

    move/from16 v9, v17

    goto :goto_1

    :cond_3
    :goto_0
    const/high16 v7, -0x10000

    const-string v9, "X"

    move-object v0, v9

    move v9, v7

    move-object v7, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v16

    goto :goto_1

    :cond_4
    move-object/from16 v20, v3

    move-object/from16 v0, v16

    move/from16 v9, v17

    move-object/from16 v7, v18

    :goto_1
    const v3, 0x7f0f0340

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v20, :cond_5

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v21, v2

    filled-new-array/range {v20 .. v20}, [Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v3

    const v3, 0x7f0f033f

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    const v2, 0x7f0f032f

    goto :goto_2

    :cond_5
    move-object/from16 v21, v2

    move-object/from16 v20, v3

    const v2, 0x7f0f032f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-static {v3}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v7, v0, v9}, Lw0/pg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    const/16 v2, 0x3aad

    move-object v7, v3

    const/16 v3, 0xf

    move v9, v4

    const/16 v4, 0x16

    move-object/from16 v22, v5

    const-string v5, "StatusIcon_OutsideTemperature"

    move/from16 v23, v9

    const/4 v9, 0x0

    move-object/from16 v25, v6

    move-object/from16 v26, v8

    move-object/from16 v6, v20

    move-object/from16 v24, v22

    move-object v8, v0

    move-object/from16 v0, v21

    invoke-static/range {v1 .. v9}, Lw0/pg;->j(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Icon;Landroid/app/PendingIntent;)V

    goto :goto_3

    :cond_6
    move-object v0, v2

    move/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v8

    sget v2, Lw0/pg;->a:I

    invoke-static {v1}, Lw0/pg;->e(Landroid/content/Context;)V

    :goto_3
    const-class v2, Lcom/ex/auto/MainActivity;

    if-eqz v10, :cond_f

    sget v5, Lw0/pg;->a:I

    invoke-static {v1}, Lw0/wd;->a(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object/from16 v27, v2

    move-object/from16 v11, v26

    const/4 v10, 0x1

    goto/16 :goto_a

    :cond_7
    if-eqz v11, :cond_a

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-static {v6}, Lw0/pg;->i(F)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x50

    if-lt v5, v7, :cond_8

    const v5, -0xe0408b

    goto :goto_4

    :cond_8
    const/16 v7, 0x14

    if-ge v5, v7, :cond_9

    const/16 v5, -0x7600

    goto :goto_4

    :cond_9
    move/from16 v5, v17

    :goto_4
    const-string v16, "%"

    :goto_5
    move-object/from16 v7, v16

    goto :goto_6

    :cond_a
    move/from16 v5, v17

    move-object/from16 v6, v18

    goto :goto_5

    :goto_6
    const v8, 0x7f0f00c3

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v11, :cond_b

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-static {v9}, Lw0/pg;->i(F)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const v10, 0x7f0f00c2

    invoke-virtual {v1, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    :cond_b
    const v9, 0x7f0f032f

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    :goto_7
    invoke-static {v9}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    move-object/from16 v11, v26

    invoke-static {v10, v11}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v6, v7, v5}, Lw0/pg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v11}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v10, "com.flyme.auto.energy"

    const-string v3, "com.flyme.auto.energy.EnergyActivity"

    invoke-virtual {v7, v10, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v7, 0x10200000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    const-string v7, "addFlags(...)"

    invoke-static {v3, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_c

    sget-object v4, Lw0/x3;->a:Lw0/x3;

    goto :goto_8

    :catchall_0
    :cond_c
    sget-object v4, Lw0/x3;->b:Lw0/x3;

    :goto_8
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_e

    const/4 v10, 0x1

    if-ne v4, v10, :cond_d

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    :cond_d
    new-instance v0, Landroidx/fragment/app/q;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_e
    const/4 v10, 0x1

    :goto_9
    const/16 v4, 0x61

    const/high16 v7, 0xc000000

    invoke-static {v6, v4, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const-string v4, "getActivity(...)"

    invoke-static {v3, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    const/16 v2, 0x3aac

    move/from16 v16, v7

    move-object v7, v9

    move-object v9, v3

    const/16 v3, 0x61

    move-object v6, v4

    const/16 v4, 0x20

    move-object/from16 v20, v6

    move-object v6, v8

    move-object v8, v5

    const-string v5, "StatusIcon_BatteryPercent"

    move-object/from16 v27, v20

    invoke-static/range {v1 .. v9}, Lw0/pg;->j(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Icon;Landroid/app/PendingIntent;)V

    goto :goto_a

    :cond_f
    move-object/from16 v27, v2

    move-object/from16 v11, v26

    const/4 v10, 0x1

    sget v2, Lw0/pg;->a:I

    invoke-static {v1}, Lw0/pg;->d(Landroid/content/Context;)V

    :goto_a
    if-eqz v12, :cond_13

    sget v2, Lw0/pg;->a:I

    sget-object v2, Lw0/wd;->a:Lw0/wd;

    invoke-static {v1}, Lw0/wd;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto/16 :goto_d

    :cond_10
    if-eqz v13, :cond_11

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v29, v2

    goto :goto_b

    :cond_11
    move-object/from16 v29, v18

    :goto_b
    const v2, 0x7f0f034c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v13, :cond_12

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f0f034b

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_c

    :cond_12
    const v2, 0x7f0f032f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    :goto_c
    invoke-static {v7}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v11}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v34, 0x1

    const v35, 0x3f0ccccd    # 0.55f

    const-string v30, "km"

    const/16 v31, -0x1

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v28, v2

    invoke-static/range {v28 .. v35}, Lw0/pg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIZZF)Landroid/graphics/drawable/Icon;

    move-result-object v8

    const/16 v2, 0x3ab4

    const/16 v3, 0x60

    const/16 v4, 0x21

    const-string v5, "StatusIcon_TotalMileage"

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lw0/pg;->j(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Icon;Landroid/app/PendingIntent;)V

    goto :goto_d

    :cond_13
    sget v2, Lw0/pg;->a:I

    invoke-static {v1}, Lw0/pg;->f(Landroid/content/Context;)V

    :goto_d
    if-eqz v14, :cond_17

    sget v2, Lw0/pg;->a:I

    iget-object v2, v15, Li2/m;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    sget-object v3, Lw0/wd;->a:Lw0/wd;

    invoke-static {v1}, Lw0/wd;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/high16 v12, 0xc000000

    goto/16 :goto_10

    :cond_14
    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    :cond_15
    move-object/from16 v29, v18

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "zerar_viagem"

    invoke-virtual {v4, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    const/16 v5, 0x5e

    const/high16 v12, 0xc000000

    invoke-static {v3, v5, v4, v12}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    const v3, 0x7f0f034e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f0f034d

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_e
    move-object v7, v2

    goto :goto_f

    :cond_16
    const v2, 0x7f0f032f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :goto_f
    invoke-static {v7}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v11}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v34, 0x1

    const v35, 0x3f0ccccd    # 0.55f

    const-string v30, "km"

    const/16 v31, -0x1

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v28, v2

    invoke-static/range {v28 .. v35}, Lw0/pg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIZZF)Landroid/graphics/drawable/Icon;

    move-result-object v8

    const/16 v2, 0x3ab2

    const/16 v3, 0x5e

    const/16 v4, 0x17

    const-string v5, "StatusIcon_TripMileage"

    invoke-static/range {v1 .. v9}, Lw0/pg;->j(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Icon;Landroid/app/PendingIntent;)V

    goto :goto_10

    :cond_17
    const/high16 v12, 0xc000000

    sget v2, Lw0/pg;->a:I

    invoke-static {v1}, Lw0/pg;->g(Landroid/content/Context;)V

    :goto_10
    const-class v3, Landroid/app/NotificationManager;

    if-eqz v23, :cond_1f

    move-object/from16 v4, v24

    iget v4, v4, Li2/l;->a:I

    move-object/from16 v5, v25

    iget-boolean v5, v5, Li2/j;->a:Z

    sget-object v6, Lw0/wd;->a:Lw0/wd;

    invoke-static {v1}, Lw0/wd;->a(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_18

    goto/16 :goto_15

    :cond_18
    const/4 v6, 0x4

    if-eqz v5, :cond_19

    const/4 v7, 0x0

    invoke-static {v4, v7, v6}, Lk1/a;->k(III)I

    move-result v9

    goto :goto_11

    :cond_19
    const/4 v9, 0x0

    :goto_11
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v11}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x38

    invoke-static {v4, v7}, Lw0/e8;->u(Landroid/content/Context;I)I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3f1c28f6    # 0.61f

    div-float/2addr v7, v8

    float-to-int v7, v7

    if-ge v7, v10, :cond_1a

    move v7, v10

    :cond_1a
    const/16 v8, 0x8

    invoke-static {v4, v8}, Lw0/e8;->u(Landroid/content/Context;I)I

    move-result v8

    const/16 v11, 0xa

    invoke-static {v4, v11}, Lw0/e8;->u(Landroid/content/Context;I)I

    move-result v11

    const/4 v13, 0x6

    invoke-static {v4, v13}, Lw0/e8;->u(Landroid/content/Context;I)I

    move-result v13

    mul-int/lit8 v14, v8, 0x2

    mul-int/lit8 v15, v11, 0x4

    add-int/2addr v15, v14

    const/4 v14, 0x3

    mul-int/2addr v14, v13

    add-int/2addr v14, v15

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v7, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v10}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v10, 0x2

    invoke-static {v4, v10}, Lw0/e8;->u(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    int-to-float v7, v7

    const v18, 0x3f6b851f    # 0.92f

    mul-float v12, v7, v18

    const v18, 0x3f0ccccd    # 0.55f

    mul-float v18, v18, v7

    const v19, 0x3dcccccd    # 0.1f

    mul-float v7, v7, v19

    const/4 v10, 0x0

    :goto_12
    if-ge v10, v6, :cond_1c

    int-to-float v6, v8

    move/from16 v22, v5

    int-to-float v5, v10

    move/from16 v23, v5

    add-int v5, v11, v13

    int-to-float v5, v5

    mul-float v5, v5, v23

    add-float/2addr v5, v6

    sub-float v6, v18, v7

    move/from16 v24, v6

    move/from16 v21, v7

    const/4 v6, 0x4

    int-to-float v7, v6

    const/high16 v25, 0x3f800000    # 1.0f

    sub-float v7, v7, v25

    div-float v7, v23, v7

    mul-float v7, v7, v24

    sub-float v7, v18, v7

    if-ge v10, v9, :cond_1b

    move/from16 v6, v17

    goto :goto_13

    :cond_1b
    const v23, 0x40ffffff    # 7.9999995f

    move/from16 v6, v23

    :goto_13
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v6, Landroid/graphics/RectF;

    move/from16 v23, v8

    int-to-float v8, v11

    add-float/2addr v8, v5

    invoke-direct {v6, v5, v7, v8, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v15, v6, v4, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v10, v10, 0x1

    move/from16 v7, v21

    move/from16 v5, v22

    move/from16 v8, v23

    const/4 v6, 0x4

    goto :goto_12

    :cond_1c
    move/from16 v22, v5

    invoke-static {v14}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    const-string v4, "createWithBitmap(...)"

    invoke-static {v2, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v22, :cond_1d

    const v4, 0x7f0f0302

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_14

    :cond_1d
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f0f0305

    invoke-virtual {v1, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_14
    invoke-static {v4}, Li2/g;->b(Ljava/lang/Object;)V

    const v5, 0x7f0f0306

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    if-nez v3, :cond_1e

    goto/16 :goto_15

    :cond_1e
    new-instance v6, Landroid/app/NotificationChannel;

    const v7, 0x7f0f0301

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "central_ex_status_signal"

    const/4 v9, 0x2

    invoke-direct {v6, v8, v7, v9}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    invoke-virtual {v3, v6}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v6, Landroid/content/Intent;

    move-object/from16 v7, v27

    invoke-direct {v6, v0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v7, 0x5d

    const/high16 v12, 0xc000000

    invoke-static {v0, v7, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    new-instance v9, Landroid/app/Notification$Builder;

    invoke-direct {v9, v0, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const-string v4, "build(...)"

    invoke-static {v0, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "flag_status_icon_notification"

    invoke-virtual {v4, v5, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "flag_status_icon_id"

    invoke-virtual {v4, v5, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "flag_status_icon_describe"

    const-string v6, "StatusIcon_PhoneSignal"

    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "flag_status_icon_icon"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v5, "flag_status_icon_pressed_icon"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "flag_status_icon_hide"

    const/4 v7, 0x0

    invoke-virtual {v4, v2, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "flag_status_icon_rank"

    const/16 v5, 0x21

    invoke-virtual {v4, v2, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "flag_status_icon_space_x"

    const/4 v10, 0x1

    invoke-virtual {v4, v2, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "flag_status_icon_is_pick_on"

    invoke-virtual {v4, v2, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "flag_status_icon_specific_width"

    invoke-virtual {v4, v2, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v2, 0x3ab6

    :try_start_1
    invoke-virtual {v3, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_15

    :cond_1f
    const/16 v2, 0x3ab6

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_20

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    :catchall_1
    :cond_20
    :goto_15
    invoke-virtual {v1}, Lcom/ex/auto/CentralWatchdogService;->u0()V

    :cond_21
    :goto_16
    return-void
.end method
