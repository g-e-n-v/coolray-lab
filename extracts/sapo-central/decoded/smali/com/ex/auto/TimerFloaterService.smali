.class public final Lcom/ex/auto/TimerFloaterService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static volatile o:Z


# instance fields
.field public a:Landroid/view/WindowManager;

.field public b:Landroid/widget/LinearLayout;

.field public c:Landroid/view/WindowManager$LayoutParams;

.field public final d:Landroid/os/Handler;

.field public e:Ljava/lang/String;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/Button;

.field public h:Landroid/widget/LinearLayout;

.field public i:J

.field public j:J

.field public k:Z

.field public l:J

.field public m:F

.field public final n:Lq0/b;


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ex/auto/TimerFloaterService;->d:Landroid/os/Handler;

    const-string v0, "crono"

    iput-object v0, p0, Lcom/ex/auto/TimerFloaterService;->e:Ljava/lang/String;

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/ex/auto/TimerFloaterService;->l:J

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/ex/auto/TimerFloaterService;->m:F

    new-instance v0, Lq0/b;

    new-instance v1, Le0/b;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Le0/b;-><init>(ILjava/lang/Object;)V

    new-instance v2, Lw0/q1;

    const/4 v3, 0x6

    invoke-direct {v2, v3, p0}, Lw0/q1;-><init>(ILjava/lang/Object;)V

    new-instance v3, Lw0/ah;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lw0/ah;-><init>(Lcom/ex/auto/TimerFloaterService;I)V

    new-instance v4, Lw0/ah;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lw0/ah;-><init>(Lcom/ex/auto/TimerFloaterService;I)V

    invoke-direct {v0, v1, v2, v3, v4}, Lq0/b;-><init>(Le0/b;Lw0/q1;Lw0/ah;Lw0/ah;)V

    iput-object v0, p0, Lcom/ex/auto/TimerFloaterService;->n:Lq0/b;

    return-void
.end method

