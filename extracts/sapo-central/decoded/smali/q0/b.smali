.class public final Lq0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le0/b;Lw0/q1;Lw0/ah;Lw0/ah;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lq0/b;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq0/b;->b:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lq0/b;->c:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lq0/b;->d:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, Lq0/b;->e:Ljava/lang/Object;

    .line 6
    new-instance p1, Landroidx/activity/d;

    const/16 p2, 0xc

    invoke-direct {p1, p2, p0}, Landroidx/activity/d;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lq0/b;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lq0/b;->a:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iput-object p1, p0, Lq0/b;->b:Ljava/lang/Object;

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iput-object p2, p0, Lq0/b;->c:Ljava/lang/Object;

    .line 12
    iput-object p3, p0, Lq0/b;->d:Ljava/lang/Object;

    .line 13
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iput-object p4, p0, Lq0/b;->e:Ljava/lang/Object;

    .line 15
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "-"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    iput-object p1, p0, Lq0/b;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lq0/z;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lq0/b;->a:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lb0/c;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lb0/c;-><init>(I)V

    iput-object v0, p0, Lq0/b;->b:Ljava/lang/Object;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lq0/b;->c:Ljava/lang/Object;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lq0/b;->d:Ljava/lang/Object;

    .line 22
    iput-object p1, p0, Lq0/b;->e:Ljava/lang/Object;

    .line 23
    new-instance p1, Landroidx/emoji2/text/m;

    const/16 v0, 0x17

    invoke-direct {p1, v0, p0}, Landroidx/emoji2/text/m;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lq0/b;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 8

    iget-object v0, p0, Lq0/b;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq0/a;

    iget v5, v4, Lq0/a;->a:I

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    iget v4, v4, Lq0/a;->c:I

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v4, v5}, Lq0/b;->e(II)I

    move-result v4

    if-ne v4, p1, :cond_2

    goto :goto_2

    :cond_0
    if-ne v5, v7, :cond_2

    iget v5, v4, Lq0/a;->b:I

    iget v4, v4, Lq0/a;->c:I

    add-int/2addr v4, v5

    :goto_1
    if-ge v5, v4, :cond_2

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v5, v6}, Lq0/b;->e(II)I

    move-result v6

    if-ne v6, p1, :cond_1

    :goto_2
    return v7

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public b()V
    .locals 8

    iget-object v0, p0, Lq0/b;->e:Ljava/lang/Object;

    check-cast v0, Lq0/z;

    iget-object v1, p0, Lq0/b;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lq0/b;->e:Ljava/lang/Object;

    check-cast v4, Lq0/z;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq0/a;

    invoke-virtual {v4, v5}, Lq0/z;->a(Lq0/a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lq0/b;->i(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lq0/b;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq0/a;

    iget v5, v4, Lq0/a;->a:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    const/4 v7, 0x2

    if-eq v5, v7, :cond_3

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v4}, Lq0/z;->a(Lq0/a;)V

    iget v5, v4, Lq0/a;->b:I

    iget v4, v4, Lq0/a;->c:I

    invoke-virtual {v0, v5, v4}, Lq0/z;->e(II)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v4}, Lq0/z;->a(Lq0/a;)V

    iget v5, v4, Lq0/a;->b:I

    iget v4, v4, Lq0/a;->c:I

    invoke-virtual {v0, v5, v4}, Lq0/z;->c(II)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v4}, Lq0/z;->a(Lq0/a;)V

    iget v5, v4, Lq0/a;->b:I

    iget v4, v4, Lq0/a;->c:I

    iget-object v7, v0, Lq0/z;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7, v5, v4, v6}, Landroidx/recyclerview/widget/RecyclerView;->O(IIZ)V

    iput-boolean v6, v7, Landroidx/recyclerview/widget/RecyclerView;->f0:Z

    iget-object v5, v7, Landroidx/recyclerview/widget/RecyclerView;->c0:Lq0/t0;

    iget v6, v5, Lq0/t0;->c:I

    add-int/2addr v6, v4

    iput v6, v5, Lq0/t0;->c:I

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v4}, Lq0/z;->a(Lq0/a;)V

    iget v5, v4, Lq0/a;->b:I

    iget v4, v4, Lq0/a;->c:I

    invoke-virtual {v0, v5, v4}, Lq0/z;->d(II)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1}, Lq0/b;->i(Ljava/util/ArrayList;)V

    return-void
.end method

