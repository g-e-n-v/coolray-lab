.class public final Lq/a;
.super Lq/c;
.source "SourceFile"


# instance fields
.field public h:I

.field public i:I

.field public j:Lo/a;


# virtual methods
.method public getMargin()I
    .locals 1

    iget-object v0, p0, Lq/a;->j:Lo/a;

    iget v0, v0, Lo/a;->n0:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lq/a;->h:I

    return v0
.end method

.method public setAllowsGoneWidget(Z)V
    .locals 1

    iget-object v0, p0, Lq/a;->j:Lo/a;

    iput-boolean p1, v0, Lo/a;->m0:Z

    return-void
.end method

.method public setDpMargin(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lq/a;->j:Lo/a;

    iput p1, v0, Lo/a;->n0:I

    return-void
.end method

.method public setMargin(I)V
    .locals 1

    iget-object v0, p0, Lq/a;->j:Lo/a;

    iput p1, v0, Lo/a;->n0:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lq/a;->h:I

    return-void
.end method
