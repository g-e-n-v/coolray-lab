.class public final Li/h0;
.super Li/c0;
.source "SourceFile"


# instance fields
.field public final e:Li/g0;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Landroid/content/res/ColorStateList;

.field public h:Landroid/graphics/PorterDuff$Mode;

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Li/g0;)V
    .locals 1

    invoke-direct {p0, p1}, Li/c0;-><init>(Landroid/widget/AbsSeekBar;)V

    const/4 v0, 0x0

    iput-object v0, p0, Li/h0;->g:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Li/h0;->h:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Li/h0;->i:Z

    iput-boolean v0, p0, Li/h0;->j:Z

    iput-object p1, p0, Li/h0;->e:Li/g0;

    return-void
.end method


# virtual methods
.method public final d(Landroid/util/AttributeSet;I)V
    .locals 7

    const v5, 0x7f030288

    invoke-super {p0, p1, v5}, Li/c0;->d(Landroid/util/AttributeSet;I)V

    iget-object v0, p0, Li/h0;->e:Li/g0;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v2, Ld/a;->g:[I

    invoke-static {p2, p1, v2, v5}, Landroidx/fragment/app/f;->v(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/fragment/app/f;

    move-result-object p2

    iget-object v1, p2, Landroidx/fragment/app/f;->c:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p2, Landroidx/fragment/app/f;->c:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Landroid/content/res/TypedArray;

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lc0/p0;->h(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroidx/fragment/app/f;->l(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroidx/fragment/app/f;->k(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Li/h0;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    iput-object v1, p0, Li/h0;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-static {v0}, Lc0/b0;->d(Landroid/view/View;)I

    move-result v2

    invoke-static {v1, v2}, Lw/c;->b(Landroid/graphics/drawable/Drawable;I)Z

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    invoke-virtual {p0}, Li/h0;->h()V

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x3

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iget-object v1, p0, Li/h0;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Li/k1;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Li/h0;->h:Landroid/graphics/PorterDuff$Mode;

    iput-boolean p1, p0, Li/h0;->j:Z

    :cond_4
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2, v0}, Landroidx/fragment/app/f;->j(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Li/h0;->g:Landroid/content/res/ColorStateList;

    iput-boolean p1, p0, Li/h0;->i:Z

    :cond_5
    invoke-virtual {p2}, Landroidx/fragment/app/f;->x()V

    invoke-virtual {p0}, Li/h0;->h()V

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Li/h0;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Li/h0;->i:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Li/h0;->j:Z

    if-eqz v1, :cond_3

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Li/h0;->f:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, p0, Li/h0;->i:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Li/h0;->g:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lw/b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Li/h0;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Li/h0;->f:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Li/h0;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Lw/b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, Li/h0;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Li/h0;->f:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Li/h0;->e:Li/g0;

    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method public final i(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Li/h0;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Li/h0;->e:Li/g0;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    iget-object v3, p0, Li/h0;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Li/h0;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-ltz v3, :cond_0

    div-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-ltz v4, :cond_1

    div-int/lit8 v2, v4, 0x2

    :cond_1
    iget-object v4, p0, Li/h0;->f:Landroid/graphics/drawable/Drawable;

    neg-int v5, v3

    neg-int v6, v2

    invoke-virtual {v4, v5, v6, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x0

    :goto_1
    if-gt v0, v1, :cond_2

    iget-object v4, p0, Li/h0;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method
