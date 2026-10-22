.class public final synthetic Lw0/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/ex/auto/TimerFloaterService;

.field public final synthetic b:Li2/l;

.field public final synthetic c:Li2/l;

.field public final synthetic d:Li2/k;

.field public final synthetic e:Li2/k;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/TimerFloaterService;Li2/l;Li2/l;Li2/k;Li2/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/bh;->a:Lcom/ex/auto/TimerFloaterService;

    iput-object p2, p0, Lw0/bh;->b:Li2/l;

    iput-object p3, p0, Lw0/bh;->c:Li2/l;

    iput-object p4, p0, Lw0/bh;->d:Li2/k;

    iput-object p5, p0, Lw0/bh;->e:Li2/k;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object p1, p0, Lw0/bh;->a:Lcom/ex/auto/TimerFloaterService;

    iget-object v0, p1, Lcom/ex/auto/TimerFloaterService;->c:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iget-object v2, p0, Lw0/bh;->b:Li2/l;

    iget-object v3, p0, Lw0/bh;->c:Li2/l;

    iget-object v4, p0, Lw0/bh;->d:Li2/k;

    iget-object v5, p0, Lw0/bh;->e:Li2/k;

    const/4 v6, 0x1

    if-eqz v1, :cond_3

    const/4 v7, 0x2

    if-eq v1, v7, :cond_1

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_1
    iget v1, v2, Li2/l;->a:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v4, v4, Li2/k;->a:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v3, Li2/l;->a:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v2, v5, Li2/k;->a:F

    sub-float/2addr p2, v2

    float-to-int p2, p2

    add-int/2addr v1, p2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_0
    iget-object p2, p1, Lcom/ex/auto/TimerFloaterService;->a:Landroid/view/WindowManager;

    if-eqz p2, :cond_2

    iget-object p1, p1, Lcom/ex/auto/TimerFloaterService;->b:Landroid/widget/LinearLayout;

    invoke-interface {p2, p1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    const-string p1, "wm"

    invoke-static {p1}, Li2/g;->h(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_1
    return v6

    :cond_3
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, v2, Li2/l;->a:I

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, v3, Li2/l;->a:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, v4, Li2/k;->a:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, v5, Li2/k;->a:F

    return v6
.end method
