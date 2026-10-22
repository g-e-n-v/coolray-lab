.class public final synthetic Lw0/ig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/SplitFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/SplitFloaterService;I)V
    .locals 0

    iput p2, p0, Lw0/ig;->a:I

    iput-object p1, p0, Lw0/ig;->b:Lcom/ex/auto/SplitFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Lw0/ig;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "getString(...)"

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/ig;->b:Lcom/ex/auto/SplitFloaterService;

    sget-object v3, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    invoke-virtual {v0}, Lcom/ex/auto/SplitFloaterService;->h()V

    iget-object v3, v0, Lcom/ex/auto/SplitFloaterService;->f:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    const v4, 0x7f0f0276

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v3, v0, Lcom/ex/auto/SplitFloaterService;->g:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-static {v0}, Lw0/og;->h(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/16 v6, 0xa

    if-eqz v5, :cond_2

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0f0268

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, -0x333334

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v7

    invoke-virtual {v0, v6}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v8

    invoke-virtual {v0, v5}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v5

    invoke-virtual {v0, v6}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v6

    invoke-virtual {v4, v7, v8, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx1/a;

    iget-object v7, v5, Lx1/a;->a:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v5, v5, Lx1/a;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v7, -0x1

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v9, 0xc

    invoke-virtual {v0, v9}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v10

    invoke-virtual {v0, v9}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v11

    invoke-virtual {v0, v9}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v12

    invoke-virtual {v0, v9}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v9

    invoke-virtual {v8, v10, v11, v12, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    const v9, -0xcfcecc

    invoke-virtual {v0, v9, v6}, Lcom/ex/auto/SplitFloaterService;->f(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v9, Lw0/a0;

    invoke-direct {v9, v0, v6, v5}, Lw0/a0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v5, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v3, v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v3, v0, Lcom/ex/auto/SplitFloaterService;->e:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iput-boolean v1, v0, Lcom/ex/auto/SplitFloaterService;->n:Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/ig;->b:Lcom/ex/auto/SplitFloaterService;

    sget-object v1, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    const v1, 0x7f0f031d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/SplitFloaterService;->g(Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lw0/ig;->b:Lcom/ex/auto/SplitFloaterService;

    sget-object v4, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    const-string v4, "id"

    const/16 v5, 0x1388

    invoke-static {v5, v4}, Lw0/og;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "uid=0"

    invoke-static {v4, v5, v2}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-nez v4, :cond_5

    const v1, 0x7f0f0174

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/SplitFloaterService;->c(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    invoke-static {}, Lw0/og;->f()Lw0/ng;

    move-result-object v4

    if-nez v4, :cond_6

    sget-object v1, Lw0/og;->f:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f0f017d

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/SplitFloaterService;->c(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    iput-object v4, v0, Lcom/ex/auto/SplitFloaterService;->l:Lw0/ng;

    const-string v5, "dumpsys activity activities"

    const/16 v6, 0x1f40

    invoke-static {v6, v5}, Lw0/og;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ADB_FAIL"

    invoke-static {v5, v6}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_7

    sput-object v5, Lw0/og;->f:Ljava/lang/String;

    goto :goto_2

    :cond_7
    sget-object v6, Lw0/og;->c:Lo2/h;

    invoke-virtual {v6, v5, v2}, Lo2/h;->b(Ljava/lang/CharSequence;I)Lo2/e;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lo2/e;->a()Ljava/util/List;

    move-result-object v5

    check-cast v5, Lo2/d;

    invoke-virtual {v5, v1}, Lo2/d;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-static {v1}, Lo2/s;->W(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {}, Lw0/og;->i()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx1/a;

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "stack focada ("

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") sem taskId/component"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lw0/og;->f:Ljava/lang/String;

    goto :goto_2

    :cond_8
    iget-object v6, v1, Lx1/a;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    iget-object v1, v1, Lx1/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v7, Lw0/mg;

    const-string v8, "/"

    invoke-static {v1, v8}, Lo2/k;->B0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v5, v6, v8, v1}, Lw0/mg;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const-string v1, "n\u00e3o achei mFocusedStack"

    sput-object v1, Lw0/og;->f:Ljava/lang/String;

    :goto_2
    if-nez v7, :cond_a

    sget-object v1, Lw0/og;->f:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f0f0177

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/SplitFloaterService;->c(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    iget-object v1, v7, Lw0/mg;->c:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const v1, 0x7f0f017a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/SplitFloaterService;->c(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    iget-object v1, v0, Lcom/ex/auto/SplitFloaterService;->i:Landroid/os/Handler;

    new-instance v5, Lw0/ig;

    const/16 v6, 0x8

    invoke-direct {v5, v0, v6}, Lw0/ig;-><init>(Lcom/ex/auto/SplitFloaterService;I)V

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, v7, Lw0/mg;->d:Ljava/lang/String;

    iget-object v5, v7, Lw0/mg;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/ex/auto/SplitFloaterService;->d(Lw0/ng;)Lw0/lg;

    move-result-object v4

    invoke-static {v1, v5, v4}, Lw0/og;->k(Ljava/lang/String;Ljava/lang/String;Lw0/lg;)Lw0/mg;

    move-result-object v1

    if-nez v1, :cond_c

    sget-object v1, Lw0/og;->f:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f0f017c

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/SplitFloaterService;->c(Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    iput-object v1, v0, Lcom/ex/auto/SplitFloaterService;->j:Lw0/mg;

    iput-boolean v2, v0, Lcom/ex/auto/SplitFloaterService;->o:Z

    iget-object v1, v0, Lcom/ex/auto/SplitFloaterService;->i:Landroid/os/Handler;

    new-instance v2, Lw0/ig;

    const/16 v3, 0x9

    invoke-direct {v2, v0, v3}, Lw0/ig;-><init>(Lcom/ex/auto/SplitFloaterService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_3
    return-void

    :pswitch_2
    iget-object v0, p0, Lw0/ig;->b:Lcom/ex/auto/SplitFloaterService;

    sget-object v1, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    invoke-virtual {v0}, Lcom/ex/auto/SplitFloaterService;->h()V

    const v1, 0x7f0f0319

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/SplitFloaterService;->g(Ljava/lang/String;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lw0/ig;->b:Lcom/ex/auto/SplitFloaterService;

    sget-object v1, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    invoke-virtual {v0}, Lcom/ex/auto/SplitFloaterService;->h()V

    return-void

    :pswitch_4
    iget-object v0, p0, Lw0/ig;->b:Lcom/ex/auto/SplitFloaterService;

    sget-object v1, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    invoke-virtual {v0}, Lcom/ex/auto/SplitFloaterService;->h()V

    return-void

    :pswitch_5
    iget-object v0, p0, Lw0/ig;->b:Lcom/ex/auto/SplitFloaterService;

    sget-object v1, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    invoke-virtual {v0}, Lcom/ex/auto/SplitFloaterService;->h()V

    return-void

    :pswitch_6
    iget-object v0, p0, Lw0/ig;->b:Lcom/ex/auto/SplitFloaterService;

    sget-object v1, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    invoke-virtual {v0}, Lcom/ex/auto/SplitFloaterService;->h()V

    return-void

    :pswitch_7
    iget-object v0, p0, Lw0/ig;->b:Lcom/ex/auto/SplitFloaterService;

    sget-object v1, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    invoke-virtual {v0}, Lcom/ex/auto/SplitFloaterService;->h()V

    return-void

    :pswitch_8
    iget-object v0, p0, Lw0/ig;->b:Lcom/ex/auto/SplitFloaterService;

    sget-object v1, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
