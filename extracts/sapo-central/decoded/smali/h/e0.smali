.class public final Lh/e0;
.super Lh/u;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lh/m;

.field public final d:Lh/j;

.field public final e:Z

.field public final f:I

.field public final g:I

.field public final h:Li/i2;

.field public final i:Lh/d;

.field public final j:Landroidx/fragment/app/m0;

.field public k:Landroid/widget/PopupWindow$OnDismissListener;

.field public l:Landroid/view/View;

.field public m:Landroid/view/View;

.field public n:Lh/y;

.field public o:Landroid/view/ViewTreeObserver;

.field public p:Z

.field public q:Z

.field public r:I

.field public s:I

.field public t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lh/m;Landroid/view/View;IZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lh/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lh/d;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lh/e0;->i:Lh/d;

    new-instance v0, Landroidx/fragment/app/m0;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/m0;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lh/e0;->j:Landroidx/fragment/app/m0;

    const/4 v0, 0x0

    iput v0, p0, Lh/e0;->s:I

    iput-object p1, p0, Lh/e0;->b:Landroid/content/Context;

    iput-object p2, p0, Lh/e0;->c:Lh/m;

    iput-boolean p5, p0, Lh/e0;->e:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    new-instance v2, Lh/j;

    const v3, 0x7f0c0013

    invoke-direct {v2, p2, v1, p5, v3}, Lh/j;-><init>(Lh/m;Landroid/view/LayoutInflater;ZI)V

    iput-object v2, p0, Lh/e0;->d:Lh/j;

    iput p4, p0, Lh/e0;->g:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    const v2, 0x7f060017

    invoke-virtual {p5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    invoke-static {v1, p5}, Ljava/lang/Math;->max(II)I

    move-result p5

    iput p5, p0, Lh/e0;->f:I

    iput-object p3, p0, Lh/e0;->l:Landroid/view/View;

    new-instance p3, Li/i2;

    const/4 p5, 0x0

    invoke-direct {p3, p1, p5, p4, v0}, Li/c2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p3, p0, Lh/e0;->h:Li/i2;

    invoke-virtual {p2, p0, p1}, Lh/m;->b(Lh/z;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lh/e0;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lh/e0;->h:Li/i2;

    iget-object v0, v0, Li/c2;->y:Li/b0;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lh/m;Z)V
    .locals 1

    iget-object v0, p0, Lh/e0;->c:Lh/m;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lh/e0;->dismiss()V

    iget-object v0, p0, Lh/e0;->n:Lh/y;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lh/y;->b(Lh/m;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final c(Lh/y;)V
    .locals 0

    iput-object p1, p0, Lh/e0;->n:Lh/y;

    return-void
.end method

.method public final d()V
    .locals 8

    invoke-virtual {p0}, Lh/e0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lh/e0;->p:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lh/e0;->l:Landroid/view/View;

    if-eqz v0, :cond_7

    iput-object v0, p0, Lh/e0;->m:Landroid/view/View;

    iget-object v0, p0, Lh/e0;->h:Li/i2;

    iget-object v1, v0, Li/c2;->y:Li/b0;

    iget-object v2, v0, Li/c2;->y:Li/b0;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iput-object p0, v0, Li/c2;->p:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v1, 0x1

    iput-boolean v1, v0, Li/c2;->x:Z

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v3, p0, Lh/e0;->m:Landroid/view/View;

    iget-object v4, p0, Lh/e0;->o:Landroid/view/ViewTreeObserver;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    iput-object v6, p0, Lh/e0;->o:Landroid/view/ViewTreeObserver;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lh/e0;->i:Lh/d;

    invoke-virtual {v6, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    iget-object v4, p0, Lh/e0;->j:Landroidx/fragment/app/m0;

    invoke-virtual {v3, v4}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iput-object v3, v0, Li/c2;->o:Landroid/view/View;

    iget v3, p0, Lh/e0;->s:I

    iput v3, v0, Li/c2;->l:I

    iget-boolean v3, p0, Lh/e0;->q:Z

    iget-object v4, p0, Lh/e0;->b:Landroid/content/Context;

    iget-object v6, p0, Lh/e0;->d:Lh/j;

    if-nez v3, :cond_3

    iget v3, p0, Lh/e0;->f:I

    invoke-static {v6, v4, v3}, Lh/u;->m(Landroid/widget/ListAdapter;Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lh/e0;->r:I

    iput-boolean v1, p0, Lh/e0;->q:Z

    :cond_3
    iget v1, p0, Lh/e0;->r:I

    invoke-virtual {v0, v1}, Li/c2;->r(I)V

    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v1, p0, Lh/u;->a:Landroid/graphics/Rect;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_4
    move-object v3, v2

    :goto_1
    iput-object v3, v0, Li/c2;->w:Landroid/graphics/Rect;

    invoke-virtual {v0}, Li/c2;->d()V

    iget-object v1, v0, Li/c2;->c:Li/q1;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-boolean v3, p0, Lh/e0;->t:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lh/e0;->c:Lh/m;

    iget-object v7, v3, Lh/m;->m:Ljava/lang/CharSequence;

    if-eqz v7, :cond_6

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v7, 0x7f0c0012

    invoke-virtual {v4, v7, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v7, 0x1020016

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_5

    iget-object v3, v3, Lh/m;->m:Ljava/lang/CharSequence;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1, v4, v2, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_6
    invoke-virtual {v0, v6}, Li/c2;->p(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0}, Li/c2;->d()V

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final dismiss()V
    .locals 1

    invoke-virtual {p0}, Lh/e0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/e0;->h:Li/i2;

    invoke-virtual {v0}, Li/c2;->dismiss()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/e0;->q:Z

    iget-object v0, p0, Lh/e0;->d:Lh/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh/j;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final f()Li/q1;
    .locals 1

    iget-object v0, p0, Lh/e0;->h:Li/i2;

    iget-object v0, v0, Li/c2;->c:Li/q1;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final k(Lh/f0;)Z
    .locals 9

    invoke-virtual {p1}, Lh/m;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    new-instance v2, Lh/x;

    iget-object v5, p0, Lh/e0;->m:Landroid/view/View;

    iget v7, p0, Lh/e0;->g:I

    const/4 v8, 0x0

    iget-object v3, p0, Lh/e0;->b:Landroid/content/Context;

    iget-boolean v6, p0, Lh/e0;->e:Z

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lh/x;-><init>(Landroid/content/Context;Lh/m;Landroid/view/View;ZII)V

    iget-object p1, p0, Lh/e0;->n:Lh/y;

    iput-object p1, v2, Lh/x;->h:Lh/y;

    iget-object v0, v2, Lh/x;->i:Lh/u;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lh/z;->c(Lh/y;)V

    :cond_0
    iget-object p1, v4, Lh/m;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v0, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v0, p1, :cond_2

    invoke-virtual {v4, v0}, Lh/m;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_1
    iput-boolean p1, v2, Lh/x;->g:Z

    iget-object v0, v2, Lh/x;->i:Lh/u;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lh/u;->o(Z)V

    :cond_3
    iget-object p1, p0, Lh/e0;->k:Landroid/widget/PopupWindow$OnDismissListener;

    iput-object p1, v2, Lh/x;->j:Landroid/widget/PopupWindow$OnDismissListener;

    const/4 p1, 0x0

    iput-object p1, p0, Lh/e0;->k:Landroid/widget/PopupWindow$OnDismissListener;

    iget-object p1, p0, Lh/e0;->c:Lh/m;

    invoke-virtual {p1, v1}, Lh/m;->c(Z)V

    iget-object p1, p0, Lh/e0;->h:Li/i2;

    iget v0, p1, Li/c2;->f:I

    invoke-virtual {p1}, Li/c2;->m()I

    move-result p1

    iget v5, p0, Lh/e0;->s:I

    iget-object v6, p0, Lh/e0;->l:Landroid/view/View;

    sget-object v7, Lc0/p0;->a:Ljava/util/WeakHashMap;

    invoke-static {v6}, Lc0/b0;->d(Landroid/view/View;)I

    move-result v6

    invoke-static {v5, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    and-int/lit8 v5, v5, 0x7

    const/4 v6, 0x5

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lh/e0;->l:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v0, v5

    :cond_4
    invoke-virtual {v2}, Lh/x;->b()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    iget-object v5, v2, Lh/x;->e:Landroid/view/View;

    if-nez v5, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v2, v0, p1, v3, v3}, Lh/x;->d(IIZZ)V

    :goto_2
    iget-object p1, p0, Lh/e0;->n:Lh/y;

    if-eqz p1, :cond_7

    invoke-interface {p1, v4}, Lh/y;->g(Lh/m;)Z

    :cond_7
    return v3

    :cond_8
    :goto_3
    return v1
.end method

.method public final l(Lh/m;)V
    .locals 0

    return-void
.end method

.method public final n(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lh/e0;->l:Landroid/view/View;

    return-void
.end method

.method public final o(Z)V
    .locals 1

    iget-object v0, p0, Lh/e0;->d:Lh/j;

    iput-boolean p1, v0, Lh/j;->c:Z

    return-void
.end method

.method public final onDismiss()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/e0;->p:Z

    iget-object v1, p0, Lh/e0;->c:Lh/m;

    invoke-virtual {v1, v0}, Lh/m;->c(Z)V

    iget-object v0, p0, Lh/e0;->o:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh/e0;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lh/e0;->o:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, p0, Lh/e0;->o:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lh/e0;->i:Lh/d;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lh/e0;->o:Landroid/view/ViewTreeObserver;

    :cond_1
    iget-object v0, p0, Lh/e0;->m:Landroid/view/View;

    iget-object v1, p0, Lh/e0;->j:Landroidx/fragment/app/m0;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lh/e0;->k:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_2
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lh/e0;->dismiss()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final p(I)V
    .locals 0

    iput p1, p0, Lh/e0;->s:I

    return-void
.end method

.method public final q(I)V
    .locals 1

    iget-object v0, p0, Lh/e0;->h:Li/i2;

    iput p1, v0, Li/c2;->f:I

    return-void
.end method

.method public final r(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lh/e0;->k:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public final s(Z)V
    .locals 0

    iput-boolean p1, p0, Lh/e0;->t:Z

    return-void
.end method

.method public final t(I)V
    .locals 1

    iget-object v0, p0, Lh/e0;->h:Li/i2;

    invoke-virtual {v0, p1}, Li/c2;->h(I)V

    return-void
.end method
