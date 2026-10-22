.class public final synthetic Lw0/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/AppPipFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/AppPipFloaterService;I)V
    .locals 0

    iput p2, p0, Lw0/e0;->a:I

    iput-object p1, p0, Lw0/e0;->b:Lcom/ex/auto/AppPipFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    iget p1, p0, Lw0/e0;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lw0/e0;->b:Lcom/ex/auto/AppPipFloaterService;

    sget-object v0, Lcom/ex/auto/AppPipFloaterService;->x:Lcom/ex/auto/AppPipFloaterService;

    invoke-virtual {p1}, Lcom/ex/auto/AppPipFloaterService;->d()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lw0/e0;->b:Lcom/ex/auto/AppPipFloaterService;

    iget-boolean v0, p1, Lcom/ex/auto/AppPipFloaterService;->n:Z

    const-string v1, "getString(...)"

    if-eqz v0, :cond_0

    const v0, 0x7f0f0349

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/ex/auto/AppPipFloaterService;->k(Ljava/lang/String;)Z

    goto/16 :goto_2

    :cond_0
    iget-boolean v0, p1, Lcom/ex/auto/AppPipFloaterService;->m:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/ex/auto/AppPipFloaterService;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iput-boolean v2, p1, Lcom/ex/auto/AppPipFloaterService;->m:Z

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/ex/auto/AppPipFloaterService;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0f028e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/ex/auto/AppPipFloaterService;->k(Ljava/lang/String;)Z

    goto/16 :goto_2

    :cond_3
    iget-object v0, p1, Lcom/ex/auto/AppPipFloaterService;->f:Landroid/widget/LinearLayout;

    if-nez v0, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-static {p1}, Lw0/og;->h(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/16 v4, 0xa

    if-eqz v3, :cond_5

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f0268

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, -0x333334

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result v5

    invoke-virtual {p1, v4}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result v6

    invoke-virtual {p1, v3}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result v3

    invoke-virtual {p1, v4}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result v4

    invoke-virtual {v1, v5, v6, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx1/a;

    iget-object v5, v3, Lx1/a;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v3, v3, Lx1/a;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v5, -0x1

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v7, 0xc

    invoke-virtual {p1, v7}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result v8

    invoke-virtual {p1, v7}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result v9

    invoke-virtual {p1, v7}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result v10

    invoke-virtual {p1, v7}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result v7

    invoke-virtual {v6, v8, v9, v10, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    const v7, -0xcfcecc

    invoke-virtual {p1, v7, v4}, Lcom/ex/auto/AppPipFloaterService;->h(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Lw0/a0;

    invoke-direct {v7, p1, v2, v3}, Lw0/a0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v3, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_6
    :goto_1
    iget-object v0, p1, Lcom/ex/auto/AppPipFloaterService;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/ex/auto/AppPipFloaterService;->m:Z

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
