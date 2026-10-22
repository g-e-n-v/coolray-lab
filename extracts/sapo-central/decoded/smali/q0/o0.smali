.class public final Lq0/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/List;

.field public e:I

.field public f:I

.field public g:Lq0/n0;

.field public final synthetic h:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq0/o0;->h:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lq0/o0;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lq0/o0;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lq0/o0;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lq0/o0;->d:Ljava/util/List;

    const/4 p1, 0x2

    iput p1, p0, Lq0/o0;->e:I

    iput p1, p0, Lq0/o0;->f:I

    return-void
.end method


# virtual methods
.method public final a(Lq0/w0;Z)V
    .locals 4

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->j(Lq0/w0;)V

    iget-object v0, p1, Lq0/w0;->a:Landroid/view/View;

    iget-object v1, p0, Lq0/o0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->j0:Lq0/y0;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v2, Lq0/y0;->e:Lq0/x0;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lq0/x0;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc0/c;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-static {v0, v2}, Lc0/p0;->i(Landroid/view/View;Lc0/c;)V

    :cond_1
    if-eqz p2, :cond_2

    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->c0:Lq0/t0;

    if-eqz p2, :cond_2

    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/activity/result/c;

    invoke-virtual {p2, p1}, Landroidx/activity/result/c;->E(Lq0/w0;)V

    :cond_2
    iput-object v3, p1, Lq0/w0;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lq0/o0;->c()Lq0/n0;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lq0/w0;->f:I

    invoke-virtual {p2, v0}, Lq0/n0;->a(I)Lq0/m0;

    move-result-object v1

    iget-object v1, v1, Lq0/m0;->a:Ljava/util/ArrayList;

    iget-object p2, p2, Lq0/n0;->a:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lq0/m0;

    iget p2, p2, Lq0/m0;->b:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p2, v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lq0/w0;->m()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(I)I
    .locals 4

    iget-object v0, p0, Lq0/o0;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-ltz p1, :cond_1

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lq0/t0;

    invoke-virtual {v1}, Lq0/t0;->b()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lq0/t0;

    iget-boolean v1, v1, Lq0/t0;->g:Z

    if-nez v1, :cond_0

    return p1

    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->d:Lq0/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lq0/b;->e(II)I

    move-result p1

    return p1

    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "invalid position "

    const-string v3, ". State item count is "

    invoke-static {v2, p1, v3}, Landroidx/activity/result/b;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lq0/t0;

    invoke-virtual {v2}, Lq0/t0;->b()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final c()Lq0/n0;
    .locals 2

    iget-object v0, p0, Lq0/o0;->g:Lq0/n0;

    if-nez v0, :cond_0

    new-instance v0, Lq0/n0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lq0/n0;->a:Landroid/util/SparseArray;

    const/4 v1, 0x0

    iput v1, v0, Lq0/n0;->b:I

    iput-object v0, p0, Lq0/o0;->g:Lq0/n0;

    :cond_0
    iget-object v0, p0, Lq0/o0;->g:Lq0/n0;

    return-object v0
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lq0/o0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Lq0/o0;->e(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->s0:[I

    iget-object v0, p0, Lq0/o0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->b0:Lq0/n;

    iget-object v1, v0, Lq0/n;->d:Ljava/lang/Object;

    check-cast v1, [I

    if-eqz v1, :cond_1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    :cond_1
    const/4 v1, 0x0

    iput v1, v0, Lq0/n;->c:I

    return-void
.end method

.method public final e(I)V
    .locals 3

    iget-object v0, p0, Lq0/o0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq0/w0;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lq0/o0;->a(Lq0/w0;Z)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public final f(Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lq0/w0;

    move-result-object v0

    invoke-virtual {v0}, Lq0/w0;->j()Z

    move-result v1

    iget-object v2, p0, Lq0/o0;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {v0}, Lq0/w0;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Lq0/w0;->n:Lq0/o0;

    invoke-virtual {p1, v0}, Lq0/o0;->j(Lq0/w0;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lq0/w0;->p()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, v0, Lq0/w0;->j:I

    and-int/lit8 p1, p1, -0x21

    iput p1, v0, Lq0/w0;->j:I

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lq0/o0;->g(Lq0/w0;)V

    iget-object p1, v2, Landroidx/recyclerview/widget/RecyclerView;->H:Lq0/e0;

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lq0/w0;->g()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, v2, Landroidx/recyclerview/widget/RecyclerView;->H:Lq0/e0;

    invoke-virtual {p1, v0}, Lq0/e0;->d(Lq0/w0;)V

    :cond_3
    return-void
.end method

.method public final g(Lq0/w0;)V
    .locals 11

    iget-object v0, p0, Lq0/o0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->b0:Lq0/n;

    invoke-virtual {p1}, Lq0/w0;->i()Z

    move-result v2

    iget-object v3, p1, Lq0/w0;->a:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_f

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-virtual {p1}, Lq0/w0;->j()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {p1}, Lq0/w0;->o()Z

    move-result v2

    if-nez v2, :cond_d

    iget v2, p1, Lq0/w0;->j:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_1

    sget-object v2, Lc0/p0;->a:Ljava/util/WeakHashMap;

    invoke-static {v3}, Lc0/a0;->i(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-virtual {p1}, Lq0/w0;->g()Z

    move-result v3

    if-eqz v3, :cond_b

    iget v3, p0, Lq0/o0;->f:I

    if-lez v3, :cond_9

    iget v3, p1, Lq0/w0;->j:I

    and-int/lit16 v3, v3, 0x20e

    if-eqz v3, :cond_2

    goto :goto_5

    :cond_2
    iget-object v3, p0, Lq0/o0;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v7, p0, Lq0/o0;->f:I

    if-lt v6, v7, :cond_3

    if-lez v6, :cond_3

    invoke-virtual {p0, v4}, Lq0/o0;->e(I)V

    add-int/lit8 v6, v6, -0x1

    :cond_3
    sget-object v7, Landroidx/recyclerview/widget/RecyclerView;->s0:[I

    if-lez v6, :cond_8

    iget v7, p1, Lq0/w0;->c:I

    iget-object v8, v1, Lq0/n;->d:Ljava/lang/Object;

    check-cast v8, [I

    if-eqz v8, :cond_5

    iget v8, v1, Lq0/n;->c:I

    mul-int/lit8 v8, v8, 0x2

    move v9, v4

    :goto_1
    if-ge v9, v8, :cond_5

    iget-object v10, v1, Lq0/n;->d:Ljava/lang/Object;

    check-cast v10, [I

    aget v10, v10, v9

    if-ne v10, v7, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v9, v9, 0x2

    goto :goto_1

    :cond_5
    add-int/lit8 v6, v6, -0x1

    :goto_2
    if-ltz v6, :cond_7

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lq0/w0;

    iget v7, v7, Lq0/w0;->c:I

    iget-object v8, v1, Lq0/n;->d:Ljava/lang/Object;

    check-cast v8, [I

    if-eqz v8, :cond_7

    iget v8, v1, Lq0/n;->c:I

    mul-int/lit8 v8, v8, 0x2

    move v9, v4

    :goto_3
    if-ge v9, v8, :cond_7

    iget-object v10, v1, Lq0/n;->d:Ljava/lang/Object;

    check-cast v10, [I

    aget v10, v10, v9

    if-ne v10, v7, :cond_6

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v9, v9, 0x2

    goto :goto_3

    :cond_7
    add-int/2addr v6, v5

    :cond_8
    :goto_4
    invoke-virtual {v3, v6, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v1, v5

    goto :goto_6

    :cond_9
    :goto_5
    move v1, v4

    :goto_6
    if-nez v1, :cond_a

    invoke-virtual {p0, p1, v5}, Lq0/o0;->a(Lq0/w0;Z)V

    :goto_7
    move v4, v1

    goto :goto_8

    :cond_a
    move v5, v4

    goto :goto_7

    :cond_b
    move v5, v4

    :goto_8
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/activity/result/c;

    invoke-virtual {v0, p1}, Landroidx/activity/result/c;->E(Lq0/w0;)V

    if-nez v4, :cond_c

    if-nez v5, :cond_c

    if-eqz v2, :cond_c

    const/4 v0, 0x0

    iput-object v0, p1, Lq0/w0;->r:Landroidx/recyclerview/widget/RecyclerView;

    :cond_c
    return-void

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    :goto_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lq0/w0;->i()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isAttached:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_10

    move v4, v5

    :cond_10
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final h(Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lq0/w0;

    move-result-object p1

    iget v0, p1, Lq0/w0;->j:I

    and-int/lit8 v0, v0, 0xc

    iget-object v1, p0, Lq0/o0;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lq0/w0;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->H:Lq0/e0;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lq0/w0;->c()Ljava/util/List;

    move-result-object v2

    check-cast v0, Lq0/j;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v0, v0, Lq0/j;->g:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lq0/w0;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lq0/o0;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lq0/o0;->b:Ljava/util/ArrayList;

    :cond_2
    iput-object p0, p1, Lq0/w0;->n:Lq0/o0;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lq0/w0;->o:Z

    iget-object v0, p0, Lq0/o0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lq0/w0;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lq0/w0;->h()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->k:Lq0/a0;

    iget-boolean v0, v0, Lq0/a0;->b:Z

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    iput-object p0, p1, Lq0/w0;->n:Lq0/o0;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lq0/w0;->o:Z

    iget-object v0, p0, Lq0/o0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final i(IJ)Lq0/w0;
    .locals 27

    move-object/from16 v1, p0

    move/from16 v0, p1

    iget-object v2, v1, Lq0/o0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->c0:Lq0/t0;

    if-ltz v0, :cond_4a

    invoke-virtual {v3}, Lq0/t0;->b()I

    move-result v4

    if-ge v0, v4, :cond_4a

    iget-boolean v4, v3, Lq0/t0;->g:Z

    const/16 v5, 0x20

    const/4 v8, 0x0

    if-eqz v4, :cond_6

    iget-object v4, v1, Lq0/o0;->b:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    move v9, v8

    :goto_0
    if-ge v9, v4, :cond_2

    iget-object v10, v1, Lq0/o0;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lq0/w0;

    invoke-virtual {v10}, Lq0/w0;->p()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v10}, Lq0/w0;->b()I

    move-result v11

    if-ne v11, v0, :cond_1

    invoke-virtual {v10, v5}, Lq0/w0;->a(I)V

    goto :goto_3

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Lq0/a0;

    iget-boolean v9, v9, Lq0/a0;->b:Z

    if-eqz v9, :cond_4

    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->d:Lq0/b;

    invoke-virtual {v9, v0, v8}, Lq0/b;->e(II)I

    move-result v9

    if-lez v9, :cond_4

    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Lq0/a0;

    invoke-virtual {v10}, Lq0/a0;->a()I

    move-result v10

    if-ge v9, v10, :cond_4

    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Lq0/a0;

    invoke-virtual {v10, v9}, Lq0/a0;->b(I)J

    move-result-wide v9

    move v11, v8

    :goto_1
    if-ge v11, v4, :cond_4

    iget-object v12, v1, Lq0/o0;->b:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lq0/w0;

    invoke-virtual {v12}, Lq0/w0;->p()Z

    move-result v13

    if-nez v13, :cond_3

    iget-wide v13, v12, Lq0/w0;->e:J

    cmp-long v13, v13, v9

    if-nez v13, :cond_3

    invoke-virtual {v12, v5}, Lq0/w0;->a(I)V

    move-object v10, v12

    goto :goto_3

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    const/4 v10, 0x0

    :goto_3
    if-eqz v10, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    move v4, v8

    goto :goto_4

    :cond_6
    move v4, v8

    const/4 v10, 0x0

    :goto_4
    iget-object v9, v1, Lq0/o0;->a:Ljava/util/ArrayList;

    iget-object v11, v1, Lq0/o0;->c:Ljava/util/ArrayList;

    if-nez v10, :cond_1c

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v12, v8

    :goto_5
    if-ge v12, v10, :cond_9

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lq0/w0;

    invoke-virtual {v13}, Lq0/w0;->p()Z

    move-result v14

    if-nez v14, :cond_8

    invoke-virtual {v13}, Lq0/w0;->b()I

    move-result v14

    if-ne v14, v0, :cond_8

    invoke-virtual {v13}, Lq0/w0;->f()Z

    move-result v14

    if-nez v14, :cond_8

    iget-boolean v14, v3, Lq0/t0;->g:Z

    if-nez v14, :cond_7

    invoke-virtual {v13}, Lq0/w0;->h()Z

    move-result v14

    if-nez v14, :cond_8

    :cond_7
    invoke-virtual {v13, v5}, Lq0/w0;->a(I)V

    move-object v10, v13

    const/16 v16, 0x1

    goto/16 :goto_b

    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_9
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/fragment/app/f;

    iget-object v10, v10, Landroidx/fragment/app/f;->d:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v13, v8

    :goto_6
    if-ge v13, v12, :cond_b

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    invoke-static {v14}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lq0/w0;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual {v15}, Lq0/w0;->b()I

    move-result v7

    if-ne v7, v0, :cond_a

    invoke-virtual {v15}, Lq0/w0;->f()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v15}, Lq0/w0;->h()Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_7

    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_b
    const/16 v16, 0x1

    const/4 v14, 0x0

    :goto_7
    if-eqz v14, :cond_11

    invoke-static {v14}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lq0/w0;

    move-result-object v7

    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/fragment/app/f;

    iget-object v12, v10, Landroidx/fragment/app/f;->c:Ljava/lang/Object;

    check-cast v12, Lq0/c;

    iget-object v13, v10, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    check-cast v13, Lq0/z;

    iget-object v13, v13, Lq0/z;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v13

    if-ltz v13, :cond_10

    invoke-virtual {v12, v13}, Lq0/c;->d(I)Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-virtual {v12, v13}, Lq0/c;->a(I)V

    invoke-virtual {v10, v14}, Landroidx/fragment/app/f;->z(Landroid/view/View;)V

    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/fragment/app/f;

    iget-object v12, v10, Landroidx/fragment/app/f;->c:Ljava/lang/Object;

    check-cast v12, Lq0/c;

    iget-object v10, v10, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    check-cast v10, Lq0/z;

    iget-object v10, v10, Lq0/z;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v10, v14}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v10

    const/4 v13, -0x1

    if-ne v10, v13, :cond_c

    :goto_8
    move v10, v13

    goto :goto_9

    :cond_c
    invoke-virtual {v12, v10}, Lq0/c;->d(I)Z

    move-result v15

    if-eqz v15, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {v12, v10}, Lq0/c;->b(I)I

    move-result v12

    sub-int/2addr v10, v12

    :goto_9
    if-eq v10, v13, :cond_e

    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/fragment/app/f;

    invoke-virtual {v12, v10}, Landroidx/fragment/app/f;->d(I)V

    invoke-virtual {v1, v14}, Lq0/o0;->h(Landroid/view/View;)V

    const/16 v10, 0x2020

    invoke-virtual {v7, v10}, Lq0/w0;->a(I)V

    move-object v10, v7

    goto :goto_b

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "layout index should not be -1 after unhiding a view:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "trying to unhide a view that was not hidden"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "view is not a child, cannot hide "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v10, v8

    :goto_a
    if-ge v10, v7, :cond_13

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lq0/w0;

    invoke-virtual {v12}, Lq0/w0;->f()Z

    move-result v13

    if-nez v13, :cond_12

    invoke-virtual {v12}, Lq0/w0;->b()I

    move-result v13

    if-ne v13, v0, :cond_12

    invoke-virtual {v12}, Lq0/w0;->d()Z

    move-result v13

    if-nez v13, :cond_12

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v10, v12

    goto :goto_b

    :cond_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_13
    const/4 v10, 0x0

    :goto_b
    if-eqz v10, :cond_1d

    invoke-virtual {v10}, Lq0/w0;->h()Z

    move-result v7

    if-eqz v7, :cond_14

    iget-boolean v7, v3, Lq0/t0;->g:Z

    goto :goto_c

    :cond_14
    iget v7, v10, Lq0/w0;->c:I

    if-ltz v7, :cond_1b

    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Lq0/a0;

    invoke-virtual {v12}, Lq0/a0;->a()I

    move-result v12

    if-ge v7, v12, :cond_1b

    iget-boolean v7, v3, Lq0/t0;->g:Z

    if-nez v7, :cond_16

    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Lq0/a0;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v10, Lq0/w0;->f:I

    if-eqz v7, :cond_16

    :cond_15
    move v7, v8

    goto :goto_c

    :cond_16
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Lq0/a0;

    iget-boolean v12, v7, Lq0/a0;->b:Z

    if-eqz v12, :cond_17

    iget-wide v12, v10, Lq0/w0;->e:J

    iget v14, v10, Lq0/w0;->c:I

    invoke-virtual {v7, v14}, Lq0/a0;->b(I)J

    move-result-wide v14

    cmp-long v7, v12, v14

    if-nez v7, :cond_15

    :cond_17
    move/from16 v7, v16

    :goto_c
    if-nez v7, :cond_1a

    const/4 v7, 0x4

    invoke-virtual {v10, v7}, Lq0/w0;->a(I)V

    invoke-virtual {v10}, Lq0/w0;->i()Z

    move-result v7

    if-eqz v7, :cond_18

    iget-object v7, v10, Lq0/w0;->a:Landroid/view/View;

    invoke-virtual {v2, v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    iget-object v7, v10, Lq0/w0;->n:Lq0/o0;

    invoke-virtual {v7, v10}, Lq0/o0;->j(Lq0/w0;)V

    goto :goto_d

    :cond_18
    invoke-virtual {v10}, Lq0/w0;->p()Z

    move-result v7

    if-eqz v7, :cond_19

    iget v7, v10, Lq0/w0;->j:I

    and-int/lit8 v7, v7, -0x21

    iput v7, v10, Lq0/w0;->j:I

    :cond_19
    :goto_d
    invoke-virtual {v1, v10}, Lq0/o0;->g(Lq0/w0;)V

    const/4 v10, 0x0

    goto :goto_e

    :cond_1a
    move/from16 v4, v16

    goto :goto_e

    :cond_1b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Inconsistency detected. Invalid view holder adapter position"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    const/16 v16, 0x1

    :cond_1d
    :goto_e
    const-wide/16 v17, 0x0

    const-wide v19, 0x7fffffffffffffffL

    if-nez v10, :cond_33

    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->d:Lq0/b;

    invoke-virtual {v7, v0, v8}, Lq0/b;->e(II)I

    move-result v7

    if-ltz v7, :cond_32

    const-wide/16 v21, 0x3

    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Lq0/a0;

    invoke-virtual {v12}, Lq0/a0;->a()I

    move-result v12

    if-ge v7, v12, :cond_32

    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Lq0/a0;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Lq0/a0;

    iget-boolean v13, v12, Lq0/a0;->b:Z

    if-eqz v13, :cond_25

    invoke-virtual {v12, v7}, Lq0/a0;->b(I)J

    move-result-wide v12

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    :goto_f
    if-ltz v10, :cond_21

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    const-wide/16 v24, 0x4

    move-object/from16 v14, v23

    check-cast v14, Lq0/w0;

    move/from16 v23, v7

    iget-wide v6, v14, Lq0/w0;->e:J

    iget-object v15, v14, Lq0/w0;->a:Landroid/view/View;

    cmp-long v6, v6, v12

    if-nez v6, :cond_20

    invoke-virtual {v14}, Lq0/w0;->p()Z

    move-result v6

    if-nez v6, :cond_20

    iget v6, v14, Lq0/w0;->f:I

    if-nez v6, :cond_1f

    invoke-virtual {v14, v5}, Lq0/w0;->a(I)V

    invoke-virtual {v14}, Lq0/w0;->h()Z

    move-result v5

    if-eqz v5, :cond_1e

    iget-boolean v5, v3, Lq0/t0;->g:Z

    if-nez v5, :cond_1e

    iget v5, v14, Lq0/w0;->j:I

    and-int/lit8 v5, v5, -0xf

    or-int/lit8 v5, v5, 0x2

    iput v5, v14, Lq0/w0;->j:I

    :cond_1e
    move-object v10, v14

    goto :goto_11

    :cond_1f
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v2, v15, v8}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    invoke-static {v15}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lq0/w0;

    move-result-object v6

    const/4 v15, 0x0

    iput-object v15, v6, Lq0/w0;->n:Lq0/o0;

    iput-boolean v8, v6, Lq0/w0;->o:Z

    iget v7, v6, Lq0/w0;->j:I

    and-int/lit8 v7, v7, -0x21

    iput v7, v6, Lq0/w0;->j:I

    invoke-virtual {v1, v6}, Lq0/o0;->g(Lq0/w0;)V

    :cond_20
    add-int/lit8 v10, v10, -0x1

    move/from16 v7, v23

    goto :goto_f

    :cond_21
    move/from16 v23, v7

    const-wide/16 v24, 0x4

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_10
    if-ltz v5, :cond_23

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lq0/w0;

    iget-wide v9, v6, Lq0/w0;->e:J

    cmp-long v7, v9, v12

    if-nez v7, :cond_24

    invoke-virtual {v6}, Lq0/w0;->d()Z

    move-result v7

    if-nez v7, :cond_24

    iget v7, v6, Lq0/w0;->f:I

    if-nez v7, :cond_22

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v10, v6

    goto :goto_11

    :cond_22
    invoke-virtual {v1, v5}, Lq0/o0;->e(I)V

    :cond_23
    const/4 v10, 0x0

    goto :goto_11

    :cond_24
    add-int/lit8 v5, v5, -0x1

    goto :goto_10

    :goto_11
    if-eqz v10, :cond_26

    move/from16 v5, v23

    iput v5, v10, Lq0/w0;->c:I

    move/from16 v4, v16

    goto :goto_12

    :cond_25
    const-wide/16 v24, 0x4

    :cond_26
    :goto_12
    if-nez v10, :cond_2a

    invoke-virtual {v1}, Lq0/o0;->c()Lq0/n0;

    move-result-object v5

    iget-object v5, v5, Lq0/n0;->a:Landroid/util/SparseArray;

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq0/m0;

    if-eqz v5, :cond_28

    iget-object v5, v5, Lq0/m0;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_28

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_13
    if-ltz v6, :cond_28

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lq0/w0;

    invoke-virtual {v7}, Lq0/w0;->d()Z

    move-result v7

    if-nez v7, :cond_27

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v26, v5

    check-cast v26, Lq0/w0;

    goto :goto_14

    :cond_27
    add-int/lit8 v6, v6, -0x1

    goto :goto_13

    :cond_28
    const/16 v26, 0x0

    :goto_14
    if-eqz v26, :cond_29

    invoke-virtual/range {v26 .. v26}, Lq0/w0;->m()V

    sget-object v5, Landroidx/recyclerview/widget/RecyclerView;->s0:[I

    :cond_29
    move-object/from16 v10, v26

    :cond_2a
    if-nez v10, :cond_31

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v5

    cmp-long v7, p2, v19

    if-eqz v7, :cond_2d

    iget-object v7, v1, Lq0/o0;->g:Lq0/n0;

    invoke-virtual {v7, v8}, Lq0/n0;->a(I)Lq0/m0;

    move-result-object v7

    iget-wide v9, v7, Lq0/m0;->c:J

    cmp-long v7, v9, v17

    if-eqz v7, :cond_2c

    add-long/2addr v9, v5

    cmp-long v7, v9, p2

    if-gez v7, :cond_2b

    goto :goto_15

    :cond_2b
    move v7, v8

    goto :goto_16

    :cond_2c
    :goto_15
    move/from16 v7, v16

    :goto_16
    if-nez v7, :cond_2d

    const/4 v15, 0x0

    return-object v15

    :cond_2d
    const/4 v15, 0x0

    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Lq0/a0;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    const-string v9, "RV CreateView"

    sget v10, Ly/h;->a:I

    invoke-static {v9}, Ly/g;->a(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Lq0/a0;->d(Landroid/view/ViewGroup;)Lq0/w0;

    move-result-object v10

    iget-object v7, v10, Lq0/w0;->a:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-nez v9, :cond_30

    iput v8, v10, Lq0/w0;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ly/g;->b()V

    sget-object v9, Landroidx/recyclerview/widget/RecyclerView;->s0:[I

    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->D(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v7

    if-eqz v7, :cond_2e

    new-instance v9, Ljava/lang/ref/WeakReference;

    invoke-direct {v9, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v9, v10, Lq0/w0;->b:Ljava/lang/ref/WeakReference;

    :cond_2e
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v11

    iget-object v7, v1, Lq0/o0;->g:Lq0/n0;

    sub-long/2addr v11, v5

    invoke-virtual {v7, v8}, Lq0/n0;->a(I)Lq0/m0;

    move-result-object v5

    iget-wide v6, v5, Lq0/m0;->c:J

    cmp-long v9, v6, v17

    if-nez v9, :cond_2f

    goto :goto_17

    :cond_2f
    div-long v6, v6, v24

    mul-long v6, v6, v21

    div-long v11, v11, v24

    add-long/2addr v11, v6

    :goto_17
    iput-wide v11, v5, Lq0/m0;->c:J

    goto :goto_19

    :catchall_0
    move-exception v0

    goto :goto_18

    :cond_30
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_18
    sget v2, Ly/h;->a:I

    invoke-static {}, Ly/g;->b()V

    throw v0

    :cond_31
    const/4 v15, 0x0

    goto :goto_19

    :cond_32
    move v5, v7

    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Inconsistency detected. Invalid item position "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "(offset:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ").state:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lq0/t0;->b()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_33
    const/4 v15, 0x0

    const-wide/16 v21, 0x3

    const-wide/16 v24, 0x4

    :goto_19
    iget-object v5, v10, Lq0/w0;->a:Landroid/view/View;

    if-eqz v4, :cond_35

    iget-boolean v6, v3, Lq0/t0;->g:Z

    if-nez v6, :cond_35

    iget v6, v10, Lq0/w0;->j:I

    and-int/lit16 v7, v6, 0x2000

    if-eqz v7, :cond_34

    move/from16 v7, v16

    goto :goto_1a

    :cond_34
    move v7, v8

    :goto_1a
    if-eqz v7, :cond_35

    and-int/lit16 v6, v6, -0x2001

    iput v6, v10, Lq0/w0;->j:I

    iget-boolean v6, v3, Lq0/t0;->j:Z

    if-eqz v6, :cond_35

    invoke-static {v10}, Lq0/e0;->b(Lq0/w0;)V

    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->H:Lq0/e0;

    invoke-virtual {v10}, Lq0/w0;->c()Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lc0/q;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6, v10}, Lc0/q;->a(Lq0/w0;)V

    invoke-virtual {v2, v10, v6}, Landroidx/recyclerview/widget/RecyclerView;->T(Lq0/w0;Lc0/q;)V

    :cond_35
    iget-boolean v6, v3, Lq0/t0;->g:Z

    if-eqz v6, :cond_36

    invoke-virtual {v10}, Lq0/w0;->e()Z

    move-result v6

    if-eqz v6, :cond_36

    iput v0, v10, Lq0/w0;->g:I

    goto :goto_1c

    :cond_36
    invoke-virtual {v10}, Lq0/w0;->e()Z

    move-result v6

    if-eqz v6, :cond_39

    iget v6, v10, Lq0/w0;->j:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_37

    move/from16 v6, v16

    goto :goto_1b

    :cond_37
    move v6, v8

    :goto_1b
    if-nez v6, :cond_39

    invoke-virtual {v10}, Lq0/w0;->f()Z

    move-result v6

    if-eqz v6, :cond_38

    goto :goto_1d

    :cond_38
    :goto_1c
    move v0, v8

    move/from16 v7, v16

    goto/16 :goto_22

    :cond_39
    :goto_1d
    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->d:Lq0/b;

    invoke-virtual {v6, v0, v8}, Lq0/b;->e(II)I

    move-result v6

    iput-object v2, v10, Lq0/w0;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget v7, v10, Lq0/w0;->f:I

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v11

    cmp-long v9, p2, v19

    if-eqz v9, :cond_3a

    iget-object v9, v1, Lq0/o0;->g:Lq0/n0;

    invoke-virtual {v9, v7}, Lq0/n0;->a(I)Lq0/m0;

    move-result-object v7

    iget-wide v13, v7, Lq0/m0;->d:J

    cmp-long v7, v13, v17

    if-eqz v7, :cond_3a

    add-long/2addr v13, v11

    cmp-long v7, v13, p2

    if-gez v7, :cond_38

    :cond_3a
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Lq0/a0;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v6, v10, Lq0/w0;->c:I

    iget-boolean v9, v7, Lq0/a0;->b:Z

    if-eqz v9, :cond_3b

    invoke-virtual {v7, v6}, Lq0/a0;->b(I)J

    move-result-wide v13

    iput-wide v13, v10, Lq0/w0;->e:J

    :cond_3b
    iget v9, v10, Lq0/w0;->j:I

    and-int/lit16 v9, v9, -0x208

    or-int/lit8 v9, v9, 0x1

    iput v9, v10, Lq0/w0;->j:I

    sget v9, Ly/h;->a:I

    const-string v9, "RV OnBindView"

    invoke-static {v9}, Ly/g;->a(Ljava/lang/String;)V

    invoke-virtual {v10}, Lq0/w0;->c()Ljava/util/List;

    invoke-virtual {v7, v10, v6}, Lq0/a0;->c(Lq0/w0;I)V

    iget-object v6, v10, Lq0/w0;->k:Ljava/util/ArrayList;

    if-eqz v6, :cond_3c

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :cond_3c
    iget v6, v10, Lq0/w0;->j:I

    and-int/lit16 v6, v6, -0x401

    iput v6, v10, Lq0/w0;->j:I

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v7, v6, Lq0/j0;

    if-eqz v7, :cond_3d

    check-cast v6, Lq0/j0;

    move/from16 v7, v16

    iput-boolean v7, v6, Lq0/j0;->c:Z

    :cond_3d
    invoke-static {}, Ly/g;->b()V

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v6

    iget-object v9, v1, Lq0/o0;->g:Lq0/n0;

    iget v13, v10, Lq0/w0;->f:I

    sub-long/2addr v6, v11

    invoke-virtual {v9, v13}, Lq0/n0;->a(I)Lq0/m0;

    move-result-object v9

    iget-wide v11, v9, Lq0/m0;->d:J

    cmp-long v13, v11, v17

    if-nez v13, :cond_3e

    goto :goto_1e

    :cond_3e
    div-long v11, v11, v24

    mul-long v11, v11, v21

    div-long v6, v6, v24

    add-long/2addr v6, v11

    :goto_1e
    iput-wide v6, v9, Lq0/m0;->d:J

    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->x:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v6, :cond_3f

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3f

    const/4 v7, 0x1

    goto :goto_1f

    :cond_3f
    move v7, v8

    :goto_1f
    if-eqz v7, :cond_45

    sget-object v6, Lc0/p0;->a:Ljava/util/WeakHashMap;

    invoke-static {v5}, Lc0/a0;->c(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_40

    invoke-static {v5, v7}, Lc0/a0;->s(Landroid/view/View;I)V

    :cond_40
    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->j0:Lq0/y0;

    if-nez v6, :cond_41

    goto :goto_21

    :cond_41
    iget-object v6, v6, Lq0/y0;->e:Lq0/x0;

    if-eqz v6, :cond_44

    invoke-static {v5}, Lc0/p0;->b(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v9

    if-nez v9, :cond_42

    goto :goto_20

    :cond_42
    instance-of v11, v9, Lc0/a;

    if-eqz v11, :cond_43

    check-cast v9, Lc0/a;

    iget-object v9, v9, Lc0/a;->a:Lc0/c;

    move-object v15, v9

    goto :goto_20

    :cond_43
    new-instance v11, Lc0/c;

    invoke-direct {v11, v9}, Lc0/c;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    move-object v15, v11

    :goto_20
    if-eqz v15, :cond_44

    if-eq v15, v6, :cond_44

    iget-object v9, v6, Lq0/x0;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v9, v5, v15}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_44
    invoke-static {v5, v6}, Lc0/p0;->i(Landroid/view/View;Lc0/c;)V

    goto :goto_21

    :cond_45
    const/4 v7, 0x1

    :goto_21
    iget-boolean v3, v3, Lq0/t0;->g:Z

    if-eqz v3, :cond_46

    iput v0, v10, Lq0/w0;->g:I

    :cond_46
    move v0, v7

    :goto_22
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_47

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lq0/j0;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_23

    :cond_47
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v6

    if-nez v6, :cond_48

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lq0/j0;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_23

    :cond_48
    move-object v2, v3

    check-cast v2, Lq0/j0;

    :goto_23
    iput-object v10, v2, Lq0/j0;->a:Lq0/w0;

    if-eqz v4, :cond_49

    if-eqz v0, :cond_49

    goto :goto_24

    :cond_49
    move v7, v8

    :goto_24
    iput-boolean v7, v2, Lq0/j0;->d:Z

    return-object v10

    :cond_4a
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid item position "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "). Item count:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lq0/t0;->b()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public final j(Lq0/w0;)V
    .locals 1

    iget-boolean v0, p1, Lq0/w0;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq0/o0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lq0/o0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p1, Lq0/w0;->n:Lq0/o0;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lq0/w0;->o:Z

    iget v0, p1, Lq0/w0;->j:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p1, Lq0/w0;->j:I

    return-void
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, Lq0/o0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lq0/i0;

    if-eqz v0, :cond_0

    iget v0, v0, Lq0/i0;->j:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lq0/o0;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Lq0/o0;->f:I

    iget-object v0, p0, Lq0/o0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lq0/o0;->f:I

    if-le v2, v3, :cond_1

    invoke-virtual {p0, v1}, Lq0/o0;->e(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method
