.class public final Lh1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/material/button/MaterialButton;

.field public b:Ls1/k;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Landroid/graphics/PorterDuff$Mode;

.field public j:Landroid/content/res/ColorStateList;

.field public k:Landroid/content/res/ColorStateList;

.field public l:Landroid/content/res/ColorStateList;

.field public m:Ls1/g;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Landroid/graphics/drawable/RippleDrawable;


# direct methods
.method public constructor <init>(Lcom/google/android/material/button/MaterialButton;Ls1/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh1/c;->n:Z

    iput-boolean v0, p0, Lh1/c;->o:Z

    iput-boolean v0, p0, Lh1/c;->p:Z

    iput-object p1, p0, Lh1/c;->a:Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lh1/c;->b:Ls1/k;

    return-void
.end method


# virtual methods
.method public final a()Ls1/u;
    .locals 3

    iget-object v0, p0, Lh1/c;->r:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lh1/c;->r:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lh1/c;->r:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Ls1/u;

    return-object v0

    :cond_0
    iget-object v0, p0, Lh1/c;->r:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Ls1/u;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Z)Ls1/g;
    .locals 2

    iget-object v0, p0, Lh1/c;->r:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lh1/c;->r:Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Ls1/g;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(Ls1/k;)V
    .locals 2

    iput-object p1, p0, Lh1/c;->b:Ls1/k;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lh1/c;->b(Z)Ls1/g;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lh1/c;->b(Z)Ls1/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Ls1/g;->setShapeAppearanceModel(Ls1/k;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lh1/c;->b(Z)Ls1/g;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lh1/c;->b(Z)Ls1/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Ls1/g;->setShapeAppearanceModel(Ls1/k;)V

    :cond_1
    invoke-virtual {p0}, Lh1/c;->a()Ls1/u;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lh1/c;->a()Ls1/u;

    move-result-object v0

    invoke-interface {v0, p1}, Ls1/u;->setShapeAppearanceModel(Ls1/k;)V

    :cond_2
    return-void
.end method

.method public final d()V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lh1/c;->b(Z)Ls1/g;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lh1/c;->b(Z)Ls1/g;

    move-result-object v2

    if-eqz v1, :cond_2

    iget v3, p0, Lh1/c;->h:I

    int-to-float v3, v3

    iget-object v4, p0, Lh1/c;->k:Landroid/content/res/ColorStateList;

    iget-object v5, v1, Ls1/g;->a:Ls1/f;

    iput v3, v5, Ls1/f;->j:F

    invoke-virtual {v1}, Ls1/g;->invalidateSelf()V

    iget-object v3, v1, Ls1/g;->a:Ls1/f;

    iget-object v5, v3, Ls1/f;->d:Landroid/content/res/ColorStateList;

    if-eq v5, v4, :cond_0

    iput-object v4, v3, Ls1/f;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v3

    invoke-virtual {v1, v3}, Ls1/g;->onStateChange([I)Z

    :cond_0
    if-eqz v2, :cond_2

    iget v1, p0, Lh1/c;->h:I

    int-to-float v1, v1

    iget-boolean v3, p0, Lh1/c;->n:Z

    if-eqz v3, :cond_1

    iget-object v0, p0, Lh1/c;->a:Lcom/google/android/material/button/MaterialButton;

    const v3, 0x7f0300c2

    invoke-static {v0, v3}, Lk1/a;->y(Landroid/view/View;I)I

    move-result v0

    :cond_1
    iget-object v3, v2, Ls1/g;->a:Ls1/f;

    iput v1, v3, Ls1/f;->j:F

    invoke-virtual {v2}, Ls1/g;->invalidateSelf()V

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, v2, Ls1/g;->a:Ls1/f;

    iget-object v3, v1, Ls1/f;->d:Landroid/content/res/ColorStateList;

    if-eq v3, v0, :cond_2

    iput-object v0, v1, Ls1/f;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {v2, v0}, Ls1/g;->onStateChange([I)Z

    :cond_2
    return-void
.end method
