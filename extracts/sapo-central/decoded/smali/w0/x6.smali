.class public final synthetic Lw0/x6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/HomeFloatingWidgetsService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V
    .locals 0

    iput p2, p0, Lw0/x6;->a:I

    iput-object p1, p0, Lw0/x6;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 15

    iget v0, p0, Lw0/x6;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lw0/x6;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    packed-switch v0, :pswitch_data_0

    :try_start_0
    invoke-static {}, Lw0/ug;->a()Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v0, v1

    :goto_0
    :try_start_1
    invoke-static {}, Lw0/ug;->b()Ljava/lang/Integer;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    iget-object v2, v3, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    new-instance v4, La1/g;

    const/16 v5, 0x9

    invoke-direct {v4, v3, v0, v1, v5}, La1/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-virtual {v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->M()V

    invoke-virtual {v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->N()V

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-virtual {v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->J()V

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-virtual {v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->M()V

    goto :goto_1

    :pswitch_3
    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-virtual {v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->K()V

    goto :goto_1

    :pswitch_4
    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-virtual {v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->N()V

    goto :goto_1

    :pswitch_5
    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-virtual {v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->M()V

    invoke-virtual {v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->J()V

    goto :goto_1

    :pswitch_6
    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-virtual {v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->K()V

    goto :goto_1

    :pswitch_7
    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-virtual {v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->L()V

    goto :goto_1

    :pswitch_8
    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-virtual {v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->K()V

    goto :goto_1

    :pswitch_9
    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-virtual {v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->K()V

    goto :goto_1

    :pswitch_a
    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-virtual {v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->K()V

    goto :goto_1

    :pswitch_b
    iget-object v0, v3, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    iget-object v4, v3, Lcom/ex/auto/HomeFloatingWidgetsService;->K:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v5, -0x4d000000

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v7, 0x14

    invoke-virtual {v3, v7}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v8

    const/16 v9, 0x12

    invoke-virtual {v3, v9}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v9

    invoke-virtual {v3, v7}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v10

    invoke-virtual {v3, v7}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v7

    invoke-virtual {v5, v8, v9, v10, v7}, Landroid/view/View;->setPadding(IIII)V

    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v8, 0x16

    invoke-virtual {v3, v8}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v8, 0x7f05003d

    invoke-virtual {v3, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v3, v6}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v8

    const v9, 0x22ffffff

    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v8, 0x1cc

    invoke-virtual {v3, v8}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v8

    const/4 v9, -0x2

    const/16 v10, 0x11

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lw0/f7;

    invoke-direct {v7, v2}, Lw0/f7;-><init>(I)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v8, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v12, "Apps por uso de CPU"

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v12, 0x7f05003f

    invoke-virtual {v3, v12}, Landroid/content/Context;->getColor(I)I

    move-result v13

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v13, 0x41980000    # 19.0f

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v8}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v8, v13, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v13, v2, v9, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v13, "\u2715"

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v12}, Landroid/content/Context;->getColor(I)I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v12, 0x41900000    # 18.0f

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v10, 0x22

    invoke-virtual {v3, v10}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v10

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v10, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const v12, 0x7f05003e

    invoke-virtual {v3, v12}, Landroid/content/Context;->getColor(I)I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v10, Lw0/w6;

    const/16 v12, 0x1b

    invoke-direct {v10, v3, v12}, Lw0/w6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xe

    invoke-virtual {v3, v8}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v8, "Lendo processos\u2026"

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f050040

    invoke-virtual {v3, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v8, 0x41700000    # 15.0f

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v8, 0xa

    invoke-virtual {v3, v8}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v9

    invoke-virtual {v3, v8}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v8

    invoke-virtual {v6, v2, v9, v2, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Lw0/w6;

    const/16 v5, 0x1c

    invoke-direct {v2, v3, v5}, Lw0/w6;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    const/16 v12, 0x108

    const/4 v13, -0x3

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/16 v11, 0x7f6

    invoke-direct/range {v8 .. v13}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v4, v3, Lcom/ex/auto/HomeFloatingWidgetsService;->K:Landroid/widget/FrameLayout;

    :try_start_2
    iget-object v2, v3, Lcom/ex/auto/HomeFloatingWidgetsService;->a:Landroid/view/WindowManager;

    if-eqz v2, :cond_2

    invoke-interface {v2, v4, v8}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v1, v3, Lcom/ex/auto/HomeFloatingWidgetsService;->L:Lw0/u7;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    new-instance v1, Lw0/u7;

    invoke-direct {v1, v3, v4, v7}, Lw0/u7;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;)V

    iput-object v1, v3, Lcom/ex/auto/HomeFloatingWidgetsService;->L:Lw0/u7;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_2

    :cond_2
    :try_start_3
    const-string v0, "wm"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "cpuPanel: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "HomeFloatingWidgets"

    invoke-static {v0, v2, v4}, Landroidx/activity/result/b;->s(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iput-object v1, v3, Lcom/ex/auto/HomeFloatingWidgetsService;->K:Landroid/widget/FrameLayout;

    :goto_3
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_c
    iget-object v0, v3, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    new-instance v1, Lw0/j7;

    invoke-direct {v1, v3, v2}, Lw0/j7;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