.method public c(Lq0/a;)V
    .locals 12

    iget-object v0, p0, Lq0/b;->b:Ljava/lang/Object;

    check-cast v0, Lb0/c;

    iget v1, p1, Lq0/a;->a:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/16 v3, 0x8

    if-eq v1, v3, :cond_8

    iget v3, p1, Lq0/a;->b:I

    invoke-virtual {p0, v3, v1}, Lq0/b;->k(II)I

    move-result v1

    iget v3, p1, Lq0/a;->b:I

    iget v4, p1, Lq0/a;->a:I

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eq v4, v5, :cond_1

    if-ne v4, v6, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "op should be remove or update."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    move v7, v2

    move v8, v7

    :goto_1
    iget v9, p1, Lq0/a;->c:I

    if-ge v7, v9, :cond_6

    iget v9, p1, Lq0/a;->b:I

    mul-int v10, v4, v7

    add-int/2addr v10, v9

    iget v9, p1, Lq0/a;->a:I

    invoke-virtual {p0, v10, v9}, Lq0/b;->k(II)I

    move-result v9

    iget v10, p1, Lq0/a;->a:I

    if-eq v10, v5, :cond_3

    if-eq v10, v6, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v11, v1, 0x1

    if-ne v9, v11, :cond_4

    goto :goto_2

    :cond_3
    if-ne v9, v1, :cond_4

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_4
    :goto_3
    invoke-virtual {p0, v10, v1, v8}, Lq0/b;->g(III)Lq0/a;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lq0/b;->d(Lq0/a;I)V

    invoke-virtual {v0, v1}, Lb0/c;->c(Ljava/lang/Object;)Z

    iget v1, p1, Lq0/a;->a:I

    if-ne v1, v6, :cond_5

    add-int/2addr v3, v8

    :cond_5
    move v8, v2

    move v1, v9

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v0, p1}, Lb0/c;->c(Ljava/lang/Object;)Z

    if-lez v8, :cond_7

    iget p1, p1, Lq0/a;->a:I

    invoke-virtual {p0, p1, v1, v8}, Lq0/b;->g(III)Lq0/a;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lq0/b;->d(Lq0/a;I)V

    invoke-virtual {v0, p1}, Lb0/c;->c(Ljava/lang/Object;)Z

    :cond_7
    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "should not dispatch add or move for pre layout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Lq0/a;I)V
    .locals 3

    iget-object v0, p0, Lq0/b;->e:Ljava/lang/Object;

    check-cast v0, Lq0/z;

    invoke-virtual {v0, p1}, Lq0/z;->a(Lq0/a;)V

    iget v1, p1, Lq0/a;->a:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget p1, p1, Lq0/a;->c:I

    invoke-virtual {v0, p2, p1}, Lq0/z;->c(II)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "only remove and update ops can be dispatched in first pass"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget p1, p1, Lq0/a;->c:I

    iget-object v0, v0, Lq0/z;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->O(IIZ)V

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->f0:Z

    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lq0/t0;

    iget v0, p2, Lq0/t0;->c:I

    add-int/2addr v0, p1

    iput v0, p2, Lq0/t0;->c:I

    return-void
.end method

.method public e(II)I
    .locals 6

    iget-object v0, p0, Lq0/b;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge p2, v1, :cond_6

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq0/a;

    iget v3, v2, Lq0/a;->a:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    iget v3, v2, Lq0/a;->b:I

    if-ne v3, p1, :cond_0

    iget p1, v2, Lq0/a;->c:I

    goto :goto_1

    :cond_0
    if-ge v3, p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    iget v2, v2, Lq0/a;->c:I

    if-gt v2, p1, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    iget v4, v2, Lq0/a;->b:I

    if-gt v4, p1, :cond_5

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    iget v2, v2, Lq0/a;->c:I

    add-int/2addr v4, v2

    if-ge p1, v4, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    sub-int/2addr p1, v2

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    iget v2, v2, Lq0/a;->c:I

    add-int/2addr p1, v2

    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    return p1
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lq0/b;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public g(III)Lq0/a;
    .locals 1

    iget-object v0, p0, Lq0/b;->b:Ljava/lang/Object;

    check-cast v0, Lb0/c;

    invoke-virtual {v0}, Lb0/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq0/a;

    if-nez v0, :cond_0

    new-instance v0, Lq0/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput p1, v0, Lq0/a;->a:I

    iput p2, v0, Lq0/a;->b:I

    iput p3, v0, Lq0/a;->c:I

    return-object v0

    :cond_0
    iput p1, v0, Lq0/a;->a:I

    iput p2, v0, Lq0/a;->b:I

    iput p3, v0, Lq0/a;->c:I

    return-object v0
.end method

.method public h(Lq0/a;)V
    .locals 4

    iget-object v0, p0, Lq0/b;->e:Ljava/lang/Object;

    check-cast v0, Lq0/z;

    iget-object v1, p0, Lq0/b;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p1, Lq0/a;->a:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget v1, p1, Lq0/a;->b:I

    iget p1, p1, Lq0/a;->c:I

    invoke-virtual {v0, v1, p1}, Lq0/z;->e(II)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown update op type for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v1, p1, Lq0/a;->b:I

    iget p1, p1, Lq0/a;->c:I

    invoke-virtual {v0, v1, p1}, Lq0/z;->c(II)V

    return-void

    :cond_2
    iget v1, p1, Lq0/a;->b:I

    iget p1, p1, Lq0/a;->c:I

    iget-object v0, v0, Lq0/z;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->O(IIZ)V

    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->f0:Z

    return-void

    :cond_3
    iget v1, p1, Lq0/a;->b:I

    iget p1, p1, Lq0/a;->c:I

    invoke-virtual {v0, v1, p1}, Lq0/z;->d(II)V

    return-void
