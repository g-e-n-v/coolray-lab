.class public final synthetic Lw0/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/ex/auto/BlackoutFloaterService;

.field public final synthetic b:Landroid/view/WindowManager$LayoutParams;

.field public final synthetic c:Landroid/widget/ImageView;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/BlackoutFloaterService;Landroid/view/WindowManager$LayoutParams;Landroid/widget/ImageView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/q0;->a:Lcom/ex/auto/BlackoutFloaterService;

    iput-object p2, p0, Lw0/q0;->b:Landroid/view/WindowManager$LayoutParams;

    iput-object p3, p0, Lw0/q0;->c:Landroid/widget/ImageView;

    iput p4, p0, Lw0/q0;->d:I

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object p1, p0, Lw0/q0;->a:Lcom/ex/auto/BlackoutFloaterService;

    iget-object v0, p0, Lw0/q0;->b:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lw0/q0;->c:Landroid/widget/ImageView;

    iget v2, p0, Lw0/q0;->d:I

    sget-boolean v3, Lcom/ex/auto/BlackoutFloaterService;->p:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const v4, 0x3f733333    # 0.95f

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_a

    if-eq v3, v6, :cond_6

    const/4 v7, 0x2

    if-eq v3, v7, :cond_0

    const/4 p2, 0x3

    if-eq v3, p2, :cond_6

    return v5

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p1, Lcom/ex/auto/BlackoutFloaterService;->k:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v4, p1, Lcom/ex/auto/BlackoutFloaterService;->l:F

    sub-float/2addr p2, v4

    float-to-int p2, p2

    iget-boolean v4, p1, Lcom/ex/auto/BlackoutFloaterService;->o:Z

    if-nez v4, :cond_2

    int-to-float v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v2, v2

    cmpl-float v4, v4, v2

    if-gtz v4, :cond_1

    int-to-float v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v2, v4, v2

    if-lez v2, :cond_2

    :cond_1
    iput-boolean v6, p1, Lcom/ex/auto/BlackoutFloaterService;->o:Z

    :cond_2
    iget-boolean v2, p1, Lcom/ex/auto/BlackoutFloaterService;->o:Z

    if-eqz v2, :cond_9

    iget v2, p1, Lcom/ex/auto/BlackoutFloaterService;->m:I

    add-int/2addr v2, v3

    if-gez v2, :cond_3

    move v2, v5

    :cond_3
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p1, Lcom/ex/auto/BlackoutFloaterService;->n:I

    add-int/2addr v2, p2

    if-gez v2, :cond_4

    goto :goto_0

    :cond_4
    move v5, v2

    :goto_0
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p1, Lcom/ex/auto/BlackoutFloaterService;->a:Landroid/view/WindowManager;

    if-eqz p1, :cond_5

    invoke-interface {p1, v1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v6

    :cond_5
    const-string p1, "windowManager"

    invoke-static {p1}, Li2/g;->h(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_6
    iget-boolean p2, p1, Lcom/ex/auto/BlackoutFloaterService;->c:Z

    if-eqz p2, :cond_7

    goto :goto_1

    :cond_7
    const v4, 0x3f59999a    # 0.85f

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    iget-boolean p2, p1, Lcom/ex/auto/BlackoutFloaterService;->o:Z

    if-eqz p2, :cond_8

    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v3, "blackout"

    invoke-static {p1, v3, p2, v2, v0}, Lw0/e8;->M(Landroid/content/Context;Ljava/lang/String;III)V

    :cond_8
    iget-boolean p1, p1, Lcom/ex/auto/BlackoutFloaterService;->o:Z

    if-nez p1, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    :cond_9
    return v6

    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p1, Lcom/ex/auto/BlackoutFloaterService;->k:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p1, Lcom/ex/auto/BlackoutFloaterService;->l:F

    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, p1, Lcom/ex/auto/BlackoutFloaterService;->m:I

    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p2, p1, Lcom/ex/auto/BlackoutFloaterService;->n:I

    iput-boolean v5, p1, Lcom/ex/auto/BlackoutFloaterService;->o:Z

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    return v6
.end method
