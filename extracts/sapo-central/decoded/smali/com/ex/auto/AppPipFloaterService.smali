.class public final Lcom/ex/auto/AppPipFloaterService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static volatile x:Lcom/ex/auto/AppPipFloaterService;


# instance fields
.field public a:Landroid/view/WindowManager;

.field public b:Landroid/widget/LinearLayout;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/LinearLayout;

.field public e:Landroid/widget/LinearLayout;

.field public f:Landroid/widget/LinearLayout;

.field public g:Landroid/view/WindowManager$LayoutParams;

.field public final h:Landroid/os/Handler;

.field public i:Lw0/mg;

.field public j:Lw0/ng;

.field public k:Lw0/lg;

.field public l:Z

.field public m:Z

.field public volatile n:Z

.field public o:F

.field public p:F

.field public q:I

.field public r:I

.field public s:Z

.field public volatile t:Z

.field public u:Ljava/lang/Integer;

.field public final v:Lw0/g0;

.field public final w:Lw0/g0;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    new-instance v0, Lw0/g0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lw0/g0;-><init>(Lcom/ex/auto/AppPipFloaterService;I)V

    iput-object v0, p0, Lcom/ex/auto/AppPipFloaterService;->v:Lw0/g0;

    new-instance v0, Lw0/g0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lw0/g0;-><init>(Lcom/ex/auto/AppPipFloaterService;I)V

    iput-object v0, p0, Lcom/ex/auto/AppPipFloaterService;->w:Lw0/g0;

    return-void
.end method

