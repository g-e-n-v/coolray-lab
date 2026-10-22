.class public final synthetic Lw0/k7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Li2/j;

.field public final synthetic b:Lcom/ex/auto/HomeFloatingWidgetsService;

.field public final synthetic c:Li2/k;

.field public final synthetic d:Li2/k;

.field public final synthetic e:Li2/l;

.field public final synthetic f:Landroid/view/WindowManager$LayoutParams;

.field public final synthetic g:Li2/l;

.field public final synthetic h:Li2/j;

.field public final synthetic i:Landroid/view/View;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Lh2/a;


# direct methods
.method public synthetic constructor <init>(Li2/j;Lcom/ex/auto/HomeFloatingWidgetsService;Li2/k;Li2/k;Li2/l;Landroid/view/WindowManager$LayoutParams;Li2/l;Li2/j;Landroid/view/View;Ljava/lang/String;Lh2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/k7;->a:Li2/j;

    iput-object p2, p0, Lw0/k7;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iput-object p3, p0, Lw0/k7;->c:Li2/k;

    iput-object p4, p0, Lw0/k7;->d:Li2/k;

    iput-object p5, p0, Lw0/k7;->e:Li2/l;

    iput-object p6, p0, Lw0/k7;->f:Landroid/view/WindowManager$LayoutParams;

    iput-object p7, p0, Lw0/k7;->g:Li2/l;

    iput-object p8, p0, Lw0/k7;->h:Li2/j;

    iput-object p9, p0, Lw0/k7;->i:Landroid/view/View;

    iput-object p10, p0, Lw0/k7;->j:Ljava/lang/String;

    iput-object p11, p0, Lw0/k7;->k:Lh2/a;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    iget-object p1, p0, Lw0/k7;->i:Landroid/view/View;

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lw0/k7;->a:Li2/j;

    iget-object v3, p0, Lw0/k7;->b:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v4, p0, Lw0/k7;->c:Li2/k;

    iget-object v5, p0, Lw0/k7;->d:Li2/k;

    iget-object v6, p0, Lw0/k7;->e:Li2/l;

    iget-object v7, p0, Lw0/k7;->f:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, p0, Lw0/k7;->g:Li2/l;

    iget-object v9, p0, Lw0/k7;->h:Li2/j;

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v11, :cond_5

    const/4 v12, 0x2

    if-eq v0, v12, :cond_0

    return v10

    :cond_0
    iget-boolean v0, v2, Li2/j;->a:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, v4, Li2/k;->a:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v2, v5, Li2/k;->a:F

    sub-float/2addr p2, v2

    float-to-int p2, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v5

    if-gt v2, v5, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v3, v4}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v4

    if-le v2, v4, :cond_3

    :cond_2
    iput-boolean v11, v9, Li2/j;->a:Z

    :cond_3
    iget v2, v6, Li2/l;->a:I

    add-int/2addr v2, v0

    iput v2, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, v8, Li2/l;->a:I

    add-int/2addr v0, p2

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_0
    iget-object p2, v3, Lcom/ex/auto/HomeFloatingWidgetsService;->a:Landroid/view/WindowManager;

    if-eqz p2, :cond_4

    invoke-interface {p2, p1, v7}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_4
    const-string p1, "wm"

    invoke-static {p1}, Li2/g;->h(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    iget-boolean p1, v2, Li2/j;->a:Z

    if-nez p1, :cond_6

    iget-boolean p1, v9, Li2/j;->a:Z

    if-eqz p1, :cond_6

    iget p1, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget p2, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lw0/k7;->j:Ljava/lang/String;

    invoke-static {v3, v1, p1, p2, v0}, Lw0/e8;->M(Landroid/content/Context;Ljava/lang/String;III)V

    return v11

    :cond_6
    iget-boolean p1, v9, Li2/j;->a:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lw0/k7;->k:Lh2/a;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lh2/a;->a()Ljava/lang/Object;

    :catchall_0
    :cond_7
    :goto_0
    return v11

    :cond_8
    iget-object p1, v3, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_9

    const-string v0, "widgets_poslock_all"

    invoke-interface {p1, v0, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v2, Li2/j;->a:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, v4, Li2/k;->a:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, v5, Li2/k;->a:F

    iget p1, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, v6, Li2/l;->a:I

    iget p1, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, v8, Li2/l;->a:I

    iput-boolean v10, v9, Li2/j;->a:Z

    return v11

    :cond_9
    const-string p1, "prefs"

    invoke-static {p1}, Li2/g;->h(Ljava/lang/String;)V

    throw v1
.end method
