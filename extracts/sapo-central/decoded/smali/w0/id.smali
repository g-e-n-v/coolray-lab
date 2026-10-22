.class public final Lw0/id;
.super Landroid/media/browse/MediaBrowser$SubscriptionCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/ex/auto/MediaBrowserHostActivity;


# direct methods
.method public constructor <init>(Lcom/ex/auto/MediaBrowserHostActivity;)V
    .locals 0

    iput-object p1, p0, Lw0/id;->a:Lcom/ex/auto/MediaBrowserHostActivity;

    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$SubscriptionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "parentId"

    invoke-static {v0, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "children"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    iget-object v3, v1, Lw0/id;->a:Lcom/ex/auto/MediaBrowserHostActivity;

    iget-object v4, v3, Lcom/ex/auto/MediaBrowserHostActivity;->e:Ljava/util/ArrayList;

    invoke-static {v4}, Ly1/g;->f0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx1/a;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v4, v4, Lx1/a;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    const v0, 0x7f0f021f

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lcom/ex/auto/MediaBrowserHostActivity;->g(Ljava/lang/String;Z)V

    return-void

    :cond_2
    invoke-virtual {v3, v5, v4}, Lcom/ex/auto/MediaBrowserHostActivity;->g(Ljava/lang/String;Z)V

    iget-object v0, v3, Lcom/ex/auto/MediaBrowserHostActivity;->i:Landroid/widget/GridLayout;

    const-string v6, "grade"

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/browse/MediaBrowser$MediaItem;

    iget-object v7, v3, Lcom/ex/auto/MediaBrowserHostActivity;->i:Landroid/widget/GridLayout;

    if-eqz v7, :cond_9

    invoke-virtual {v2}, Landroid/media/browse/MediaBrowser$MediaItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v8

    const-string v9, "getDescription(...)"

    invoke-static {v8, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_3
    move-object v9, v5

    :goto_2
    const-string v10, ""

    if-nez v9, :cond_4

    move-object v9, v10

    :cond_4
    invoke-virtual {v8}, Landroid/media/MediaDescription;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_5
    move-object v11, v5

    :goto_3
    if-nez v11, :cond_6

    goto :goto_4

    :cond_6
    move-object v10, v11

    :goto_4
    new-instance v11, Landroid/widget/ImageView;

    invoke-direct {v11, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v12, 0x7f070065

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v13, 0xbe

    invoke-virtual {v3, v13}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v14

    invoke-virtual {v3, v13}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v15

    invoke-direct {v12, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v11, v8}, Lcom/ex/auto/MediaBrowserHostActivity;->c(Landroid/widget/ImageView;Landroid/media/MediaDescription;)V

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v12, 0x10

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v13}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v14

    const/4 v15, -0x2

    invoke-direct {v12, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v14, 0x8

    invoke-virtual {v3, v14}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v14

    iput v14, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v8, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f050041

    invoke-virtual {v3, v14}, Landroid/content/Context;->getColor(I)I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v14, 0x41880000    # 17.0f

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setMaxLines(I)V

    move-object/from16 v16, v5

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v5, v4, v15, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v12, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/media/browse/MediaBrowser$MediaItem;->isBrowsable()Z

    move-result v12

    if-eqz v12, :cond_7

    const-string v12, "\u203a"

    goto :goto_5

    :cond_7
    const-string v12, "\u25b6"

    :goto_5
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v12, 0x7f050040

    invoke-virtual {v3, v12}, Landroid/content/Context;->getColor(I)I

    move-result v12

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v12, 0x41800000    # 16.0f

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v5, v14}, Landroid/view/View;->setClickable(Z)V

    const/16 v12, 0xa

    invoke-virtual {v3, v12}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v13

    invoke-virtual {v3, v12}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v4

    invoke-virtual {v3, v12}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v14

    invoke-virtual {v3, v12}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v15

    invoke-virtual {v5, v13, v4, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    new-instance v4, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v4}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    const/16 v13, 0xd2

    invoke-virtual {v3, v13}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v13

    iput v13, v4, Landroid/widget/GridLayout$LayoutParams;->width:I

    const/4 v13, -0x2

    iput v13, v4, Landroid/widget/GridLayout$LayoutParams;->height:I

    const/4 v13, 0x4

    invoke-virtual {v3, v13}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v14

    invoke-virtual {v3, v13}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v15

    invoke-virtual {v3, v13}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v13

    invoke-virtual {v3, v12}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v12

    invoke-virtual {v4, v14, v15, v13, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f050042

    invoke-virtual {v3, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v8, 0x41600000    # 14.0f

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v10, 0xbe

    invoke-virtual {v3, v10}, Lcom/ex/auto/MediaBrowserHostActivity;->f(I)I

    move-result v10

    const/4 v13, -0x2

    invoke-direct {v8, v10, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_8
    new-instance v4, Lw0/y6;

    const/4 v8, 0x6

    invoke-direct {v4, v2, v3, v9, v8}, Lw0/y6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v5, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v5, v16

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_9
    move-object/from16 v16, v5

    invoke-static {v6}, Li2/g;->h(Ljava/lang/String;)V

    throw v16

    :cond_a
    :goto_6
    return-void

    :cond_b
    move-object/from16 v16, v5

    invoke-static {v6}, Li2/g;->h(Ljava/lang/String;)V

    throw v16
.end method

.method public final onError(Ljava/lang/String;)V
    .locals 2

    const-string v0, "parentId"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError em "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaBrowserHost"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/ex/auto/MediaBrowserHostActivity;->s:I

    iget-object p1, p0, Lw0/id;->a:Lcom/ex/auto/MediaBrowserHostActivity;

    invoke-virtual {p1}, Lcom/ex/auto/MediaBrowserHostActivity;->h()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x7f0f0220

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/ex/auto/MediaBrowserHostActivity;->g(Ljava/lang/String;Z)V

    return-void
.end method
