.class public final Lcom/ex/auto/MasterToggleView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public final d:I

.field public final e:I

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/ex/auto/MasterToggleView;->a:F

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ex/auto/MasterToggleView;->b:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    const v2, 0x7f050082

    invoke-static {p1, v2}, Landroidx/core/content/c;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v2, p2

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr p2, v3

    const/high16 v3, 0x33000000

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, p2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iput-object v0, p0, Lcom/ex/auto/MasterToggleView;->c:Landroid/graphics/Paint;

    const p2, 0x7f05007e

    invoke-static {p1, p2}, Landroidx/core/content/c;->a(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/ex/auto/MasterToggleView;->d:I

    const p2, 0x7f050081

    invoke-static {p1, p2}, Landroidx/core/content/c;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/ex/auto/MasterToggleView;->e:I

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public final getActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ex/auto/MasterToggleView;->f:Z

    return v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const-string v0, "canvas"

    invoke-static {p1, v0}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float v6, v5, v0

    iget-boolean v0, p0, Lcom/ex/auto/MasterToggleView;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ex/auto/MasterToggleView;->d:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/ex/auto/MasterToggleView;->e:I

    :goto_0
    iget-object v8, p0, Lcom/ex/auto/MasterToggleView;->b:Landroid/graphics/Paint;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v7, v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    const/high16 p1, 0x40400000    # 3.0f

    iget v0, p0, Lcom/ex/auto/MasterToggleView;->a:F

    mul-float/2addr v0, p1

    sub-float p1, v6, v0

    iget-boolean v0, p0, Lcom/ex/auto/MasterToggleView;->f:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v6

    goto :goto_1

    :cond_1
    move v0, v6

    :goto_1
    iget-object v2, p0, Lcom/ex/auto/MasterToggleView;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v6, p1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    iget p1, p0, Lcom/ex/auto/MasterToggleView;->a:F

    const/high16 p2, 0x42600000    # 56.0f

    mul-float/2addr p2, p1

    float-to-int p2, p2

    const/high16 v0, 0x42000000    # 32.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ex/auto/MasterToggleView;->f:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
