.class public final Lcom/ex/auto/DpadFloaterService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final synthetic i:I


# instance fields
.field public a:Landroid/view/WindowManager;

.field public b:Landroid/widget/GridLayout;

.field public c:Landroid/view/WindowManager$LayoutParams;

.field public d:F

.field public e:F

.field public f:I

.field public g:I

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;II)V
    .locals 1

    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    invoke-static {p1}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object p1

    invoke-static {p2}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    const/16 p1, 0x4c

    iput p1, v0, Landroid/widget/GridLayout$LayoutParams;->width:I

    iput p1, v0, Landroid/widget/GridLayout$LayoutParams;->height:I

    const/4 p1, 0x6

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
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

.method public final b(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p2, 0x41b00000    # 22.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v0, -0x33d5d1cd    # -4.4611788E7f

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v0, 0x2

    const v1, 0x33ffffff

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p2, La1/n;

    const/4 v0, 0x3

    invoke-direct {p2, p0, p3, v0}, La1/n;-><init>(Landroid/content/ContextWrapper;II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 14

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/ex/auto/DpadFloaterService;->a:Landroid/view/WindowManager;

    const/4 v6, 0x0

    const/16 v7, 0x10

    const-string v2, "dpad_floater"

    const-string v3, "Controle TV (D-pad)"

    const-string v4, "Setas na tela p/ apps de TV"

    const v5, 0x1080021

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lw0/t1;->E(Landroid/app/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Landroid/app/Notification;

    move-result-object v0

    const/16 v2, 0x3ae1

    invoke-virtual {p0, v2, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    iget-object v0, v1, Lcom/ex/auto/DpadFloaterService;->b:Landroid/widget/GridLayout;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/GridLayout;

    invoke-direct {v0, p0}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/GridLayout;->setRowCount(I)V

    invoke-virtual {v0, v2}, Landroid/widget/GridLayout;->setColumnCount(I)V

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/high16 v4, -0x67000000

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "\u283f"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, -0x66000001

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v6, "\u25b2"

    const/16 v7, 0x13

    invoke-virtual {p0, v5, v6, v7}, Lcom/ex/auto/DpadFloaterService;->b(Landroid/widget/TextView;Ljava/lang/String;I)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v7, "\u2715"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, -0x33009495

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41900000    # 18.0f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v7, Lw0/u5;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lw0/u5;-><init>(Lcom/ex/auto/DpadFloaterService;I)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v8, "\u25c0"

    const/16 v9, 0x15

    invoke-virtual {p0, v7, v8, v9}, Lcom/ex/auto/DpadFloaterService;->b(Landroid/widget/TextView;Ljava/lang/String;I)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v9, "OK"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v9, 0x41800000    # 16.0f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const v10, -0x33d09015    # -4.5989804E7f

    invoke-virtual {v4, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v8, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Lw0/u5;

    const/4 v10, 0x1

    invoke-direct {v4, p0, v10}, Lw0/u5;-><init>(Lcom/ex/auto/DpadFloaterService;I)V

    invoke-virtual {v8, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v10, "\u25b6"

    const/16 v11, 0x16

    invoke-virtual {p0, v4, v10, v11}, Lcom/ex/auto/DpadFloaterService;->b(Landroid/widget/TextView;Ljava/lang/String;I)V

    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v11, "\u21a9"

    const/4 v12, 0x4

    invoke-virtual {p0, v10, v11, v12}, Lcom/ex/auto/DpadFloaterService;->b(Landroid/widget/TextView;Ljava/lang/String;I)V

    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v12, "\u25bc"

    const/16 v13, 0x14

    invoke-virtual {p0, v11, v12, v13}, Lcom/ex/auto/DpadFloaterService;->b(Landroid/widget/TextView;Ljava/lang/String;I)V

    new-instance v12, Landroid/view/View;

    invoke-direct {v12, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3, v3}, Lcom/ex/auto/DpadFloaterService;->a(Landroid/view/View;II)V

    invoke-static {v5, v3, v9}, Lcom/ex/auto/DpadFloaterService;->a(Landroid/view/View;II)V

    const/4 v13, 0x2

    invoke-static {v6, v3, v13}, Lcom/ex/auto/DpadFloaterService;->a(Landroid/view/View;II)V

    invoke-static {v7, v9, v3}, Lcom/ex/auto/DpadFloaterService;->a(Landroid/view/View;II)V

    invoke-static {v8, v9, v9}, Lcom/ex/auto/DpadFloaterService;->a(Landroid/view/View;II)V

    invoke-static {v4, v9, v13}, Lcom/ex/auto/DpadFloaterService;->a(Landroid/view/View;II)V

    invoke-static {v10, v13, v3}, Lcom/ex/auto/DpadFloaterService;->a(Landroid/view/View;II)V

    invoke-static {v11, v13, v9}, Lcom/ex/auto/DpadFloaterService;->a(Landroid/view/View;II)V

    invoke-static {v12, v13, v13}, Lcom/ex/auto/DpadFloaterService;->a(Landroid/view/View;II)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v3, 0x28

    const/16 v4, 0x78

    const-string v5, "dpad_floater"

    const v6, 0x800055

    invoke-static {p0, v5, v6, v3, v4}, Lw0/e8;->G(Landroid/content/Context;Ljava/lang/String;III)Lw0/yd;

    move-result-object v3

    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    const/16 v8, 0x108

    const/4 v9, -0x3

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x7f6

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v5, v3, Lw0/yd;->a:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v5, v3, Lw0/yd;->b:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v3, Lw0/yd;->c:I

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    iput-object v4, v1, Lcom/ex/auto/DpadFloaterService;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    new-instance v4, Lw0/v5;

    invoke-direct {v4, p0, v3}, Lw0/v5;-><init>(Lcom/ex/auto/DpadFloaterService;I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :try_start_0
    iget-object v2, v1, Lcom/ex/auto/DpadFloaterService;->a:Landroid/view/WindowManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v4, v1, Lcom/ex/auto/DpadFloaterService;->c:Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_1

    invoke-interface {v2, v0, v4}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, v1, Lcom/ex/auto/DpadFloaterService;->b:Landroid/widget/GridLayout;

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    const-string v0, "lp"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v3

    :cond_2
    const-string v0, "wm"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addView falhou: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DpadFloater"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/DpadFloaterService;->b:Landroid/widget/GridLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/ex/auto/DpadFloaterService;->a:Landroid/view/WindowManager;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string v0, "wm"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/ex/auto/DpadFloaterService;->b:Landroid/widget/GridLayout;

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
