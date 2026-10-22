.class public final Lo/e;
.super Lo/d;
.source "SourceFile"


# instance fields
.field public A0:Ljava/lang/ref/WeakReference;

.field public B0:Ljava/lang/ref/WeakReference;

.field public C0:Lp/b;

.field public j0:Ljava/util/ArrayList;

.field public k0:Landroidx/fragment/app/f;

.field public l0:Lp/e;

.field public m0:Lq/f;

.field public n0:Z

.field public o0:Ln/c;

.field public p0:I

.field public q0:I

.field public r0:I

.field public s0:I

.field public t0:[Lo/b;

.field public u0:[Lo/b;

.field public v0:I

.field public w0:Z

.field public x0:Z

.field public y0:Ljava/lang/ref/WeakReference;

.field public z0:Ljava/lang/ref/WeakReference;


# direct methods
.method public static L(Lo/d;Lq/f;Lp/b;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/d;->i0:[I

    iget-object v1, p0, Lo/d;->n:[I

    const/4 v2, 0x0

    aget v3, v0, v2

    iput v3, p2, Lp/b;->a:I

    const/4 v3, 0x1

    aget v0, v0, v3

    iput v0, p2, Lp/b;->b:I

    invoke-virtual {p0}, Lo/d;->l()I

    move-result v0

    iput v0, p2, Lp/b;->c:I

    invoke-virtual {p0}, Lo/d;->i()I

    move-result v0

    iput v0, p2, Lp/b;->d:I

    iput-boolean v2, p2, Lp/b;->i:Z

    iput v2, p2, Lp/b;->j:I

    iget v0, p2, Lp/b;->a:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget v5, p2, Lp/b;->b:I

    if-ne v5, v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    const/4 v5, 0x0

    if-eqz v0, :cond_3

    iget v6, p0, Lo/d;->P:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_3

    move v6, v3

    goto :goto_2

    :cond_3
    move v6, v2

    :goto_2
    if-eqz v4, :cond_4

    iget v7, p0, Lo/d;->P:F

    cmpl-float v5, v7, v5

    if-lez v5, :cond_4

    move v5, v3

    goto :goto_3

    :cond_4
    move v5, v2

    :goto_3
    const/4 v7, 0x2

    if-eqz v0, :cond_6

    invoke-virtual {p0, v2}, Lo/d;->o(I)Z

    move-result v8

    if-eqz v8, :cond_6

    iget v8, p0, Lo/d;->l:I

    if-nez v8, :cond_6

    if-nez v6, :cond_6

    iput v7, p2, Lp/b;->a:I

    if-eqz v4, :cond_5

    iget v0, p0, Lo/d;->m:I

    if-nez v0, :cond_5

    iput v3, p2, Lp/b;->a:I

    :cond_5
    move v0, v2

    :cond_6
    if-eqz v4, :cond_8

    invoke-virtual {p0, v3}, Lo/d;->o(I)Z

    move-result v8

    if-eqz v8, :cond_8

    iget v8, p0, Lo/d;->m:I

    if-nez v8, :cond_8

    if-nez v5, :cond_8

    iput v7, p2, Lp/b;->b:I

    if-eqz v0, :cond_7

    iget v4, p0, Lo/d;->l:I

    if-nez v4, :cond_7

    iput v3, p2, Lp/b;->b:I

    :cond_7
    move v4, v2

    :cond_8
    invoke-virtual {p0}, Lo/d;->u()Z

    move-result v8

    if-eqz v8, :cond_9

    iput v3, p2, Lp/b;->a:I

    move v0, v2

    :cond_9
    invoke-virtual {p0}, Lo/d;->v()Z

    move-result v8

    if-eqz v8, :cond_a

    iput v3, p2, Lp/b;->b:I

    move v4, v2

    :cond_a
    const/4 v8, -0x1

    const/4 v9, 0x4

    if-eqz v6, :cond_f

    aget v6, v1, v2

    if-ne v6, v9, :cond_b

    iput v3, p2, Lp/b;->a:I

    goto :goto_6

    :cond_b
    if-nez v4, :cond_f

    iget v4, p2, Lp/b;->b:I

    if-ne v4, v3, :cond_c

    iget v4, p2, Lp/b;->d:I

    goto :goto_4

    :cond_c
    iput v7, p2, Lp/b;->a:I

    invoke-virtual {p1, p0, p2}, Lq/f;->b(Lo/d;Lp/b;)V

    iget v4, p2, Lp/b;->f:I

    :goto_4
    iput v3, p2, Lp/b;->a:I

    iget v6, p0, Lo/d;->Q:I

    if-eqz v6, :cond_e

    if-ne v6, v8, :cond_d

    goto :goto_5

    :cond_d
    iget v6, p0, Lo/d;->P:F

    int-to-float v4, v4

    div-float/2addr v6, v4

    float-to-int v4, v6

    iput v4, p2, Lp/b;->c:I

    goto :goto_6

    :cond_e
    :goto_5
    iget v6, p0, Lo/d;->P:F

    int-to-float v4, v4

    mul-float/2addr v6, v4

    float-to-int v4, v6

    iput v4, p2, Lp/b;->c:I

    :cond_f
    :goto_6
    if-eqz v5, :cond_14

    aget v1, v1, v3

    if-ne v1, v9, :cond_10

    iput v3, p2, Lp/b;->b:I

    goto :goto_9

    :cond_10
    if-nez v0, :cond_14

    iget v0, p2, Lp/b;->a:I

    if-ne v0, v3, :cond_11

    iget v0, p2, Lp/b;->c:I

    goto :goto_7

    :cond_11
    iput v7, p2, Lp/b;->b:I

    invoke-virtual {p1, p0, p2}, Lq/f;->b(Lo/d;Lp/b;)V

    iget v0, p2, Lp/b;->e:I

    :goto_7
    iput v3, p2, Lp/b;->b:I

    iget v1, p0, Lo/d;->Q:I

    if-eqz v1, :cond_13

    if-ne v1, v8, :cond_12

    goto :goto_8

    :cond_12
    int-to-float v0, v0

    iget v1, p0, Lo/d;->P:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Lp/b;->d:I

    goto :goto_9

    :cond_13
    :goto_8
    int-to-float v0, v0

    iget v1, p0, Lo/d;->P:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Lp/b;->d:I

    :cond_14
    :goto_9
    invoke-virtual {p1, p0, p2}, Lq/f;->b(Lo/d;Lp/b;)V

    iget p1, p2, Lp/b;->e:I

    invoke-virtual {p0, p1}, Lo/d;->D(I)V

    iget p1, p2, Lp/b;->f:I

    invoke-virtual {p0, p1}, Lo/d;->A(I)V

    iget-boolean p1, p2, Lp/b;->h:Z

    iput-boolean p1, p0, Lo/d;->y:Z

    iget p1, p2, Lp/b;->g:I

    iput p1, p0, Lo/d;->T:I

    if-lez p1, :cond_15

    goto :goto_a

    :cond_15
    move v3, v2

    :goto_a
    iput-boolean v3, p0, Lo/d;->y:Z

    iput v2, p2, Lp/b;->j:I

    return-void
.end method


# virtual methods
.method public final E(ZZ)V
    .locals 3

    invoke-super {p0, p1, p2}, Lo/d;->E(ZZ)V

    iget-object v0, p0, Lo/e;->j0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lo/e;->j0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/d;

    invoke-virtual {v2, p1, p2}, Lo/d;->E(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final G(Lo/d;I)V
    .locals 5

    const/4 v0, 0x1

    if-nez p2, :cond_1

    iget p2, p0, Lo/e;->r0:I

    add-int/2addr p2, v0

    iget-object v1, p0, Lo/e;->u0:[Lo/b;

    array-length v2, v1

    if-lt p2, v2, :cond_0

    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lo/b;

    iput-object p2, p0, Lo/e;->u0:[Lo/b;

    :cond_0
    iget-object p2, p0, Lo/e;->u0:[Lo/b;

    iget v1, p0, Lo/e;->r0:I

    new-instance v2, Lo/b;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lo/e;->n0:Z

    invoke-direct {v2, p1, v3, v4}, Lo/b;-><init>(Lo/d;IZ)V

    aput-object v2, p2, v1

    add-int/2addr v1, v0

    iput v1, p0, Lo/e;->r0:I

    return-void

    :cond_1
    if-ne p2, v0, :cond_3

    iget p2, p0, Lo/e;->s0:I

    add-int/2addr p2, v0

    iget-object v1, p0, Lo/e;->t0:[Lo/b;

    array-length v2, v1

    if-lt p2, v2, :cond_2

    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lo/b;

    iput-object p2, p0, Lo/e;->t0:[Lo/b;

    :cond_2
    iget-object p2, p0, Lo/e;->t0:[Lo/b;

    iget v1, p0, Lo/e;->s0:I

    new-instance v2, Lo/b;

    iget-boolean v3, p0, Lo/e;->n0:Z

    invoke-direct {v2, p1, v0, v3}, Lo/b;-><init>(Lo/d;IZ)V

    aput-object v2, p2, v1

    add-int/2addr v1, v0

    iput v1, p0, Lo/e;->s0:I

    :cond_3
    return-void
.end method

.method public final H(Ln/c;)V
    .locals 12

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lo/e;->M(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lo/d;->b(Ln/c;Z)V

    iget-object v1, p0, Lo/e;->j0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    iget-object v6, p0, Lo/e;->j0:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/d;

    iget-object v7, v6, Lo/d;->L:[Z

    aput-boolean v2, v7, v2

    aput-boolean v2, v7, v5

    instance-of v6, v6, Lo/a;

    if-eqz v6, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-eqz v4, :cond_7

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_7

    iget-object v6, p0, Lo/e;->j0:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/d;

    instance-of v7, v6, Lo/a;

    if-eqz v7, :cond_6

    check-cast v6, Lo/a;

    move v7, v2

    :goto_2
    iget v8, v6, Lo/a;->k0:I

    if-ge v7, v8, :cond_6

    iget-object v8, v6, Lo/a;->j0:[Lo/d;

    aget-object v8, v8, v7

    iget v9, v6, Lo/a;->l0:I

    if-eqz v9, :cond_4

    if-ne v9, v5, :cond_2

    goto :goto_3

    :cond_2
    if-eq v9, v3, :cond_3

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    :cond_3
    iget-object v8, v8, Lo/d;->L:[Z

    aput-boolean v5, v8, v5

    goto :goto_4

    :cond_4
    :goto_3
    iget-object v8, v8, Lo/d;->L:[Z

    aput-boolean v5, v8, v2

    :cond_5
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    move v4, v2

    :goto_5
    if-ge v4, v1, :cond_9

    iget-object v6, p0, Lo/e;->j0:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/d;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v6, Lo/f;

    if-eqz v7, :cond_8

    invoke-virtual {v6, p1, v0}, Lo/d;->b(Ln/c;Z)V

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_9
    sget-boolean v4, Ln/c;->p:Z

    if-eqz v4, :cond_d

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    move v4, v2

    :goto_6
    if-ge v4, v1, :cond_b

    iget-object v6, p0, Lo/e;->j0:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/d;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v6, Lo/f;

    if-nez v7, :cond_a

    invoke-virtual {v9, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_b
    iget-object v1, p0, Lo/d;->i0:[I

    aget v1, v1, v2

    if-ne v1, v3, :cond_c

    move v10, v2

    goto :goto_7

    :cond_c
    move v10, v5

    :goto_7
    const/4 v11, 0x0

    move-object v7, p0

    move-object v6, p0

    move-object v8, p1

    invoke-virtual/range {v6 .. v11}, Lo/d;->a(Lo/e;Ln/c;Ljava/util/HashSet;IZ)V

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/d;

    invoke-static {p0, v8, v1}, Lo/g;->b(Lo/e;Ln/c;Lo/d;)V

    invoke-virtual {v1, v8, v0}, Lo/d;->b(Ln/c;Z)V

    goto :goto_8

    :cond_d
    move-object v6, p0

    move-object v8, p1

    move p1, v2

    :goto_9
    if-ge p1, v1, :cond_13

    iget-object v4, v6, Lo/e;->j0:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/d;

    instance-of v7, v4, Lo/e;

    if-eqz v7, :cond_11

    iget-object v7, v4, Lo/d;->i0:[I

    aget v9, v7, v2

    aget v7, v7, v5

    if-ne v9, v3, :cond_e

    invoke-virtual {v4, v5}, Lo/d;->B(I)V

    :cond_e
    if-ne v7, v3, :cond_f

    invoke-virtual {v4, v5}, Lo/d;->C(I)V

    :cond_f
    invoke-virtual {v4, v8, v0}, Lo/d;->b(Ln/c;Z)V

    if-ne v9, v3, :cond_10

    invoke-virtual {v4, v9}, Lo/d;->B(I)V

    :cond_10
    if-ne v7, v3, :cond_12

    invoke-virtual {v4, v7}, Lo/d;->C(I)V

    goto :goto_a

    :cond_11
    invoke-static {p0, v8, v4}, Lo/g;->b(Lo/e;Ln/c;Lo/d;)V

    instance-of v7, v4, Lo/f;

    if-nez v7, :cond_12

    invoke-virtual {v4, v8, v0}, Lo/d;->b(Ln/c;Z)V

    :cond_12
    :goto_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_13
    iget p1, v6, Lo/e;->r0:I

    const/4 v0, 0x0

    if-lez p1, :cond_14

    invoke-static {p0, v8, v0, v2}, Lo/g;->a(Lo/e;Ln/c;Ljava/util/ArrayList;I)V

    :cond_14
    iget p1, v6, Lo/e;->s0:I

    if-lez p1, :cond_15

    invoke-static {p0, v8, v0, v5}, Lo/g;->a(Lo/e;Ln/c;Ljava/util/ArrayList;I)V

    :cond_15
    return-void
.end method

.method public final I(Lo/c;)V
    .locals 2

    iget-object v0, p0, Lo/e;->y0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lo/c;->c()I

    move-result v0

    iget-object v1, p0, Lo/e;->y0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/c;

    invoke-virtual {v1}, Lo/c;->c()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/e;->y0:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final J(IZ)Z
    .locals 17

    move/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v2, v1, Lo/e;->l0:Lp/e;

    iget-object v3, v2, Lp/e;->e:Ljava/util/ArrayList;

    iget-object v4, v2, Lp/e;->a:Lo/e;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lo/d;->h(I)I

    move-result v6

    iget-object v7, v4, Lo/d;->i0:[I

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lo/d;->h(I)I

    move-result v9

    invoke-virtual {v4}, Lo/d;->m()I

    move-result v10

    invoke-virtual {v4}, Lo/d;->n()I

    move-result v11

    if-eqz p2, :cond_4

    const/4 v12, 0x2

    if-eq v6, v12, :cond_0

    if-ne v9, v12, :cond_4

    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v14, v5

    :goto_0
    if-ge v14, v13, :cond_2

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    check-cast v15, Lp/o;

    iget v5, v15, Lp/o;->f:I

    if-ne v5, v0, :cond_1

    invoke-virtual {v15}, Lp/o;->k()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    move/from16 v5, p2

    :goto_1
    if-nez v0, :cond_3

    if-eqz v5, :cond_4

    if-ne v6, v12, :cond_4

    invoke-virtual {v4, v8}, Lo/d;->B(I)V

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lp/e;->d(Lo/e;I)I

    move-result v12

    invoke-virtual {v4, v12}, Lo/d;->D(I)V

    iget-object v5, v4, Lo/d;->d:Lp/k;

    iget-object v5, v5, Lp/o;->e:Lp/g;

    invoke-virtual {v4}, Lo/d;->l()I

    move-result v12

    invoke-virtual {v5, v12}, Lp/g;->d(I)V

    goto :goto_2

    :cond_3
    if-eqz v5, :cond_4

    if-ne v9, v12, :cond_4

    invoke-virtual {v4, v8}, Lo/d;->C(I)V

    invoke-virtual {v2, v4, v8}, Lp/e;->d(Lo/e;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lo/d;->A(I)V

    iget-object v5, v4, Lo/d;->e:Lp/m;

    iget-object v5, v5, Lp/o;->e:Lp/g;

    invoke-virtual {v4}, Lo/d;->i()I

    move-result v12

    invoke-virtual {v5, v12}, Lp/g;->d(I)V

    :cond_4
    :goto_2
    const/4 v5, 0x4

    if-nez v0, :cond_6

    const/16 v16, 0x0

    aget v7, v7, v16

    if-eq v7, v8, :cond_5

    if-ne v7, v5, :cond_7

    :cond_5
    invoke-virtual {v4}, Lo/d;->l()I

    move-result v5

    add-int/2addr v5, v10

    iget-object v7, v4, Lo/d;->d:Lp/k;

    iget-object v7, v7, Lp/o;->i:Lp/f;

    invoke-virtual {v7, v5}, Lp/f;->d(I)V

    iget-object v7, v4, Lo/d;->d:Lp/k;

    iget-object v7, v7, Lp/o;->e:Lp/g;

    sub-int/2addr v5, v10

    invoke-virtual {v7, v5}, Lp/g;->d(I)V

    :goto_3
    move v5, v8

    goto :goto_5

    :cond_6
    const/16 v16, 0x0

    aget v7, v7, v8

    if-eq v7, v8, :cond_8

    if-ne v7, v5, :cond_7

    goto :goto_4

    :cond_7
    move/from16 v5, v16

    goto :goto_5

    :cond_8
    :goto_4
    invoke-virtual {v4}, Lo/d;->i()I

    move-result v5

    add-int/2addr v5, v11

    iget-object v7, v4, Lo/d;->e:Lp/m;

    iget-object v7, v7, Lp/o;->i:Lp/f;

    invoke-virtual {v7, v5}, Lp/f;->d(I)V

    iget-object v7, v4, Lo/d;->e:Lp/m;

    iget-object v7, v7, Lp/o;->e:Lp/g;

    sub-int/2addr v5, v11

    invoke-virtual {v7, v5}, Lp/g;->d(I)V

    goto :goto_3

    :goto_5
    invoke-virtual {v2}, Lp/e;->g()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v7, v16

    :goto_6
    if-ge v7, v2, :cond_b

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v7, v7, 0x1

    check-cast v10, Lp/o;

    iget v11, v10, Lp/o;->f:I

    if-eq v11, v0, :cond_9

    goto :goto_6

    :cond_9
    iget-object v11, v10, Lp/o;->b:Lo/d;

    if-ne v11, v4, :cond_a

    iget-boolean v11, v10, Lp/o;->g:Z

    if-nez v11, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v10}, Lp/o;->e()V

    goto :goto_6

    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v7, v16

    :cond_c
    :goto_7
    if-ge v7, v2, :cond_11

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v7, v7, 0x1

    check-cast v10, Lp/o;

    iget v11, v10, Lp/o;->f:I

    if-eq v11, v0, :cond_d

    goto :goto_7

    :cond_d
    if-nez v5, :cond_e

    iget-object v11, v10, Lp/o;->b:Lo/d;

    if-ne v11, v4, :cond_e

    goto :goto_7

    :cond_e
    iget-object v11, v10, Lp/o;->h:Lp/f;

    iget-boolean v11, v11, Lp/f;->j:Z

    if-nez v11, :cond_f

    :goto_8
    move/from16 v5, v16

    goto :goto_9

    :cond_f
    iget-object v11, v10, Lp/o;->i:Lp/f;

    iget-boolean v11, v11, Lp/f;->j:Z

    if-nez v11, :cond_10

    goto :goto_8

    :cond_10
    instance-of v11, v10, Lp/c;

    if-nez v11, :cond_c

    iget-object v10, v10, Lp/o;->e:Lp/g;

    iget-boolean v10, v10, Lp/f;->j:Z

    if-nez v10, :cond_c

    goto :goto_8

    :cond_11
    move v5, v8

    :goto_9
    invoke-virtual {v4, v6}, Lo/d;->B(I)V

    invoke-virtual {v4, v9}, Lo/d;->C(I)V

    return v5
.end method

.method public final K()V
    .locals 31

    move-object/from16 v1, p0

    iget-object v2, v1, Lo/e;->o0:Ln/c;

    const/4 v3, 0x0

    iput v3, v1, Lo/d;->R:I

    iput v3, v1, Lo/d;->S:I

    iput-boolean v3, v1, Lo/e;->w0:Z

    iput-boolean v3, v1, Lo/e;->x0:Z

    iget-object v0, v1, Lo/e;->j0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1}, Lo/d;->l()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1}, Lo/d;->i()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, v1, Lo/d;->i0:[I

    const/4 v7, 0x1

    aget v8, v6, v7

    aget v9, v6, v3

    iget v10, v1, Lo/e;->v0:I

    invoke-static {v10, v7}, Lo/g;->c(II)Z

    move-result v10

    iget-object v12, v1, Lo/d;->C:Lo/c;

    iget-object v13, v1, Lo/d;->B:Lo/c;

    if-eqz v10, :cond_1f

    iget-object v10, v1, Lo/e;->m0:Lq/f;

    aget v14, v6, v3

    aget v15, v6, v7

    iput-boolean v3, v1, Lo/d;->h:Z

    iput-boolean v3, v1, Lo/d;->i:Z

    iget-object v11, v1, Lo/d;->K:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_0
    if-ge v3, v7, :cond_0

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v19, v3

    move-object/from16 v3, v18

    check-cast v3, Lo/c;

    move-object/from16 v18, v6

    const/4 v6, 0x0

    iput-boolean v6, v3, Lo/c;->c:Z

    iput v6, v3, Lo/c;->b:I

    add-int/lit8 v3, v19, 0x1

    move-object/from16 v6, v18

    goto :goto_0

    :cond_0
    move-object/from16 v18, v6

    const/4 v6, 0x0

    iget-object v3, v1, Lo/e;->j0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v11, v6

    :goto_1
    if-ge v11, v7, :cond_2

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v19, v11

    move-object/from16 v11, v17

    check-cast v11, Lo/d;

    iput-boolean v6, v11, Lo/d;->h:Z

    iput-boolean v6, v11, Lo/d;->i:Z

    iget-object v11, v11, Lo/d;->K:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v20, v5

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_1

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 v22, v5

    move-object/from16 v5, v21

    check-cast v5, Lo/c;

    move/from16 v21, v6

    const/4 v6, 0x0

    iput-boolean v6, v5, Lo/c;->c:Z

    iput v6, v5, Lo/c;->b:I

    add-int/lit8 v5, v22, 0x1

    move/from16 v6, v21

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    add-int/lit8 v11, v19, 0x1

    move/from16 v5, v20

    goto :goto_1

    :cond_2
    move/from16 v20, v5

    iget-boolean v5, v1, Lo/e;->n0:Z

    const/4 v11, 0x1

    if-ne v14, v11, :cond_3

    invoke-virtual {v1}, Lo/d;->l()I

    move-result v11

    invoke-virtual {v1, v6, v11}, Lo/d;->y(II)V

    goto :goto_3

    :cond_3
    invoke-virtual {v13, v6}, Lo/c;->i(I)V

    iput v6, v1, Lo/d;->R:I

    :goto_3
    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_4
    const/high16 v19, 0x3f000000    # 0.5f

    move/from16 v21, v6

    if-ge v11, v7, :cond_9

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v6, v22

    check-cast v6, Lo/d;

    move/from16 v22, v11

    instance-of v11, v6, Lo/f;

    if-eqz v11, :cond_8

    check-cast v6, Lo/f;

    iget v11, v6, Lo/f;->n0:I

    move/from16 v24, v14

    const/4 v14, 0x1

    if-ne v11, v14, :cond_7

    iget v11, v6, Lo/f;->k0:I

    const/4 v14, -0x1

    if-eq v11, v14, :cond_4

    invoke-virtual {v6, v11}, Lo/f;->G(I)V

    goto :goto_5

    :cond_4
    iget v11, v6, Lo/f;->l0:I

    if-eq v11, v14, :cond_5

    invoke-virtual {v1}, Lo/d;->u()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v1}, Lo/d;->l()I

    move-result v11

    iget v14, v6, Lo/f;->l0:I

    sub-int/2addr v11, v14

    invoke-virtual {v6, v11}, Lo/f;->G(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lo/d;->u()Z

    move-result v11

    if-eqz v11, :cond_6

    iget v11, v6, Lo/f;->j0:F

    invoke-virtual {v1}, Lo/d;->l()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v11, v14

    add-float v11, v11, v19

    float-to-int v11, v11

    invoke-virtual {v6, v11}, Lo/f;->G(I)V

    :cond_6
    :goto_5
    const/16 v21, 0x1

    :cond_7
    move/from16 v6, v21

    move/from16 v14, v24

    goto :goto_6

    :cond_8
    move/from16 v24, v14

    instance-of v11, v6, Lo/a;

    if-eqz v11, :cond_7

    check-cast v6, Lo/a;

    invoke-virtual {v6}, Lo/a;->I()I

    move-result v6

    if-nez v6, :cond_7

    move/from16 v6, v21

    const/4 v14, 0x1

    :goto_6
    add-int/lit8 v11, v22, 0x1

    goto :goto_4

    :cond_9
    move/from16 v24, v14

    if-eqz v21, :cond_c

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v7, :cond_c

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/d;

    instance-of v14, v11, Lo/f;

    if-eqz v14, :cond_a

    check-cast v11, Lo/f;

    iget v14, v11, Lo/f;->n0:I

    move/from16 v21, v6

    const/4 v6, 0x1

    if-ne v14, v6, :cond_b

    invoke-static {v11, v10, v5}, Lp/h;->c(Lo/d;Lq/f;Z)V

    goto :goto_8

    :cond_a
    move/from16 v21, v6

    :cond_b
    :goto_8
    add-int/lit8 v6, v21, 0x1

    goto :goto_7

    :cond_c
    invoke-static {v1, v10, v5}, Lp/h;->c(Lo/d;Lq/f;Z)V

    if-eqz v24, :cond_e

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v7, :cond_e

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/d;

    instance-of v14, v11, Lo/a;

    if-eqz v14, :cond_d

    check-cast v11, Lo/a;

    invoke-virtual {v11}, Lo/a;->I()I

    move-result v14

    if-nez v14, :cond_d

    invoke-virtual {v11}, Lo/a;->H()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-static {v11, v10, v5}, Lp/h;->c(Lo/d;Lq/f;Z)V

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_e
    const/4 v6, 0x1

    if-ne v15, v6, :cond_f

    invoke-virtual {v1}, Lo/d;->i()I

    move-result v6

    const/4 v11, 0x0

    invoke-virtual {v1, v11, v6}, Lo/d;->z(II)V

    goto :goto_a

    :cond_f
    const/4 v11, 0x0

    invoke-virtual {v12, v11}, Lo/c;->i(I)V

    iput v11, v1, Lo/d;->S:I

    :goto_a
    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_b
    if-ge v11, v7, :cond_16

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lo/d;

    move/from16 v21, v6

    instance-of v6, v15, Lo/f;

    if-eqz v6, :cond_15

    check-cast v15, Lo/f;

    iget v6, v15, Lo/f;->n0:I

    if-nez v6, :cond_13

    iget v6, v15, Lo/f;->k0:I

    const/4 v14, -0x1

    if-eq v6, v14, :cond_10

    invoke-virtual {v15, v6}, Lo/f;->G(I)V

    goto :goto_c

    :cond_10
    iget v6, v15, Lo/f;->l0:I

    if-eq v6, v14, :cond_11

    invoke-virtual {v1}, Lo/d;->v()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {v1}, Lo/d;->i()I

    move-result v6

    iget v14, v15, Lo/f;->l0:I

    sub-int/2addr v6, v14

    invoke-virtual {v15, v6}, Lo/f;->G(I)V

    goto :goto_c

    :cond_11
    invoke-virtual {v1}, Lo/d;->v()Z

    move-result v6

    if-eqz v6, :cond_12

    iget v6, v15, Lo/f;->j0:F

    invoke-virtual {v1}, Lo/d;->i()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v6, v14

    add-float v6, v6, v19

    float-to-int v6, v6

    invoke-virtual {v15, v6}, Lo/f;->G(I)V

    :cond_12
    :goto_c
    const/4 v14, 0x1

    :cond_13
    const/16 v23, -0x1

    :cond_14
    move/from16 v6, v21

    goto :goto_d

    :cond_15
    const/16 v23, -0x1

    instance-of v6, v15, Lo/a;

    if-eqz v6, :cond_14

    check-cast v15, Lo/a;

    invoke-virtual {v15}, Lo/a;->I()I

    move-result v6

    const/4 v15, 0x1

    if-ne v6, v15, :cond_14

    const/4 v6, 0x1

    :goto_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_16
    move/from16 v21, v6

    if-eqz v14, :cond_18

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v7, :cond_18

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/d;

    instance-of v14, v11, Lo/f;

    if-eqz v14, :cond_17

    check-cast v11, Lo/f;

    iget v14, v11, Lo/f;->n0:I

    if-nez v14, :cond_17

    invoke-static {v11, v10}, Lp/h;->i(Lo/d;Lq/f;)V

    :cond_17
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_18
    invoke-static {v1, v10}, Lp/h;->i(Lo/d;Lq/f;)V

    if-eqz v21, :cond_1a

    const/4 v6, 0x0

    :goto_f
    if-ge v6, v7, :cond_1a

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/d;

    instance-of v14, v11, Lo/a;

    if-eqz v14, :cond_19

    check-cast v11, Lo/a;

    invoke-virtual {v11}, Lo/a;->I()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_19

    invoke-virtual {v11}, Lo/a;->H()Z

    move-result v14

    if-eqz v14, :cond_19

    invoke-static {v11, v10}, Lp/h;->i(Lo/d;Lq/f;)V

    :cond_19
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_1a
    const/4 v6, 0x0

    :goto_10
    if-ge v6, v7, :cond_1c

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/d;

    invoke-virtual {v11}, Lo/d;->t()Z

    move-result v14

    if-eqz v14, :cond_1b

    invoke-static {v11}, Lp/h;->a(Lo/d;)Z

    move-result v14

    if-eqz v14, :cond_1b

    sget-object v14, Lp/h;->a:Lp/b;

    invoke-static {v11, v10, v14}, Lo/e;->L(Lo/d;Lq/f;Lp/b;)V

    invoke-static {v11, v10, v5}, Lp/h;->c(Lo/d;Lq/f;Z)V

    invoke-static {v11, v10}, Lp/h;->i(Lo/d;Lq/f;)V

    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_1c
    const/4 v3, 0x0

    :goto_11
    if-ge v3, v4, :cond_20

    iget-object v5, v1, Lo/e;->j0:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/d;

    invoke-virtual {v5}, Lo/d;->t()Z

    move-result v6

    if-eqz v6, :cond_1e

    instance-of v6, v5, Lo/f;

    if-nez v6, :cond_1e

    instance-of v6, v5, Lo/a;

    if-nez v6, :cond_1e

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lo/d;->h(I)I

    move-result v7

    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Lo/d;->h(I)I

    move-result v6

    const/4 v10, 0x3

    if-ne v7, v10, :cond_1d

    iget v7, v5, Lo/d;->l:I

    if-eq v7, v15, :cond_1d

    if-ne v6, v10, :cond_1d

    iget v6, v5, Lo/d;->m:I

    if-eq v6, v15, :cond_1d

    goto :goto_12

    :cond_1d
    new-instance v6, Lp/b;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iget-object v7, v1, Lo/e;->m0:Lq/f;

    invoke-static {v5, v7, v6}, Lo/e;->L(Lo/d;Lq/f;Lp/b;)V

    :cond_1e
    :goto_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_1f
    move/from16 v20, v5

    move-object/from16 v18, v6

    :cond_20
    const/4 v5, 0x2

    if-le v4, v5, :cond_21

    if-eq v9, v5, :cond_22

    if-ne v8, v5, :cond_21

    goto :goto_13

    :cond_21
    move/from16 v25, v4

    move v5, v8

    move v3, v9

    move-object/from16 v24, v12

    move-object/from16 v23, v13

    move/from16 v6, v20

    move v4, v0

    goto/16 :goto_34

    :cond_22
    :goto_13
    iget v7, v1, Lo/e;->v0:I

    const/16 v10, 0x400

    invoke-static {v7, v10}, Lo/g;->c(II)Z

    move-result v7

    if-eqz v7, :cond_21

    iget-object v7, v1, Lo/e;->m0:Lq/f;

    iget-object v10, v1, Lo/e;->j0:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v14, 0x0

    :goto_14
    if-ge v14, v11, :cond_24

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lo/d;

    const/16 v17, 0x0

    aget v3, v18, v17

    const/16 v16, 0x1

    aget v5, v18, v16

    iget-object v15, v15, Lo/d;->i0:[I

    aget v6, v15, v17

    aget v15, v15, v16

    invoke-static {v3, v5, v6, v15}, Lp/h;->h(IIII)Z

    move-result v3

    if-nez v3, :cond_23

    move/from16 v28, v0

    move/from16 v25, v4

    move/from16 v27, v8

    move/from16 v30, v9

    move-object/from16 v24, v12

    move-object/from16 v23, v13

    goto/16 :goto_2d

    :cond_23
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x2

    goto :goto_14

    :cond_24
    move-object/from16 v24, v12

    move-object/from16 v23, v13

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_15
    if-ge v3, v11, :cond_35

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move/from16 v26, v3

    move-object/from16 v3, v25

    check-cast v3, Lo/d;

    move/from16 v25, v4

    const/16 v17, 0x0

    aget v4, v18, v17

    move/from16 v27, v8

    const/16 v16, 0x1

    aget v8, v18, v16

    move/from16 v28, v0

    iget-object v0, v3, Lo/d;->i0:[I

    move-object/from16 v29, v0

    aget v0, v29, v17

    move/from16 v30, v9

    aget v9, v29, v16

    invoke-static {v4, v8, v0, v9}, Lp/h;->h(IIII)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, v1, Lo/e;->C0:Lp/b;

    invoke-static {v3, v7, v0}, Lo/e;->L(Lo/d;Lq/f;Lp/b;)V

    :cond_25
    instance-of v0, v3, Lo/f;

    if-eqz v0, :cond_29

    move-object v4, v3

    check-cast v4, Lo/f;

    iget v8, v4, Lo/f;->n0:I

    if-nez v8, :cond_27

    if-nez v14, :cond_26

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :cond_26
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    iget v8, v4, Lo/f;->n0:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_29

    if-nez v5, :cond_28

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_28
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    instance-of v4, v3, Lo/a;

    if-eqz v4, :cond_30

    instance-of v4, v3, Lo/a;

    if-eqz v4, :cond_2d

    move-object v4, v3

    check-cast v4, Lo/a;

    invoke-virtual {v4}, Lo/a;->I()I

    move-result v8

    if-nez v8, :cond_2b

    if-nez v6, :cond_2a

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_2a
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    invoke-virtual {v4}, Lo/a;->I()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_30

    if-nez v15, :cond_2c

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :cond_2c
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_2d
    move-object v4, v3

    check-cast v4, Lo/a;

    if-nez v6, :cond_2e

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_2e
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v15, :cond_2f

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :cond_2f
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    :goto_16
    iget-object v4, v3, Lo/d;->B:Lo/c;

    iget-object v4, v4, Lo/c;->f:Lo/c;

    if-nez v4, :cond_32

    iget-object v4, v3, Lo/d;->D:Lo/c;

    iget-object v4, v4, Lo/c;->f:Lo/c;

    if-nez v4, :cond_32

    if-nez v0, :cond_32

    instance-of v4, v3, Lo/a;

    if-nez v4, :cond_32

    if-nez v13, :cond_31

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :cond_31
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    iget-object v4, v3, Lo/d;->C:Lo/c;

    iget-object v4, v4, Lo/c;->f:Lo/c;

    if-nez v4, :cond_34

    iget-object v4, v3, Lo/d;->E:Lo/c;

    iget-object v4, v4, Lo/c;->f:Lo/c;

    if-nez v4, :cond_34

    iget-object v4, v3, Lo/d;->F:Lo/c;

    iget-object v4, v4, Lo/c;->f:Lo/c;

    if-nez v4, :cond_34

    if-nez v0, :cond_34

    instance-of v0, v3, Lo/a;

    if-nez v0, :cond_34

    if-nez v12, :cond_33

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :cond_33
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v3, v26, 0x1

    move/from16 v4, v25

    move/from16 v8, v27

    move/from16 v0, v28

    move/from16 v9, v30

    goto/16 :goto_15

    :cond_35
    move/from16 v28, v0

    move/from16 v25, v4

    move/from16 v27, v8

    move/from16 v30, v9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_36

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v3, :cond_36

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v4, v4, 0x1

    check-cast v7, Lo/f;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v9, v0, v8}, Lp/h;->b(Lo/d;ILjava/util/ArrayList;Lp/n;)Lp/n;

    goto :goto_17

    :cond_36
    if-eqz v6, :cond_37

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v3, :cond_37

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lo/a;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v9, v0, v8}, Lp/h;->b(Lo/d;ILjava/util/ArrayList;Lp/n;)Lp/n;

    move-result-object v7

    invoke-virtual {v5, v9, v0, v7}, Lo/a;->G(ILjava/util/ArrayList;Lp/n;)V

    invoke-virtual {v7, v0}, Lp/n;->a(Ljava/util/ArrayList;)V

    goto :goto_18

    :cond_37
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lo/d;->g(I)Lo/c;

    move-result-object v4

    iget-object v3, v4, Lo/c;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_38

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/c;

    iget-object v4, v4, Lo/c;->d:Lo/d;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v6, v0, v8}, Lp/h;->b(Lo/d;ILjava/util/ArrayList;Lp/n;)Lp/n;

    goto :goto_19

    :cond_38
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lo/d;->g(I)Lo/c;

    move-result-object v3

    iget-object v3, v3, Lo/c;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_39

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/c;

    iget-object v4, v4, Lo/c;->d:Lo/d;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v6, v0, v8}, Lp/h;->b(Lo/d;ILjava/util/ArrayList;Lp/n;)Lp/n;

    goto :goto_1a

    :cond_39
    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Lo/d;->g(I)Lo/c;

    move-result-object v4

    iget-object v4, v4, Lo/c;->a:Ljava/util/HashSet;

    if-eqz v4, :cond_3a

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/c;

    iget-object v5, v5, Lo/c;->d:Lo/d;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v0, v8}, Lp/h;->b(Lo/d;ILjava/util/ArrayList;Lp/n;)Lp/n;

    goto :goto_1b

    :cond_3a
    if-eqz v13, :cond_3b

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1c
    if-ge v5, v4, :cond_3b

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lo/d;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v9, v0, v8}, Lp/h;->b(Lo/d;ILjava/util/ArrayList;Lp/n;)Lp/n;

    goto :goto_1c

    :cond_3b
    if-eqz v14, :cond_3c

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1d
    if-ge v5, v4, :cond_3c

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lo/f;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v6, v9, v0, v8}, Lp/h;->b(Lo/d;ILjava/util/ArrayList;Lp/n;)Lp/n;

    goto :goto_1d

    :cond_3c
    if-eqz v15, :cond_3d

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1e
    if-ge v5, v4, :cond_3d

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lo/a;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v6, v9, v0, v8}, Lp/h;->b(Lo/d;ILjava/util/ArrayList;Lp/n;)Lp/n;

    move-result-object v7

    invoke-virtual {v6, v9, v0, v7}, Lo/a;->G(ILjava/util/ArrayList;Lp/n;)V

    invoke-virtual {v7, v0}, Lp/n;->a(Ljava/util/ArrayList;)V

    goto :goto_1e

    :cond_3d
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lo/d;->g(I)Lo/c;

    move-result-object v5

    iget-object v4, v5, Lo/c;->a:Ljava/util/HashSet;

    if-eqz v4, :cond_3e

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/c;

    iget-object v5, v5, Lo/c;->d:Lo/d;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v5, v9, v0, v8}, Lp/h;->b(Lo/d;ILjava/util/ArrayList;Lp/n;)Lp/n;

    goto :goto_1f

    :cond_3e
    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Lo/d;->g(I)Lo/c;

    move-result-object v4

    iget-object v4, v4, Lo/c;->a:Ljava/util/HashSet;

    if-eqz v4, :cond_3f

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/c;

    iget-object v5, v5, Lo/c;->d:Lo/d;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v5, v9, v0, v8}, Lp/h;->b(Lo/d;ILjava/util/ArrayList;Lp/n;)Lp/n;

    goto :goto_20

    :cond_3f
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Lo/d;->g(I)Lo/c;

    move-result-object v5

    iget-object v4, v5, Lo/c;->a:Ljava/util/HashSet;

    if-eqz v4, :cond_40

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/c;

    iget-object v5, v5, Lo/c;->d:Lo/d;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v5, v9, v0, v8}, Lp/h;->b(Lo/d;ILjava/util/ArrayList;Lp/n;)Lp/n;

    goto :goto_21

    :cond_40
    invoke-virtual {v1, v3}, Lo/d;->g(I)Lo/c;

    move-result-object v3

    iget-object v3, v3, Lo/c;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_41

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/c;

    iget-object v4, v4, Lo/c;->d:Lo/d;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v4, v9, v0, v8}, Lp/h;->b(Lo/d;ILjava/util/ArrayList;Lp/n;)Lp/n;

    goto :goto_22

    :cond_41
    if-eqz v12, :cond_42

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_23
    if-ge v4, v3, :cond_42

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lo/d;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v5, v9, v0, v8}, Lp/h;->b(Lo/d;ILjava/util/ArrayList;Lp/n;)Lp/n;

    goto :goto_23

    :cond_42
    const/4 v9, 0x1

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v11, :cond_48

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/d;

    iget-object v5, v4, Lo/d;->i0:[I

    const/16 v17, 0x0

    aget v6, v5, v17

    const/4 v7, 0x3

    if-ne v6, v7, :cond_47

    aget v5, v5, v9

    if-ne v5, v7, :cond_47

    iget v5, v4, Lo/d;->g0:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_25
    if-ge v8, v6, :cond_44

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lp/n;

    iget v12, v9, Lp/n;->b:I

    if-ne v5, v12, :cond_43

    goto :goto_26

    :cond_43
    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    :cond_44
    const/4 v9, 0x0

    :goto_26
    iget v4, v4, Lo/d;->h0:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_27
    if-ge v6, v5, :cond_46

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lp/n;

    iget v12, v8, Lp/n;->b:I

    if-ne v4, v12, :cond_45

    goto :goto_28

    :cond_45
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    :cond_46
    const/4 v8, 0x0

    :goto_28
    if-eqz v9, :cond_47

    if-eqz v8, :cond_47

    const/4 v6, 0x0

    invoke-virtual {v9, v6, v8}, Lp/n;->c(ILp/n;)V

    const/4 v4, 0x2

    iput v4, v8, Lp/n;->c:I

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_47
    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x1

    goto :goto_24

    :cond_48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v9, 0x1

    if-gt v3, v9, :cond_49

    goto/16 :goto_2d

    :cond_49
    const/16 v17, 0x0

    aget v3, v18, v17

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_4a
    :goto_29
    if-ge v5, v3, :cond_4c

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    check-cast v7, Lp/n;

    iget v8, v7, Lp/n;->c:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4b

    goto :goto_29

    :cond_4b
    const/4 v11, 0x0

    invoke-virtual {v7, v2, v11}, Lp/n;->b(Ln/c;I)I

    move-result v8

    if-le v8, v4, :cond_4a

    move-object v6, v7

    move v4, v8

    goto :goto_29

    :cond_4c
    const/4 v9, 0x1

    if-eqz v6, :cond_4e

    invoke-virtual {v1, v9}, Lo/d;->B(I)V

    invoke-virtual {v1, v4}, Lo/d;->D(I)V

    goto :goto_2a

    :cond_4d
    const/4 v9, 0x1

    :cond_4e
    const/4 v6, 0x0

    :goto_2a
    aget v3, v18, v9

    const/4 v4, 0x2

    if-ne v3, v4, :cond_52

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :cond_4f
    :goto_2b
    if-ge v5, v3, :cond_51

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v5, v5, 0x1

    check-cast v8, Lp/n;

    iget v9, v8, Lp/n;->c:I

    if-nez v9, :cond_50

    goto :goto_2b

    :cond_50
    const/4 v9, 0x1

    invoke-virtual {v8, v2, v9}, Lp/n;->b(Ln/c;I)I

    move-result v10

    if-le v10, v4, :cond_4f

    move-object v7, v8

    move v4, v10

    goto :goto_2b

    :cond_51
    const/4 v9, 0x1

    if-eqz v7, :cond_52

    invoke-virtual {v1, v9}, Lo/d;->C(I)V

    invoke-virtual {v1, v4}, Lo/d;->A(I)V

    goto :goto_2c

    :cond_52
    const/4 v7, 0x0

    :goto_2c
    if-nez v6, :cond_53

    if-eqz v7, :cond_54

    :cond_53
    move/from16 v3, v30

    const/4 v4, 0x2

    goto :goto_2e

    :cond_54
    :goto_2d
    move/from16 v6, v20

    move/from16 v5, v27

    move/from16 v4, v28

    move/from16 v3, v30

    goto :goto_34

    :goto_2e
    if-ne v3, v4, :cond_56

    invoke-virtual {v1}, Lo/d;->l()I

    move-result v0

    move/from16 v4, v28

    if-ge v4, v0, :cond_55

    if-lez v4, :cond_55

    invoke-virtual {v1, v4}, Lo/d;->D(I)V

    const/4 v9, 0x1

    iput-boolean v9, v1, Lo/e;->w0:Z

    goto :goto_30

    :cond_55
    invoke-virtual {v1}, Lo/d;->l()I

    move-result v0

    :goto_2f
    move/from16 v5, v27

    const/4 v4, 0x2

    goto :goto_31

    :cond_56
    move/from16 v4, v28

    :goto_30
    move v0, v4

    goto :goto_2f

    :goto_31
    if-ne v5, v4, :cond_58

    invoke-virtual {v1}, Lo/d;->i()I

    move-result v4

    move/from16 v6, v20

    if-ge v6, v4, :cond_57

    if-lez v6, :cond_57

    invoke-virtual {v1, v6}, Lo/d;->A(I)V

    const/4 v9, 0x1

    iput-boolean v9, v1, Lo/e;->x0:Z

    goto :goto_32

    :cond_57
    invoke-virtual {v1}, Lo/d;->i()I

    move-result v4

    goto :goto_33

    :cond_58
    move/from16 v6, v20

    :goto_32
    move v4, v6

    :goto_33
    move v6, v4

    move v4, v0

    const/4 v0, 0x1

    goto :goto_35

    :goto_34
    const/4 v0, 0x0

    :goto_35
    const/16 v7, 0x40

    invoke-virtual {v1, v7}, Lo/e;->M(I)Z

    move-result v8

    if-nez v8, :cond_5a

    const/16 v8, 0x80

    invoke-virtual {v1, v8}, Lo/e;->M(I)Z

    move-result v8

    if-eqz v8, :cond_59

    goto :goto_36

    :cond_59
    const/4 v8, 0x0

    goto :goto_37

    :cond_5a
    :goto_36
    const/4 v8, 0x1

    :goto_37
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x0

    iput-boolean v9, v2, Ln/c;->g:Z

    iget v10, v1, Lo/e;->v0:I

    if-eqz v10, :cond_5b

    if-eqz v8, :cond_5b

    const/4 v15, 0x1

    iput-boolean v15, v2, Ln/c;->g:Z

    goto :goto_38

    :cond_5b
    const/4 v15, 0x1

    :goto_38
    iget-object v8, v1, Lo/e;->j0:Ljava/util/ArrayList;

    aget v10, v18, v9

    const/4 v11, 0x2

    if-eq v10, v11, :cond_5d

    aget v10, v18, v15

    if-ne v10, v11, :cond_5c

    goto :goto_39

    :cond_5c
    move v10, v9

    goto :goto_3a

    :cond_5d
    :goto_39
    const/4 v10, 0x1

    :goto_3a
    iput v9, v1, Lo/e;->r0:I

    iput v9, v1, Lo/e;->s0:I

    move/from16 v11, v25

    const/4 v9, 0x0

    :goto_3b
    if-ge v9, v11, :cond_5f

    iget-object v12, v1, Lo/e;->j0:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lo/d;

    instance-of v13, v12, Lo/e;

    if-eqz v13, :cond_5e

    check-cast v12, Lo/e;

    invoke-virtual {v12}, Lo/e;->K()V

    :cond_5e
    add-int/lit8 v9, v9, 0x1

    goto :goto_3b

    :cond_5f
    invoke-virtual {v1, v7}, Lo/e;->M(I)Z

    move-result v9

    move v12, v0

    const/4 v0, 0x0

    const/4 v13, 0x1

    :goto_3c
    if-eqz v13, :cond_70

    const/16 v16, 0x1

    add-int/lit8 v14, v0, 0x1

    :try_start_0
    invoke-virtual {v2}, Ln/c;->t()V

    const/4 v15, 0x0

    iput v15, v1, Lo/e;->r0:I

    iput v15, v1, Lo/e;->s0:I

    invoke-virtual {v1, v2}, Lo/d;->e(Ln/c;)V

    const/4 v0, 0x0

    :goto_3d
    if-ge v0, v11, :cond_60

    iget-object v15, v1, Lo/e;->j0:Ljava/util/ArrayList;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lo/d;

    invoke-virtual {v15, v2}, Lo/d;->e(Ln/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :catch_0
    move-exception v0

    move/from16 v20, v10

    move-object/from16 v15, v24

    const/4 v7, 0x0

    const/4 v10, 0x5

    goto/16 :goto_44

    :cond_60
    invoke-virtual {v1, v2}, Lo/e;->H(Ln/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v1, Lo/e;->y0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_61

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_61

    iget-object v0, v1, Lo/e;->y0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v15, v24

    :try_start_2
    invoke-virtual {v2, v15}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v13

    invoke-virtual {v2, v0}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move/from16 v20, v10

    const/4 v7, 0x5

    const/4 v10, 0x0

    :try_start_3
    invoke-virtual {v2, v0, v13, v10, v7}, Ln/c;->f(Ln/h;Ln/h;II)V

    const/4 v7, 0x0

    iput-object v7, v1, Lo/e;->y0:Ljava/lang/ref/WeakReference;

    goto :goto_40

    :catch_1
    move-exception v0

    :goto_3e
    const/4 v7, 0x0

    const/4 v10, 0x5

    :goto_3f
    const/4 v13, 0x1

    goto/16 :goto_44

    :catch_2
    move-exception v0

    move/from16 v20, v10

    goto :goto_3e

    :catch_3
    move-exception v0

    move/from16 v20, v10

    move-object/from16 v15, v24

    goto :goto_3e

    :cond_61
    move/from16 v20, v10

    move-object/from16 v15, v24

    :goto_40
    iget-object v0, v1, Lo/e;->A0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_62

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_62

    iget-object v0, v1, Lo/e;->A0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/c;

    iget-object v7, v1, Lo/d;->E:Lo/c;

    invoke-virtual {v2, v7}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v7

    invoke-virtual {v2, v0}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v0

    const/4 v10, 0x5

    const/4 v13, 0x0

    invoke-virtual {v2, v7, v0, v13, v10}, Ln/c;->f(Ln/h;Ln/h;II)V

    const/4 v7, 0x0

    iput-object v7, v1, Lo/e;->A0:Ljava/lang/ref/WeakReference;

    :cond_62
    iget-object v0, v1, Lo/e;->z0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_63

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_63

    iget-object v0, v1, Lo/e;->z0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/c;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v7, v23

    :try_start_4
    invoke-virtual {v2, v7}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v10

    invoke-virtual {v2, v0}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object/from16 v23, v7

    const/4 v7, 0x0

    const/4 v13, 0x5

    :try_start_5
    invoke-virtual {v2, v0, v10, v7, v13}, Ln/c;->f(Ln/h;Ln/h;II)V

    const/4 v7, 0x0

    iput-object v7, v1, Lo/e;->z0:Ljava/lang/ref/WeakReference;

    goto :goto_41

    :catch_4
    move-exception v0

    move-object/from16 v23, v7

    goto :goto_3e

    :cond_63
    :goto_41
    iget-object v0, v1, Lo/e;->B0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_64

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_64

    iget-object v0, v1, Lo/e;->B0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/c;

    iget-object v7, v1, Lo/d;->D:Lo/c;

    invoke-virtual {v2, v7}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    invoke-virtual {v2, v0}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    const/4 v10, 0x5

    const/4 v13, 0x0

    :try_start_7
    invoke-virtual {v2, v7, v0, v13, v10}, Ln/c;->f(Ln/h;Ln/h;II)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    const/4 v7, 0x0

    :try_start_8
    iput-object v7, v1, Lo/e;->B0:Ljava/lang/ref/WeakReference;

    goto :goto_43

    :catch_5
    move-exception v0

    goto/16 :goto_3f

    :catch_6
    move-exception v0

    :goto_42
    const/4 v7, 0x0

    goto/16 :goto_3f

    :catch_7
    move-exception v0

    const/4 v10, 0x5

    goto :goto_42

    :cond_64
    const/4 v7, 0x0

    const/4 v10, 0x5

    :goto_43
    invoke-virtual {v2}, Ln/c;->p()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    move/from16 v24, v12

    const/4 v13, 0x1

    goto :goto_45

    :goto_44
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    move/from16 v24, v12

    const-string v12, "EXCEPTION : "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_45
    sget-object v0, Lo/g;->a:[Z

    if-eqz v13, :cond_65

    const/16 v17, 0x0

    const/16 v21, 0x2

    aput-boolean v17, v0, v21

    const/16 v7, 0x40

    invoke-virtual {v1, v7}, Lo/e;->M(I)Z

    move-result v10

    invoke-virtual {v1, v2, v10}, Lo/d;->F(Ln/c;Z)V

    iget-object v12, v1, Lo/e;->j0:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_46
    if-ge v13, v12, :cond_66

    iget-object v7, v1, Lo/e;->j0:Ljava/util/ArrayList;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/d;

    invoke-virtual {v7, v2, v10}, Lo/d;->F(Ln/c;Z)V

    add-int/lit8 v13, v13, 0x1

    const/16 v7, 0x40

    goto :goto_46

    :cond_65
    invoke-virtual {v1, v2, v9}, Lo/d;->F(Ln/c;Z)V

    const/4 v7, 0x0

    :goto_47
    if-ge v7, v11, :cond_66

    iget-object v10, v1, Lo/e;->j0:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/d;

    invoke-virtual {v10, v2, v9}, Lo/d;->F(Ln/c;Z)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_47

    :cond_66
    if-eqz v20, :cond_69

    const/16 v7, 0x8

    if-ge v14, v7, :cond_69

    const/16 v21, 0x2

    aget-boolean v0, v0, v21

    if-eqz v0, :cond_69

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_48
    if-ge v0, v11, :cond_67

    iget-object v12, v1, Lo/e;->j0:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lo/d;

    iget v13, v12, Lo/d;->R:I

    invoke-virtual {v12}, Lo/d;->l()I

    move-result v25

    add-int v13, v25, v13

    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v13, v12, Lo/d;->S:I

    invoke-virtual {v12}, Lo/d;->i()I

    move-result v12

    add-int/2addr v12, v13

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    :cond_67
    iget v0, v1, Lo/d;->U:I

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v7, v1, Lo/d;->V:I

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v10, 0x2

    if-ne v3, v10, :cond_68

    invoke-virtual {v1}, Lo/d;->l()I

    move-result v12

    if-ge v12, v0, :cond_68

    invoke-virtual {v1, v0}, Lo/d;->D(I)V

    const/16 v17, 0x0

    aput v10, v18, v17

    const/4 v0, 0x1

    const/16 v24, 0x1

    goto :goto_49

    :cond_68
    const/4 v0, 0x0

    :goto_49
    if-ne v5, v10, :cond_6a

    invoke-virtual {v1}, Lo/d;->i()I

    move-result v12

    if-ge v12, v7, :cond_6a

    invoke-virtual {v1, v7}, Lo/d;->A(I)V

    const/16 v16, 0x1

    aput v10, v18, v16

    const/4 v0, 0x1

    const/16 v24, 0x1

    goto :goto_4a

    :cond_69
    const/4 v0, 0x0

    :cond_6a
    :goto_4a
    iget v7, v1, Lo/d;->U:I

    invoke-virtual {v1}, Lo/d;->l()I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v1}, Lo/d;->l()I

    move-result v10

    if-le v7, v10, :cond_6b

    invoke-virtual {v1, v7}, Lo/d;->D(I)V

    const/4 v7, 0x1

    const/16 v17, 0x0

    aput v7, v18, v17

    move v0, v7

    move/from16 v16, v0

    goto :goto_4b

    :cond_6b
    const/4 v7, 0x1

    move/from16 v16, v24

    :goto_4b
    iget v10, v1, Lo/d;->V:I

    invoke-virtual {v1}, Lo/d;->i()I

    move-result v12

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {v1}, Lo/d;->i()I

    move-result v12

    if-le v10, v12, :cond_6c

    invoke-virtual {v1, v10}, Lo/d;->A(I)V

    aput v7, v18, v7

    move v0, v7

    move v10, v0

    goto :goto_4c

    :cond_6c
    move v10, v0

    move/from16 v0, v16

    :goto_4c
    if-nez v0, :cond_6f

    const/16 v17, 0x0

    aget v12, v18, v17

    const/4 v13, 0x2

    if-ne v12, v13, :cond_6d

    if-lez v4, :cond_6d

    invoke-virtual {v1}, Lo/d;->l()I

    move-result v12

    if-le v12, v4, :cond_6d

    iput-boolean v7, v1, Lo/e;->w0:Z

    aput v7, v18, v17

    invoke-virtual {v1, v4}, Lo/d;->D(I)V

    move v0, v7

    move v10, v0

    :cond_6d
    aget v12, v18, v7

    const/4 v13, 0x2

    if-ne v12, v13, :cond_6e

    if-lez v6, :cond_6e

    invoke-virtual {v1}, Lo/d;->i()I

    move-result v12

    if-le v12, v6, :cond_6e

    iput-boolean v7, v1, Lo/e;->x0:Z

    aput v7, v18, v7

    invoke-virtual {v1, v6}, Lo/d;->A(I)V

    const/4 v10, 0x1

    const/4 v12, 0x1

    goto :goto_4e

    :cond_6e
    :goto_4d
    move v12, v0

    goto :goto_4e

    :cond_6f
    const/4 v13, 0x2

    goto :goto_4d

    :goto_4e
    move v13, v10

    move v0, v14

    move-object/from16 v24, v15

    move/from16 v10, v20

    const/16 v7, 0x40

    goto/16 :goto_3c

    :cond_70
    move/from16 v24, v12

    iput-object v8, v1, Lo/e;->j0:Ljava/util/ArrayList;

    if-eqz v24, :cond_71

    const/16 v17, 0x0

    aput v3, v18, v17

    const/16 v16, 0x1

    aput v5, v18, v16

    :cond_71
    iget-object v0, v2, Ln/c;->l:Landroidx/fragment/app/f;

    invoke-virtual {v1, v0}, Lo/e;->x(Landroidx/fragment/app/f;)V

    return-void
.end method

.method public final M(I)Z
    .locals 1

    iget v0, p0, Lo/e;->v0:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final w()V
    .locals 1

    iget-object v0, p0, Lo/e;->o0:Ln/c;

    invoke-virtual {v0}, Ln/c;->t()V

    const/4 v0, 0x0

    iput v0, p0, Lo/e;->p0:I

    iput v0, p0, Lo/e;->q0:I

    iget-object v0, p0, Lo/e;->j0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Lo/d;->w()V

    return-void
.end method

.method public final x(Landroidx/fragment/app/f;)V
    .locals 3

    invoke-super {p0, p1}, Lo/d;->x(Landroidx/fragment/app/f;)V

    iget-object v0, p0, Lo/e;->j0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lo/e;->j0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/d;

    invoke-virtual {v2, p1}, Lo/d;->x(Landroidx/fragment/app/f;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
