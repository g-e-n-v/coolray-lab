.class public final synthetic Lw0/t9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/ex/auto/MainActivity;

.field public final synthetic b:La1/i;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;La1/i;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/t9;->a:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, Lw0/t9;->b:La1/i;

    iput-object p3, p0, Lw0/t9;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    iget-object p1, p0, Lw0/t9;->a:Lcom/ex/auto/MainActivity;

    iget-object v0, p1, Lcom/ex/auto/MainActivity;->R0:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    iget-object v2, p0, Lw0/t9;->b:La1/i;

    iget-object v3, p0, Lw0/t9;->c:Landroid/view/View;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_4

    if-eq p2, v4, :cond_0

    const/4 v4, 0x3

    if-eq p2, v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v2, v5

    :goto_0
    if-ge v2, p2, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p1, Lcom/ex/auto/MainActivity;->Q0:Landroid/widget/Toast;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/widget/Toast;->cancel()V

    :cond_3
    const/4 p2, 0x0

    iput-object p2, p1, Lcom/ex/auto/MainActivity;->Q0:Landroid/widget/Toast;

    return v5

    :cond_4
    sget-object p2, Lw0/ae;->a:Lw0/ae;

    const-string p2, "ADB"

    const-string v6, "atalho do ADB: dedo na tela, contando 2s"

    invoke-static {p2, v6, v5}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v6, "adb_gpio_enabled"

    invoke-interface {p2, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    xor-int/2addr p2, v4

    const/4 v6, 0x2

    move v7, v6

    :goto_1
    if-lez v7, :cond_5

    new-instance v8, Lw0/wa;

    invoke-direct {v8, p1, p2, v7}, Lw0/wa;-><init>(Lcom/ex/auto/MainActivity;ZI)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    rsub-int/lit8 v9, v7, 0x2

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    invoke-virtual {v1, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_5
    int-to-long p1, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr p1, v6

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_6
    :goto_2
    return v5
.end method
