.class public final synthetic Lw0/v5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/ex/auto/DpadFloaterService;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/DpadFloaterService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/v5;->a:Lcom/ex/auto/DpadFloaterService;

    iput p2, p0, Lw0/v5;->b:I

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    sget p1, Lcom/ex/auto/DpadFloaterService;->i:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x0

    iget-object v1, p0, Lw0/v5;->a:Lcom/ex/auto/DpadFloaterService;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "lp"

    if-eqz p1, :cond_a

    if-eq p1, v3, :cond_7

    const/4 v5, 0x2

    if-eq p1, v5, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_7

    return v2

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v5, v1, Lcom/ex/auto/DpadFloaterService;->d:F

    sub-float/2addr p1, v5

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v5, v1, Lcom/ex/auto/DpadFloaterService;->e:F

    sub-float/2addr p2, v5

    float-to-int p2, p2

    iget-boolean v5, v1, Lcom/ex/auto/DpadFloaterService;->h:Z

    if-nez v5, :cond_2

    int-to-float v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lw0/v5;->b:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_1

    int-to-float v5, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    :cond_1
    iput-boolean v3, v1, Lcom/ex/auto/DpadFloaterService;->h:Z

    :cond_2
    iget-boolean v5, v1, Lcom/ex/auto/DpadFloaterService;->h:Z

    if-eqz v5, :cond_9

    iget-object v5, v1, Lcom/ex/auto/DpadFloaterService;->c:Landroid/view/WindowManager$LayoutParams;

    if-eqz v5, :cond_6

    iget v4, v1, Lcom/ex/auto/DpadFloaterService;->f:I

    sub-int/2addr v4, p1

    if-gez v4, :cond_3

    move v4, v2

    :cond_3
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p1, v1, Lcom/ex/auto/DpadFloaterService;->g:I

    sub-int/2addr p1, p2

    if-gez p1, :cond_4

    goto :goto_0

    :cond_4
    move v2, p1

    :goto_0
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, v1, Lcom/ex/auto/DpadFloaterService;->b:Landroid/widget/GridLayout;

    if-eqz p1, :cond_9

    iget-object p2, v1, Lcom/ex/auto/DpadFloaterService;->a:Landroid/view/WindowManager;

    if-eqz p2, :cond_5

    invoke-interface {p2, p1, v5}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v3

    :cond_5
    const-string p1, "wm"

    invoke-static {p1}, Li2/g;->h(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {v4}, Li2/g;->h(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-boolean p1, v1, Lcom/ex/auto/DpadFloaterService;->h:Z

    if-eqz p1, :cond_9

    iget-object p1, v1, Lcom/ex/auto/DpadFloaterService;->c:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_8

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v2, "dpad_floater"

    invoke-static {v1, v2, p2, v0, p1}, Lw0/e8;->M(Landroid/content/Context;Ljava/lang/String;III)V

    return v3

    :cond_8
    invoke-static {v4}, Li2/g;->h(Ljava/lang/String;)V

    throw v0

    :cond_9
    return v3

    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, v1, Lcom/ex/auto/DpadFloaterService;->d:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, v1, Lcom/ex/auto/DpadFloaterService;->e:F

    iget-object p1, v1, Lcom/ex/auto/DpadFloaterService;->c:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_b

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, v1, Lcom/ex/auto/DpadFloaterService;->f:I

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, v1, Lcom/ex/auto/DpadFloaterService;->g:I

    iput-boolean v2, v1, Lcom/ex/auto/DpadFloaterService;->h:Z

    return v3

    :cond_b
    invoke-static {v4}, Li2/g;->h(Ljava/lang/String;)V

    throw v0
.end method
