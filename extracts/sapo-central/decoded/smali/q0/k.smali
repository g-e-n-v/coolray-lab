.class public final Lq0/k;
.super Lq0/l0;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lq0/m;


# direct methods
.method public constructor <init>(Lq0/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq0/k;->a:Lq0/m;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 8

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    iget-object p3, p0, Lq0/k;->a:Lq0/m;

    iget v0, p3, Lq0/m;->a:I

    iget-object v1, p3, Lq0/m;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v1

    iget v2, p3, Lq0/m;->r:I

    sub-int v3, v1, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_0

    if-lt v2, v0, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iput-boolean v3, p3, Lq0/m;->t:Z

    iget-object v3, p3, Lq0/m;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v3

    iget v6, p3, Lq0/m;->q:I

    sub-int v7, v3, v6

    if-lez v7, :cond_1

    if-lt v6, v0, :cond_1

    move v0, v5

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    iput-boolean v0, p3, Lq0/m;->u:Z

    iget-boolean v7, p3, Lq0/m;->t:Z

    if-nez v7, :cond_2

    if-nez v0, :cond_2

    iget p1, p3, Lq0/m;->v:I

    if-eqz p1, :cond_5

    invoke-virtual {p3, v4}, Lq0/m;->f(I)V

    return-void

    :cond_2
    const/high16 v0, 0x40000000    # 2.0f

    if-eqz v7, :cond_3

    int-to-float p1, p1

    int-to-float v4, v2

    div-float v7, v4, v0

    add-float/2addr v7, p1

    mul-float/2addr v7, v4

    int-to-float p1, v1

    div-float/2addr v7, p1

    float-to-int p1, v7

    iput p1, p3, Lq0/m;->l:I

    mul-int p1, v2, v2

    div-int/2addr p1, v1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p3, Lq0/m;->k:I

    :cond_3
    iget-boolean p1, p3, Lq0/m;->u:Z

    if-eqz p1, :cond_4

    int-to-float p1, p2

    int-to-float p2, v6

    div-float v0, p2, v0

    add-float/2addr v0, p1

    mul-float/2addr v0, p2

    int-to-float p1, v3

    div-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p3, Lq0/m;->o:I

    mul-int p1, v6, v6

    div-int/2addr p1, v3

    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p3, Lq0/m;->n:I

    :cond_4
    iget p1, p3, Lq0/m;->v:I

    if-eqz p1, :cond_6

    if-ne p1, v5, :cond_5

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    :goto_2
    invoke-virtual {p3, v5}, Lq0/m;->f(I)V

    return-void
.end method