.method public static final f(Lcom/ex/auto/TimerFloaterService;Ljava/lang/String;J)V
    .locals 5

    iget-object v0, p0, Lcom/ex/auto/TimerFloaterService;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/ex/auto/TimerFloaterService;->d(I)I

    move-result v2

    new-instance v3, Lw0/zg;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p2, p3, v4}, Lw0/zg;-><init>(Lcom/ex/auto/TimerFloaterService;JI)V

    const-string v4, "\u2212"

    invoke-virtual {p0, v4, v2, v3}, Lcom/ex/auto/TimerFloaterService;->b(Ljava/lang/String;ILh2/a;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/ex/auto/TimerFloaterService;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, -0x4f4740

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41800000    # 16.0f

    iget v3, p0, Lcom/ex/auto/TimerFloaterService;->m:F

    mul-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/ex/auto/TimerFloaterService;->d(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/ex/auto/TimerFloaterService;->d(I)I

    move-result p1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lcom/ex/auto/TimerFloaterService;->h:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/ex/auto/TimerFloaterService;->d(I)I

    move-result v0

    new-instance v1, Lw0/zg;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p2, p3, v2}, Lw0/zg;-><init>(Lcom/ex/auto/TimerFloaterService;JI)V

    const-string p2, "+"

    invoke-virtual {p0, p2, v0, v1}, Lcom/ex/auto/TimerFloaterService;->b(Ljava/lang/String;ILh2/a;)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 7

    iget-boolean v0, p0, Lcom/ex/auto/TimerFloaterService;->k:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/ex/auto/TimerFloaterService;->j:J

    sub-long/2addr v3, v5

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    iget-object v0, p0, Lcom/ex/auto/TimerFloaterService;->e:Ljava/lang/String;

    const-string v5, "regressiva"

    invoke-static {v0, v5}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v5, p0, Lcom/ex/auto/TimerFloaterService;->i:J

    sub-long/2addr v5, v3

    cmp-long v0, v5, v1

    if-gez v0, :cond_1

    return-wide v1

    :cond_1
    return-wide v5

    :cond_2
    iget-wide v0, p0, Lcom/ex/auto/TimerFloaterService;->i:J

    add-long/2addr v0, v3

    return-wide v0
.end method

.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "base"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lw0/e8;->p(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final b(Ljava/lang/String;ILh2/a;)Landroid/widget/Button;
    .locals 3

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41900000    # 18.0f

    iget v1, p0, Lcom/ex/auto/TimerFloaterService;->m:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/ex/auto/TimerFloaterService;->d(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v1, -0xe0dad0

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/ex/auto/TimerFloaterService;->d(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/ex/auto/TimerFloaterService;->d(I)I

    move-result v1

    invoke-virtual {p1, p2, v2, p2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lw0/w;

    const/4 p2, 0x7

    invoke-direct {p1, p3, p2}, Lw0/w;-><init>(Lh2/a;I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/TimerFloaterService;->n:Lq0/b;

    iget-object v1, v0, Lq0/b;->c:Ljava/lang/Object;

    check-cast v1, Lw0/q1;

    iget-object v0, v0, Lq0/b;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/d;

    invoke-virtual {v1, v0}, Lw0/q1;->c(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ex/auto/TimerFloaterService;->b:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/ex/auto/TimerFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v2, :cond_1

    invoke-interface {v2, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const-string v0, "wm"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    iput-object v1, p0, Lcom/ex/auto/TimerFloaterService;->b:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ex/auto/TimerFloaterService;->c:Landroid/view/WindowManager$LayoutParams;

    iput-object v1, p0, Lcom/ex/auto/TimerFloaterService;->f:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ex/auto/TimerFloaterService;->g:Landroid/widget/Button;

    iput-object v1, p0, Lcom/ex/auto/TimerFloaterService;->h:Landroid/widget/LinearLayout;

    return-void
.end method

.method public final d(I)I
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

.method public final e()V
    .locals 13

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/ex/auto/TimerFloaterService;->d(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v2, -0x19edebe9

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/ex/auto/TimerFloaterService;->d(I)I

    move-result v3

    const v4, 0x33ffffff

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Lcom/ex/auto/TimerFloaterService;->d(I)I

    move-result v0

    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Lcom/ex/auto/TimerFloaterService;->d(I)I

    move-result v5

    invoke-virtual {p0, v1}, Lcom/ex/auto/TimerFloaterService;->d(I)I

    move-result v1

    invoke-virtual {p0, v4}, Lcom/ex/auto/TimerFloaterService;->d(I)I

    move-result v4

    invoke-virtual {v3, v0, v5, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/ex/auto/TimerFloaterService;->e:Ljava/lang/String;

    const-string v1, "regressiva"

    invoke-static {v0, v1}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x11

    const/4 v4, 0x0

    const-string v5, "getString(...)"

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iput-object v0, p0, Lcom/ex/auto/TimerFloaterService;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f0f0341

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/32 v6, 0x36ee80

    invoke-static {p0, v0, v6, v7}, Lcom/ex/auto/TimerFloaterService;->f(Lcom/ex/auto/TimerFloaterService;Ljava/lang/String;J)V

    const v0, 0x7f0f0343

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/32 v6, 0xea60

    invoke-static {p0, v0, v6, v7}, Lcom/ex/auto/TimerFloaterService;->f(Lcom/ex/auto/TimerFloaterService;Ljava/lang/String;J)V

    const v0, 0x7f0f0346

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v6, 0x3e8

    invoke-static {p0, v0, v6, v7}, Lcom/ex/auto/TimerFloaterService;->f(Lcom/ex/auto/TimerFloaterService;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/ex/auto/TimerFloaterService;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v6, -0x1

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x42800000    # 64.0f

    iget v7, p0, Lcom/ex/auto/TimerFloaterService;->m:F

    mul-float/2addr v7, v6

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v6, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/ex/auto/TimerFloaterService;->d(I)I

    move-result v7

    invoke-virtual {p0, v6}, Lcom/ex/auto/TimerFloaterService;->d(I)I

    move-result v6

    invoke-virtual {v0, v4, v7, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iput-object v0, p0, Lcom/ex/auto/TimerFloaterService;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v4, 0x7f0f0342

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xa

    invoke-virtual {p0, v6}, Lcom/ex/auto/TimerFloaterService;->d(I)I

    move-result v7

    new-instance v8, Lw0/ah;

    const/4 v9, 0x2

    invoke-direct {v8, p0, v9}, Lw0/ah;-><init>(Lcom/ex/auto/TimerFloaterService;I)V

    invoke-virtual {p0, v4, v7, v8}, Lcom/ex/auto/TimerFloaterService;->b(Ljava/lang/String;ILh2/a;)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/ex/auto/TimerFloaterService;->g:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v4, 0x7f0f0345

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/ex/auto/TimerFloaterService;->d(I)I

    move-result v5

    new-instance v7, Lw0/ah;

    const/4 v8, 0x3

    invoke-direct {v7, p0, v8}, Lw0/ah;-><init>(Lcom/ex/auto/TimerFloaterService;I)V

    invoke-virtual {p0, v4, v5, v7}, Lcom/ex/auto/TimerFloaterService;->b(Ljava/lang/String;ILh2/a;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v6}, Lcom/ex/auto/TimerFloaterService;->d(I)I

    move-result v4

    new-instance v5, Lw0/ah;

    const/4 v7, 0x4

    invoke-direct {v5, p0, v7}, Lw0/ah;-><init>(Lcom/ex/auto/TimerFloaterService;I)V

    const-string v7, "A\u2212"

    invoke-virtual {p0, v7, v4, v5}, Lcom/ex/auto/TimerFloaterService;->b(Ljava/lang/String;ILh2/a;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v6}, Lcom/ex/auto/TimerFloaterService;->d(I)I

    move-result v4

    new-instance v5, Lw0/ah;

    const/4 v7, 0x5

    invoke-direct {v5, p0, v7}, Lw0/ah;-><init>(Lcom/ex/auto/TimerFloaterService;I)V

    const-string v7, "A+"

    invoke-virtual {p0, v7, v4, v5}, Lcom/ex/auto/TimerFloaterService;->b(Ljava/lang/String;ILh2/a;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v6}, Lcom/ex/auto/TimerFloaterService;->d(I)I

    move-result v4

    new-instance v5, Lw0/ah;

    const/4 v6, 0x6

    invoke-direct {v5, p0, v6}, Lw0/ah;-><init>(Lcom/ex/auto/TimerFloaterService;I)V

    const-string v6, "\u2715"

    invoke-virtual {p0, v6, v4, v5}, Lcom/ex/auto/TimerFloaterService;->b(Ljava/lang/String;ILh2/a;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v7, Li2/l;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    new-instance v8, Li2/l;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-instance v9, Li2/k;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    new-instance v10, Li2/k;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/ex/auto/TimerFloaterService;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    new-instance v5, Lw0/bh;

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lw0/bh;-><init>(Lcom/ex/auto/TimerFloaterService;Li2/l;Li2/l;Li2/k;Li2/k;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_1
    move-object v6, p0

    :goto_0
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    const/16 v11, 0x108

    const/4 v12, -0x3

    const/4 v8, -0x2

    const/4 v9, -0x2

    const/16 v10, 0x7f6

    invoke-direct/range {v7 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput-object v3, v6, Lcom/ex/auto/TimerFloaterService;->b:Landroid/widget/LinearLayout;

    iput-object v7, v6, Lcom/ex/auto/TimerFloaterService;->c:Landroid/view/WindowManager$LayoutParams;

    :try_start_0
    iget-object v0, v6, Lcom/ex/auto/TimerFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v0, :cond_2

    invoke-interface {v0, v3, v7}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v6, Lcom/ex/auto/TimerFloaterService;->n:Lq0/b;

    invoke-virtual {v0}, Lq0/b;->j()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    :try_start_1
    const-string v0, "wm"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f0f0278

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public final g(F)V
    .locals 2

    iget v0, p0, Lcom/ex/auto/TimerFloaterService;->m:F

    add-float/2addr v0, p1

    const p1, 0x3f19999a    # 0.6f

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, p1, v1}, Lk1/a;->j(FFF)F

    move-result p1

    iput p1, p0, Lcom/ex/auto/TimerFloaterService;->m:F

    const-string p1, "timer_floater"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "escala"

    iget v1, p0, Lcom/ex/auto/TimerFloaterService;->m:F

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/ex/auto/TimerFloaterService;->c()V

    invoke-virtual {p0}, Lcom/ex/auto/TimerFloaterService;->e()V

    iget-object p1, p0, Lcom/ex/auto/TimerFloaterService;->g:Landroid/widget/Button;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/ex/auto/TimerFloaterService;->k:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0f0344

    goto :goto_0

    :cond_0
    const v0, 0x7f0f0342

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p1, p0, Lcom/ex/auto/TimerFloaterService;->e:Ljava/lang/String;

    const-string v0, "regressiva"

    invoke-static {p1, v0}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/ex/auto/TimerFloaterService;->k:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ex/auto/TimerFloaterService;->h:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/ex/auto/TimerFloaterService;->a:Landroid/view/WindowManager;

    const-string v0, "timer_floater"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "escala"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/ex/auto/TimerFloaterService;->m:F

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/ex/auto/TimerFloaterService;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ex/auto/TimerFloaterService;->c()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ex/auto/TimerFloaterService;->o:Z

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    if-eqz p1, :cond_0

    const-string p2, "modo"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "crono"

    :cond_1
    iget-object p2, p0, Lcom/ex/auto/TimerFloaterService;->b:Landroid/widget/LinearLayout;

    const/4 p3, 0x2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/ex/auto/TimerFloaterService;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return p3

    :cond_2
    iget-object p2, p0, Lcom/ex/auto/TimerFloaterService;->b:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/ex/auto/TimerFloaterService;->c()V

    :cond_3
    iput-object p1, p0, Lcom/ex/auto/TimerFloaterService;->e:Ljava/lang/String;

    const-string p2, "regressiva"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-wide p1, p0, Lcom/ex/auto/TimerFloaterService;->l:J

    goto :goto_0

    :cond_4
    const-wide/16 p1, 0x0

    :goto_0
    iput-wide p1, p0, Lcom/ex/auto/TimerFloaterService;->i:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ex/auto/TimerFloaterService;->k:Z

    invoke-virtual {p0}, Lcom/ex/auto/TimerFloaterService;->e()V

    const/4 p1, 0x1

    sput-boolean p1, Lcom/ex/auto/TimerFloaterService;->o:Z

    return p3
.end method
