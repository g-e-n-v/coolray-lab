.class public Lcom/google/android/material/appbar/MaterialToolbar;
.super Landroidx/appcompat/widget/Toolbar;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f030321

    const v1, 0x7f1002d2

    invoke-static {p1, p2, v0, v1}, Lv1/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    instance-of v1, p2, Landroid/graphics/drawable/ColorDrawable;

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ls1/g;

    invoke-direct {v1}, Ls1/g;-><init>()V

    if-eqz p2, :cond_1

    check-cast p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    :cond_1
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {v1, p2}, Ls1/g;->i(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v1, p1}, Ls1/g;->g(Landroid/content/Context;)V

    sget-object p1, Lc0/p0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lc0/f0;->i(Landroid/view/View;)F

    move-result p1

    invoke-virtual {v1, p1}, Ls1/g;->h(F)V

    invoke-static {p0, v1}, Lc0/a0;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Ls1/g;

    if-eqz v1, :cond_0

    check-cast v0, Ls1/g;

    invoke-static {p0, v0}, Lk1/a;->Q(Landroid/view/View;Ls1/g;)V

    :cond_0
    return-void
.end method

.method public setElevation(F)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Ls1/g;

    if-eqz v1, :cond_0

    check-cast v0, Ls1/g;

    invoke-virtual {v0, p1}, Ls1/g;->h(F)V

    :cond_0
    return-void
.end method
