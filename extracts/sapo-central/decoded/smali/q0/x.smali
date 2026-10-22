.class public final Lq0/x;
.super Lq0/k0;
.source "SourceFile"


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView;

.field public b:Landroid/widget/Scroller;

.field public final c:Lq0/z0;

.field public d:Lq0/y;

.field public e:Lq0/y;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lq0/z0;

    invoke-direct {v0, p0}, Lq0/z0;-><init>(Lq0/x;)V

    iput-object v0, p0, Lq0/x;->c:Lq0/z0;

    return-void
.end method

.method public static c(Lq0/i0;Landroidx/emoji2/text/f;)Landroid/view/View;
    .locals 8

    invoke-virtual {p0}, Lq0/i0;->v()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroidx/emoji2/text/f;->k()I

    move-result v2

    invoke-virtual {p1}, Landroidx/emoji2/text/f;->l()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    const v2, 0x7fffffff

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    invoke-virtual {p0, v4}, Lq0/i0;->u(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p1, v5}, Landroidx/emoji2/text/f;->c(Landroid/view/View;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    sub-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v2, :cond_1

    move-object v1, v5

    move v2, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public final a(Lq0/i0;Landroid/view/View;)[I
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p1}, Lq0/i0;->d()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lq0/x;->d(Lq0/i0;)Landroidx/emoji2/text/f;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v2, p2}, Landroidx/emoji2/text/f;->c(Landroid/view/View;)I

    move-result v5

    div-int/2addr v5, v0

    add-int/2addr v5, v4

    invoke-virtual {v2}, Landroidx/emoji2/text/f;->k()I

    move-result v4

    invoke-virtual {v2}, Landroidx/emoji2/text/f;->l()I

    move-result v2

    div-int/2addr v2, v0

    add-int/2addr v2, v4

    sub-int/2addr v5, v2

    aput v5, v1, v3

    goto :goto_0

    :cond_0
    aput v3, v1, v3

    :goto_0
    invoke-virtual {p1}, Lq0/i0;->e()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lq0/x;->e(Lq0/i0;)Landroidx/emoji2/text/f;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p1, p2}, Landroidx/emoji2/text/f;->c(Landroid/view/View;)I

    move-result p2

    div-int/2addr p2, v0

    add-int/2addr p2, v2

    invoke-virtual {p1}, Landroidx/emoji2/text/f;->k()I

    move-result v2

    invoke-virtual {p1}, Landroidx/emoji2/text/f;->l()I

    move-result p1

    div-int/2addr p1, v0

    add-int/2addr p1, v2

    sub-int/2addr p2, p1

    aput p2, v1, v4

    return-object v1

    :cond_1
    aput v3, v1, v4

    return-object v1
.end method

.method public final b(Lq0/i0;Landroidx/emoji2/text/f;II)I
    .locals 11

    iget-object v0, p0, Lq0/x;->b:Landroid/widget/Scroller;

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object p3, p0, Lq0/x;->b:Landroid/widget/Scroller;

    invoke-virtual {p3}, Landroid/widget/Scroller;->getFinalX()I

    move-result p3

    iget-object p4, p0, Lq0/x;->b:Landroid/widget/Scroller;

    invoke-virtual {p4}, Landroid/widget/Scroller;->getFinalY()I

    move-result p4

    filled-new-array {p3, p4}, [I

    move-result-object p3

    invoke-virtual {p1}, Lq0/i0;->v()I

    move-result p4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez p4, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    const v4, 0x7fffffff

    const/high16 v5, -0x80000000

    move v7, v0

    move v6, v5

    move v5, v4

    move-object v4, v3

    :goto_0
    if-ge v7, p4, :cond_4

    invoke-virtual {p1, v7}, Lq0/i0;->u(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Lq0/i0;->D(Landroid/view/View;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    goto :goto_1

    :cond_1
    if-ge v9, v5, :cond_2

    move-object v3, v8

    move v5, v9

    :cond_2
    if-le v9, v6, :cond_3

    move-object v4, v8

    move v6, v9

    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_7

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p2, v3}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2, v4}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result p4

    invoke-static {p1, p4}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p2, v3}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result p4

    invoke-virtual {p2, v4}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result p2

    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p2, p1

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    int-to-float p1, p2

    mul-float/2addr p1, v2

    sub-int/2addr v6, v5

    add-int/2addr v6, v1

    int-to-float p2, v6

    div-float v2, p1, p2

    :cond_7
    :goto_2
    const/4 p1, 0x0

    cmpg-float p1, v2, p1

    if-gtz p1, :cond_8

    return v0

    :cond_8
    aget p1, p3, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    aget p2, p3, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-le p1, p2, :cond_9

    aget p1, p3, v0

    goto :goto_3

    :cond_9
    aget p1, p3, v1

    :goto_3
    int-to-float p1, p1

    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public final d(Lq0/i0;)Landroidx/emoji2/text/f;
    .locals 2

    iget-object v0, p0, Lq0/x;->e:Lq0/y;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast v0, Lq0/i0;

    if-eq v0, p1, :cond_1

    :cond_0
    new-instance v0, Lq0/y;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lq0/y;-><init>(Lq0/i0;I)V

    iput-object v0, p0, Lq0/x;->e:Lq0/y;

    :cond_1
    iget-object p1, p0, Lq0/x;->e:Lq0/y;

    return-object p1
.end method

.method public final e(Lq0/i0;)Landroidx/emoji2/text/f;
    .locals 2

    iget-object v0, p0, Lq0/x;->d:Lq0/y;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast v0, Lq0/i0;

    if-eq v0, p1, :cond_1

    :cond_0
    new-instance v0, Lq0/y;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lq0/y;-><init>(Lq0/i0;I)V

    iput-object v0, p0, Lq0/x;->d:Lq0/y;

    :cond_1
    iget-object p1, p0, Lq0/x;->d:Lq0/y;

    return-object p1
.end method

.method public final f()V
    .locals 5

    iget-object v0, p0, Lq0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lq0/i0;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lq0/i0;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lq0/x;->e(Lq0/i0;)Landroidx/emoji2/text/f;

    move-result-object v1

    invoke-static {v0, v1}, Lq0/x;->c(Lq0/i0;Landroidx/emoji2/text/f;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lq0/i0;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lq0/x;->d(Lq0/i0;)Landroidx/emoji2/text/f;

    move-result-object v1

    invoke-static {v0, v1}, Lq0/x;->c(Lq0/i0;Landroidx/emoji2/text/f;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0, v1}, Lq0/x;->a(Lq0/i0;Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_6

    aget v4, v0, v3

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    iget-object v4, p0, Lq0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    aget v0, v0, v3

    invoke-virtual {v4, v2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->Z(IIZ)V

    return-void
.end method
