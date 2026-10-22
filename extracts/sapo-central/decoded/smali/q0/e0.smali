.class public abstract Lq0/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lq0/z;

.field public b:Ljava/util/ArrayList;

.field public c:J

.field public d:J

.field public e:J

.field public f:J


# direct methods
.method public static b(Lq0/w0;)V
    .locals 2

    iget v0, p0, Lq0/w0;->j:I

    invoke-virtual {p0}, Lq0/w0;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    iget-object v0, p0, Lq0/w0;->r:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->F(Lq0/w0;)I

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract a(Lq0/w0;Lq0/w0;Lc0/q;Lc0/q;)Z
.end method

.method public final c(Lq0/w0;)V
    .locals 10

    iget-object v0, p0, Lq0/e0;->a:Lq0/z;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lq0/z;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lq0/w0;->n(Z)V

    iget-object v2, p1, Lq0/w0;->a:Landroid/view/View;

    iget-object v3, p1, Lq0/w0;->h:Lq0/w0;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p1, Lq0/w0;->i:Lq0/w0;

    if-nez v3, :cond_0

    iput-object v4, p1, Lq0/w0;->h:Lq0/w0;

    :cond_0
    iput-object v4, p1, Lq0/w0;->i:Lq0/w0;

    iget v3, p1, Lq0/w0;->j:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->b:Lq0/o0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->a0()V

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/fragment/app/f;

    iget-object v5, v4, Landroidx/fragment/app/f;->c:Ljava/lang/Object;

    check-cast v5, Lq0/c;

    iget-object v6, v4, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    check-cast v6, Lq0/z;

    iget-object v7, v6, Lq0/z;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    const/4 v8, -0x1

    const/4 v9, 0x0

    if-ne v7, v8, :cond_2

    invoke-virtual {v4, v2}, Landroidx/fragment/app/f;->z(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v5, v7}, Lq0/c;->d(I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v5, v7}, Lq0/c;->f(I)Z

    invoke-virtual {v4, v2}, Landroidx/fragment/app/f;->z(Landroid/view/View;)V

    invoke-virtual {v6, v7}, Lq0/z;->h(I)V

    goto :goto_0

    :cond_3
    move v1, v9

    :goto_0
    if-eqz v1, :cond_4

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lq0/w0;

    move-result-object v4

    invoke-virtual {v3, v4}, Lq0/o0;->j(Lq0/w0;)V

    invoke-virtual {v3, v4}, Lq0/o0;->g(Lq0/w0;)V

    :cond_4
    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->b0(Z)V

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lq0/w0;->j()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v0, v2, v9}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public abstract d(Lq0/w0;)V
.end method

.method public abstract e()V
.end method

.method public abstract f()Z
.end method
