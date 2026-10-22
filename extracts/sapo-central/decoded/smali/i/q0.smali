.class public final Li/q0;
.super Li/c2;
.source "SourceFile"

# interfaces
.implements Li/s0;


# instance fields
.field public B:Ljava/lang/CharSequence;

.field public C:Li/n0;

.field public final D:Landroid/graphics/Rect;

.field public E:I

.field public final synthetic F:Li/t0;


# direct methods
.method public constructor <init>(Li/t0;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    iput-object p1, p0, Li/q0;->F:Li/t0;

    const/4 v0, 0x0

    const v1, 0x7f0302a4

    invoke-direct {p0, p2, p3, v1, v0}, Li/c2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Li/q0;->D:Landroid/graphics/Rect;

    iput-object p1, p0, Li/c2;->o:Landroid/view/View;

    const/4 p1, 0x1

    iput-boolean p1, p0, Li/c2;->x:Z

    iget-object p2, p0, Li/c2;->y:Li/b0;

    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    new-instance p1, Li/o0;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Li/o0;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Li/c2;->p:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Li/q0;->B:Ljava/lang/CharSequence;

    return-void
.end method

.method public final i(I)V
    .locals 0

    iput p1, p0, Li/q0;->E:I

    return-void
.end method

.method public final k(II)V
    .locals 5

    iget-object v0, p0, Li/c2;->y:Li/b0;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    invoke-virtual {p0}, Li/q0;->s()V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-virtual {p0}, Li/c2;->d()V

    iget-object v2, p0, Li/c2;->c:Li/q1;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    invoke-static {v2, p1}, Li/k0;->d(Landroid/view/View;I)V

    invoke-static {v2, p2}, Li/k0;->c(Landroid/view/View;I)V

    iget-object p1, p0, Li/q0;->F:Li/t0;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result p2

    iget-object v2, p0, Li/c2;->c:Li/q1;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Li/q1;->setListSelectionHidden(Z)V

    invoke-virtual {v2, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChoiceMode()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, p2, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, Lh/d;

    const/4 v1, 0x3

    invoke-direct {p2, v1, p0}, Lh/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance p1, Li/p0;

    invoke-direct {p1, p0, p2}, Li/p0;-><init>(Li/q0;Lh/d;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final o()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Li/q0;->B:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final p(Landroid/widget/ListAdapter;)V
    .locals 0

    invoke-super {p0, p1}, Li/c2;->p(Landroid/widget/ListAdapter;)V

    check-cast p1, Li/n0;

    iput-object p1, p0, Li/q0;->C:Li/n0;

    return-void
.end method

.method public final s()V
    .locals 9

    iget-object v0, p0, Li/q0;->F:Li/t0;

    iget-object v1, v0, Li/t0;->h:Landroid/graphics/Rect;

    iget-object v2, p0, Li/c2;->y:Li/b0;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    invoke-static {v0}, Li/p3;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget v3, v1, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    iput v3, v1, Landroid/graphics/Rect;->right:I

    iput v3, v1, Landroid/graphics/Rect;->left:I

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, v0, Li/t0;->g:I

    const/4 v8, -0x2

    if-ne v7, v8, :cond_3

    iget-object v7, p0, Li/q0;->C:Li/n0;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Li/t0;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v1

    if-le v2, v7, :cond_2

    move v2, v7

    :cond_2
    sub-int v1, v6, v4

    sub-int/2addr v1, v5

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Li/c2;->r(I)V

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    if-ne v7, v1, :cond_4

    sub-int v1, v6, v4

    sub-int/2addr v1, v5

    invoke-virtual {p0, v1}, Li/c2;->r(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v7}, Li/c2;->r(I)V

    :goto_1
    invoke-static {v0}, Li/p3;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    sub-int/2addr v6, v5

    iget v0, p0, Li/c2;->e:I

    sub-int/2addr v6, v0

    iget v0, p0, Li/q0;->E:I

    sub-int/2addr v6, v0

    add-int/2addr v6, v3

    goto :goto_2

    :cond_5
    iget v0, p0, Li/q0;->E:I

    add-int/2addr v4, v0

    add-int v6, v4, v3

    :goto_2
    iput v6, p0, Li/c2;->f:I

    return-void
.end method