.end method

.method public i(Ljava/util/ArrayList;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq0/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lq0/b;->b:Ljava/lang/Object;

    check-cast v3, Lb0/c;

    invoke-virtual {v3, v2}, Lb0/c;->c(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public j()V
    .locals 4

    iget-object v0, p0, Lq0/b;->c:Ljava/lang/Object;

    check-cast v0, Lw0/q1;

    iget-object v1, p0, Lq0/b;->f:Ljava/lang/Object;

    check-cast v1, Landroidx/activity/d;

    invoke-virtual {v0, v1}, Lw0/q1;->c(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lq0/b;->e:Ljava/lang/Object;

    check-cast v0, Lw0/ah;

    invoke-virtual {v0}, Lw0/ah;->a()Ljava/lang/Object;

    iget-object v0, p0, Lq0/b;->d:Ljava/lang/Object;

    check-cast v0, Lw0/ah;

    invoke-virtual {v0}, Lw0/ah;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq0/b;->b:Ljava/lang/Object;

    check-cast v0, Le0/b;

    const-wide/16 v2, 0x21

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Le0/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public k(II)I
    .locals 10

    iget-object v0, p0, Lq0/b;->b:Ljava/lang/Object;

    check-cast v0, Lb0/c;

    iget-object v1, p0, Lq0/b;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    const/16 v4, 0x8

    if-ltz v2, :cond_d

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq0/a;

    iget v6, v5, Lq0/a;->a:I

    const/4 v7, 0x2

    if-ne v6, v4, :cond_8

    iget v4, v5, Lq0/a;->b:I

    iget v6, v5, Lq0/a;->c:I

    if-ge v4, v6, :cond_0

    move v8, v4

    move v9, v6

    goto :goto_1

    :cond_0
    move v9, v4

    move v8, v6

    :goto_1
    if-lt p1, v8, :cond_6

    if-gt p1, v9, :cond_6

    if-ne v8, v4, :cond_3

    if-ne p2, v3, :cond_1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lq0/a;->c:I

    goto :goto_2

    :cond_1
    if-ne p2, v7, :cond_2

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lq0/a;->c:I

    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_3
    if-ne p2, v3, :cond_4

    add-int/lit8 v4, v4, 0x1

    iput v4, v5, Lq0/a;->b:I

    goto :goto_3

    :cond_4
    if-ne p2, v7, :cond_5

    add-int/lit8 v4, v4, -0x1

    iput v4, v5, Lq0/a;->b:I

    :cond_5
    :goto_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_6
    if-ge p1, v4, :cond_c

    if-ne p2, v3, :cond_7

    add-int/lit8 v4, v4, 0x1

    iput v4, v5, Lq0/a;->b:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lq0/a;->c:I

    goto :goto_4

    :cond_7
    if-ne p2, v7, :cond_c

    add-int/lit8 v4, v4, -0x1

    iput v4, v5, Lq0/a;->b:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lq0/a;->c:I

    goto :goto_4

    :cond_8
    iget v4, v5, Lq0/a;->b:I

    if-gt v4, p1, :cond_a

    if-ne v6, v3, :cond_9

    iget v4, v5, Lq0/a;->c:I

    sub-int/2addr p1, v4

    goto :goto_4

    :cond_9
    if-ne v6, v7, :cond_c

    iget v4, v5, Lq0/a;->c:I

    add-int/2addr p1, v4

    goto :goto_4

    :cond_a
    if-ne p2, v3, :cond_b

    add-int/lit8 v4, v4, 0x1

    iput v4, v5, Lq0/a;->b:I

    goto :goto_4

    :cond_b
    if-ne p2, v7, :cond_c

    add-int/lit8 v4, v4, -0x1

    iput v4, v5, Lq0/a;->b:I

    :cond_c
    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v3

    :goto_5
    if-ltz p2, :cond_11

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq0/a;

    iget v3, v2, Lq0/a;->a:I

    if-ne v3, v4, :cond_f

    iget v3, v2, Lq0/a;->c:I

    iget v5, v2, Lq0/a;->b:I

    if-eq v3, v5, :cond_e

    if-gez v3, :cond_10

    :cond_e
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lb0/c;->c(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    iget v3, v2, Lq0/a;->c:I

    if-gtz v3, :cond_10

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lb0/c;->c(Ljava/lang/Object;)Z

    :cond_10
    :goto_6
    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    :cond_11
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lq0/b;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lq0/b;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FontRequest {mProviderAuthority: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lq0/b;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mProviderPackage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lq0/b;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mQuery: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lq0/b;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mCertificates:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    const-string v4, " ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move v5, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    const-string v6, " \""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-static {v6, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    const-string v4, " ]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "}mCertificatesArray: 0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
