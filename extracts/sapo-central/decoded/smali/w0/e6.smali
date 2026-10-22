.class public final synthetic Lw0/e6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/ExSapoCastActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/ExSapoCastActivity;I)V
    .locals 0

    iput p2, p0, Lw0/e6;->a:I

    iput-object p1, p0, Lw0/e6;->b:Lcom/ex/auto/ExSapoCastActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lw0/e6;->a:I

    iget-object v1, p0, Lw0/e6;->b:Lcom/ex/auto/ExSapoCastActivity;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/ex/auto/ExSapoCastActivity;->e:I

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_0
    iget-object v0, v1, Lcom/ex/auto/ExSapoCastActivity;->a:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    const-string v3, "root"

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v4, 0x1

    if-ge v0, v4, :cond_0

    move v0, v4

    :cond_0
    iget-object v5, v1, Lcom/ex/auto/ExSapoCastActivity;->a:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    if-ge v3, v4, :cond_1

    move v3, v4

    :cond_1
    iget v5, v1, Lcom/ex/auto/ExSapoCastActivity;->c:I

    if-lez v5, :cond_7

    iget v6, v1, Lcom/ex/auto/ExSapoCastActivity;->d:I

    if-gtz v6, :cond_2

    goto :goto_1

    :cond_2
    int-to-float v0, v0

    int-to-float v5, v5

    div-float/2addr v0, v5

    int-to-float v3, v3

    int-to-float v5, v6

    div-float/2addr v3, v5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v3, v1, Lcom/ex/auto/ExSapoCastActivity;->c:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    if-ge v3, v4, :cond_3

    move v3, v4

    :cond_3
    iget v5, v1, Lcom/ex/auto/ExSapoCastActivity;->d:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v0, v5

    if-ge v0, v4, :cond_4

    goto :goto_0

    :cond_4
    move v4, v0

    :goto_0
    iget-object v0, v1, Lcom/ex/auto/ExSapoCastActivity;->b:Landroid/view/SurfaceView;

    const-string v5, "surfaceView"

    if-eqz v0, :cond_6

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x11

    invoke-direct {v6, v3, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lcom/ex/auto/ExSapoCastActivity;->b:Landroid/view/SurfaceView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_1

    :cond_5
    invoke-static {v5}, Li2/g;->h(Ljava/lang/String;)V

    throw v2

    :cond_6
    invoke-static {v5}, Li2/g;->h(Ljava/lang/String;)V

    throw v2

    :cond_7
    :goto_1
    return-void

    :cond_8
    invoke-static {v3}, Li2/g;->h(Ljava/lang/String;)V

    throw v2

    :cond_9
    invoke-static {v3}, Li2/g;->h(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
