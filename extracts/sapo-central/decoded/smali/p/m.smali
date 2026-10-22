.class public final Lp/m;
.super Lp/o;
.source "SourceFile"


# instance fields
.field public k:Lp/f;

.field public l:Lp/a;


# virtual methods
.method public final a(Lp/d;)V
    .locals 10

    iget p1, p0, Lp/o;->j:I

    invoke-static {p1}, Ln/g;->b(I)I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_e

    iget-object p1, p0, Lp/o;->e:Lp/g;

    iget-boolean v2, p1, Lp/f;->c:Z

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    iget-boolean v2, p1, Lp/f;->j:Z

    if-nez v2, :cond_5

    iget v2, p0, Lp/o;->d:I

    if-ne v2, v0, :cond_5

    iget-object v2, p0, Lp/o;->b:Lo/d;

    iget v5, v2, Lo/d;->m:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    if-eq v5, v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v5, v2, Lo/d;->d:Lp/k;

    iget-object v5, v5, Lp/o;->e:Lp/g;

    iget-boolean v6, v5, Lp/f;->j:Z

    if-eqz v6, :cond_5

    iget v6, v2, Lo/d;->Q:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    if-eqz v6, :cond_2

    if-eq v6, v1, :cond_1

    move v2, v4

    goto :goto_2

    :cond_1
    iget v5, v5, Lp/f;->g:I

    int-to-float v5, v5

    iget v2, v2, Lo/d;->P:F

    :goto_0
    div-float/2addr v5, v2

    :goto_1
    add-float/2addr v5, v3

    float-to-int v2, v5

    goto :goto_2

    :cond_2
    iget v5, v5, Lp/f;->g:I

    int-to-float v5, v5

    iget v2, v2, Lo/d;->P:F

    mul-float/2addr v5, v2

    goto :goto_1

    :cond_3
    iget v5, v5, Lp/f;->g:I

    int-to-float v5, v5

    iget v2, v2, Lo/d;->P:F

    goto :goto_0

    :goto_2
    invoke-virtual {p1, v2}, Lp/g;->d(I)V

    goto :goto_3

    :cond_4
    iget-object v5, v2, Lo/d;->M:Lo/d;

    if-eqz v5, :cond_5

    iget-object v5, v5, Lo/d;->e:Lp/m;

    iget-object v5, v5, Lp/o;->e:Lp/g;

    iget-boolean v6, v5, Lp/f;->j:Z

    if-eqz v6, :cond_5

    iget v2, v2, Lo/d;->t:F

    iget v5, v5, Lp/f;->g:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v5, v3

    float-to-int v2, v5

    invoke-virtual {p1, v2}, Lp/g;->d(I)V

    :cond_5
    :goto_3
    iget-object v2, p0, Lp/o;->h:Lp/f;

    iget-boolean v5, v2, Lp/f;->c:Z

    iget-object v6, v2, Lp/f;->l:Ljava/util/ArrayList;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lp/o;->i:Lp/f;

    iget-boolean v7, v5, Lp/f;->c:Z

    iget-object v8, v5, Lp/f;->l:Ljava/util/ArrayList;

    if-nez v7, :cond_6

    goto/16 :goto_6

    :cond_6
    iget-boolean v7, v2, Lp/f;->j:Z

    if-eqz v7, :cond_7

    iget-boolean v7, v5, Lp/f;->j:Z

    if-eqz v7, :cond_7

    iget-boolean v7, p1, Lp/f;->j:Z

    if-eqz v7, :cond_7

    goto/16 :goto_6

    :cond_7
    iget-boolean v7, p1, Lp/f;->j:Z

    if-nez v7, :cond_8

    iget v7, p0, Lp/o;->d:I

    if-ne v7, v0, :cond_8

    iget-object v7, p0, Lp/o;->b:Lo/d;

    iget v9, v7, Lo/d;->l:I

    if-nez v9, :cond_8

    invoke-virtual {v7}, Lo/d;->s()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/f;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp/f;

    iget v0, v0, Lp/f;->g:I

    iget v3, v2, Lp/f;->f:I

    add-int/2addr v0, v3

    iget v1, v1, Lp/f;->g:I

    iget v3, v5, Lp/f;->f:I

    add-int/2addr v1, v3

    sub-int v3, v1, v0

    invoke-virtual {v2, v0}, Lp/f;->d(I)V

    invoke-virtual {v5, v1}, Lp/f;->d(I)V

    invoke-virtual {p1, v3}, Lp/g;->d(I)V

    return-void

    :cond_8
    iget-boolean v7, p1, Lp/f;->j:Z

    if-nez v7, :cond_a

    iget v7, p0, Lp/o;->d:I

    if-ne v7, v0, :cond_a

    iget v0, p0, Lp/o;->a:I

    if-ne v0, v1, :cond_a

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/f;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp/f;

    iget v0, v0, Lp/f;->g:I

    iget v7, v2, Lp/f;->f:I

    add-int/2addr v0, v7

    iget v1, v1, Lp/f;->g:I

    iget v7, v5, Lp/f;->f:I

    add-int/2addr v1, v7

    sub-int/2addr v1, v0

    iget v0, p1, Lp/g;->m:I

    if-ge v1, v0, :cond_9

    invoke-virtual {p1, v1}, Lp/g;->d(I)V

    goto :goto_4

    :cond_9
    invoke-virtual {p1, v0}, Lp/g;->d(I)V

    :cond_a
    :goto_4
    iget-boolean v0, p1, Lp/f;->j:Z

    if-nez v0, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/f;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp/f;

    iget v4, v0, Lp/f;->g:I

    iget v6, v2, Lp/f;->f:I

    add-int/2addr v6, v4

    iget v7, v1, Lp/f;->g:I

    iget v8, v5, Lp/f;->f:I

    add-int/2addr v8, v7

    iget-object v9, p0, Lp/o;->b:Lo/d;

    iget v9, v9, Lo/d;->X:F

    if-ne v0, v1, :cond_c

    move v9, v3

    goto :goto_5

    :cond_c
    move v4, v6

    move v7, v8

    :goto_5
    sub-int/2addr v7, v4

    iget v0, p1, Lp/f;->g:I

    sub-int/2addr v7, v0

    int-to-float v0, v4

    add-float/2addr v0, v3

    int-to-float v1, v7

    mul-float/2addr v1, v9

    add-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {v2, v0}, Lp/f;->d(I)V

    iget v0, v2, Lp/f;->g:I

    iget p1, p1, Lp/f;->g:I

    add-int/2addr v0, p1

    invoke-virtual {v5, v0}, Lp/f;->d(I)V

    :cond_d
    :goto_6
    return-void

    :cond_e
    iget-object p1, p0, Lp/o;->b:Lo/d;

    iget-object v0, p1, Lo/d;->C:Lo/c;

    iget-object p1, p1, Lo/d;->E:Lo/c;

    invoke-virtual {p0, v0, p1, v1}, Lp/o;->l(Lo/c;Lo/c;I)V

    return-void
