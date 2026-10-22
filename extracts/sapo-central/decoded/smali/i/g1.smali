.class public final Li/g1;
.super Landroid/widget/ToggleButton;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/material/datepicker/c;

.field public final b:Li/z0;

.field public c:Li/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101004b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Li/z2;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Lcom/google/android/material/datepicker/c;

    invoke-direct {p1, p0}, Lcom/google/android/material/datepicker/c;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Li/g1;->a:Lcom/google/android/material/datepicker/c;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/datepicker/c;->e(Landroid/util/AttributeSet;I)V

    new-instance p1, Li/z0;

    invoke-direct {p1, p0}, Li/z0;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Li/g1;->b:Li/z0;

    invoke-virtual {p1, p2, v0}, Li/z0;->f(Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Li/g1;->getEmojiTextViewHelper()Li/w;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Li/w;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getEmojiTextViewHelper()Li/w;
    .locals 1

    iget-object v0, p0, Li/g1;->c:Li/w;

    if-nez v0, :cond_0

    new-instance v0, Li/w;

    invoke-direct {v0, p0}, Li/w;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Li/g1;->c:Li/w;

    :cond_0
    iget-object v0, p0, Li/g1;->c:Li/w;

    return-object v0
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ToggleButton;->drawableStateChanged()V

    iget-object v0, p0, Li/g1;->a:Lcom/google/android/material/datepicker/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/c;->a()V

    :cond_0
    iget-object v0, p0, Li/g1;->b:Li/z0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Li/z0;->b()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Li/g1;->a:Lcom/google/android/material/datepicker/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/c;->c()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Li/g1;->a:Lcom/google/android/material/datepicker/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/c;->d()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Li/g1;->b:Li/z0;

    invoke-virtual {v0}, Li/z0;->d()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Li/g1;->b:Li/z0;

    invoke-virtual {v0}, Li/z0;->e()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public setAllCaps(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    invoke-direct {p0}, Li/g1;->getEmojiTextViewHelper()Li/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Li/w;->b(Z)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Li/g1;->a:Lcom/google/android/material/datepicker/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/c;->f()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Li/g1;->a:Lcom/google/android/material/datepicker/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/c;->g(I)V

    :cond_0
    return-void
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Li/g1;->b:Li/z0;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Li/z0;->b()V

    :cond_0
    return-void
.end method

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Li/g1;->b:Li/z0;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Li/z0;->b()V

    :cond_0
    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Li/g1;->getEmojiTextViewHelper()Li/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Li/w;->c(Z)V

    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1

    invoke-direct {p0}, Li/g1;->getEmojiTextViewHelper()Li/w;

    move-result-object v0

    iget-object v0, v0, Li/w;->b:Landroidx/emoji2/text/m;

    iget-object v0, v0, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, La1/b;

    invoke-virtual {v0, p1}, La1/b;->w([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Li/g1;->a:Lcom/google/android/material/datepicker/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/c;->i(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Li/g1;->a:Lcom/google/android/material/datepicker/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/c;->j(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Li/g1;->b:Li/z0;

    invoke-virtual {v0, p1}, Li/z0;->i(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0}, Li/z0;->b()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Li/g1;->b:Li/z0;

    invoke-virtual {v0, p1}, Li/z0;->j(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0}, Li/z0;->b()V

    return-void
.end method
