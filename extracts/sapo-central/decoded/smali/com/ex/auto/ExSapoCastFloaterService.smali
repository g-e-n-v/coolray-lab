.class public final Lcom/ex/auto/ExSapoCastFloaterService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lw0/j6;


# static fields
.field public static final synthetic j:I


# instance fields
.field public a:Landroid/view/WindowManager;

.field public b:Landroid/widget/LinearLayout;

.field public c:Landroid/view/SurfaceView;

.field public d:Landroid/view/WindowManager$LayoutParams;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/ex/auto/ExSapoCastFloaterService;->i:F

    return-void
.end method

.method public static final e(Lcom/ex/auto/ExSapoCastFloaterService;Ljava/lang/String;Lh2/a;)Landroid/widget/TextView;
    .locals 2

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41880000    # 17.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 p1, 0x1e

    invoke-virtual {p0, p1}, Lcom/ex/auto/ExSapoCastFloaterService;->h(I)I

    move-result p1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/ex/auto/ExSapoCastFloaterService;->h(I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Lw0/w;

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
    iget v0, p0, Lcom/ex/auto/ExSapoCastFloaterService;->g:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/ex/auto/ExSapoCastFloaterService;->h:I

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/ex/auto/ExSapoCastFloaterService;->g:I

    iput p2, p0, Lcom/ex/auto/ExSapoCastFloaterService;->h:I

    invoke-virtual {p0}, Lcom/ex/auto/ExSapoCastFloaterService;->c()V

    :cond_2
    :goto_0
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

.method public final b()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public final c()V
    .locals 8

    iget v0, p0, Lcom/ex/auto/ExSapoCastFloaterService;->g:I

    iget v1, p0, Lcom/ex/auto/ExSapoCastFloaterService;->h:I

    invoke-virtual {p0, v0, v1}, Lcom/ex/auto/ExSapoCastFloaterService;->g(II)Lx1/a;

    move-result-object v0

    iget-object v1, v0, Lx1/a;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v0, v0, Lx1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/ex/auto/ExSapoCastFloaterService;->c:Landroid/view/SurfaceView;

    if-eqz v2, :cond_0

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v2, p0, Lcom/ex/auto/ExSapoCastFloaterService;->c:Landroid/view/SurfaceView;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    :cond_1
    iget-object v2, p0, Lcom/ex/auto/ExSapoCastFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    const-string v3, "lp"

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eqz v2, :cond_4

    iget v5, p0, Lcom/ex/auto/ExSapoCastFloaterService;->e:I

    add-int v6, v5, v0

    iget v7, p0, Lcom/ex/auto/ExSapoCastFloaterService;->f:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v5, v0

    add-int/2addr v5, v7

    invoke-virtual {p0, v1, v5}, Lcom/ex/auto/ExSapoCastFloaterService;->f(II)V

    :try_start_0
    iget-object v0, p0, Lcom/ex/auto/ExSapoCastFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/ex/auto/ExSapoCastFloaterService;->b:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/ex/auto/ExSapoCastFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_2

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    invoke-static {v3}, Li2/g;->h(Ljava/lang/String;)V

    throw v4

    :cond_3
    const-string v0, "wm"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    :cond_4
    invoke-static {v3}, Li2/g;->h(Ljava/lang/String;)V

    throw v4

    :cond_5
    invoke-static {v3}, Li2/g;->h(Ljava/lang/String;)V

    throw v4
.end method

.method public final d()V
    .locals 14

    iget-object v0, p0, Lcom/ex/auto/ExSapoCastFloaterService;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/ex/auto/ExSapoCastFloaterService;->g:I

    iget v1, p0, Lcom/ex/auto/ExSapoCastFloaterService;->h:I

    invoke-virtual {p0, v0, v1}, Lcom/ex/auto/ExSapoCastFloaterService;->g(II)Lx1/a;

    move-result-object v0

    iget-object v1, v0, Lx1/a;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v6

    iget-object v0, v0, Lx1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v11

    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/ex/auto/ExSapoCastFloaterService;->h(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v2, -0x11f1eeec

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v12, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/ex/auto/ExSapoCastFloaterService;->e:I

    const/4 v7, -0x1

    invoke-direct {v3, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/ex/auto/ExSapoCastFloaterService;->h(I)I

    move-result v3

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/ex/auto/ExSapoCastFloaterService;->h(I)I

    move-result v5

    invoke-virtual {v13, v3, v1, v5, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "\u283f  ExSapoCast"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, -0x66000001

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v1, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v13, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Lw0/w5;

    const/4 v5, 0x4

    invoke-direct {v3, v5}, Lw0/w5;-><init>(I)V

    const-string v5, "\u2039"

    invoke-static {p0, v5, v3}, Lcom/ex/auto/ExSapoCastFloaterService;->e(Lcom/ex/auto/ExSapoCastFloaterService;Ljava/lang/String;Lh2/a;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Lw0/w5;

    const/4 v5, 0x5

    invoke-direct {v3, v5}, Lw0/w5;-><init>(I)V

    const-string v5, "\u25cb"

    invoke-static {p0, v5, v3}, Lcom/ex/auto/ExSapoCastFloaterService;->e(Lcom/ex/auto/ExSapoCastFloaterService;Ljava/lang/String;Lh2/a;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Lw0/w5;

    const/4 v5, 0x6

    invoke-direct {v3, v5}, Lw0/w5;-><init>(I)V

    const-string v5, "\u25a2"

    invoke-static {p0, v5, v3}, Lcom/ex/auto/ExSapoCastFloaterService;->e(Lcom/ex/auto/ExSapoCastFloaterService;Ljava/lang/String;Lh2/a;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Lw0/f2;

    const/4 v5, 0x2

    invoke-direct {v3, v5, p0}, Lw0/f2;-><init>(ILjava/lang/Object;)V

    const-string v5, "\u2715"

    invoke-static {p0, v5, v3}, Lcom/ex/auto/ExSapoCastFloaterService;->e(Lcom/ex/auto/ExSapoCastFloaterService;Ljava/lang/String;Lh2/a;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/view/SurfaceView;

    invoke-direct {v3, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    new-instance v9, Lw0/f6;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lw0/f6;-><init>(I)V

    invoke-interface {v5, v9}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    new-instance v5, Lw0/d6;

    const/4 v9, 0x1

    invoke-direct {v5, p0, v9}, Lw0/d6;-><init>(Landroid/content/ContextWrapper;I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v12, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/ex/auto/ExSapoCastFloaterService;->c:Landroid/view/SurfaceView;

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/ex/auto/ExSapoCastFloaterService;->f:I

    invoke-direct {v2, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/ex/auto/ExSapoCastFloaterService;->h(I)I

    move-result v0

    invoke-direct {v5, v1, v0, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "\u25e2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, -0x33000001    # -1.3421772E8f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x34

    invoke-virtual {p0, v2}, Lcom/ex/auto/ExSapoCastFloaterService;->h(I)I

    move-result v2

    iget v5, p0, Lcom/ex/auto/ExSapoCastFloaterService;->f:I

    invoke-direct {v1, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Li2/k;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Li2/k;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v5, Li2/k;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v7, Lw0/h6;

    invoke-direct {v7, v1, v2, v5, p0}, Lw0/h6;-><init>(Li2/k;Li2/k;Li2/k;Lcom/ex/auto/ExSapoCastFloaterService;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v12, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/ex/auto/ExSapoCastFloaterService;->h(I)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/ex/auto/ExSapoCastFloaterService;->h(I)I

    move-result v0

    const-string v2, "exsapocast_pip"

    const v3, 0x800033

    invoke-static {p0, v2, v3, v1, v0}, Lw0/e8;->G(Landroid/content/Context;Ljava/lang/String;III)Lw0/yd;

    move-result-object v0

    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/ex/auto/ExSapoCastFloaterService;->e:I

    add-int/2addr v1, v11

    iget v2, p0, Lcom/ex/auto/ExSapoCastFloaterService;->f:I

    add-int v7, v1, v2

    const/16 v9, 0x108

    const/4 v10, -0x3

    const/16 v8, 0x7f6

    invoke-direct/range {v5 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    move v7, v6

    iget v1, v0, Lw0/yd;->a:I

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, v0, Lw0/yd;->b:I

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, v0, Lw0/yd;->c:I

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    iput-object v5, p0, Lcom/ex/auto/ExSapoCastFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    new-instance v1, Li2/k;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Li2/k;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Li2/l;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v5, Li2/l;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v6, Li2/j;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lw0/g6;

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lw0/g6;-><init>(Li2/k;Li2/k;Li2/l;Lcom/ex/auto/ExSapoCastFloaterService;Li2/l;Li2/j;)V

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget v0, p0, Lcom/ex/auto/ExSapoCastFloaterService;->e:I

    add-int/2addr v0, v11

    iget v1, p0, Lcom/ex/auto/ExSapoCastFloaterService;->f:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v7, v0}, Lcom/ex/auto/ExSapoCastFloaterService;->f(II)V

    iput-object v12, p0, Lcom/ex/auto/ExSapoCastFloaterService;->b:Landroid/widget/LinearLayout;

    :try_start_0
    iget-object v0, p0, Lcom/ex/auto/ExSapoCastFloaterService;->a:Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/ex/auto/ExSapoCastFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_1

    invoke-interface {v0, v12, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    const-string v0, "lp"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "wm"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addView: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ExSapoCast"

    invoke-static {v0, v1, v2}, Landroidx/activity/result/b;->s(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public final f(II)V
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/ex/auto/ExSapoCastFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    const-string v3, "lp"

    if-eqz v1, :cond_5

    if-eqz v1, :cond_4

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v5, p1

    const/4 p1, 0x0

    if-gez v5, :cond_0

    move v5, p1

    :cond_0
    invoke-static {v4, p1, v5}, Lk1/a;->k(III)I

    move-result v4

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/ex/auto/ExSapoCastFloaterService;->d:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_3

    if-eqz v1, :cond_2

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v0, p2

    if-gez v0, :cond_1

    move v0, p1

    :cond_1
    invoke-static {v2, p1, v0}, Lk1/a;->k(III)I

    move-result p1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void

    :cond_2
    invoke-static {v3}, Li2/g;->h(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {v3}, Li2/g;->h(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-static {v3}, Li2/g;->h(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-static {v3}, Li2/g;->h(Ljava/lang/String;)V

    throw v2
.end method

.method public final g(II)Lx1/a;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/ex/auto/ExSapoCastFloaterService;->i(II)Lx1/a;

    move-result-object p1

    iget-object p2, p1, Lx1/a;->a:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    iget-object p1, p1, Lx1/a;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/ex/auto/ExSapoCastFloaterService;->i:F

    mul-float/2addr p2, v0

    float-to-int p2, p2

    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Lcom/ex/auto/ExSapoCastFloaterService;->h(I)I

    move-result v1

    if-ge p2, v1, :cond_0

    move p2, v1

    :cond_0
    iget v1, p0, Lcom/ex/auto/ExSapoCastFloaterService;->i:F

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, v0}, Lcom/ex/auto/ExSapoCastFloaterService;->h(I)I

    move-result v0

    if-ge p1, v0, :cond_1

    move p1, v0

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lx1/a;

    invoke-direct {v0, p2, p1}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final h(I)I
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

.method public final i(II)Lx1/a;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const v2, 0x3f6b851f    # 0.92f

    mul-float/2addr v1, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/ex/auto/ExSapoCastFloaterService;->e:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/ex/auto/ExSapoCastFloaterService;->f:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    int-to-float p1, p1

    div-float/2addr v1, p1

    int-to-float p2, p2

    div-float/2addr v0, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    mul-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    new-instance v0, Lx1/a;

    invoke-direct {v0, p1, p2}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 6

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/ex/auto/ExSapoCastFloaterService;->a:Landroid/view/WindowManager;

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/ex/auto/ExSapoCastFloaterService;->h(I)I

    move-result v1

    iput v1, p0, Lcom/ex/auto/ExSapoCastFloaterService;->e:I

    invoke-virtual {p0, v0}, Lcom/ex/auto/ExSapoCastFloaterService;->h(I)I

    move-result v0

    iput v0, p0, Lcom/ex/auto/ExSapoCastFloaterService;->f:I

    const-string v0, "tela_preta_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "exsapocast_pip_scale"

    const v3, 0x3f19999a    # 0.6f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v3}, Lk1/a;->j(FFF)F

    move-result v0

    iput v0, p0, Lcom/ex/auto/ExSapoCastFloaterService;->i:F

    sget-object v0, Lw0/m;->i:Lw0/m6;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget v5, v0, Lw0/m6;->g:I

    if-lez v5, :cond_0

    iget v5, v0, Lw0/m6;->h:I

    if-lez v5, :cond_0

    new-array v4, v2, [I

    iget v5, v0, Lw0/m6;->g:I

    aput v5, v4, v1

    iget v0, v0, Lw0/m6;->h:I

    aput v0, v4, v3

    :cond_0
    if-nez v4, :cond_1

    new-array v4, v2, [I

    const/16 v0, 0x9

    aput v0, v4, v1

    const/16 v0, 0x14

    aput v0, v4, v3

    :cond_1
    aget v0, v4, v1

    iput v0, p0, Lcom/ex/auto/ExSapoCastFloaterService;->g:I

    aget v0, v4, v3

    iput v0, p0, Lcom/ex/auto/ExSapoCastFloaterService;->h:I

    invoke-virtual {p0}, Lcom/ex/auto/ExSapoCastFloaterService;->d()V

    sput-object p0, Lw0/m;->c:Landroid/content/ContextWrapper;

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

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
    :try_start_2
    iget-object v0, p0, Lcom/ex/auto/ExSapoCastFloaterService;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/ex/auto/ExSapoCastFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v2, :cond_2

    invoke-interface {v2, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    const-string v0, "wm"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_3
    :goto_1
    iput-object v1, p0, Lcom/ex/auto/ExSapoCastFloaterService;->b:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ex/auto/ExSapoCastFloaterService;->c:Landroid/view/SurfaceView;

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    iget-object p1, p0, Lcom/ex/auto/ExSapoCastFloaterService;->b:Landroid/widget/LinearLayout;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/ex/auto/ExSapoCastFloaterService;->d()V

    :cond_0
    const/4 p1, 0x2

    return p1
.end method
