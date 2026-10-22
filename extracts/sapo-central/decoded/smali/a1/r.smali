.class public final synthetic La1/r;
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

    iput p1, p0, La1/r;->a:I

    iput-object p2, p0, La1/r;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v1, p0

    iget v0, v1, La1/r;->a:I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, La1/r;->b:Ljava/lang/Object;

    check-cast v0, Lz0/e;

    iget-object v0, v0, Lz0/e;->b:Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    const-string v2, "wake"

    sget-boolean v3, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->M:Z

    invoke-virtual {v0, v2}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->c(Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, v1, La1/r;->b:Ljava/lang/Object;

    check-cast v0, Lz0/e;

    iget-object v0, v0, Lz0/e;->b:Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    const-string v2, "external_update"

    sget-boolean v3, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->M:Z

    invoke-virtual {v0, v2}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->c(Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v0, v1, La1/r;->b:Ljava/lang/Object;

    check-cast v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    sget-boolean v2, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->M:Z

    invoke-virtual {v0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->d()V

    return-void

    :pswitch_2
    iget-object v0, v1, La1/r;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    sget-boolean v2, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->M:Z

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :pswitch_3
    iget-object v0, v1, La1/r;->b:Ljava/lang/Object;

    check-cast v0, Lw0/k0;

    sget v3, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    const-wide/16 v3, 0x4b0

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object v3, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    if-eqz v3, :cond_6

    iget-object v4, v0, Lw0/k0;->b:Ljava/lang/String;

    iget-object v0, v0, Lw0/k0;->c:Ljava/lang/String;

    invoke-static {}, Lw0/og;->f()Lw0/ng;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v3, v4}, Lw0/og;->n(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v3, v0}, Lw0/og;->n(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v5}, Lcom/ex/auto/SplitFloaterService;->d(Lw0/ng;)Lw0/lg;

    move-result-object v8

    invoke-static {v6, v4, v8}, Lw0/og;->k(Ljava/lang/String;Ljava/lang/String;Lw0/lg;)Lw0/mg;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    const-wide/16 v8, 0x2bc

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    sget-object v8, Lw0/og;->a:Lo2/h;

    invoke-virtual {v3, v5}, Lcom/ex/auto/SplitFloaterService;->e(Lw0/ng;)Lw0/lg;

    move-result-object v3

    invoke-static {v7, v0, v3}, Lw0/og;->k(Ljava/lang/String;Ljava/lang/String;Lw0/lg;)Lw0/mg;

    move-result-object v3

    sget-object v5, Lw0/ae;->a:Lw0/ae;

    const-string v5, "Split"

    const-string v7, "par: "

    const-string v8, " | "

    const-string v9, " \u2192 "

    invoke-static {v7, v4, v8, v0, v9}, Landroidx/activity/result/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v3, :cond_5

    const-string v4, "ok"

    goto :goto_0

    :cond_5
    const-string v4, "direita falhou"

    :goto_0
    invoke-static {v0, v4, v5, v2}, Landroidx/activity/result/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v3, :cond_6

    invoke-static {v6}, Lw0/og;->g(Lw0/mg;)Z

    :cond_6
    :goto_1
    return-void

    :pswitch_4
    iget-object v0, v1, La1/r;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    :try_start_2
    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->reconnect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    sget-object v0, Lw0/od;->a:Lw0/od;

    invoke-virtual {v0}, Lw0/od;->i()V

    :goto_2
    return-void

    :pswitch_5
    iget-object v0, v1, La1/r;->b:Ljava/lang/Object;

    check-cast v0, Lw0/od;

    sget-boolean v2, Lw0/od;->g:Z

    if-nez v2, :cond_7

    invoke-virtual {v0}, Lw0/od;->i()V

    :cond_7
    return-void

    :pswitch_6
    iget-object v0, v1, La1/r;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MediaBarFloaterService;

    sget-object v2, Lcom/ex/auto/MediaBarFloaterService;->v:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/ex/auto/MediaBarFloaterService;->b()V

    invoke-virtual {v0}, Lcom/ex/auto/MediaBarFloaterService;->e()V

    return-void

    :pswitch_7
    iget-object v0, v1, La1/r;->b:Ljava/lang/Object;

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v3, -0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "id"

    const-string v5, "alertTitle"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, -0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    if-nez v10, :cond_8

    goto/16 :goto_c

    :cond_8
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "getContext(...)"

    invoke-static {v11, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v13, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v14, 0x4c

    int-to-float v14, v14

    mul-float/2addr v14, v12

    float-to-int v14, v14

    sub-int/2addr v13, v14

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    iget v14, v14, Landroid/view/WindowManager$LayoutParams;->width:I

    if-gtz v14, :cond_a

    const/16 v14, 0x2f8

    int-to-float v14, v14

    mul-float/2addr v14, v12

    float-to-int v14, v14

    if-le v14, v13, :cond_9

    goto :goto_3

    :cond_9
    move v13, v14

    :goto_3
    invoke-virtual {v10, v13, v8}, Landroid/view/Window;->setLayout(II)V

    :cond_a
    const v8, 0x7f070069

    invoke-virtual {v10, v8}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const v8, 0x3f147ae1    # 0.58f

    invoke-virtual {v10, v8}, Landroid/view/Window;->setDimAmount(F)V

    sget-object v8, Lu/n;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v11}, Landroid/content/Context;->isRestricted()Z

    move-result v8

    const/4 v13, 0x0

    if-eqz v8, :cond_b

    move/from16 v17, v12

    move-object v8, v13

    goto :goto_4

    :cond_b
    move-object v8, v13

    new-instance v13, Landroid/util/TypedValue;

    invoke-direct {v13}, Landroid/util/TypedValue;-><init>()V

    const/4 v15, 0x0

    const/16 v16, 0x0

    move v14, v12

    const/high16 v12, 0x7f080000

    move/from16 v17, v14

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lu/n;->a(Landroid/content/Context;ILandroid/util/TypedValue;ILu/b;Z)Landroid/graphics/Typeface;

    move-result-object v13

    :goto_4
    const v12, 0x7f050087

    invoke-virtual {v11, v12}, Landroid/content/Context;->getColor(I)I

    move-result v14

    const v12, 0x7f050089

    move-object v15, v13

    invoke-virtual {v11, v12}, Landroid/content/Context;->getColor(I)I

    move-result v13

    const v8, 0x7f05007e

    move-object/from16 v16, v15

    invoke-virtual {v11, v8}, Landroid/content/Context;->getColor(I)I

    move-result v15

    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    const-string v12, "getDecorView(...)"

    invoke-static {v8, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v11

    move-object/from16 v11, v16

    const v18, 0x7f050089

    move-object/from16 v16, v8

    invoke-static/range {v11 .. v16}, Lw0/m;->e(Landroid/graphics/Typeface;Landroid/content/Context;IIILandroid/view/View;)V

    move-object v15, v11

    move-object v11, v12

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v5, v4, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-nez v8, :cond_c

    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "android"

    invoke-virtual {v11, v5, v4, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/widget/TextView;

    :cond_c
    const/4 v4, 0x1

    if-eqz v8, :cond_d

    const/high16 v5, 0x42080000    # 34.0f

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v8, v15, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_d
    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    const v8, 0x102000b

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_e

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v8, 0x4

    int-to-float v8, v8

    mul-float v8, v8, v17

    float-to-int v8, v8

    int-to-float v8, v8

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v5, v8, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_e
    instance-of v5, v0, Le/i;

    if-eqz v5, :cond_f

    filled-new-array {v7, v9, v3}, [Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v9, v0

    check-cast v9, Le/i;

    invoke-virtual {v9, v7}, Le/i;->c(I)Landroid/widget/Button;

    move-result-object v7

    new-instance v9, Lx1/a;

    invoke-direct {v9, v8, v7}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_f
    instance-of v5, v0, Landroid/app/AlertDialog;

    if-eqz v5, :cond_10

    filled-new-array {v7, v9, v3}, [Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v9, v0

    check-cast v9, Landroid/app/AlertDialog;

    invoke-virtual {v9, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    new-instance v9, Lx1/a;

    invoke-direct {v9, v8, v7}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_10
    sget-object v5, Ly1/p;->a:Ly1/p;

    :cond_11
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx1/a;

    iget-object v5, v3, Lx1/a;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    iget-object v3, v3, Lx1/a;->b:Ljava/lang/Object;

    check-cast v3, Landroid/widget/Button;

    if-eqz v3, :cond_17

    if-ne v5, v6, :cond_13

    move v5, v4

    goto :goto_8

    :cond_13
    move v5, v2

    :goto_8
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setLetterSpacing(F)V

    const/high16 v9, 0x41900000    # 18.0f

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    if-eqz v5, :cond_14

    const v10, 0x7f07005f

    goto :goto_9

    :cond_14
    const v10, 0x7f070067

    :goto_9
    invoke-virtual {v3, v10}, Landroid/view/View;->setBackgroundResource(I)V

    if-eqz v5, :cond_15

    const v12, 0x7f05007e

    goto :goto_a

    :cond_15
    move/from16 v12, v18

    :goto_a
    invoke-virtual {v7, v12}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v5, 0x16

    int-to-float v5, v5

    mul-float/2addr v5, v8

    float-to-int v5, v5

    invoke-virtual {v3, v5, v2, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    const/16 v5, 0x34

    int-to-float v5, v5

    mul-float/2addr v5, v8

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMinHeight(I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setMinimumHeight(I)V

    const/16 v5, 0x78

    int-to-float v5, v5

    mul-float/2addr v5, v8

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMinWidth(I)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_16

    move-object v13, v3

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_b

    :cond_16
    move-object v13, v9

    :goto_b
    if-eqz v13, :cond_12

    const/16 v3, 0xc

    int-to-float v3, v3

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-virtual {v13, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto/16 :goto_7

    :cond_17
    const/4 v9, 0x0

    goto/16 :goto_7

    :cond_18
    :goto_c
    return-void

    :pswitch_8
    iget-object v0, v1, La1/r;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0, v2, v2}, Landroid/view/View;->scrollTo(II)V

    return-void

    :pswitch_9
    iget-object v0, v1, La1/r;->b:Ljava/lang/Object;

    check-cast v0, Lw0/f2;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lw0/f2;->a()Ljava/lang/Object;

    return-void

    :pswitch_a
    iget-object v0, v1, La1/r;->b:Ljava/lang/Object;

    check-cast v0, Lw0/p3;

    iput-boolean v2, v0, Lw0/p3;->e:Z

    iget-object v2, v0, Lw0/p3;->c:Lw0/h9;

    invoke-virtual {v2}, Lw0/h9;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v0, v0, Lw0/p3;->d:Lw0/h9;

    invoke-virtual {v0}, Lw0/h9;->a()Ljava/lang/Object;

    :cond_19
    return-void

    :pswitch_b
    iget-object v0, v1, La1/r;->b:Ljava/lang/Object;

    check-cast v0, Lh2/l;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v2}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_c
    iget-object v0, v1, La1/r;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroidx/emoji2/text/q;

    const-string v0, "fetchFonts result is not OK. ("

    iget-object v4, v3, Landroidx/emoji2/text/q;->d:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iget-object v5, v3, Landroidx/emoji2/text/q;->h:La1/b;

    if-nez v5, :cond_1a

    monitor-exit v4

    goto/16 :goto_12

    :catchall_1
    move-exception v0

    goto/16 :goto_14

    :cond_1a
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v3}, Landroidx/emoji2/text/q;->b()Lz/h;

    move-result-object v4

    iget v5, v4, Lz/h;->e:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1b

    iget-object v6, v3, Landroidx/emoji2/text/q;->d:Ljava/lang/Object;

    monitor-enter v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    monitor-exit v6

    goto :goto_d

    :catchall_2
    move-exception v0

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    goto/16 :goto_10

    :cond_1b
    :goto_d
    if-nez v5, :cond_1e

    :try_start_7
    const-string v0, "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface"

    sget v5, Ly/h;->a:I

    invoke-static {v0}, Ly/g;->a(Ljava/lang/String;)V

    iget-object v0, v3, Landroidx/emoji2/text/q;->c:Ls1/e;

    iget-object v5, v3, Landroidx/emoji2/text/q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v4}, [Lz/h;

    move-result-object v0

    sget-object v6, Lv/f;->a:Lk1/a;

    invoke-virtual {v6, v5, v0, v2}, Lk1/a;->u(Landroid/content/Context;[Lz/h;I)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v2, v3, Landroidx/emoji2/text/q;->a:Landroid/content/Context;

    iget-object v4, v4, Lz/h;->a:Landroid/net/Uri;

    invoke-static {v2, v4}, Lk1/a;->J(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-eqz v2, :cond_1d

    if-eqz v0, :cond_1d

    :try_start_8
    const-string v4, "EmojiCompat.MetadataRepo.create"

    invoke-static {v4}, Ly/g;->a(Ljava/lang/String;)V

    new-instance v4, Landroidx/emoji2/text/t;

    invoke-static {v2}, La1/b;->V(Ljava/nio/MappedByteBuffer;)Lj0/b;

    move-result-object v2

    invoke-direct {v4, v0, v2}, Landroidx/emoji2/text/t;-><init>(Landroid/graphics/Typeface;Lj0/b;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :try_start_9
    invoke-static {}, Ly/g;->b()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :try_start_a
    invoke-static {}, Ly/g;->b()V

    iget-object v2, v3, Landroidx/emoji2/text/q;->d:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    iget-object v0, v3, Landroidx/emoji2/text/q;->h:La1/b;

    if-eqz v0, :cond_1c

    invoke-virtual {v0, v4}, La1/b;->N(Landroidx/emoji2/text/t;)V

    goto :goto_e

    :catchall_4
    move-exception v0

    goto :goto_f

    :cond_1c
    :goto_e
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    invoke-virtual {v3}, Landroidx/emoji2/text/q;->a()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_12

    :goto_f
    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :catchall_5
    move-exception v0

    :try_start_f
    sget v2, Ly/h;->a:I

    invoke-static {}, Ly/g;->b()V

    throw v0

    :cond_1d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Unable to open file."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :catchall_6
    move-exception v0

    :try_start_10
    sget v2, Ly/h;->a:I

    invoke-static {}, Ly/g;->b()V

    throw v0

    :cond_1e
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :goto_10
    iget-object v2, v3, Landroidx/emoji2/text/q;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_11
    iget-object v4, v3, Landroidx/emoji2/text/q;->h:La1/b;

    if-eqz v4, :cond_1f

    invoke-virtual {v4, v0}, La1/b;->K(Ljava/lang/Throwable;)V

    goto :goto_11

    :catchall_7
    move-exception v0

    goto :goto_13

    :cond_1f
    :goto_11
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    invoke-virtual {v3}, Landroidx/emoji2/text/q;->a()V

    :goto_12
    return-void

    :goto_13
    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    throw v0

    :goto_14
    :try_start_13
    monitor-exit v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    throw v0

    :pswitch_d
    iget-object v0, v1, La1/r;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/n;

    invoke-virtual {v0}, Landroidx/activity/n;->b()V

    return-void

    :pswitch_e
    iget-object v0, v1, La1/r;->b:Ljava/lang/Object;

    check-cast v0, Le/i;

    invoke-static {v0}, Le/i;->b(Le/i;)V

    return-void

    :pswitch_f
    iget-object v0, v1, La1/r;->b:Ljava/lang/Object;

    check-cast v0, Le/j;

    invoke-virtual {v0}, Le/j;->invalidateOptionsMenu()V

    return-void

    :pswitch_10
    iget-object v0, v1, La1/r;->b:Ljava/lang/Object;

    check-cast v0, La1/s;

    iget-object v0, v0, La1/s;->b:Ljava/lang/Object;

    check-cast v0, Lcom/geely/hvacstepperv2/TempStepperService;

    sget-object v3, Lcom/geely/hvacstepperv2/TempStepperService;->c0:[I

    invoke-virtual {v0}, Lcom/geely/hvacstepperv2/TempStepperService;->j()V

    iget-boolean v3, v0, Lcom/geely/hvacstepperv2/TempStepperService;->S:Z

    if-eqz v3, :cond_22

    move v3, v2

    :goto_15
    const/4 v4, 0x3

    if-ge v2, v4, :cond_21

    invoke-static {v0, v2}, La1/b;->G(Lcom/geely/hvacstepperv2/TempStepperService;I)La1/a;

    move-result-object v4

    if-eqz v4, :cond_20

    add-int/lit8 v3, v3, 0x1

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_21
    if-nez v3, :cond_22

    invoke-virtual {v0}, Lcom/geely/hvacstepperv2/TempStepperService;->b()V

    goto :goto_16

    :cond_22
    iget-boolean v2, v0, Lcom/geely/hvacstepperv2/TempStepperService;->S:Z

    if-eqz v2, :cond_23

    iget-object v2, v0, Lcom/geely/hvacstepperv2/TempStepperService;->n:Landroid/os/Handler;

    iget-object v0, v0, Lcom/geely/hvacstepperv2/TempStepperService;->T:La1/f;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_23
    :goto_16
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
