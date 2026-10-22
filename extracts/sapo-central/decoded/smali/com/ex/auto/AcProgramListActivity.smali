.class public final Lcom/ex/auto/AcProgramListActivity;
.super Le/j;
.source "SourceFile"


# static fields
.field public static final synthetic u:I


# instance fields
.field public t:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "newBase"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Le/j;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Le/j;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001d

    invoke-virtual {p0, p1}, Le/j;->setContentView(I)V

    const p1, 0x7f0900a0

    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/ex/auto/AcProgramListActivity;->t:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1706

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    const p1, 0x7f09005f

    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lw0/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lw0/i;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onResume()V
    .locals 17

    move-object/from16 v0, p0

    invoke-super {v0}, Le/j;->onResume()V

    iget-object v1, v0, Lcom/ex/auto/AcProgramListActivity;->t:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const-string v3, "container"

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v1, 0x3

    const/4 v4, 0x0

    invoke-static {v4, v1}, Lk1/a;->T(II)Ll2/c;

    move-result-object v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v1}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ll2/a;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    move-object v6, v1

    check-cast v6, Ll2/b;

    iget-boolean v7, v6, Ll2/b;->c:Z

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Ll2/b;->nextInt()I

    move-result v6

    invoke-static {v0, v6}, Lw0/t1;->O(Landroid/content/Context;I)Lw0/k;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v6, v4

    :goto_1
    if-ge v6, v1, :cond_7

    const/4 v7, 0x1

    const/4 v8, -0x1

    if-lez v6, :cond_2

    iget-object v9, v0, Lcom/ex/auto/AcProgramListActivity;->t:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_1

    new-instance v10, Landroid/view/View;

    invoke-direct {v10, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v11, 0x7f05007d

    invoke-virtual {v0, v11}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v7}, Lcom/ex/auto/AcProgramListActivity;->s(I)I

    move-result v12

    invoke-direct {v11, v8, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_1
    invoke-static {v3}, Li2/g;->h(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_2
    iget-object v9, v0, Lcom/ex/auto/AcProgramListActivity;->t:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lw0/k;

    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v11, v7}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v11, v7}, Landroid/view/View;->setFocusable(Z)V

    const v13, 0x1080062

    invoke-virtual {v0, v13}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    const/16 v13, 0xa

    invoke-virtual {v0, v13}, Lcom/ex/auto/AcProgramListActivity;->s(I)I

    move-result v14

    const/16 v15, 0xc

    invoke-virtual {v0, v15}, Lcom/ex/auto/AcProgramListActivity;->s(I)I

    move-result v15

    invoke-virtual {v11, v14, v4, v15, v4}, Landroid/view/View;->setPadding(IIII)V

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v15, 0x70

    invoke-virtual {v0, v15}, Lcom/ex/auto/AcProgramListActivity;->s(I)I

    move-result v15

    invoke-direct {v14, v8, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, La1/n;

    const/4 v14, 0x2

    invoke-direct {v8, v0, v6, v14}, La1/n;-><init>(Landroid/content/ContextWrapper;II)V

    invoke-virtual {v11, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v2

    const v2, 0x7f0f007b

    invoke-virtual {v0, v2, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f050087

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41a80000    # 21.0f

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v14}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v14, v2, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v8, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-eqz v10, :cond_3

    invoke-static {v10}, Lw0/t1;->b0(Lw0/k;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_3
    const v7, 0x7f0f0076

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Li2/g;->b(Ljava/lang/Object;)V

    :goto_3
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f050089

    invoke-virtual {v0, v7}, Landroid/content/Context;->getColor(I)I

    move-result v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v14, 0x41880000    # 17.0f

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v14, 0x7

    invoke-virtual {v0, v14}, Lcom/ex/auto/AcProgramListActivity;->s(I)I

    move-result v14

    invoke-virtual {v2, v4, v14, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, -0x2

    invoke-direct {v2, v4, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v11, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-eqz v10, :cond_4

    const v8, 0x7f0f0075

    goto :goto_4

    :cond_4
    const v8, 0x7f0f0074

    :goto_4
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v10, :cond_5

    move v8, v7

    goto :goto_5

    :cond_5
    const v8, 0x7f05007e

    :goto_5
    invoke-virtual {v0, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v8, 0x41900000    # 18.0f

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x1a

    invoke-virtual {v0, v10}, Lcom/ex/auto/AcProgramListActivity;->s(I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v8, "\u203a"

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x42000000    # 32.0f

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v7, 0x11

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x2a

    invoke-virtual {v0, v8}, Lcom/ex/auto/AcProgramListActivity;->s(I)I

    move-result v8

    const/16 v10, 0x36

    invoke-virtual {v0, v10}, Lcom/ex/auto/AcProgramListActivity;->s(I)I

    move-result v10

    invoke-direct {v7, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v13}, Lcom/ex/auto/AcProgramListActivity;->s(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v11, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v2, v16

    goto/16 :goto_1

    :cond_6
    move-object/from16 v16, v2

    invoke-static {v3}, Li2/g;->h(Ljava/lang/String;)V

    throw v16

    :cond_7
    return-void

    :cond_8
    move-object/from16 v16, v2

    invoke-static {v3}, Li2/g;->h(Ljava/lang/String;)V

    throw v16
.end method

.method public final s(I)I
    .locals 1

    int-to-float p1, p1

    invoke-virtual {p0}, Le/j;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method
