.class public final Lq0/y0;
.super Lc0/c;
.source "SourceFile"


# instance fields
.field public final d:Landroidx/recyclerview/widget/RecyclerView;

.field public final e:Lq0/x0;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Lc0/c;-><init>()V

    iput-object p1, p0, Lq0/y0;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p0, Lq0/y0;->e:Lq0/x0;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lq0/y0;->e:Lq0/x0;

    return-void

    :cond_0
    new-instance p1, Lq0/x0;

    invoke-direct {p1, p0}, Lq0/x0;-><init>(Lq0/y0;)V

    iput-object p1, p0, Lq0/y0;->e:Lq0/x0;

    return-void
.end method


# virtual methods
.method public final c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lc0/c;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq0/y0;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->K()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lq0/i0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lq0/i0;

    move-result-object p1

    invoke-virtual {p1, p2}, Lq0/i0;->O(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public final d(Landroid/view/View;Ld0/f;)V
    .locals 6

    iget-object v0, p2, Ld0/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v1, p0, Lc0/c;->a:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v1, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p1, p0, Lq0/y0;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->K()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lq0/i0;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lq0/i0;

    move-result-object p1

    iget-object v1, p1, Lq0/i0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->b:Lq0/o0;

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->c0:Lq0/t0;

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    const/4 v5, 0x1

    if-nez v1, :cond_0

    iget-object v1, p1, Lq0/i0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v4}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/16 v1, 0x2000

    invoke-virtual {p2, v1}, Ld0/f;->a(I)V

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_1
    iget-object v1, p1, Lq0/i0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v5}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lq0/i0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v5}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/16 v1, 0x1000

    invoke-virtual {p2, v1}, Ld0/f;->a(I)V

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_3
    invoke-virtual {p1, v2, v3}, Lq0/i0;->F(Lq0/o0;Lq0/t0;)I

    move-result p2

    invoke-virtual {p1, v2, v3}, Lq0/i0;->x(Lq0/o0;Lq0/t0;)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    :cond_4
    return-void
.end method

.method public final g(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lc0/c;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    return p3

    :cond_0
    iget-object p1, p0, Lq0/y0;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->K()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lq0/i0;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lq0/i0;

    move-result-object p1

    iget-object v0, p1, Lq0/i0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->b:Lq0/o0;

    const/16 v2, 0x1000

    if-eq p2, v2, :cond_4

    const/16 v2, 0x2000

    if-eq p2, v2, :cond_1

    move p2, v1

    move v0, p2

    goto :goto_2

    :cond_1
    const/4 p2, -0x1

    invoke-virtual {v0, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lq0/i0;->o:I

    invoke-virtual {p1}, Lq0/i0;->C()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Lq0/i0;->z()I

    move-result v2

    sub-int/2addr v0, v2

    neg-int v0, v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget-object v2, p1, Lq0/i0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p2

    if-eqz p2, :cond_3

    iget p2, p1, Lq0/i0;->n:I

    invoke-virtual {p1}, Lq0/i0;->A()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {p1}, Lq0/i0;->B()I

    move-result v2

    sub-int/2addr p2, v2

    neg-int p2, p2

    goto :goto_2

    :cond_3
    move p2, v1

    goto :goto_2

    :cond_4
    invoke-virtual {v0, p3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p2

    if-eqz p2, :cond_5

    iget p2, p1, Lq0/i0;->o:I

    invoke-virtual {p1}, Lq0/i0;->C()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Lq0/i0;->z()I

    move-result v0

    sub-int/2addr p2, v0

    move v0, p2

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    iget-object p2, p1, Lq0/i0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p2

    if-eqz p2, :cond_3

    iget p2, p1, Lq0/i0;->n:I

    invoke-virtual {p1}, Lq0/i0;->A()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {p1}, Lq0/i0;->B()I

    move-result v2

    sub-int/2addr p2, v2

    :goto_2
    if-nez v0, :cond_6

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    iget-object p1, p1, Lq0/i0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2, v0, p3}, Landroidx/recyclerview/widget/RecyclerView;->Z(IIZ)V

    return p3

    :cond_7
    :goto_3
    return v1
.end method