.method public static final b(Lcom/ex/auto/AppPipFloaterService;Ljava/lang/String;ILh2/a;)Landroid/widget/TextView;
    .locals 1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41800000    # 16.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 p1, 0x14

    invoke-virtual {p0, p2, p1}, Lcom/ex/auto/AppPipFloaterService;->h(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x28

    invoke-virtual {p0, p1}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result p1

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Lw0/w;

    const/4 p1, 0x0

    invoke-direct {p0, p3, p1}, Lw0/w;-><init>(Lh2/a;I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static c(Lw0/lg;Lw0/ng;)Lw0/lg;
    .locals 10

    iget v0, p0, Lw0/lg;->c:I

    iget v1, p0, Lw0/lg;->a:I

    sub-int v2, v0, v1

    iget v3, p1, Lw0/ng;->a:I

    int-to-double v3, v3

    const-wide v5, 0x3feb333333333333L    # 0.85

    mul-double/2addr v3, v5

    double-to-int v3, v3

    const/16 v4, 0x104

    invoke-static {v2, v4, v3}, Lk1/a;->k(III)I

    move-result v2

    iget v3, p0, Lw0/lg;->d:I

    iget p0, p0, Lw0/lg;->b:I

    sub-int v4, v3, p0

    iget v7, p1, Lw0/ng;->b:I

    int-to-double v8, v7

    mul-double/2addr v8, v5

    double-to-int v5, v8

    const/16 v6, 0x96

    invoke-static {v4, v6, v5}, Lk1/a;->k(III)I

    move-result v4

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p0, v3

    div-int/lit8 p0, p0, 0x2

    div-int/lit8 v0, v2, 0x2

    sub-int/2addr v1, v0

    div-int/lit8 v0, v4, 0x2

    sub-int/2addr p0, v0

    if-gez v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    const/16 v0, 0x48

    if-ge p0, v0, :cond_1

    move p0, v0

    :cond_1
    add-int v0, v1, v2

    iget p1, p1, Lw0/ng;->a:I

    if-le v0, p1, :cond_2

    sub-int v1, p1, v2

    :cond_2
    add-int p1, p0, v4

    if-le p1, v7, :cond_3

    sub-int p0, v7, v4

    :cond_3
    new-instance p1, Lw0/lg;

    add-int/2addr v2, v1

    add-int/2addr v4, p0

    invoke-direct {p1, v1, p0, v2, v4}, Lw0/lg;-><init>(IIII)V

    return-object p1
.end method


# virtual methods
.method public final a(Lw0/lg;)V
    .locals 4

    sget-object v0, Lw0/z3;->a:Lw0/z3;

    iget-object v1, p0, Lcom/ex/auto/AppPipFloaterService;->u:Ljava/lang/Integer;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ex/auto/AppPipFloaterService;->i:Lw0/mg;

    if-nez v1, :cond_1

    invoke-static {}, Lw0/og;->j()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    sget-object v2, Lw0/z3;->b:Lw0/z3;

    :goto_0
    if-ne v2, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "adotando o PiP que ja estava na tela (stack "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppPipFloater"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/ex/auto/AppPipFloaterService;->u:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/ex/auto/AppPipFloaterService;->k:Lw0/lg;

    if-nez v0, :cond_1

    invoke-static {v1}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lw0/og;->b(I)Lw0/lg;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/AppPipFloaterService;->k:Lw0/lg;

    :cond_1
    iget-object v0, p0, Lcom/ex/auto/AppPipFloaterService;->u:Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput-boolean v1, p0, Lcom/ex/auto/AppPipFloaterService;->n:Z

    invoke-virtual {p0}, Lcom/ex/auto/AppPipFloaterService;->l()V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lw0/v;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, p0, v3}, Lw0/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/ex/auto/AppPipFloaterService;->i:Lw0/mg;

    if-nez v0, :cond_3

    return-void

    :cond_3
    iput-boolean v1, p0, Lcom/ex/auto/AppPipFloaterService;->n:Z

    invoke-virtual {p0}, Lcom/ex/auto/AppPipFloaterService;->l()V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, La1/g;

    const/4 v3, 0x2

    invoke-direct {v2, v0, p1, p0, v3}, La1/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
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

.method public final d()V
    .locals 7

    sget-object v0, Lw0/y3;->c:Lw0/y3;

    iget-object v3, p0, Lcom/ex/auto/AppPipFloaterService;->i:Lw0/mg;

    iget-object v4, p0, Lcom/ex/auto/AppPipFloaterService;->u:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    sget-object v1, Lw0/y3;->a:Lw0/y3;

    :goto_0
    move-object v2, v1

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_1

    sget-object v1, Lw0/y3;->b:Lw0/y3;

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_1
    if-ne v2, v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ex/auto/AppPipFloaterService;->n:Z

    invoke-virtual {p0}, Lcom/ex/auto/AppPipFloaterService;->l()V

    iget-object v0, p0, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ex/auto/AppPipFloaterService;->v:Lw0/g0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lw0/x;

    const/4 v6, 0x0

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lw0/x;-><init>(Lw0/y3;Lw0/mg;Ljava/lang/Integer;Lcom/ex/auto/AppPipFloaterService;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final e(I)I
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

.method public final f(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ex/auto/AppPipFloaterService;->n:Z

    iget-object v0, p0, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    new-instance v1, Lw0/b0;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lw0/b0;-><init>(Lcom/ex/auto/AppPipFloaterService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, p1}, Lcom/ex/auto/AppPipFloaterService;->k(Ljava/lang/String;)Z

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 3

    const-string v0, "pkg"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/ex/auto/AppPipFloaterService;->n:Z

    const-string v1, "getString(...)"

    if-eqz v0, :cond_0

    const p1, 0x7f0f0349

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/ex/auto/AppPipFloaterService;->k(Ljava/lang/String;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ex/auto/AppPipFloaterService;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ex/auto/AppPipFloaterService;->m:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ex/auto/AppPipFloaterService;->n:Z

    invoke-virtual {p0}, Lcom/ex/auto/AppPipFloaterService;->l()V

    const v0, 0x7f0f029c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ex/auto/AppPipFloaterService;->k(Ljava/lang/String;)Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lw0/y;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lw0/y;-><init>(Lcom/ex/auto/AppPipFloaterService;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final h(II)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0, p2}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method public final i(D)V
    .locals 8

    iget-object v0, p0, Lcom/ex/auto/AppPipFloaterService;->k:Lw0/lg;

    iget-object v1, p0, Lcom/ex/auto/AppPipFloaterService;->j:Lw0/ng;

    invoke-virtual {p0}, Lcom/ex/auto/AppPipFloaterService;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/ex/auto/AppPipFloaterService;->n:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget v2, v0, Lw0/lg;->c:I

    iget v3, v0, Lw0/lg;->a:I

    sub-int v4, v2, v3

    int-to-double v4, v4

    mul-double/2addr v4, p1

    double-to-int v4, v4

    iget v5, v0, Lw0/lg;->d:I

    iget v0, v0, Lw0/lg;->b:I

    sub-int v6, v5, v0

    int-to-double v6, v6

    mul-double/2addr v6, p1

    double-to-int p1, v6

    add-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x2

    new-instance p2, Lw0/lg;

    div-int/lit8 v4, v4, 0x2

    sub-int v2, v3, v4

    div-int/lit8 p1, p1, 0x2

    sub-int v5, v0, p1

    add-int/2addr v3, v4

    add-int/2addr v0, p1

    invoke-direct {p2, v2, v5, v3, v0}, Lw0/lg;-><init>(IIII)V

    invoke-static {p2, v1}, Lcom/ex/auto/AppPipFloaterService;->c(Lw0/lg;Lw0/ng;)Lw0/lg;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ex/auto/AppPipFloaterService;->a(Lw0/lg;)V

    return-void

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "resize ignorado: controle="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ex/auto/AppPipFloaterService;->j()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " bounds="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, p2

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " tela="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    move p2, v2

    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " ocupado="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/ex/auto/AppPipFloaterService;->n:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppPipFloater"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, Lcom/ex/auto/AppPipFloaterService;->i:Lw0/mg;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ex/auto/AppPipFloaterService;->u:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final k(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lw0/y;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lw0/y;-><init>(Lcom/ex/auto/AppPipFloaterService;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public final l()V
    .locals 4

    invoke-virtual {p0}, Lcom/ex/auto/AppPipFloaterService;->j()Z

    move-result v0

    iget-object v1, p0, Lcom/ex/auto/AppPipFloaterService;->c:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/ex/auto/AppPipFloaterService;->n:Z

    if-eqz v2, :cond_0

    const-string v2, "\u2026"

    goto :goto_0

    :cond_0
    const-string v2, "PIP"

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lcom/ex/auto/AppPipFloaterService;->c:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-boolean v2, p0, Lcom/ex/auto/AppPipFloaterService;->n:Z

    if-eqz v2, :cond_2

    const v2, -0x338a8a8b    # -6.4345556E7f

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    const v2, -0x33d182ce    # -4.5741256E7f

    goto :goto_1

    :cond_3
    const v2, -0x33ea9a40    # -3.9163648E7f

    :goto_1
    const/16 v3, 0x18

    invoke-virtual {p0, v2, v3}, Lcom/ex/auto/AppPipFloaterService;->h(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v1, p0, Lcom/ex/auto/AppPipFloaterService;->d:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_6

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/ex/auto/AppPipFloaterService;->n:Z

    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
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

    sput-object p0, Lcom/ex/auto/AppPipFloaterService;->x:Lcom/ex/auto/AppPipFloaterService;

    const v0, 0x7f0f0293

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v8, "getString(...)"

    invoke-static {v3, v8}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0f0292

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0f029a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x20

    const-string v2, "app_pip_floater"

    const v5, 0x108003a

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lw0/t1;->E(Landroid/app/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Landroid/app/Notification;

    move-result-object v0

    const/16 v2, 0x6a

    invoke-virtual {p0, v2, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v2}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, v1, Lcom/ex/auto/AppPipFloaterService;->a:Landroid/view/WindowManager;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iput-object v0, v1, Lcom/ex/auto/AppPipFloaterService;->b:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "PIP"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const v4, -0x33ea9a40    # -3.9163648E7f

    const/16 v5, 0x18

    invoke-virtual {p0, v4, v5}, Lcom/ex/auto/AppPipFloaterService;->h(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v4, 0x34

    invoke-virtual {p0, v4}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result v4

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lw0/e0;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lw0/e0;-><init>(Lcom/ex/auto/AppPipFloaterService;I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v0, v1, Lcom/ex/auto/AppPipFloaterService;->c:Landroid/widget/TextView;

    new-instance v4, La1/o;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, La1/o;-><init>(Landroid/content/ContextWrapper;I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, v1, Lcom/ex/auto/AppPipFloaterService;->b:Landroid/widget/LinearLayout;

    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/ex/auto/AppPipFloaterService;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v7, 0x6

    invoke-virtual {p0, v7}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result v9

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, v1, Lcom/ex/auto/AppPipFloaterService;->d:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result v11

    iput v11, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Lw0/f0;

    const/4 v11, 0x0

    invoke-direct {v9, p0, v11}, Lw0/f0;-><init>(Lcom/ex/auto/AppPipFloaterService;I)V

    const-string v11, "+"

    const v12, -0x33bdbdbe    # -5.0923784E7f

    invoke-static {p0, v11, v12, v9}, Lcom/ex/auto/AppPipFloaterService;->b(Lcom/ex/auto/AppPipFloaterService;Ljava/lang/String;ILh2/a;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v9, Lw0/f0;

    const/4 v11, 0x1

    invoke-direct {v9, p0, v11}, Lw0/f0;-><init>(Lcom/ex/auto/AppPipFloaterService;I)V

    const-string v11, "\u2212"

    invoke-static {p0, v11, v12, v9}, Lcom/ex/auto/AppPipFloaterService;->b(Lcom/ex/auto/AppPipFloaterService;Ljava/lang/String;ILh2/a;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v10}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result v10

    iput v10, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Lw0/f0;

    const/4 v11, 0x2

    invoke-direct {v10, p0, v11}, Lw0/f0;-><init>(Lcom/ex/auto/AppPipFloaterService;I)V

    const-string v11, "\u27f2"

    invoke-static {p0, v11, v12, v10}, Lcom/ex/auto/AppPipFloaterService;->b(Lcom/ex/auto/AppPipFloaterService;Ljava/lang/String;ILh2/a;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v10, Lw0/f0;

    const/4 v11, 0x3

    invoke-direct {v10, p0, v11}, Lw0/f0;-><init>(Lcom/ex/auto/AppPipFloaterService;I)V

    const-string v11, "\u2715"

    const v12, -0x3348e3e4    # -9.6002272E7f

    invoke-static {p0, v11, v12, v10}, Lcom/ex/auto/AppPipFloaterService;->b(Lcom/ex/auto/AppPipFloaterService;Ljava/lang/String;ILh2/a;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v10, v1, Lcom/ex/auto/AppPipFloaterService;->d:Landroid/widget/LinearLayout;

    invoke-static {v10}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/ex/auto/AppPipFloaterService;->d:Landroid/widget/LinearLayout;

    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/ex/auto/AppPipFloaterService;->b:Landroid/widget/LinearLayout;

    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    iget-object v9, v1, Lcom/ex/auto/AppPipFloaterService;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v9, -0x11dfdedc

    const/16 v10, 0xe

    invoke-virtual {p0, v9, v10}, Lcom/ex/auto/AppPipFloaterService;->h(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v4}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result v9

    invoke-virtual {p0, v4}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result v10

    invoke-virtual {p0, v4}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result v12

    invoke-virtual {p0, v4}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result v13

    invoke-virtual {v0, v9, v10, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v10, 0xf0

    invoke-virtual {p0, v10}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result v10

    invoke-direct {v9, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v7}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result v10

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, v1, Lcom/ex/auto/AppPipFloaterService;->e:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v9, 0x10

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0f0275

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v10, 0x41600000    # 14.0f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    const v10, -0x9b4a0a

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v10, v5, v6, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v9, 0x41800000    # 16.0f

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextSize(F)V

    const v9, -0x10acb0

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v9, 0xa

    invoke-virtual {p0, v9}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result v10

    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result v12

    invoke-virtual {p0, v9}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result v9

    invoke-virtual {p0, v11}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result v11

    invoke-virtual {v5, v10, v12, v9, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v9, Lw0/e0;

    const/4 v10, 0x1

    invoke-direct {v9, p0, v10}, Lw0/e0;-><init>(Lcom/ex/auto/AppPipFloaterService;I)V

    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v5, v1, Lcom/ex/auto/AppPipFloaterService;->e:Landroid/widget/LinearLayout;

    invoke-static {v5}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iput-object v0, v1, Lcom/ex/auto/AppPipFloaterService;->f:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iget-object v2, v1, Lcom/ex/auto/AppPipFloaterService;->f:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v1, Lcom/ex/auto/AppPipFloaterService;->e:Landroid/widget/LinearLayout;

    invoke-static {v2}, Li2/g;->b(Ljava/lang/Object;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x12c

    invoke-virtual {p0, v6}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result v6

    invoke-direct {v5, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v7}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result v3

    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lcom/ex/auto/AppPipFloaterService;->b:Landroid/widget/LinearLayout;

    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/ex/auto/AppPipFloaterService;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    iget-object v2, v1, Lcom/ex/auto/AppPipFloaterService;->w:Lw0/g0;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    const/16 v13, 0x108

    const/4 v14, -0x3

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/16 v12, 0x7f6

    invoke-direct/range {v9 .. v14}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const v0, 0x800013

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p0, v4}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result v0

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result v0

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    iput-object v9, v1, Lcom/ex/auto/AppPipFloaterService;->g:Landroid/view/WindowManager$LayoutParams;

    :try_start_0
    iget-object v0, v1, Lcom/ex/auto/AppPipFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v2, v1, Lcom/ex/auto/AppPipFloaterService;->b:Landroid/widget/LinearLayout;

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

    invoke-virtual {p0, v0}, Lcom/ex/auto/AppPipFloaterService;->k(Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ex/auto/AppPipFloaterService;->t:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/ex/auto/AppPipFloaterService;->x:Lcom/ex/auto/AppPipFloaterService;

    iget-object v1, p0, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ex/auto/AppPipFloaterService;->v:Lw0/g0;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Lcom/ex/auto/AppPipFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/ex/auto/AppPipFloaterService;->b:Landroid/widget/LinearLayout;

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

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    if-eqz p1, :cond_0

    const-string p2, "pacote"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-static {p1}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p2, Lw0/y;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p1, p3}, Lw0/y;-><init>(Lcom/ex/auto/AppPipFloaterService;Ljava/lang/String;I)V

    const-wide/16 v0, 0x384

    iget-object p1, p0, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_1
    const/4 p1, 0x2

    return p1
.end method
