.class public final Lcom/ex/auto/AcProgramEditActivity;
.super Le/j;
.source "SourceFile"


# static fields
.field public static final synthetic z:I


# instance fields
.field public t:I

.field public final u:Ljava/util/ArrayList;

.field public v:Landroid/widget/LinearLayout;

.field public w:Landroid/widget/TextView;

.field public x:Lcom/ex/auto/MasterToggleView;

.field public y:Lcom/ex/auto/MasterToggleView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Le/j;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ex/auto/AcProgramEditActivity;->u:Ljava/util/ArrayList;

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
    .locals 5

    invoke-super {p0, p1}, Le/j;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001c

    invoke-virtual {p0, p1}, Le/j;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1706

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "slot"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ex/auto/AcProgramEditActivity;->t:I

    const p1, 0x7f0900a1

    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/ex/auto/AcProgramEditActivity;->v:Landroid/widget/LinearLayout;

    const p1, 0x7f0902f8

    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ex/auto/AcProgramEditActivity;->w:Landroid/widget/TextView;

    const p1, 0x7f0902c3

    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ex/auto/MasterToggleView;

    iput-object p1, p0, Lcom/ex/auto/AcProgramEditActivity;->x:Lcom/ex/auto/MasterToggleView;

    const p1, 0x7f0902c4

    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ex/auto/MasterToggleView;

    iput-object p1, p0, Lcom/ex/auto/AcProgramEditActivity;->y:Lcom/ex/auto/MasterToggleView;

    iget p1, p0, Lcom/ex/auto/AcProgramEditActivity;->t:I

    invoke-static {p0, p1}, Lw0/t1;->O(Landroid/content/Context;I)Lw0/k;

    move-result-object p1

    const v0, 0x7f0902f9

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v2, 0x7f0f0071

    goto :goto_0

    :cond_0
    const v2, 0x7f0f0072

    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09005d

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/ex/auto/AcProgramEditActivity;->u:Ljava/util/ArrayList;

    iget-object v3, p1, Lw0/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/ex/auto/AcProgramEditActivity;->x:Lcom/ex/auto/MasterToggleView;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-boolean v4, p1, Lw0/k;->b:Z

    invoke-virtual {v2, v4}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    iget-object v2, p0, Lcom/ex/auto/AcProgramEditActivity;->y:Lcom/ex/auto/MasterToggleView;

    if-eqz v2, :cond_1

    iget-boolean p1, p1, Lw0/k;->c:Z

    invoke-virtual {v2, p1}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const-string p1, "switchRestore"

    invoke-static {p1}, Li2/g;->h(Ljava/lang/String;)V

    throw v3

    :cond_2
    const-string p1, "switchRepeat"

    invoke-static {p1}, Li2/g;->h(Ljava/lang/String;)V

    throw v3

    :cond_3
    :goto_1
    const p1, 0x7f09005a

    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lw0/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lw0/d;-><init>(Lcom/ex/auto/AcProgramEditActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090058

    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lw0/d;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lw0/d;-><init>(Lcom/ex/auto/AcProgramEditActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09005b

    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lw0/d;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lw0/d;-><init>(Lcom/ex/auto/AcProgramEditActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090059

    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lw0/d;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lw0/d;-><init>(Lcom/ex/auto/AcProgramEditActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09005c

    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lw0/d;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lw0/d;-><init>(Lcom/ex/auto/AcProgramEditActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lw0/d;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lw0/d;-><init>(Lcom/ex/auto/AcProgramEditActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09005e

    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lw0/d;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lw0/d;-><init>(Lcom/ex/auto/AcProgramEditActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090281

    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lw0/d;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lw0/d;-><init>(Lcom/ex/auto/AcProgramEditActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090282

    invoke-virtual {p0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lw0/d;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lw0/d;-><init>(Lcom/ex/auto/AcProgramEditActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/ex/auto/AcProgramEditActivity;->t()V

    return-void
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

.method public final t()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ex/auto/AcProgramEditActivity;->v:Landroid/widget/LinearLayout;

    const-string v3, "container"

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, v0, Lcom/ex/auto/AcProgramEditActivity;->w:Landroid/widget/TextView;

    if-eqz v1, :cond_b

    iget-object v4, v0, Lcom/ex/auto/AcProgramEditActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    const/16 v5, 0x8

    :goto_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v5, v6

    :goto_1
    if-ge v5, v1, :cond_a

    iget-object v7, v0, Lcom/ex/auto/AcProgramEditActivity;->v:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_9

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lw0/l;

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v10, 0x7f070065

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v10, 0x12

    invoke-virtual {v0, v10}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v10

    const/16 v11, 0xa

    invoke-virtual {v0, v11}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v12

    const/16 v13, 0xc

    invoke-virtual {v0, v13}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v13

    invoke-virtual {v0, v11}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v14

    invoke-virtual {v9, v10, v12, v13, v14}, Landroid/view/View;->setPadding(IIII)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v12, 0x40

    invoke-virtual {v0, v12}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v12

    const/4 v13, -0x1

    invoke-direct {v10, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-nez v5, :cond_1

    move v11, v6

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v11}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v11

    :goto_2
    iput v11, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v12, v5, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ". "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v8, Lw0/l;->a:Ljava/lang/String;

    iget-wide v14, v8, Lw0/l;->b:D

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v16, 0x0

    const-string v2, "getString(...)"

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string v8, "wait"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto/16 :goto_4

    :cond_2
    double-to-int v8, v14

    div-int/lit8 v13, v8, 0x3c

    rem-int/lit8 v8, v8, 0x3c

    const/16 v14, 0x73

    const-string v15, "min"

    if-lez v13, :cond_3

    if-lez v8, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_3
    if-lez v13, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const v8, 0x7f0f0070

    invoke-virtual {v0, v8, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    :sswitch_1
    const-string v6, "temp"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_4

    :cond_5
    double-to-int v6, v14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const v8, 0x7f0f006f

    invoke-virtual {v0, v8, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    :sswitch_2
    const-string v6, "fan"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_4

    :cond_6
    double-to-int v6, v14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const v8, 0x7f0f006d

    invoke-virtual {v0, v8, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    :sswitch_3
    const-string v6, "recirc"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    :goto_4
    const-string v6, "?"

    goto :goto_6

    :cond_7
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v14, v17

    if-nez v6, :cond_8

    const v6, 0x7f0f0069

    goto :goto_5

    :cond_8
    const v6, 0x7f0f0067

    :goto_5
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const v8, 0x7f0f006e

    invoke-virtual {v0, v8, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f050087

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-direct {v2, v11, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v10, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v6, "\u00d7"

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f050034

    invoke-virtual {v0, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const v6, 0x7f070067

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v6, 0x11

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v6, 0x41c80000    # 25.0f

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setFocusable(Z)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x30

    invoke-virtual {v0, v8}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v8

    const/16 v10, 0x2c

    invoke-virtual {v0, v10}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v10

    invoke-direct {v6, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, La1/n;

    const/4 v8, 0x1

    invoke-direct {v6, v0, v5, v8}, La1/n;-><init>(Landroid/content/ContextWrapper;II)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v6, v11

    move v5, v12

    goto/16 :goto_1

    :cond_9
    const/16 v16, 0x0

    invoke-static {v3}, Li2/g;->h(Ljava/lang/String;)V

    throw v16

    :cond_a
    return-void

    :cond_b
    const/16 v16, 0x0

    const-string v1, "emptyHint"

    invoke-static {v1}, Li2/g;->h(Ljava/lang/String;)V

    throw v16

    :cond_c
    const/16 v16, 0x0

    invoke-static {v3}, Li2/g;->h(Ljava/lang/String;)V

    throw v16

    :sswitch_data_0
    .sparse-switch
        -0x37b9aa36 -> :sswitch_3
        0x18b13 -> :sswitch_2
        0x3643d4 -> :sswitch_1
        0x379175 -> :sswitch_0
    .end sparse-switch
.end method
