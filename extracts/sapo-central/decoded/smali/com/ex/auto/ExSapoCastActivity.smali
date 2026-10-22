.class public final Lcom/ex/auto/ExSapoCastActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lw0/j6;


# static fields
.field public static final synthetic e:I


# instance fields
.field public a:Landroid/widget/FrameLayout;

.field public b:Landroid/view/SurfaceView;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static final c(Lcom/ex/auto/ExSapoCastActivity;Ljava/lang/String;Lh2/a;)Landroid/widget/TextView;
    .locals 3

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41b00000    # 22.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lcom/ex/auto/ExSapoCastActivity;->d(I)I

    move-result p1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/ex/auto/ExSapoCastActivity;->d(I)I

    move-result p1

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const v2, -0x55dfdbd8

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0, v1}, Lcom/ex/auto/ExSapoCastActivity;->d(I)I

    move-result p0

    const v1, 0x66ffffff

    invoke-virtual {p1, p0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p0, Lw0/w;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lw0/w;-><init>(Lh2/a;I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method public final a(II)V
    .locals 1

    if-lez p1, :cond_2

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/ex/auto/ExSapoCastActivity;->c:I

    iput p2, p0, Lcom/ex/auto/ExSapoCastActivity;->d:I

    iget-object p1, p0, Lcom/ex/auto/ExSapoCastActivity;->a:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    new-instance p2, Lw0/e6;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lw0/e6;-><init>(Lcom/ex/auto/ExSapoCastActivity;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    const-string p1, "root"

    invoke-static {p1}, Li2/g;->h(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 2

    new-instance v0, Lw0/e6;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lw0/e6;-><init>(Lcom/ex/auto/ExSapoCastActivity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

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

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1706

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iput-object p1, p0, Lcom/ex/auto/ExSapoCastActivity;->a:Landroid/widget/FrameLayout;

    new-instance p1, Landroid/view/SurfaceView;

    invoke-direct {p1, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ex/auto/ExSapoCastActivity;->b:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    new-instance v0, Lw0/f6;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw0/f6;-><init>(I)V

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object p1, p0, Lcom/ex/auto/ExSapoCastActivity;->a:Landroid/widget/FrameLayout;

    const-string v0, "root"

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    iget-object v2, p0, Lcom/ex/auto/ExSapoCastActivity;->b:Landroid/view/SurfaceView;

    const-string v3, "surfaceView"

    if-eqz v2, :cond_6

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x11

    const/4 v6, -0x1

    invoke-direct {v4, v6, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/ex/auto/ExSapoCastActivity;->b:Landroid/view/SurfaceView;

    if-eqz p1, :cond_5

    new-instance v2, Lw0/d6;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lw0/d6;-><init>(Landroid/content/ContextWrapper;I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/ex/auto/ExSapoCastActivity;->a:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_4

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    const v6, 0x800015

    invoke-direct {v4, v5, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/16 v5, 0xa

    invoke-virtual {p0, v5}, Lcom/ex/auto/ExSapoCastActivity;->d(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lw0/w5;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lw0/w5;-><init>(I)V

    const-string v5, "\u2039"

    invoke-static {p0, v5, v4}, Lcom/ex/auto/ExSapoCastActivity;->c(Lcom/ex/auto/ExSapoCastActivity;Ljava/lang/String;Lh2/a;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v4, Lw0/w5;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lw0/w5;-><init>(I)V

    const-string v5, "\u25cb"

    invoke-static {p0, v5, v4}, Lcom/ex/auto/ExSapoCastActivity;->c(Lcom/ex/auto/ExSapoCastActivity;Ljava/lang/String;Lh2/a;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v4, Lw0/w5;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lw0/w5;-><init>(I)V

    const-string v5, "\u25a2"

    invoke-static {p0, v5, v4}, Lcom/ex/auto/ExSapoCastActivity;->c(Lcom/ex/auto/ExSapoCastActivity;Ljava/lang/String;Lh2/a;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v4, Lw0/f2;

    const/4 v5, 0x1

    invoke-direct {v4, v5, p0}, Lw0/f2;-><init>(ILjava/lang/Object;)V

    const-string v5, "\u2715"

    invoke-static {p0, v5, v4}, Lcom/ex/auto/ExSapoCastActivity;->c(Lcom/ex/auto/ExSapoCastActivity;Ljava/lang/String;Lh2/a;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/ex/auto/ExSapoCastActivity;->a:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    sput-object p0, Lw0/m;->c:Landroid/content/ContextWrapper;

    sget-object p1, Lw0/m;->i:Lw0/m6;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    sget-object p1, Lw0/m;->i:Lw0/m6;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget v2, p1, Lw0/m6;->g:I

    if-lez v2, :cond_1

    iget v2, p1, Lw0/m6;->h:I

    if-lez v2, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p1, Lw0/m6;->g:I

    aput v2, v1, v0

    iget p1, p1, Lw0/m6;->h:I

    aput p1, v1, v3

    :cond_1
    if-eqz v1, :cond_2

    aget p1, v1, v0

    aget v0, v1, v3

    invoke-virtual {p0, p1, v0}, Lcom/ex/auto/ExSapoCastActivity;->a(II)V

    :cond_2
    return-void

    :cond_3
    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {v3}, Li2/g;->h(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-static {v3}, Li2/g;->h(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v1
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    sget-object v0, Lw0/m;->c:Landroid/content/ContextWrapper;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    sput-object v1, Lw0/m;->c:Landroid/content/ContextWrapper;

    :cond_0
    sget-object v0, Lw0/m;->i:Lw0/m6;

    if-eqz v0, :cond_1

    monitor-enter v0

    :try_start_0
    iput-object v1, v0, Lw0/m6;->e:Landroid/view/Surface;

    invoke-virtual {v0}, Lw0/m6;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "activity-finish"

    sget-object v1, Lw0/m;->i:Lw0/m6;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lw0/m6;->g(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1706

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method
