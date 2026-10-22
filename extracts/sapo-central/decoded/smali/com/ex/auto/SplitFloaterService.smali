.class public final Lcom/ex/auto/SplitFloaterService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static volatile v:Lcom/ex/auto/SplitFloaterService;


# instance fields
.field public a:Landroid/view/WindowManager;

.field public b:Landroid/widget/LinearLayout;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/LinearLayout;

.field public e:Landroid/widget/LinearLayout;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/LinearLayout;

.field public h:Landroid/view/WindowManager$LayoutParams;

.field public final i:Landroid/os/Handler;

.field public j:Lw0/mg;

.field public k:Lw0/mg;

.field public l:Lw0/ng;

.field public m:F

.field public n:Z

.field public volatile o:Z

.field public p:F

.field public q:F

.field public r:I

.field public s:I

.field public t:Z

.field public final u:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ex/auto/SplitFloaterService;->i:Landroid/os/Handler;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/ex/auto/SplitFloaterService;->m:F

    const/16 v0, 0x48

    iput v0, p0, Lcom/ex/auto/SplitFloaterService;->u:I

    return-void
.end method

.method public static final a(Lcom/ex/auto/SplitFloaterService;Ljava/lang/String;F)Landroid/widget/TextView;
    .locals 2

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41900000    # 18.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const p1, -0x33bdbdbe    # -5.0923784E7f

    const/16 v1, 0x14

    invoke-virtual {p0, p1, v1}, Lcom/ex/auto/SplitFloaterService;->f(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x28

    invoke-virtual {p0, p1}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result p1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lw0/kg;

    invoke-direct {p1, p0, p2}, Lw0/kg;-><init>(Lcom/ex/auto/SplitFloaterService;F)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "base"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lw0/e8;->p(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final b(I)I
    .locals 1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ex/auto/SplitFloaterService;->o:Z

    iget-object v0, p0, Lcom/ex/auto/SplitFloaterService;->i:Landroid/os/Handler;

    new-instance v1, Lw0/ig;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lw0/ig;-><init>(Lcom/ex/auto/SplitFloaterService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, p1}, Lcom/ex/auto/SplitFloaterService;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final d(Lw0/ng;)Lw0/lg;
    .locals 4

    iget v0, p1, Lw0/ng;->a:I

    int-to-float v0, v0

    iget v1, p0, Lcom/ex/auto/SplitFloaterService;->m:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    new-instance v1, Lw0/lg;

    iget v2, p0, Lcom/ex/auto/SplitFloaterService;->u:I

    iget p1, p1, Lw0/ng;->b:I

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v0, p1}, Lw0/lg;-><init>(IIII)V

    return-object v1
.end method

.method public final e(Lw0/ng;)Lw0/lg;
    .locals 4

    iget v0, p1, Lw0/ng;->a:I

    int-to-float v1, v0

    iget v2, p0, Lcom/ex/auto/SplitFloaterService;->m:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    new-instance v2, Lw0/lg;

    iget v3, p0, Lcom/ex/auto/SplitFloaterService;->u:I

    iget p1, p1, Lw0/ng;->b:I

    invoke-direct {v2, v1, v3, v0, p1}, Lw0/lg;-><init>(IIII)V

    return-object v2
.end method

.method public final f(II)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0, p2}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lw0/jg;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lw0/jg;-><init>(Lcom/ex/auto/SplitFloaterService;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/ex/auto/SplitFloaterService;->i:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final h()V
    .locals 5

    iget-object v0, p0, Lcom/ex/auto/SplitFloaterService;->j:Lw0/mg;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ex/auto/SplitFloaterService;->k:Lw0/mg;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/ex/auto/SplitFloaterService;->c:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-boolean v3, p0, Lcom/ex/auto/SplitFloaterService;->o:Z

    if-eqz v3, :cond_1

    const-string v3, "\u2026"

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    const-string v3, "\u2715"

    goto :goto_1

    :cond_2
    const-string v3, "\u29c9"

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v2, p0, Lcom/ex/auto/SplitFloaterService;->c:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    iget-boolean v3, p0, Lcom/ex/auto/SplitFloaterService;->o:Z

    if-eqz v3, :cond_4

    const v3, -0x338a8a8b    # -6.4345556E7f

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    const v3, -0x33d182ce    # -4.5741256E7f

    goto :goto_2

    :cond_5
    const v3, -0x33ea9a40    # -3.9163648E7f

    :goto_2
    const/16 v4, 0x18

    invoke-virtual {p0, v3, v4}, Lcom/ex/auto/SplitFloaterService;->f(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    iget-object v2, p0, Lcom/ex/auto/SplitFloaterService;->d:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_8

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/ex/auto/SplitFloaterService;->o:Z

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 15

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sput-object p0, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    const v0, 0x7f0f0317

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v8, "getString(...)"

    invoke-static {v3, v8}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0f0316

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0f031c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x20

    const-string v2, "split_floater"

    const v5, 0x1080033

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lw0/t1;->E(Landroid/app/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Landroid/app/Notification;

    move-result-object v0

    const/16 v2, 0x69

    invoke-virtual {p0, v2, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v2}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, v1, Lcom/ex/auto/SplitFloaterService;->a:Landroid/view/WindowManager;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iput-object v0, v1, Lcom/ex/auto/SplitFloaterService;->b:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "\u29c9"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41d00000    # 26.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    const v4, -0x33ea9a40    # -3.9163648E7f

    const/16 v5, 0x18

    invoke-virtual {p0, v4, v5}, Lcom/ex/auto/SplitFloaterService;->f(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v4, 0x34

    invoke-virtual {p0, v4}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v4

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lw0/gg;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lw0/gg;-><init>(Lcom/ex/auto/SplitFloaterService;I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v0, v1, Lcom/ex/auto/SplitFloaterService;->c:Landroid/widget/TextView;

    new-instance v4, La1/o;

    const/4 v5, 0x5

    invoke-direct {v4, p0, v5}, La1/o;-><init>(Landroid/content/ContextWrapper;I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, v1, Lcom/ex/auto/SplitFloaterService;->b:Landroid/widget/LinearLayout;

    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/ex/auto/SplitFloaterService;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v9, 0x6

    invoke-virtual {p0, v9}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v10

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, v1, Lcom/ex/auto/SplitFloaterService;->d:Landroid/widget/LinearLayout;

    const-string v6, "\u25c0"

    const v10, -0x42b33333    # -0.05f

    invoke-static {p0, v6, v10}, Lcom/ex/auto/SplitFloaterService;->a(Lcom/ex/auto/SplitFloaterService;Ljava/lang/String;F)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/ex/auto/SplitFloaterService;->d:Landroid/widget/LinearLayout;

    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    const-string v6, "\u25b6"

    const v10, 0x3d4ccccd    # 0.05f

    invoke-static {p0, v6, v10}, Lcom/ex/auto/SplitFloaterService;->a(Lcom/ex/auto/SplitFloaterService;Ljava/lang/String;F)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/ex/auto/SplitFloaterService;->b:Landroid/widget/LinearLayout;

    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    iget-object v6, v1, Lcom/ex/auto/SplitFloaterService;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v6, -0x11dfdedc

    const/16 v10, 0xe

    invoke-virtual {p0, v6, v10}, Lcom/ex/auto/SplitFloaterService;->f(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v5}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v6

    invoke-virtual {p0, v5}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v10

    invoke-virtual {p0, v5}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v11

    invoke-virtual {p0, v5}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v12

    invoke-virtual {v0, v6, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v10, 0xf0

    invoke-virtual {p0, v10}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v10

    invoke-direct {v6, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v9}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v10

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, v1, Lcom/ex/auto/SplitFloaterService;->e:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0f0276

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v10, 0x41600000    # 14.0f

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextSize(F)V

    const v10, -0x9b4a0a

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iput-object v6, v1, Lcom/ex/auto/SplitFloaterService;->f:Landroid/widget/TextView;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v10, v4, v7, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v10, "\u2715"

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v10, 0x41800000    # 16.0f

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextSize(F)V

    const v10, -0x333334

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v10, 0xa

    invoke-virtual {p0, v10}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v11

    const/4 v12, 0x2

    invoke-virtual {p0, v12}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v13

    invoke-virtual {p0, v10}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v10

    invoke-virtual {p0, v12}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v12

    invoke-virtual {v6, v11, v13, v10, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v10, Lw0/gg;

    const/4 v11, 0x1

    invoke-direct {v10, p0, v11}, Lw0/gg;-><init>(Lcom/ex/auto/SplitFloaterService;I)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v6, v1, Lcom/ex/auto/SplitFloaterService;->e:Landroid/widget/LinearLayout;

    invoke-static {v6}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iput-object v0, v1, Lcom/ex/auto/SplitFloaterService;->g:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iget-object v2, v1, Lcom/ex/auto/SplitFloaterService;->g:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v1, Lcom/ex/auto/SplitFloaterService;->e:Landroid/widget/LinearLayout;

    invoke-static {v2}, Li2/g;->b(Ljava/lang/Object;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x12c

    invoke-virtual {p0, v7}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v7

    invoke-direct {v6, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v9}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v3

    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lcom/ex/auto/SplitFloaterService;->b:Landroid/widget/LinearLayout;

    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/ex/auto/SplitFloaterService;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    const/16 v13, 0x108

    const/4 v14, -0x3

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/16 v12, 0x7f6

    invoke-direct/range {v9 .. v14}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const v0, 0x800013

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p0, v5}, Lcom/ex/auto/SplitFloaterService;->b(I)I

    move-result v0

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v4, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    iput-object v9, v1, Lcom/ex/auto/SplitFloaterService;->h:Landroid/view/WindowManager$LayoutParams;

    :try_start_0
    iget-object v0, v1, Lcom/ex/auto/SplitFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v2, v1, Lcom/ex/auto/SplitFloaterService;->b:Landroid/widget/LinearLayout;

    invoke-interface {v0, v2, v9}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    const-string v0, "wm"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f0f0278

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ex/auto/SplitFloaterService;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    iget-object v1, p0, Lcom/ex/auto/SplitFloaterService;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Lcom/ex/auto/SplitFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/ex/auto/SplitFloaterService;->b:Landroid/widget/LinearLayout;

    invoke-interface {v1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string v1, "wm"

    invoke-static {v1}, Li2/g;->h(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