.end method

.method public final d()V
    .locals 15

    iget-object v0, p0, Lp/m;->k:Lp/f;

    iget-object v1, p0, Lp/o;->b:Lo/d;

    iget-boolean v2, v1, Lo/d;->a:Z

    iget-object v3, p0, Lp/o;->e:Lp/g;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lo/d;->i()I

    move-result v1

    invoke-virtual {v3, v1}, Lp/g;->d(I)V

    :cond_0
    iget-boolean v1, v3, Lp/f;->j:Z

    iget-object v2, v3, Lp/f;->k:Ljava/util/ArrayList;

    iget-object v4, v3, Lp/f;->l:Ljava/util/ArrayList;

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x3

    iget-object v8, p0, Lp/o;->i:Lp/f;

    iget-object v9, p0, Lp/o;->h:Lp/f;

    if-nez v1, :cond_3

    iget-object v1, p0, Lp/o;->b:Lo/d;

    iget-object v10, v1, Lo/d;->i0:[I

    aget v10, v10, v6

    iput v10, p0, Lp/o;->d:I

    iget-boolean v1, v1, Lo/d;->y:Z

    if-eqz v1, :cond_1

    new-instance v1, Lp/a;

    invoke-direct {v1, p0}, Lp/g;-><init>(Lp/o;)V

    iput-object v1, p0, Lp/m;->l:Lp/a;

    :cond_1
    iget v1, p0, Lp/o;->d:I

    if-eq v1, v7, :cond_4

    if-ne v1, v5, :cond_2

    iget-object v10, p0, Lp/o;->b:Lo/d;

    iget-object v10, v10, Lo/d;->M:Lo/d;

    if-eqz v10, :cond_2

    iget-object v11, v10, Lo/d;->i0:[I

    aget v11, v11, v6

    if-ne v11, v6, :cond_2

    invoke-virtual {v10}, Lo/d;->i()I

    move-result v0

    iget-object v1, p0, Lp/o;->b:Lo/d;

    iget-object v1, v1, Lo/d;->C:Lo/c;

    invoke-virtual {v1}, Lo/c;->d()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lp/o;->b:Lo/d;

    iget-object v1, v1, Lo/d;->E:Lo/c;

    invoke-virtual {v1}, Lo/c;->d()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, v10, Lo/d;->e:Lp/m;

    iget-object v1, v1, Lp/o;->h:Lp/f;

    iget-object v2, p0, Lp/o;->b:Lo/d;

    iget-object v2, v2, Lo/d;->C:Lo/c;

    invoke-virtual {v2}, Lo/c;->d()I

    move-result v2

    invoke-static {v9, v1, v2}, Lp/o;->b(Lp/f;Lp/f;I)V

    iget-object v1, v10, Lo/d;->e:Lp/m;

    iget-object v1, v1, Lp/o;->i:Lp/f;

    iget-object v2, p0, Lp/o;->b:Lo/d;

    iget-object v2, v2, Lo/d;->E:Lo/c;

    invoke-virtual {v2}, Lo/c;->d()I

    move-result v2

    neg-int v2, v2

    invoke-static {v8, v1, v2}, Lp/o;->b(Lp/f;Lp/f;I)V

    invoke-virtual {v3, v0}, Lp/g;->d(I)V

    return-void

    :cond_2
    if-ne v1, v6, :cond_4

    iget-object v1, p0, Lp/o;->b:Lo/d;

    invoke-virtual {v1}, Lo/d;->i()I

    move-result v1

    invoke-virtual {v3, v1}, Lp/g;->d(I)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lp/o;->d:I

    if-ne v1, v5, :cond_4

    iget-object v1, p0, Lp/o;->b:Lo/d;

    iget-object v10, v1, Lo/d;->M:Lo/d;

    if-eqz v10, :cond_4

    iget-object v11, v10, Lo/d;->i0:[I

    aget v11, v11, v6

    if-ne v11, v6, :cond_4

    iget-object v0, v10, Lo/d;->e:Lp/m;

    iget-object v0, v0, Lp/o;->h:Lp/f;

    iget-object v1, v1, Lo/d;->C:Lo/c;

    invoke-virtual {v1}, Lo/c;->d()I

    move-result v1

    invoke-static {v9, v0, v1}, Lp/o;->b(Lp/f;Lp/f;I)V

    iget-object v0, v10, Lo/d;->e:Lp/m;

    iget-object v0, v0, Lp/o;->i:Lp/f;

    iget-object v1, p0, Lp/o;->b:Lo/d;

    iget-object v1, v1, Lo/d;->E:Lo/c;

    invoke-virtual {v1}, Lo/c;->d()I

    move-result v1

    neg-int v1, v1

    invoke-static {v8, v0, v1}, Lp/o;->b(Lp/f;Lp/f;I)V

    return-void

    :cond_4
    :goto_0
    iget-boolean v1, v3, Lp/f;->j:Z

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-eqz v1, :cond_d

    iget-object v12, p0, Lp/o;->b:Lo/d;

    iget-boolean v13, v12, Lo/d;->a:Z

    if-eqz v13, :cond_d

    iget-object v1, v12, Lo/d;->J:[Lo/c;

    aget-object v2, v1, v11

    iget-object v4, v2, Lo/c;->f:Lo/c;

    if-eqz v4, :cond_8

    aget-object v13, v1, v7

    iget-object v13, v13, Lo/c;->f:Lo/c;

    if-eqz v13, :cond_8

    invoke-virtual {v12}, Lo/d;->s()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lp/o;->b:Lo/d;

    iget-object v1, v1, Lo/d;->J:[Lo/c;

    aget-object v1, v1, v11

    invoke-virtual {v1}, Lo/c;->d()I

    move-result v1

    iput v1, v9, Lp/f;->f:I

    iget-object v1, p0, Lp/o;->b:Lo/d;

    iget-object v1, v1, Lo/d;->J:[Lo/c;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lo/c;->d()I

    move-result v1

    neg-int v1, v1

    iput v1, v8, Lp/f;->f:I

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lp/o;->b:Lo/d;

    iget-object v1, v1, Lo/d;->J:[Lo/c;

    aget-object v1, v1, v11

    invoke-static {v1}, Lp/o;->h(Lo/c;)Lp/f;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v2, p0, Lp/o;->b:Lo/d;

    iget-object v2, v2, Lo/d;->J:[Lo/c;

    aget-object v2, v2, v11

    invoke-virtual {v2}, Lo/c;->d()I

    move-result v2

    invoke-static {v9, v1, v2}, Lp/o;->b(Lp/f;Lp/f;I)V

    :cond_6
    iget-object v1, p0, Lp/o;->b:Lo/d;

    iget-object v1, v1, Lo/d;->J:[Lo/c;

    aget-object v1, v1, v7

    invoke-static {v1}, Lp/o;->h(Lo/c;)Lp/f;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v2, p0, Lp/o;->b:Lo/d;

    iget-object v2, v2, Lo/d;->J:[Lo/c;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lo/c;->d()I

    move-result v2

    neg-int v2, v2

    invoke-static {v8, v1, v2}, Lp/o;->b(Lp/f;Lp/f;I)V

    :cond_7
    iput-boolean v6, v9, Lp/f;->b:Z

    iput-boolean v6, v8, Lp/f;->b:Z

    :goto_1
    iget-object v1, p0, Lp/o;->b:Lo/d;

    iget-boolean v2, v1, Lo/d;->y:Z

    if-eqz v2, :cond_1c

    iget v1, v1, Lo/d;->T:I

    invoke-static {v0, v9, v1}, Lp/o;->b(Lp/f;Lp/f;I)V

    return-void

    :cond_8
    if-eqz v4, :cond_9

    invoke-static {v2}, Lp/o;->h(Lo/c;)Lp/f;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget-object v2, p0, Lp/o;->b:Lo/d;

    iget-object v2, v2, Lo/d;->J:[Lo/c;

    aget-object v2, v2, v11

    invoke-virtual {v2}, Lo/c;->d()I

    move-result v2

    invoke-static {v9, v1, v2}, Lp/o;->b(Lp/f;Lp/f;I)V

    iget v1, v3, Lp/f;->g:I

    invoke-static {v8, v9, v1}, Lp/o;->b(Lp/f;Lp/f;I)V

    iget-object v1, p0, Lp/o;->b:Lo/d;

    iget-boolean v2, v1, Lo/d;->y:Z

    if-eqz v2, :cond_1c

    iget v1, v1, Lo/d;->T:I

    invoke-static {v0, v9, v1}, Lp/o;->b(Lp/f;Lp/f;I)V

    return-void

    :cond_9
    aget-object v2, v1, v7

    iget-object v4, v2, Lo/c;->f:Lo/c;

    if-eqz v4, :cond_b

    invoke-static {v2}, Lp/o;->h(Lo/c;)Lp/f;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v2, p0, Lp/o;->b:Lo/d;

    iget-object v2, v2, Lo/d;->J:[Lo/c;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lo/c;->d()I

    move-result v2

    neg-int v2, v2

    invoke-static {v8, v1, v2}, Lp/o;->b(Lp/f;Lp/f;I)V

    iget v1, v3, Lp/f;->g:I

    neg-int v1, v1

    invoke-static {v9, v8, v1}, Lp/o;->b(Lp/f;Lp/f;I)V

    :cond_a
    iget-object v1, p0, Lp/o;->b:Lo/d;

    iget-boolean v2, v1, Lo/d;->y:Z

    if-eqz v2, :cond_1c

    iget v1, v1, Lo/d;->T:I

    invoke-static {v0, v9, v1}, Lp/o;->b(Lp/f;Lp/f;I)V

    return-void

    :cond_b
    aget-object v1, v1, v5

    iget-object v2, v1, Lo/c;->f:Lo/c;

    if-eqz v2, :cond_c

    invoke-static {v1}, Lp/o;->h(Lo/c;)Lp/f;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-static {v0, v1, v10}, Lp/o;->b(Lp/f;Lp/f;I)V

    iget-object v1, p0, Lp/o;->b:Lo/d;

    iget v1, v1, Lo/d;->T:I

    neg-int v1, v1

    invoke-static {v9, v0, v1}, Lp/o;->b(Lp/f;Lp/f;I)V

    iget v0, v3, Lp/f;->g:I

    invoke-static {v8, v9, v0}, Lp/o;->b(Lp/f;Lp/f;I)V

    return-void

    :cond_c
    instance-of v1, v12, Lo/a;

    if-nez v1, :cond_1c

    iget-object v1, v12, Lo/d;->M:Lo/d;

    if-eqz v1, :cond_1c

    const/4 v1, 0x7

    invoke-virtual {v12, v1}, Lo/d;->g(I)Lo/c;

    move-result-object v1

    iget-object v1, v1, Lo/c;->f:Lo/c;

    if-nez v1, :cond_1c

    iget-object v1, p0, Lp/o;->b:Lo/d;

    iget-object v2, v1, Lo/d;->M:Lo/d;

    iget-object v2, v2, Lo/d;->e:Lp/m;

    iget-object v2, v2, Lp/o;->h:Lp/f;

    invoke-virtual {v1}, Lo/d;->n()I

    move-result v1

    invoke-static {v9, v2, v1}, Lp/o;->b(Lp/f;Lp/f;I)V

    iget v1, v3, Lp/f;->g:I

    invoke-static {v8, v9, v1}, Lp/o;->b(Lp/f;Lp/f;I)V

    iget-object v1, p0, Lp/o;->b:Lo/d;

    iget-boolean v2, v1, Lo/d;->y:Z

    if-eqz v2, :cond_1c

    iget v1, v1, Lo/d;->T:I

    invoke-static {v0, v9, v1}, Lp/o;->b(Lp/f;Lp/f;I)V

    return-void

    :cond_d
    if-nez v1, :cond_12

    iget v1, p0, Lp/o;->d:I

    if-ne v1, v7, :cond_12

    iget-object v1, p0, Lp/o;->b:Lo/d;

    iget v12, v1, Lo/d;->m:I

    if-eq v12, v11, :cond_10

    if-eq v12, v7, :cond_e

    goto :goto_2

    :cond_e
    invoke-virtual {v1}, Lo/d;->s()Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lp/o;->b:Lo/d;

    iget v12, v1, Lo/d;->l:I

    if-ne v12, v7, :cond_f

    goto :goto_2

    :cond_f
    iget-object v1, v1, Lo/d;->d:Lp/k;

    iget-object v1, v1, Lp/o;->e:Lp/g;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lp/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v6, v3, Lp/f;->b:Z

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_10
    iget-object v1, v1, Lo/d;->M:Lo/d;

    if-nez v1, :cond_11

    goto :goto_2

    :cond_11
    iget-object v1, v1, Lo/d;->e:Lp/m;

    iget-object v1, v1, Lp/o;->e:Lp/g;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lp/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v6, v3, Lp/f;->b:Z

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_12
    invoke-virtual {v3, p0}, Lp/f;->b(Lp/o;)V

    :cond_13
    :goto_2
    iget-object v1, p0, Lp/o;->b:Lo/d;

    iget-object v2, v1, Lo/d;->J:[Lo/c;

    aget-object v12, v2, v11

    iget-object v13, v12, Lo/c;->f:Lo/c;

    if-eqz v13, :cond_15

    aget-object v14, v2, v7

    iget-object v14, v14, Lo/c;->f:Lo/c;

    if-eqz v14, :cond_15

    invoke-virtual {v1}, Lo/d;->s()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lp/o;->b:Lo/d;

    iget-object v1, v1, Lo/d;->J:[Lo/c;

    aget-object v1, v1, v11

    invoke-virtual {v1}, Lo/c;->d()I

    move-result v1

    iput v1, v9, Lp/f;->f:I

    iget-object v1, p0, Lp/o;->b:Lo/d;

    iget-object v1, v1, Lo/d;->J:[Lo/c;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lo/c;->d()I

    move-result v1

    neg-int v1, v1

    iput v1, v8, Lp/f;->f:I

    goto :goto_3

    :cond_14
    iget-object v1, p0, Lp/o;->b:Lo/d;

    iget-object v1, v1, Lo/d;->J:[Lo/c;

    aget-object v1, v1, v11

    invoke-static {v1}, Lp/o;->h(Lo/c;)Lp/f;

    move-result-object v1

    iget-object v2, p0, Lp/o;->b:Lo/d;

    iget-object v2, v2, Lo/d;->J:[Lo/c;

    aget-object v2, v2, v7

    invoke-static {v2}, Lp/o;->h(Lo/c;)Lp/f;

    move-result-object v2

    invoke-virtual {v1, p0}, Lp/f;->b(Lp/o;)V

    invoke-virtual {v2, p0}, Lp/f;->b(Lp/o;)V

    iput v5, p0, Lp/o;->j:I

    :goto_3
    iget-object v1, p0, Lp/o;->b:Lo/d;

    iget-boolean v1, v1, Lo/d;->y:Z

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lp/m;->l:Lp/a;

    invoke-virtual {p0, v0, v9, v6, v1}, Lp/o;->c(Lp/f;Lp/f;ILp/g;)V

    goto/16 :goto_4

    :cond_15
    const/4 v14, 0x0

    if-eqz v13, :cond_17

    invoke-static {v12}, Lp/o;->h(Lo/c;)Lp/f;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-object v2, p0, Lp/o;->b:Lo/d;

    iget-object v2, v2, Lo/d;->J:[Lo/c;

    aget-object v2, v2, v11

    invoke-virtual {v2}, Lo/c;->d()I

    move-result v2

    invoke-static {v9, v1, v2}, Lp/o;->b(Lp/f;Lp/f;I)V

    invoke-virtual {p0, v8, v9, v6, v3}, Lp/o;->c(Lp/f;Lp/f;ILp/g;)V

    iget-object v1, p0, Lp/o;->b:Lo/d;

    iget-boolean v1, v1, Lo/d;->y:Z

    if-eqz v1, :cond_16

    iget-object v1, p0, Lp/m;->l:Lp/a;

    invoke-virtual {p0, v0, v9, v6, v1}, Lp/o;->c(Lp/f;Lp/f;ILp/g;)V

    :cond_16
    iget v0, p0, Lp/o;->d:I

    if-ne v0, v7, :cond_1b

    iget-object v0, p0, Lp/o;->b:Lo/d;

    iget v1, v0, Lo/d;->P:F

    cmpl-float v1, v1, v14

    if-lez v1, :cond_1b

    iget-object v0, v0, Lo/d;->d:Lp/k;

    iget v1, v0, Lp/o;->d:I

    if-ne v1, v7, :cond_1b

    iget-object v0, v0, Lp/o;->e:Lp/g;

    iget-object v0, v0, Lp/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lp/o;->b:Lo/d;

    iget-object v0, v0, Lo/d;->d:Lp/k;

    iget-object v0, v0, Lp/o;->e:Lp/g;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p0, v3, Lp/f;->a:Lp/o;

    goto/16 :goto_4

    :cond_17
    aget-object v11, v2, v7

    iget-object v12, v11, Lo/c;->f:Lo/c;

    const/4 v13, -0x1

    if-eqz v12, :cond_18

    invoke-static {v11}, Lp/o;->h(Lo/c;)Lp/f;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-object v2, p0, Lp/o;->b:Lo/d;

    iget-object v2, v2, Lo/d;->J:[Lo/c;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lo/c;->d()I

    move-result v2

    neg-int v2, v2

    invoke-static {v8, v1, v2}, Lp/o;->b(Lp/f;Lp/f;I)V

    invoke-virtual {p0, v9, v8, v13, v3}, Lp/o;->c(Lp/f;Lp/f;ILp/g;)V

    iget-object v1, p0, Lp/o;->b:Lo/d;

    iget-boolean v1, v1, Lo/d;->y:Z

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lp/m;->l:Lp/a;

    invoke-virtual {p0, v0, v9, v6, v1}, Lp/o;->c(Lp/f;Lp/f;ILp/g;)V

    goto :goto_4

    :cond_18
    aget-object v2, v2, v5

    iget-object v5, v2, Lo/c;->f:Lo/c;

    if-eqz v5, :cond_19

    invoke-static {v2}, Lp/o;->h(Lo/c;)Lp/f;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-static {v0, v1, v10}, Lp/o;->b(Lp/f;Lp/f;I)V

    iget-object v1, p0, Lp/m;->l:Lp/a;

    invoke-virtual {p0, v9, v0, v13, v1}, Lp/o;->c(Lp/f;Lp/f;ILp/g;)V

    invoke-virtual {p0, v8, v9, v6, v3}, Lp/o;->c(Lp/f;Lp/f;ILp/g;)V

    goto :goto_4

    :cond_19
    instance-of v2, v1, Lo/a;

    if-nez v2, :cond_1b

    iget-object v2, v1, Lo/d;->M:Lo/d;

    if-eqz v2, :cond_1b

    iget-object v2, v2, Lo/d;->e:Lp/m;

    iget-object v2, v2, Lp/o;->h:Lp/f;

    invoke-virtual {v1}, Lo/d;->n()I

    move-result v1

    invoke-static {v9, v2, v1}, Lp/o;->b(Lp/f;Lp/f;I)V

    invoke-virtual {p0, v8, v9, v6, v3}, Lp/o;->c(Lp/f;Lp/f;ILp/g;)V

    iget-object v1, p0, Lp/o;->b:Lo/d;

    iget-boolean v1, v1, Lo/d;->y:Z

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lp/m;->l:Lp/a;

    invoke-virtual {p0, v0, v9, v6, v1}, Lp/o;->c(Lp/f;Lp/f;ILp/g;)V

    :cond_1a
    iget v0, p0, Lp/o;->d:I

    if-ne v0, v7, :cond_1b

    iget-object v0, p0, Lp/o;->b:Lo/d;

    iget v1, v0, Lo/d;->P:F

    cmpl-float v1, v1, v14

    if-lez v1, :cond_1b

    iget-object v0, v0, Lo/d;->d:Lp/k;

    iget v1, v0, Lp/o;->d:I

    if-ne v1, v7, :cond_1b

    iget-object v0, v0, Lp/o;->e:Lp/g;

    iget-object v0, v0, Lp/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lp/o;->b:Lo/d;

    iget-object v0, v0, Lo/d;->d:Lp/k;

    iget-object v0, v0, Lp/o;->e:Lp/g;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p0, v3, Lp/f;->a:Lp/o;

    :cond_1b
    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1c

    iput-boolean v6, v3, Lp/f;->c:Z

    :cond_1c
    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lp/o;->h:Lp/f;

    iget-boolean v1, v0, Lp/f;->j:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lp/o;->b:Lo/d;

    iget v0, v0, Lp/f;->g:I

    iput v0, v1, Lo/d;->S:I

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lp/o;->c:Lp/l;

    iget-object v0, p0, Lp/o;->h:Lp/f;

    invoke-virtual {v0}, Lp/f;->c()V

    iget-object v0, p0, Lp/o;->i:Lp/f;

    invoke-virtual {v0}, Lp/f;->c()V

    iget-object v0, p0, Lp/m;->k:Lp/f;

    invoke-virtual {v0}, Lp/f;->c()V

    iget-object v0, p0, Lp/o;->e:Lp/g;

    invoke-virtual {v0}, Lp/f;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lp/o;->g:Z

    return-void
.end method

.method public final k()Z
    .locals 2

    iget v0, p0, Lp/o;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lp/o;->b:Lo/d;

    iget v0, v0, Lo/d;->m:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final m()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lp/o;->g:Z

    iget-object v1, p0, Lp/o;->h:Lp/f;

    invoke-virtual {v1}, Lp/f;->c()V

    iput-boolean v0, v1, Lp/f;->j:Z

    iget-object v1, p0, Lp/o;->i:Lp/f;

    invoke-virtual {v1}, Lp/f;->c()V

    iput-boolean v0, v1, Lp/f;->j:Z

    iget-object v1, p0, Lp/m;->k:Lp/f;

    invoke-virtual {v1}, Lp/f;->c()V

    iput-boolean v0, v1, Lp/f;->j:Z

    iget-object v1, p0, Lp/o;->e:Lp/g;

    iput-boolean v0, v1, Lp/f;->j:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VerticalRun "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lp/o;->b:Lo/d;

    iget-object v1, v1, Lo/d;->a0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
