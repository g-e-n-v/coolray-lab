.class public Lo/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:I

.field public final B:Lo/c;

.field public final C:Lo/c;

.field public final D:Lo/c;

.field public final E:Lo/c;

.field public final F:Lo/c;

.field public final G:Lo/c;

.field public final H:Lo/c;

.field public final I:Lo/c;

.field public final J:[Lo/c;

.field public final K:Ljava/util/ArrayList;

.field public final L:[Z

.field public M:Lo/d;

.field public N:I

.field public O:I

.field public P:F

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:F

.field public X:F

.field public Y:Landroid/view/View;

.field public Z:I

.field public a:Z

.field public a0:Ljava/lang/String;

.field public b:Lp/c;

.field public b0:I

.field public c:Lp/c;

.field public c0:I

.field public d:Lp/k;

.field public final d0:[F

.field public e:Lp/m;

.field public final e0:[Lo/d;

.field public final f:[Z

.field public final f0:[Lo/d;

.field public g:Z

.field public g0:I

.field public h:Z

.field public h0:I

.field public i:Z

.field public final i0:[I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public final n:[I

.field public o:I

.field public p:I

.field public q:F

.field public r:I

.field public s:I

.field public t:F

.field public u:I

.field public v:F

.field public final w:[I

.field public x:F

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/d;->a:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lo/d;->d:Lp/k;

    iput-object v2, v0, Lo/d;->e:Lp/m;

    const/4 v3, 0x2

    new-array v4, v3, [Z

    fill-array-data v4, :array_0

    iput-object v4, v0, Lo/d;->f:[Z

    const/4 v4, 0x1

    iput-boolean v4, v0, Lo/d;->g:Z

    iput-boolean v1, v0, Lo/d;->h:Z

    iput-boolean v1, v0, Lo/d;->i:Z

    const/4 v5, -0x1

    iput v5, v0, Lo/d;->j:I

    iput v5, v0, Lo/d;->k:I

    iput v1, v0, Lo/d;->l:I

    iput v1, v0, Lo/d;->m:I

    new-array v6, v3, [I

    iput-object v6, v0, Lo/d;->n:[I

    iput v1, v0, Lo/d;->o:I

    iput v1, v0, Lo/d;->p:I

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v0, Lo/d;->q:F

    iput v1, v0, Lo/d;->r:I

    iput v1, v0, Lo/d;->s:I

    iput v6, v0, Lo/d;->t:F

    iput v5, v0, Lo/d;->u:I

    iput v6, v0, Lo/d;->v:F

    const v6, 0x7fffffff

    filled-new-array {v6, v6}, [I

    move-result-object v6

    iput-object v6, v0, Lo/d;->w:[I

    const/4 v6, 0x0

    iput v6, v0, Lo/d;->x:F

    iput-boolean v1, v0, Lo/d;->y:Z

    iput v1, v0, Lo/d;->z:I

    iput v1, v0, Lo/d;->A:I

    new-instance v7, Lo/c;

    invoke-direct {v7, v0, v3}, Lo/c;-><init>(Lo/d;I)V

    iput-object v7, v0, Lo/d;->B:Lo/c;

    new-instance v9, Lo/c;

    const/4 v8, 0x3

    invoke-direct {v9, v0, v8}, Lo/c;-><init>(Lo/d;I)V

    iput-object v9, v0, Lo/d;->C:Lo/c;

    new-instance v8, Lo/c;

    const/4 v10, 0x4

    invoke-direct {v8, v0, v10}, Lo/c;-><init>(Lo/d;I)V

    iput-object v8, v0, Lo/d;->D:Lo/c;

    new-instance v10, Lo/c;

    const/4 v11, 0x5

    invoke-direct {v10, v0, v11}, Lo/c;-><init>(Lo/d;I)V

    iput-object v10, v0, Lo/d;->E:Lo/c;

    new-instance v11, Lo/c;

    const/4 v12, 0x6

    invoke-direct {v11, v0, v12}, Lo/c;-><init>(Lo/d;I)V

    iput-object v11, v0, Lo/d;->F:Lo/c;

    new-instance v13, Lo/c;

    const/16 v12, 0x8

    invoke-direct {v13, v0, v12}, Lo/c;-><init>(Lo/d;I)V

    iput-object v13, v0, Lo/d;->G:Lo/c;

    new-instance v14, Lo/c;

    const/16 v12, 0x9

    invoke-direct {v14, v0, v12}, Lo/c;-><init>(Lo/d;I)V

    iput-object v14, v0, Lo/d;->H:Lo/c;

    new-instance v12, Lo/c;

    const/4 v15, 0x7

    invoke-direct {v12, v0, v15}, Lo/c;-><init>(Lo/d;I)V

    iput-object v12, v0, Lo/d;->I:Lo/c;

    filled-new-array/range {v7 .. v12}, [Lo/c;

    move-result-object v15

    iput-object v15, v0, Lo/d;->J:[Lo/c;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v0, Lo/d;->K:Ljava/util/ArrayList;

    new-array v5, v3, [Z

    iput-object v5, v0, Lo/d;->L:[Z

    filled-new-array {v4, v4}, [I

    move-result-object v4

    iput-object v4, v0, Lo/d;->i0:[I

    iput-object v2, v0, Lo/d;->M:Lo/d;

    iput v1, v0, Lo/d;->N:I

    iput v1, v0, Lo/d;->O:I

    iput v6, v0, Lo/d;->P:F

    const/4 v4, -0x1

    iput v4, v0, Lo/d;->Q:I

    iput v1, v0, Lo/d;->R:I

    iput v1, v0, Lo/d;->S:I

    iput v1, v0, Lo/d;->T:I

    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, v0, Lo/d;->W:F

    iput v4, v0, Lo/d;->X:F

    iput v1, v0, Lo/d;->Z:I

    iput-object v2, v0, Lo/d;->a0:Ljava/lang/String;

    iput v1, v0, Lo/d;->b0:I

    iput v1, v0, Lo/d;->c0:I

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    iput-object v1, v0, Lo/d;->d0:[F

    filled-new-array {v2, v2}, [Lo/d;

    move-result-object v1

    iput-object v1, v0, Lo/d;->e0:[Lo/d;

    filled-new-array {v2, v2}, [Lo/d;

    move-result-object v1

    iput-object v1, v0, Lo/d;->f0:[Lo/d;

    const/4 v4, -0x1

    iput v4, v0, Lo/d;->g0:I

    iput v4, v0, Lo/d;->h0:I

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method


# virtual methods
.method public final A(I)V
    .locals 1

    iput p1, p0, Lo/d;->O:I

    iget v0, p0, Lo/d;->V:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Lo/d;->O:I

    :cond_0
    return-void
.end method

.method public final B(I)V
    .locals 2

    iget-object v0, p0, Lo/d;->i0:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public final C(I)V
    .locals 2

    iget-object v0, p0, Lo/d;->i0:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public final D(I)V
    .locals 1

    iput p1, p0, Lo/d;->N:I

    iget v0, p0, Lo/d;->U:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Lo/d;->N:I

    :cond_0
    return-void
.end method

.method public E(ZZ)V
    .locals 7

    iget-object v0, p0, Lo/d;->d:Lp/k;

    iget-boolean v1, v0, Lp/o;->g:Z

    and-int/2addr p1, v1

    iget-object v1, p0, Lo/d;->e:Lp/m;

    iget-boolean v2, v1, Lp/o;->g:Z

    and-int/2addr p2, v2

    iget-object v2, v0, Lp/o;->h:Lp/f;

    iget v2, v2, Lp/f;->g:I

    iget-object v3, v1, Lp/o;->h:Lp/f;

    iget v3, v3, Lp/f;->g:I

    iget-object v0, v0, Lp/o;->i:Lp/f;

    iget v0, v0, Lp/f;->g:I

    iget-object v1, v1, Lp/o;->i:Lp/f;

    iget v1, v1, Lp/f;->g:I

    sub-int v4, v0, v2

    sub-int v5, v1, v3

    const/4 v6, 0x0

    if-ltz v4, :cond_0

    if-ltz v5, :cond_0

    const/high16 v4, -0x80000000

    if-eq v2, v4, :cond_0

    const v5, 0x7fffffff

    if-eq v2, v5, :cond_0

    if-eq v3, v4, :cond_0

    if-eq v3, v5, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v1, v4, :cond_0

    if-ne v1, v5, :cond_1

    :cond_0
    move v0, v6

    move v1, v0

    move v2, v1

    move v3, v2

    :cond_1
    sub-int/2addr v0, v2

    sub-int/2addr v1, v3

    if-eqz p1, :cond_2

    iput v2, p0, Lo/d;->R:I

    :cond_2
    if-eqz p2, :cond_3

    iput v3, p0, Lo/d;->S:I

    :cond_3
    iget v2, p0, Lo/d;->Z:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    iput v6, p0, Lo/d;->N:I

    iput v6, p0, Lo/d;->O:I

    return-void

    :cond_4
    const/4 v2, 0x1

    iget-object v3, p0, Lo/d;->i0:[I

    if-eqz p1, :cond_6

    aget p1, v3, v6

    if-ne p1, v2, :cond_5

    iget p1, p0, Lo/d;->N:I

    if-ge v0, p1, :cond_5

    move v0, p1

    :cond_5
    iput v0, p0, Lo/d;->N:I

    iget p1, p0, Lo/d;->U:I

    if-ge v0, p1, :cond_6

    iput p1, p0, Lo/d;->N:I

    :cond_6
    if-eqz p2, :cond_8

    aget p1, v3, v2

    if-ne p1, v2, :cond_7

    iget p1, p0, Lo/d;->O:I

    if-ge v1, p1, :cond_7

    move v1, p1

    :cond_7
    iput v1, p0, Lo/d;->O:I

    iget p1, p0, Lo/d;->V:I

    if-ge v1, p1, :cond_8

    iput p1, p0, Lo/d;->O:I

    :cond_8
    return-void
.end method

.method public F(Ln/c;Z)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lo/d;->B:Lo/c;

    invoke-static {p1}, Ln/c;->n(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lo/d;->C:Lo/c;

    invoke-static {v0}, Ln/c;->n(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lo/d;->D:Lo/c;

    invoke-static {v1}, Ln/c;->n(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lo/d;->E:Lo/c;

    invoke-static {v2}, Ln/c;->n(Ljava/lang/Object;)I

    move-result v2

    if-eqz p2, :cond_0

    iget-object v3, p0, Lo/d;->d:Lp/k;

    if-eqz v3, :cond_0

    iget-object v4, v3, Lp/o;->h:Lp/f;

    iget-boolean v5, v4, Lp/f;->j:Z

    if-eqz v5, :cond_0

    iget-object v3, v3, Lp/o;->i:Lp/f;

    iget-boolean v5, v3, Lp/f;->j:Z

    if-eqz v5, :cond_0

    iget p1, v4, Lp/f;->g:I

    iget v1, v3, Lp/f;->g:I

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lo/d;->e:Lp/m;

    if-eqz p2, :cond_1

    iget-object v3, p2, Lp/o;->h:Lp/f;

    iget-boolean v4, v3, Lp/f;->j:Z

    if-eqz v4, :cond_1

    iget-object p2, p2, Lp/o;->i:Lp/f;

    iget-boolean v4, p2, Lp/f;->j:Z

    if-eqz v4, :cond_1

    iget v0, v3, Lp/f;->g:I

    iget v2, p2, Lp/f;->g:I

    :cond_1
    sub-int p2, v1, p1

    sub-int v3, v2, v0

    const/4 v4, 0x0

    if-ltz p2, :cond_2

    if-ltz v3, :cond_2

    const/high16 p2, -0x80000000

    if-eq p1, p2, :cond_2

    const v3, 0x7fffffff

    if-eq p1, v3, :cond_2

    if-eq v0, p2, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v1, p2, :cond_2

    if-eq v1, v3, :cond_2

    if-eq v2, p2, :cond_2

    if-ne v2, v3, :cond_3

    :cond_2
    move p1, v4

    move v0, p1

    move v1, v0

    move v2, v1

    :cond_3
    sub-int/2addr v1, p1

    sub-int/2addr v2, v0

    iput p1, p0, Lo/d;->R:I

    iput v0, p0, Lo/d;->S:I

    iget p1, p0, Lo/d;->Z:I

    const/16 p2, 0x8

    if-ne p1, p2, :cond_4

    iput v4, p0, Lo/d;->N:I

    iput v4, p0, Lo/d;->O:I

    return-void

    :cond_4
    iget-object p1, p0, Lo/d;->i0:[I

    aget p2, p1, v4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    iget p2, p0, Lo/d;->N:I

    if-ge v1, p2, :cond_5

    move v1, p2

    :cond_5
    aget p1, p1, v0

    if-ne p1, v0, :cond_6

    iget p1, p0, Lo/d;->O:I

    if-ge v2, p1, :cond_6

    move v2, p1

    :cond_6
    iput v1, p0, Lo/d;->N:I

    iput v2, p0, Lo/d;->O:I

    iget p1, p0, Lo/d;->V:I

    if-ge v2, p1, :cond_7

    iput p1, p0, Lo/d;->O:I

    :cond_7
    iget p1, p0, Lo/d;->U:I

    if-ge v1, p1, :cond_8

    iput p1, p0, Lo/d;->N:I

    :cond_8
    return-void
.end method

.method public final a(Lo/e;Ln/c;Ljava/util/HashSet;IZ)V
    .locals 7

    if-eqz p5, :cond_1

    invoke-virtual {p3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static {p1, p2, p0}, Lo/g;->b(Lo/e;Ln/c;Lo/d;)V

    invoke-virtual {p3, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Lo/e;->M(I)Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lo/d;->b(Ln/c;Z)V

    :cond_1
    if-nez p4, :cond_3

    iget-object v0, p0, Lo/d;->B:Lo/c;

    iget-object v0, v0, Lo/c;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/c;

    iget-object v0, v0, Lo/c;->d:Lo/d;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/d;->a(Lo/e;Ln/c;Ljava/util/HashSet;IZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lo/d;->D:Lo/c;

    iget-object v0, v0, Lo/c;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/c;

    iget-object v0, v0, Lo/c;->d:Lo/d;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/d;->a(Lo/e;Ln/c;Ljava/util/HashSet;IZ)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lo/d;->C:Lo/c;

    iget-object v0, v0, Lo/c;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/c;

    iget-object v0, v0, Lo/c;->d:Lo/d;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/d;->a(Lo/e;Ln/c;Ljava/util/HashSet;IZ)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lo/d;->E:Lo/c;

    iget-object v0, v0, Lo/c;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/c;

    iget-object v0, v0, Lo/c;->d:Lo/d;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/d;->a(Lo/e;Ln/c;Ljava/util/HashSet;IZ)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lo/d;->F:Lo/c;

    iget-object v0, v0, Lo/c;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/c;

    iget-object v0, v0, Lo/c;->d:Lo/d;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/d;->a(Lo/e;Ln/c;Ljava/util/HashSet;IZ)V

    goto :goto_4

    :cond_6
    :goto_5
    return-void
.end method

.method public b(Ln/c;Z)V
    .locals 57

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v10, v0, Lo/d;->B:Lo/c;

    invoke-virtual {v1, v10}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v2

    iget-object v11, v0, Lo/d;->D:Lo/c;

    invoke-virtual {v1, v11}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v3

    iget-object v4, v0, Lo/d;->C:Lo/c;

    invoke-virtual {v1, v4}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v5

    iget-object v6, v0, Lo/d;->E:Lo/c;

    invoke-virtual {v1, v6}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v7

    iget-object v8, v0, Lo/d;->F:Lo/c;

    invoke-virtual {v1, v8}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v9

    iget-object v12, v0, Lo/d;->M:Lo/d;

    const/4 v13, 0x2

    const/4 v15, 0x0

    if-eqz v12, :cond_2

    iget-object v12, v12, Lo/d;->i0:[I

    const/16 v16, 0x1

    aget v14, v12, v15

    if-ne v14, v13, :cond_0

    move/from16 v14, v16

    goto :goto_0

    :cond_0
    move v14, v15

    :goto_0
    aget v12, v12, v16

    if-ne v12, v13, :cond_1

    move/from16 v12, v16

    goto :goto_1

    :cond_1
    move v12, v15

    goto :goto_1

    :cond_2
    const/16 v16, 0x1

    move v12, v15

    move v14, v12

    :goto_1
    iget v13, v0, Lo/d;->Z:I

    move/from16 v18, v15

    iget-object v15, v0, Lo/d;->L:[Z

    move/from16 v19, v12

    const/16 v12, 0x8

    if-ne v13, v12, :cond_6

    iget-object v13, v0, Lo/d;->K:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v12

    move/from16 v21, v14

    move/from16 v14, v18

    :goto_2
    if-ge v14, v12, :cond_5

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    move/from16 v23, v12

    move-object/from16 v12, v22

    check-cast v12, Lo/c;

    iget-object v12, v12, Lo/c;->a:Ljava/util/HashSet;

    if-nez v12, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v12

    if-lez v12, :cond_4

    goto :goto_4

    :cond_4
    :goto_3
    add-int/lit8 v14, v14, 0x1

    move/from16 v12, v23

    goto :goto_2

    :cond_5
    aget-boolean v12, v15, v18

    if-nez v12, :cond_7

    aget-boolean v12, v15, v16

    if-nez v12, :cond_7

    return-void

    :cond_6
    move/from16 v21, v14

    :cond_7
    :goto_4
    iget-boolean v12, v0, Lo/d;->h:Z

    if-nez v12, :cond_8

    iget-boolean v13, v0, Lo/d;->i:Z

    if-eqz v13, :cond_f

    :cond_8
    if-eqz v12, :cond_a

    iget v12, v0, Lo/d;->R:I

    invoke-virtual {v1, v2, v12}, Ln/c;->d(Ln/h;I)V

    iget v12, v0, Lo/d;->R:I

    iget v13, v0, Lo/d;->N:I

    add-int/2addr v12, v13

    invoke-virtual {v1, v3, v12}, Ln/c;->d(Ln/h;I)V

    if-eqz v21, :cond_a

    iget-object v12, v0, Lo/d;->M:Lo/d;

    if-eqz v12, :cond_a

    check-cast v12, Lo/e;

    invoke-virtual {v12, v10}, Lo/e;->I(Lo/c;)V

    iget-object v13, v12, Lo/e;->B0:Ljava/lang/ref/WeakReference;

    if-eqz v13, :cond_9

    invoke-virtual {v13}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_9

    invoke-virtual {v11}, Lo/c;->c()I

    move-result v13

    iget-object v14, v12, Lo/e;->B0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lo/c;

    invoke-virtual {v14}, Lo/c;->c()I

    move-result v14

    if-le v13, v14, :cond_a

    :cond_9
    new-instance v13, Ljava/lang/ref/WeakReference;

    invoke-direct {v13, v11}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v13, v12, Lo/e;->B0:Ljava/lang/ref/WeakReference;

    :cond_a
    iget-boolean v12, v0, Lo/d;->i:Z

    if-eqz v12, :cond_e

    iget v12, v0, Lo/d;->S:I

    invoke-virtual {v1, v5, v12}, Ln/c;->d(Ln/h;I)V

    iget v12, v0, Lo/d;->S:I

    iget v13, v0, Lo/d;->O:I

    add-int/2addr v12, v13

    invoke-virtual {v1, v7, v12}, Ln/c;->d(Ln/h;I)V

    iget-object v12, v8, Lo/c;->a:Ljava/util/HashSet;

    if-nez v12, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v12

    if-lez v12, :cond_c

    iget v12, v0, Lo/d;->S:I

    iget v13, v0, Lo/d;->T:I

    add-int/2addr v12, v13

    invoke-virtual {v1, v9, v12}, Ln/c;->d(Ln/h;I)V

    :cond_c
    :goto_5
    if-eqz v19, :cond_e

    iget-object v12, v0, Lo/d;->M:Lo/d;

    if-eqz v12, :cond_e

    check-cast v12, Lo/e;

    invoke-virtual {v12, v4}, Lo/e;->I(Lo/c;)V

    iget-object v13, v12, Lo/e;->A0:Ljava/lang/ref/WeakReference;

    if-eqz v13, :cond_d

    invoke-virtual {v13}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_d

    invoke-virtual {v6}, Lo/c;->c()I

    move-result v13

    iget-object v14, v12, Lo/e;->A0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lo/c;

    invoke-virtual {v14}, Lo/c;->c()I

    move-result v14

    if-le v13, v14, :cond_e

    :cond_d
    new-instance v13, Ljava/lang/ref/WeakReference;

    invoke-direct {v13, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v13, v12, Lo/e;->A0:Ljava/lang/ref/WeakReference;

    :cond_e
    iget-boolean v12, v0, Lo/d;->h:Z

    if-eqz v12, :cond_f

    iget-boolean v12, v0, Lo/d;->i:Z

    if-eqz v12, :cond_f

    move/from16 v12, v18

    iput-boolean v12, v0, Lo/d;->h:Z

    iput-boolean v12, v0, Lo/d;->i:Z

    return-void

    :cond_f
    iget-object v12, v0, Lo/d;->f:[Z

    if-eqz p2, :cond_13

    iget-object v13, v0, Lo/d;->d:Lp/k;

    if-eqz v13, :cond_13

    iget-object v14, v0, Lo/d;->e:Lp/m;

    if-eqz v14, :cond_13

    move-object/from16 v22, v4

    iget-object v4, v13, Lp/o;->h:Lp/f;

    move-object/from16 v23, v6

    iget-boolean v6, v4, Lp/f;->j:Z

    if-eqz v6, :cond_12

    iget-object v6, v13, Lp/o;->i:Lp/f;

    iget-boolean v6, v6, Lp/f;->j:Z

    if-eqz v6, :cond_12

    iget-object v6, v14, Lp/o;->h:Lp/f;

    iget-boolean v6, v6, Lp/f;->j:Z

    if-eqz v6, :cond_12

    iget-object v6, v14, Lp/o;->i:Lp/f;

    iget-boolean v6, v6, Lp/f;->j:Z

    if-eqz v6, :cond_12

    iget v4, v4, Lp/f;->g:I

    invoke-virtual {v1, v2, v4}, Ln/c;->d(Ln/h;I)V

    iget-object v2, v0, Lo/d;->d:Lp/k;

    iget-object v2, v2, Lp/o;->i:Lp/f;

    iget v2, v2, Lp/f;->g:I

    invoke-virtual {v1, v3, v2}, Ln/c;->d(Ln/h;I)V

    iget-object v2, v0, Lo/d;->e:Lp/m;

    iget-object v2, v2, Lp/o;->h:Lp/f;

    iget v2, v2, Lp/f;->g:I

    invoke-virtual {v1, v5, v2}, Ln/c;->d(Ln/h;I)V

    iget-object v2, v0, Lo/d;->e:Lp/m;

    iget-object v2, v2, Lp/o;->i:Lp/f;

    iget v2, v2, Lp/f;->g:I

    invoke-virtual {v1, v7, v2}, Ln/c;->d(Ln/h;I)V

    iget-object v2, v0, Lo/d;->e:Lp/m;

    iget-object v2, v2, Lp/m;->k:Lp/f;

    iget v2, v2, Lp/f;->g:I

    invoke-virtual {v1, v9, v2}, Ln/c;->d(Ln/h;I)V

    iget-object v2, v0, Lo/d;->M:Lo/d;

    if-eqz v2, :cond_11

    if-eqz v21, :cond_10

    const/4 v2, 0x0

    aget-boolean v4, v12, v2

    if-eqz v4, :cond_10

    invoke-virtual {v0}, Lo/d;->r()Z

    move-result v4

    if-nez v4, :cond_10

    iget-object v4, v0, Lo/d;->M:Lo/d;

    iget-object v4, v4, Lo/d;->D:Lo/c;

    invoke-virtual {v1, v4}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v1, v4, v3, v2, v5}, Ln/c;->f(Ln/h;Ln/h;II)V

    :cond_10
    if-eqz v19, :cond_11

    aget-boolean v2, v12, v16

    if-eqz v2, :cond_11

    invoke-virtual {v0}, Lo/d;->s()Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, v0, Lo/d;->M:Lo/d;

    iget-object v2, v2, Lo/d;->E:Lo/c;

    invoke-virtual {v1, v2}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v2

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-virtual {v1, v2, v7, v4, v5}, Ln/c;->f(Ln/h;Ln/h;II)V

    goto :goto_6

    :cond_11
    const/4 v4, 0x0

    :goto_6
    iput-boolean v4, v0, Lo/d;->h:Z

    iput-boolean v4, v0, Lo/d;->i:Z

    return-void

    :cond_12
    :goto_7
    const/4 v4, 0x0

    goto :goto_8

    :cond_13
    move-object/from16 v22, v4

    move-object/from16 v23, v6

    goto :goto_7

    :goto_8
    iget-object v6, v0, Lo/d;->M:Lo/d;

    if-eqz v6, :cond_17

    invoke-virtual {v0, v4}, Lo/d;->q(I)Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, v0, Lo/d;->M:Lo/d;

    check-cast v6, Lo/e;

    invoke-virtual {v6, v0, v4}, Lo/e;->G(Lo/d;I)V

    move/from16 v4, v16

    move v6, v4

    goto :goto_9

    :cond_14
    invoke-virtual {v0}, Lo/d;->r()Z

    move-result v4

    move/from16 v6, v16

    :goto_9
    invoke-virtual {v0, v6}, Lo/d;->q(I)Z

    move-result v13

    if-eqz v13, :cond_15

    iget-object v13, v0, Lo/d;->M:Lo/d;

    check-cast v13, Lo/e;

    invoke-virtual {v13, v0, v6}, Lo/e;->G(Lo/d;I)V

    const/4 v6, 0x1

    goto :goto_a

    :cond_15
    invoke-virtual {v0}, Lo/d;->s()Z

    move-result v6

    :goto_a
    if-nez v4, :cond_16

    if-eqz v21, :cond_16

    iget v13, v0, Lo/d;->Z:I

    const/16 v14, 0x8

    if-eq v13, v14, :cond_16

    iget-object v13, v10, Lo/c;->f:Lo/c;

    if-nez v13, :cond_16

    iget-object v13, v11, Lo/c;->f:Lo/c;

    if-nez v13, :cond_16

    iget-object v13, v0, Lo/d;->M:Lo/d;

    iget-object v13, v13, Lo/d;->D:Lo/c;

    invoke-virtual {v1, v13}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v13

    move/from16 v24, v4

    const/4 v4, 0x0

    const/4 v14, 0x1

    invoke-virtual {v1, v13, v3, v4, v14}, Ln/c;->f(Ln/h;Ln/h;II)V

    goto :goto_b

    :cond_16
    move/from16 v24, v4

    :goto_b
    move/from16 v4, v19

    move/from16 v19, v24

    goto :goto_c

    :cond_17
    move/from16 v4, v19

    const/4 v6, 0x0

    const/16 v19, 0x0

    :goto_c
    iget v13, v0, Lo/d;->N:I

    iget v14, v0, Lo/d;->U:I

    if-ge v13, v14, :cond_18

    :goto_d
    move/from16 v24, v4

    goto :goto_e

    :cond_18
    move v14, v13

    goto :goto_d

    :goto_e
    iget v4, v0, Lo/d;->O:I

    move-object/from16 v25, v5

    iget v5, v0, Lo/d;->V:I

    if-ge v4, v5, :cond_19

    move/from16 v26, v5

    goto :goto_f

    :cond_19
    move/from16 v26, v4

    :goto_f
    iget-object v5, v0, Lo/d;->i0:[I

    move-object/from16 v27, v5

    const/16 v18, 0x0

    aget v5, v27, v18

    move/from16 v28, v6

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1a

    const/16 v29, 0x1

    :goto_10
    move-object/from16 v30, v7

    const/16 v16, 0x1

    goto :goto_11

    :cond_1a
    const/16 v29, 0x0

    goto :goto_10

    :goto_11
    aget v7, v27, v16

    if-eq v7, v6, :cond_1b

    const/16 v31, 0x1

    goto :goto_12

    :cond_1b
    const/16 v31, 0x0

    :goto_12
    iget v6, v0, Lo/d;->Q:I

    iput v6, v0, Lo/d;->u:I

    move-object/from16 v33, v8

    iget v8, v0, Lo/d;->P:F

    iput v8, v0, Lo/d;->v:F

    move/from16 v34, v8

    iget v8, v0, Lo/d;->l:I

    move/from16 v35, v8

    iget v8, v0, Lo/d;->m:I

    const/16 v36, 0x0

    cmpl-float v36, v34, v36

    move/from16 v37, v8

    const/high16 v38, 0x3f800000    # 1.0f

    if-lez v36, :cond_2e

    iget v8, v0, Lo/d;->Z:I

    move-object/from16 v39, v9

    const/16 v9, 0x8

    if-eq v8, v9, :cond_2d

    const/4 v8, 0x3

    if-ne v5, v8, :cond_1c

    if-nez v35, :cond_1c

    move v9, v8

    goto :goto_13

    :cond_1c
    move/from16 v9, v35

    :goto_13
    if-ne v7, v8, :cond_1d

    if-nez v37, :cond_1d

    move-object/from16 v40, v10

    move v10, v8

    goto :goto_14

    :cond_1d
    move-object/from16 v40, v10

    move/from16 v10, v37

    :goto_14
    if-ne v5, v8, :cond_28

    if-ne v7, v8, :cond_28

    if-ne v9, v8, :cond_28

    if-ne v10, v8, :cond_28

    const/4 v8, -0x1

    if-ne v6, v8, :cond_1f

    if-eqz v29, :cond_1e

    if-nez v31, :cond_1e

    const/4 v4, 0x0

    iput v4, v0, Lo/d;->u:I

    goto :goto_15

    :cond_1e
    if-nez v29, :cond_1f

    if-eqz v31, :cond_1f

    const/4 v4, 0x1

    iput v4, v0, Lo/d;->u:I

    if-ne v6, v8, :cond_1f

    div-float v8, v38, v34

    iput v8, v0, Lo/d;->v:F

    :cond_1f
    :goto_15
    iget v4, v0, Lo/d;->u:I

    if-nez v4, :cond_21

    invoke-virtual/range {v22 .. v22}, Lo/c;->f()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual/range {v23 .. v23}, Lo/c;->f()Z

    move-result v4

    if-nez v4, :cond_21

    :cond_20
    const/4 v4, 0x1

    goto :goto_16

    :cond_21
    const/4 v4, 0x1

    goto :goto_17

    :goto_16
    iput v4, v0, Lo/d;->u:I

    goto :goto_18

    :goto_17
    iget v5, v0, Lo/d;->u:I

    if-ne v5, v4, :cond_23

    invoke-virtual/range {v40 .. v40}, Lo/c;->f()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {v11}, Lo/c;->f()Z

    move-result v4

    if-nez v4, :cond_23

    :cond_22
    const/4 v4, 0x0

    iput v4, v0, Lo/d;->u:I

    :cond_23
    :goto_18
    iget v4, v0, Lo/d;->u:I

    const/4 v8, -0x1

    if-ne v4, v8, :cond_26

    invoke-virtual/range {v22 .. v22}, Lo/c;->f()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual/range {v23 .. v23}, Lo/c;->f()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual/range {v40 .. v40}, Lo/c;->f()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {v11}, Lo/c;->f()Z

    move-result v4

    if-nez v4, :cond_26

    :cond_24
    invoke-virtual/range {v22 .. v22}, Lo/c;->f()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-virtual/range {v23 .. v23}, Lo/c;->f()Z

    move-result v4

    if-eqz v4, :cond_25

    const/4 v4, 0x0

    iput v4, v0, Lo/d;->u:I

    goto :goto_19

    :cond_25
    invoke-virtual/range {v40 .. v40}, Lo/c;->f()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-virtual {v11}, Lo/c;->f()Z

    move-result v4

    if-eqz v4, :cond_26

    iget v4, v0, Lo/d;->v:F

    div-float v8, v38, v4

    iput v8, v0, Lo/d;->v:F

    const/4 v4, 0x1

    iput v4, v0, Lo/d;->u:I

    :cond_26
    :goto_19
    iget v4, v0, Lo/d;->u:I

    const/4 v8, -0x1

    if-ne v4, v8, :cond_29

    iget v4, v0, Lo/d;->o:I

    if-lez v4, :cond_27

    iget v5, v0, Lo/d;->r:I

    if-nez v5, :cond_27

    const/4 v5, 0x0

    iput v5, v0, Lo/d;->u:I

    goto :goto_1b

    :cond_27
    if-nez v4, :cond_29

    iget v4, v0, Lo/d;->r:I

    if-lez v4, :cond_29

    iget v4, v0, Lo/d;->v:F

    div-float v8, v38, v4

    iput v8, v0, Lo/d;->v:F

    const/4 v4, 0x1

    iput v4, v0, Lo/d;->u:I

    goto :goto_1b

    :cond_28
    if-ne v5, v8, :cond_2a

    if-ne v9, v8, :cond_2a

    const/4 v8, 0x0

    iput v8, v0, Lo/d;->u:I

    int-to-float v4, v4

    mul-float v8, v34, v4

    float-to-int v4, v8

    const/4 v8, 0x3

    move v14, v4

    if-eq v7, v8, :cond_29

    move-object/from16 v4, v23

    move/from16 v29, v26

    const/4 v8, 0x4

    const/16 v31, 0x0

    :goto_1a
    move/from16 v23, v10

    goto :goto_20

    :cond_29
    :goto_1b
    move v8, v9

    move-object/from16 v4, v23

    move/from16 v29, v26

    :goto_1c
    const/16 v31, 0x1

    goto :goto_1a

    :cond_2a
    if-ne v7, v8, :cond_29

    if-ne v10, v8, :cond_29

    const/4 v4, 0x1

    iput v4, v0, Lo/d;->u:I

    const/4 v4, -0x1

    if-ne v6, v4, :cond_2b

    div-float v4, v38, v34

    iput v4, v0, Lo/d;->v:F

    :cond_2b
    iget v4, v0, Lo/d;->v:F

    int-to-float v6, v13

    mul-float/2addr v4, v6

    float-to-int v4, v4

    move/from16 v29, v4

    if-eq v5, v8, :cond_2c

    move v8, v9

    move-object/from16 v4, v23

    const/16 v23, 0x4

    :goto_1d
    const/16 v31, 0x0

    goto :goto_20

    :cond_2c
    move v8, v9

    move-object/from16 v4, v23

    goto :goto_1c

    :cond_2d
    :goto_1e
    move-object/from16 v40, v10

    goto :goto_1f

    :cond_2e
    move-object/from16 v39, v9

    goto :goto_1e

    :goto_1f
    move-object/from16 v4, v23

    move/from16 v29, v26

    move/from16 v8, v35

    move/from16 v23, v37

    goto :goto_1d

    :goto_20
    iget-object v5, v0, Lo/d;->n:[I

    const/16 v18, 0x0

    aput v8, v5, v18

    const/16 v16, 0x1

    aput v23, v5, v16

    if-eqz v31, :cond_30

    iget v5, v0, Lo/d;->u:I

    const/4 v6, -0x1

    if-eqz v5, :cond_2f

    if-ne v5, v6, :cond_31

    :cond_2f
    const/4 v5, 0x1

    goto :goto_21

    :cond_30
    const/4 v6, -0x1

    :cond_31
    const/4 v5, 0x0

    :goto_21
    if-eqz v31, :cond_33

    iget v7, v0, Lo/d;->u:I

    const/4 v9, 0x1

    if-eq v7, v9, :cond_32

    if-ne v7, v6, :cond_33

    :cond_32
    const/16 v34, 0x1

    :goto_22
    const/16 v18, 0x0

    goto :goto_23

    :cond_33
    const/16 v34, 0x0

    goto :goto_22

    :goto_23
    aget v6, v27, v18

    const/4 v7, 0x2

    if-ne v6, v7, :cond_34

    instance-of v6, v0, Lo/e;

    if-eqz v6, :cond_34

    const/4 v9, 0x1

    goto :goto_24

    :cond_34
    const/4 v9, 0x0

    :goto_24
    if-eqz v9, :cond_35

    const/4 v13, 0x0

    goto :goto_25

    :cond_35
    move v13, v14

    :goto_25
    iget-object v6, v0, Lo/d;->I:Lo/c;

    invoke-virtual {v6}, Lo/c;->f()Z

    move-result v7

    const/16 v16, 0x1

    xor-int/lit8 v7, v7, 0x1

    move/from16 v14, v21

    const/16 v18, 0x0

    aget-boolean v21, v15, v18

    aget-boolean v35, v15, v16

    iget v10, v0, Lo/d;->j:I

    iget-object v15, v0, Lo/d;->w:[I

    const/16 v36, 0x0

    move-object/from16 v26, v4

    const/4 v4, 0x2

    if-eq v10, v4, :cond_38

    iget-boolean v10, v0, Lo/d;->h:Z

    if-nez v10, :cond_38

    if-eqz p2, :cond_39

    iget-object v10, v0, Lo/d;->d:Lp/k;

    if-eqz v10, :cond_39

    iget-object v4, v10, Lp/o;->h:Lp/f;

    move/from16 v37, v5

    iget-boolean v5, v4, Lp/f;->j:Z

    if-eqz v5, :cond_36

    iget-object v5, v10, Lp/o;->i:Lp/f;

    iget-boolean v5, v5, Lp/f;->j:Z

    if-nez v5, :cond_37

    :cond_36
    :goto_26
    const/16 v10, 0x8

    goto :goto_27

    :cond_37
    if-eqz p2, :cond_38

    iget v4, v4, Lp/f;->g:I

    invoke-virtual {v1, v2, v4}, Ln/c;->d(Ln/h;I)V

    iget-object v4, v0, Lo/d;->d:Lp/k;

    iget-object v4, v4, Lp/o;->i:Lp/f;

    iget v4, v4, Lp/f;->g:I

    invoke-virtual {v1, v3, v4}, Ln/c;->d(Ln/h;I)V

    iget-object v4, v0, Lo/d;->M:Lo/d;

    if-eqz v4, :cond_38

    if-eqz v14, :cond_38

    const/4 v4, 0x0

    aget-boolean v5, v12, v4

    if-eqz v5, :cond_38

    invoke-virtual {v0}, Lo/d;->r()Z

    move-result v5

    if-nez v5, :cond_38

    iget-object v5, v0, Lo/d;->M:Lo/d;

    iget-object v5, v5, Lo/d;->D:Lo/c;

    invoke-virtual {v1, v5}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v5

    const/16 v10, 0x8

    invoke-virtual {v1, v5, v3, v4, v10}, Ln/c;->f(Ln/h;Ln/h;II)V

    :cond_38
    move-object/from16 v48, v2

    move-object/from16 v49, v3

    move-object/from16 v42, v12

    move v3, v14

    move-object/from16 v44, v15

    move-object/from16 v41, v22

    move/from16 v4, v24

    move-object/from16 v50, v25

    move-object/from16 v53, v26

    move/from16 v20, v28

    move-object/from16 v51, v30

    move-object/from16 v54, v33

    move-object/from16 v52, v39

    move-object/from16 v28, v6

    move/from16 v22, v8

    move-object/from16 v30, v27

    move/from16 v27, v7

    goto/16 :goto_2b

    :cond_39
    move/from16 v37, v5

    goto :goto_26

    :goto_27
    iget-object v4, v0, Lo/d;->M:Lo/d;

    if-eqz v4, :cond_3a

    iget-object v4, v4, Lo/d;->D:Lo/c;

    invoke-virtual {v1, v4}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v4

    goto :goto_28

    :cond_3a
    move-object/from16 v4, v36

    :goto_28
    iget-object v5, v0, Lo/d;->M:Lo/d;

    if-eqz v5, :cond_3b

    iget-object v5, v5, Lo/d;->B:Lo/c;

    invoke-virtual {v1, v5}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v5

    :goto_29
    const/16 v18, 0x0

    goto :goto_2a

    :cond_3b
    move-object/from16 v5, v36

    goto :goto_29

    :goto_2a
    aget-boolean v20, v12, v18

    move-object/from16 v41, v22

    move/from16 v22, v8

    aget v8, v27, v18

    move-object/from16 v42, v12

    iget v12, v0, Lo/d;->R:I

    move-object/from16 v43, v3

    move v3, v14

    iget v14, v0, Lo/d;->U:I

    move-object/from16 v44, v15

    aget v15, v44, v18

    iget v10, v0, Lo/d;->W:F

    const/16 v16, 0x1

    aget v1, v27, v16

    move-object/from16 v45, v2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3c

    move/from16 v18, v16

    :cond_3c
    iget v1, v0, Lo/d;->o:I

    iget v2, v0, Lo/d;->p:I

    move/from16 v46, v1

    iget v1, v0, Lo/d;->q:F

    move-object/from16 v47, v25

    move/from16 v25, v2

    const/4 v2, 0x1

    move-object/from16 v16, v6

    move-object v6, v5

    move/from16 v5, v20

    move/from16 v20, v28

    move-object/from16 v28, v16

    move/from16 v16, v10

    move-object/from16 v53, v26

    move-object/from16 v51, v30

    move-object/from16 v54, v33

    move/from16 v17, v37

    move-object/from16 v52, v39

    move-object/from16 v10, v40

    move-object/from16 v49, v43

    move-object/from16 v48, v45

    move-object/from16 v50, v47

    move/from16 v26, v1

    move-object/from16 v30, v27

    move-object/from16 v1, p1

    move/from16 v27, v7

    move-object v7, v4

    move/from16 v4, v24

    move/from16 v24, v46

    invoke-virtual/range {v0 .. v27}, Lo/d;->d(Ln/c;ZZZZLn/h;Ln/h;IZLo/c;Lo/c;IIIIFZZZZZIIIIFZ)V

    :goto_2b
    if-eqz p2, :cond_3f

    iget-object v2, v0, Lo/d;->e:Lp/m;

    if-eqz v2, :cond_3f

    iget-object v5, v2, Lp/o;->h:Lp/f;

    iget-boolean v6, v5, Lp/f;->j:Z

    if-eqz v6, :cond_3f

    iget-object v2, v2, Lp/o;->i:Lp/f;

    iget-boolean v2, v2, Lp/f;->j:Z

    if-eqz v2, :cond_3f

    iget v2, v5, Lp/f;->g:I

    move-object/from16 v5, v50

    invoke-virtual {v1, v5, v2}, Ln/c;->d(Ln/h;I)V

    iget-object v2, v0, Lo/d;->e:Lp/m;

    iget-object v2, v2, Lp/o;->i:Lp/f;

    iget v2, v2, Lp/f;->g:I

    move-object/from16 v6, v51

    invoke-virtual {v1, v6, v2}, Ln/c;->d(Ln/h;I)V

    iget-object v2, v0, Lo/d;->e:Lp/m;

    iget-object v2, v2, Lp/m;->k:Lp/f;

    iget v2, v2, Lp/f;->g:I

    move-object/from16 v7, v52

    invoke-virtual {v1, v7, v2}, Ln/c;->d(Ln/h;I)V

    iget-object v2, v0, Lo/d;->M:Lo/d;

    if-eqz v2, :cond_3e

    if-nez v20, :cond_3e

    if-eqz v4, :cond_3e

    const/16 v16, 0x1

    aget-boolean v8, v42, v16

    if-eqz v8, :cond_3d

    iget-object v2, v2, Lo/d;->E:Lo/c;

    invoke-virtual {v1, v2}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v2

    const/4 v8, 0x0

    const/16 v14, 0x8

    invoke-virtual {v1, v2, v6, v8, v14}, Ln/c;->f(Ln/h;Ln/h;II)V

    goto :goto_2c

    :cond_3d
    const/4 v8, 0x0

    const/16 v14, 0x8

    goto :goto_2c

    :cond_3e
    const/4 v8, 0x0

    const/16 v14, 0x8

    const/16 v16, 0x1

    :goto_2c
    move v2, v8

    goto :goto_2d

    :cond_3f
    move-object/from16 v5, v50

    move-object/from16 v6, v51

    move-object/from16 v7, v52

    const/4 v8, 0x0

    const/16 v14, 0x8

    const/16 v16, 0x1

    move/from16 v2, v16

    :goto_2d
    iget v9, v0, Lo/d;->k:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_40

    move v15, v8

    goto :goto_2e

    :cond_40
    move v15, v2

    :goto_2e
    const/4 v2, 0x5

    if-eqz v15, :cond_4b

    iget-boolean v9, v0, Lo/d;->i:Z

    if-nez v9, :cond_4b

    aget v9, v30, v16

    if-ne v9, v10, :cond_41

    instance-of v9, v0, Lo/e;

    if-eqz v9, :cond_41

    move/from16 v9, v16

    goto :goto_2f

    :cond_41
    move v9, v8

    :goto_2f
    if-eqz v9, :cond_42

    move v13, v8

    goto :goto_30

    :cond_42
    move/from16 v13, v29

    :goto_30
    iget-object v11, v0, Lo/d;->M:Lo/d;

    if-eqz v11, :cond_43

    iget-object v11, v11, Lo/d;->E:Lo/c;

    invoke-virtual {v1, v11}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v11

    goto :goto_31

    :cond_43
    move-object/from16 v11, v36

    :goto_31
    iget-object v12, v0, Lo/d;->M:Lo/d;

    if-eqz v12, :cond_44

    iget-object v12, v12, Lo/d;->C:Lo/c;

    invoke-virtual {v1, v12}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v36

    :cond_44
    iget v12, v0, Lo/d;->T:I

    if-gtz v12, :cond_45

    iget v15, v0, Lo/d;->Z:I

    if-ne v15, v14, :cond_46

    :cond_45
    move-object/from16 v15, v54

    goto :goto_32

    :cond_46
    move-object/from16 v10, v53

    goto :goto_33

    :goto_32
    iget-object v10, v15, Lo/c;->f:Lo/c;

    if-eqz v10, :cond_48

    invoke-virtual {v1, v7, v5, v12, v14}, Ln/c;->e(Ln/h;Ln/h;II)V

    iget-object v10, v15, Lo/c;->f:Lo/c;

    invoke-virtual {v1, v10}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v10

    invoke-virtual {v1, v7, v10, v8, v14}, Ln/c;->e(Ln/h;Ln/h;II)V

    move-object/from16 v10, v53

    if-eqz v4, :cond_47

    invoke-virtual {v1, v10}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v7

    invoke-virtual {v1, v11, v7, v8, v2}, Ln/c;->f(Ln/h;Ln/h;II)V

    :cond_47
    move/from16 v27, v8

    goto :goto_33

    :cond_48
    move-object/from16 v10, v53

    iget v15, v0, Lo/d;->Z:I

    if-ne v15, v14, :cond_49

    invoke-virtual {v1, v7, v5, v8, v14}, Ln/c;->e(Ln/h;Ln/h;II)V

    goto :goto_33

    :cond_49
    invoke-virtual {v1, v7, v5, v12, v14}, Ln/c;->e(Ln/h;Ln/h;II)V

    :goto_33
    aget-boolean v7, v42, v16

    move/from16 v18, v8

    aget v8, v30, v16

    iget v12, v0, Lo/d;->S:I

    iget v14, v0, Lo/d;->V:I

    aget v15, v44, v16

    iget v2, v0, Lo/d;->X:F

    aget v1, v30, v18

    move/from16 v21, v2

    const/4 v2, 0x3

    move/from16 v32, v18

    if-ne v1, v2, :cond_4a

    move/from16 v18, v16

    :cond_4a
    iget v1, v0, Lo/d;->r:I

    iget v2, v0, Lo/d;->s:I

    move/from16 v24, v1

    iget v1, v0, Lo/d;->t:F

    move/from16 v25, v2

    const/4 v2, 0x0

    move/from16 v16, v4

    move v4, v3

    move/from16 v3, v16

    move/from16 v16, v20

    move/from16 v20, v19

    move/from16 v19, v16

    move/from16 v16, v23

    move/from16 v23, v22

    move/from16 v22, v16

    move/from16 v26, v1

    move-object/from16 v55, v5

    move-object/from16 v56, v6

    move v5, v7

    move-object v7, v11

    move/from16 v16, v21

    move/from16 v17, v34

    move/from16 v21, v35

    move-object/from16 v6, v36

    move-object/from16 v1, p1

    move-object v11, v10

    move-object/from16 v10, v41

    invoke-virtual/range {v0 .. v27}, Lo/d;->d(Ln/c;ZZZZLn/h;Ln/h;IZLo/c;Lo/c;IIIIFZZZZZIIIIFZ)V

    goto :goto_34

    :cond_4b
    move-object/from16 v55, v5

    move-object/from16 v56, v6

    :goto_34
    if-eqz v31, :cond_4d

    iget v2, v0, Lo/d;->u:I

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4c

    iget v2, v0, Lo/d;->v:F

    invoke-virtual {v1}, Ln/c;->l()Ln/b;

    move-result-object v4

    iget-object v5, v4, Ln/b;->d:Ln/a;

    move-object/from16 v6, v56

    invoke-virtual {v5, v6, v3}, Ln/a;->g(Ln/h;F)V

    iget-object v3, v4, Ln/b;->d:Ln/a;

    move-object/from16 v5, v55

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5, v7}, Ln/a;->g(Ln/h;F)V

    iget-object v3, v4, Ln/b;->d:Ln/a;

    move-object/from16 v8, v49

    invoke-virtual {v3, v8, v2}, Ln/a;->g(Ln/h;F)V

    iget-object v3, v4, Ln/b;->d:Ln/a;

    neg-float v2, v2

    move-object/from16 v9, v48

    invoke-virtual {v3, v9, v2}, Ln/a;->g(Ln/h;F)V

    invoke-virtual {v1, v4}, Ln/c;->c(Ln/b;)V

    goto :goto_35

    :cond_4c
    move-object/from16 v9, v48

    move-object/from16 v8, v49

    move-object/from16 v5, v55

    move-object/from16 v6, v56

    const/high16 v7, 0x3f800000    # 1.0f

    iget v2, v0, Lo/d;->v:F

    invoke-virtual {v1}, Ln/c;->l()Ln/b;

    move-result-object v4

    iget-object v10, v4, Ln/b;->d:Ln/a;

    invoke-virtual {v10, v8, v3}, Ln/a;->g(Ln/h;F)V

    iget-object v3, v4, Ln/b;->d:Ln/a;

    invoke-virtual {v3, v9, v7}, Ln/a;->g(Ln/h;F)V

    iget-object v3, v4, Ln/b;->d:Ln/a;

    invoke-virtual {v3, v6, v2}, Ln/a;->g(Ln/h;F)V

    iget-object v3, v4, Ln/b;->d:Ln/a;

    neg-float v2, v2

    invoke-virtual {v3, v5, v2}, Ln/a;->g(Ln/h;F)V

    invoke-virtual {v1, v4}, Ln/c;->c(Ln/b;)V

    :cond_4d
    :goto_35
    invoke-virtual/range {v28 .. v28}, Lo/c;->f()Z

    move-result v2

    if-eqz v2, :cond_4e

    move-object/from16 v2, v28

    iget-object v3, v2, Lo/c;->f:Lo/c;

    iget-object v3, v3, Lo/c;->d:Lo/d;

    iget v4, v0, Lo/d;->x:F

    const/high16 v5, 0x42b40000    # 90.0f

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2}, Lo/c;->d()I

    move-result v2

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Lo/d;->g(I)Lo/c;

    move-result-object v5

    invoke-virtual {v1, v5}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v5

    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Lo/d;->g(I)Lo/c;

    move-result-object v6

    invoke-virtual {v1, v6}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v6

    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Lo/d;->g(I)Lo/c;

    move-result-object v10

    invoke-virtual {v1, v10}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v10

    const/4 v11, 0x5

    invoke-virtual {v0, v11}, Lo/d;->g(I)Lo/c;

    move-result-object v12

    invoke-virtual {v1, v12}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v12

    invoke-virtual {v3, v7}, Lo/d;->g(I)Lo/c;

    move-result-object v7

    invoke-virtual {v1, v7}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v7

    invoke-virtual {v3, v8}, Lo/d;->g(I)Lo/c;

    move-result-object v8

    invoke-virtual {v1, v8}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v8

    invoke-virtual {v3, v9}, Lo/d;->g(I)Lo/c;

    move-result-object v9

    invoke-virtual {v1, v9}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v9

    invoke-virtual {v3, v11}, Lo/d;->g(I)Lo/c;

    move-result-object v3

    invoke-virtual {v1, v3}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v3

    invoke-virtual {v1}, Ln/c;->l()Ln/b;

    move-result-object v11

    float-to-double v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    move-wide/from16 v17, v13

    int-to-double v13, v2

    move-wide/from16 v19, v13

    mul-double v13, v15, v19

    double-to-float v2, v13

    iget-object v4, v11, Ln/b;->d:Ln/a;

    const/high16 v13, 0x3f000000    # 0.5f

    invoke-virtual {v4, v8, v13}, Ln/a;->g(Ln/h;F)V

    iget-object v4, v11, Ln/b;->d:Ln/a;

    invoke-virtual {v4, v3, v13}, Ln/a;->g(Ln/h;F)V

    iget-object v3, v11, Ln/b;->d:Ln/a;

    const/high16 v4, -0x41000000    # -0.5f

    invoke-virtual {v3, v6, v4}, Ln/a;->g(Ln/h;F)V

    iget-object v3, v11, Ln/b;->d:Ln/a;

    invoke-virtual {v3, v12, v4}, Ln/a;->g(Ln/h;F)V

    neg-float v2, v2

    iput v2, v11, Ln/b;->b:F

    invoke-virtual {v1, v11}, Ln/c;->c(Ln/b;)V

    invoke-virtual {v1}, Ln/c;->l()Ln/b;

    move-result-object v2

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double v11, v11, v19

    double-to-float v3, v11

    iget-object v6, v2, Ln/b;->d:Ln/a;

    invoke-virtual {v6, v7, v13}, Ln/a;->g(Ln/h;F)V

    iget-object v6, v2, Ln/b;->d:Ln/a;

    invoke-virtual {v6, v9, v13}, Ln/a;->g(Ln/h;F)V

    iget-object v6, v2, Ln/b;->d:Ln/a;

    invoke-virtual {v6, v5, v4}, Ln/a;->g(Ln/h;F)V

    iget-object v5, v2, Ln/b;->d:Ln/a;

    invoke-virtual {v5, v10, v4}, Ln/a;->g(Ln/h;F)V

    neg-float v3, v3

    iput v3, v2, Ln/b;->b:F

    invoke-virtual {v1, v2}, Ln/c;->c(Ln/b;)V

    :cond_4e
    const/4 v4, 0x0

    iput-boolean v4, v0, Lo/d;->h:Z

    iput-boolean v4, v0, Lo/d;->i:Z

    return-void
.end method

.method public c()Z
    .locals 2

    iget v0, p0, Lo/d;->Z:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d(Ln/c;ZZZZLn/h;Ln/h;IZLo/c;Lo/c;IIIIFZZZZZIIIIFZ)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p14

    move/from16 v2, p15

    move/from16 v4, p24

    move/from16 v5, p25

    move/from16 v6, p26

    invoke-virtual {v1, v12}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v7

    invoke-virtual {v1, v13}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v8

    iget-object v9, v12, Lo/c;->f:Lo/c;

    invoke-virtual {v1, v9}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v9

    iget-object v15, v13, Lo/c;->f:Lo/c;

    invoke-virtual {v1, v15}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v15

    invoke-virtual {v12}, Lo/c;->f()Z

    move-result v16

    invoke-virtual {v13}, Lo/c;->f()Z

    move-result v17

    iget-object v11, v0, Lo/d;->I:Lo/c;

    invoke-virtual {v11}, Lo/c;->f()Z

    move-result v11

    if-eqz v17, :cond_0

    add-int/lit8 v18, v16, 0x1

    goto :goto_0

    :cond_0
    move/from16 v18, v16

    :goto_0
    if-eqz v11, :cond_1

    add-int/lit8 v18, v18, 0x1

    :cond_1
    move/from16 v19, v11

    move/from16 v11, v18

    if-eqz p17, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :cond_2
    move/from16 v3, p22

    :goto_1
    invoke-static/range {p8 .. p8}, Ln/g;->b(I)I

    move-result v13

    const/4 v10, 0x1

    move-object/from16 v20, v15

    if-eqz v13, :cond_3

    if-eq v13, v10, :cond_3

    const/4 v10, 0x2

    if-eq v13, v10, :cond_4

    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    :cond_4
    const/4 v10, 0x4

    if-eq v3, v10, :cond_3

    const/4 v10, 0x1

    :goto_2
    iget v13, v0, Lo/d;->Z:I

    const/16 v15, 0x8

    if-ne v13, v15, :cond_5

    const/4 v10, 0x0

    const/4 v13, 0x0

    goto :goto_3

    :cond_5
    move v13, v10

    move/from16 v10, p13

    :goto_3
    if-eqz p27, :cond_8

    if-nez v16, :cond_7

    if-nez v17, :cond_7

    if-nez v19, :cond_7

    move/from16 v15, p12

    invoke-virtual {v1, v7, v15}, Ln/c;->d(Ln/h;I)V

    :cond_6
    move/from16 p13, v13

    const/16 v13, 0x8

    goto :goto_4

    :cond_7
    if-eqz v16, :cond_6

    if-nez v17, :cond_6

    invoke-virtual {v12}, Lo/c;->d()I

    move-result v15

    move/from16 p13, v13

    const/16 v13, 0x8

    invoke-virtual {v1, v7, v9, v15, v13}, Ln/c;->e(Ln/h;Ln/h;II)V

    goto :goto_4

    :cond_8
    move/from16 p13, v13

    move v13, v15

    :goto_4
    if-nez p13, :cond_c

    if-eqz p9, :cond_a

    const/4 v6, 0x3

    const/4 v15, 0x0

    invoke-virtual {v1, v8, v7, v15, v6}, Ln/c;->e(Ln/h;Ln/h;II)V

    if-lez v14, :cond_9

    invoke-virtual {v1, v8, v7, v14, v13}, Ln/c;->f(Ln/h;Ln/h;II)V

    :cond_9
    const v6, 0x7fffffff

    if-ge v2, v6, :cond_b

    invoke-virtual {v1, v8, v7, v2, v13}, Ln/c;->g(Ln/h;Ln/h;II)V

    goto :goto_5

    :cond_a
    invoke-virtual {v1, v8, v7, v10, v13}, Ln/c;->e(Ln/h;Ln/h;II)V

    :cond_b
    :goto_5
    move/from16 v10, p5

    move/from16 v15, p13

    move v13, v4

    goto/16 :goto_a

    :cond_c
    const/4 v2, 0x2

    if-eq v11, v2, :cond_f

    if-nez p17, :cond_f

    const/4 v2, 0x1

    if-eq v3, v2, :cond_d

    if-nez v3, :cond_f

    :cond_d
    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lez v5, :cond_e

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_e
    const/16 v13, 0x8

    invoke-virtual {v1, v8, v7, v2, v13}, Ln/c;->e(Ln/h;Ln/h;II)V

    move/from16 v10, p5

    move v13, v4

    :goto_6
    const/4 v15, 0x0

    goto/16 :goto_a

    :cond_f
    const/4 v2, -0x2

    if-ne v4, v2, :cond_10

    move v4, v10

    :cond_10
    if-ne v5, v2, :cond_11

    move v5, v10

    :cond_11
    if-lez v10, :cond_12

    const/4 v2, 0x1

    if-eq v3, v2, :cond_12

    const/4 v10, 0x0

    :cond_12
    const/16 v13, 0x8

    if-lez v4, :cond_13

    invoke-virtual {v1, v8, v7, v4, v13}, Ln/c;->f(Ln/h;Ln/h;II)V

    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v10

    :cond_13
    const/4 v2, 0x1

    if-lez v5, :cond_15

    if-eqz p3, :cond_14

    if-ne v3, v2, :cond_14

    goto :goto_7

    :cond_14
    invoke-virtual {v1, v8, v7, v5, v13}, Ln/c;->g(Ln/h;Ln/h;II)V

    :goto_7
    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v10

    :cond_15
    if-ne v3, v2, :cond_18

    if-eqz p3, :cond_16

    invoke-virtual {v1, v8, v7, v10, v13}, Ln/c;->e(Ln/h;Ln/h;II)V

    const/4 v2, 0x5

    goto :goto_5

    :cond_16
    if-eqz p19, :cond_17

    const/4 v2, 0x5

    invoke-virtual {v1, v8, v7, v10, v2}, Ln/c;->e(Ln/h;Ln/h;II)V

    invoke-virtual {v1, v8, v7, v10, v13}, Ln/c;->g(Ln/h;Ln/h;II)V

    goto :goto_5

    :cond_17
    const/4 v2, 0x5

    invoke-virtual {v1, v8, v7, v10, v2}, Ln/c;->e(Ln/h;Ln/h;II)V

    invoke-virtual {v1, v8, v7, v10, v13}, Ln/c;->g(Ln/h;Ln/h;II)V

    goto :goto_5

    :cond_18
    const/4 v2, 0x5

    const/4 v10, 0x2

    if-ne v3, v10, :cond_1b

    iget v13, v12, Lo/c;->e:I

    const/4 v15, 0x3

    if-eq v13, v15, :cond_19

    if-ne v13, v2, :cond_1a

    :cond_19
    const/4 v13, 0x4

    goto :goto_8

    :cond_1a
    iget-object v2, v0, Lo/d;->M:Lo/d;

    invoke-virtual {v2, v10}, Lo/d;->g(I)Lo/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v2

    iget-object v10, v0, Lo/d;->M:Lo/d;

    const/4 v13, 0x4

    invoke-virtual {v10, v13}, Lo/d;->g(I)Lo/c;

    move-result-object v10

    invoke-virtual {v1, v10}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v10

    goto :goto_9

    :goto_8
    iget-object v2, v0, Lo/d;->M:Lo/d;

    const/4 v15, 0x3

    invoke-virtual {v2, v15}, Lo/d;->g(I)Lo/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v2

    iget-object v10, v0, Lo/d;->M:Lo/d;

    const/4 v15, 0x5

    invoke-virtual {v10, v15}, Lo/d;->g(I)Lo/c;

    move-result-object v10

    invoke-virtual {v1, v10}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v10

    :goto_9
    invoke-virtual {v1}, Ln/c;->l()Ln/b;

    move-result-object v15

    iget-object v13, v15, Ln/b;->d:Ln/a;

    move/from16 p9, v4

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v13, v8, v4}, Ln/a;->g(Ln/h;F)V

    iget-object v4, v15, Ln/b;->d:Ln/a;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v4, v7, v13}, Ln/a;->g(Ln/h;F)V

    iget-object v4, v15, Ln/b;->d:Ln/a;

    invoke-virtual {v4, v10, v6}, Ln/a;->g(Ln/h;F)V

    iget-object v4, v15, Ln/b;->d:Ln/a;

    neg-float v6, v6

    invoke-virtual {v4, v2, v6}, Ln/a;->g(Ln/h;F)V

    invoke-virtual {v1, v15}, Ln/c;->c(Ln/b;)V

    move/from16 v10, p5

    move/from16 v13, p9

    goto/16 :goto_6

    :cond_1b
    move/from16 p9, v4

    move/from16 v13, p9

    move/from16 v15, p13

    const/4 v10, 0x1

    :goto_a
    if-eqz p27, :cond_4f

    if-eqz p19, :cond_1c

    move-object/from16 v12, p7

    move-object v2, v7

    move-object v7, v8

    move/from16 p9, v10

    const/4 v3, 0x2

    const/4 v15, 0x3

    move-object/from16 v10, p6

    goto/16 :goto_27

    :cond_1c
    if-nez v16, :cond_1d

    if-nez v17, :cond_1d

    if-nez v19, :cond_1d

    :goto_b
    move-object/from16 v13, p11

    move-object v7, v8

    move/from16 p9, v10

    move-object/from16 v6, v20

    goto/16 :goto_23

    :cond_1d
    if-eqz v16, :cond_1e

    if-nez v17, :cond_1e

    goto :goto_b

    :cond_1e
    if-nez v16, :cond_20

    if-eqz v17, :cond_20

    invoke-virtual/range {p11 .. p11}, Lo/c;->d()I

    move-result v2

    neg-int v2, v2

    move-object/from16 v6, v20

    const/16 v13, 0x8

    invoke-virtual {v1, v8, v6, v2, v13}, Ln/c;->e(Ln/h;Ln/h;II)V

    if-eqz p3, :cond_1f

    move-object/from16 v11, p6

    const/4 v2, 0x0

    const/4 v15, 0x5

    invoke-virtual {v1, v7, v11, v2, v15}, Ln/c;->f(Ln/h;Ln/h;II)V

    :cond_1f
    move-object/from16 v13, p11

    move-object v7, v8

    move/from16 p9, v10

    goto/16 :goto_23

    :cond_20
    move-object/from16 v11, p6

    move-object/from16 v6, v20

    if-eqz v16, :cond_1f

    if-eqz v17, :cond_1f

    iget-object v2, v12, Lo/c;->f:Lo/c;

    iget-object v2, v2, Lo/c;->d:Lo/d;

    move-object/from16 v4, p11

    move/from16 p5, v5

    iget-object v5, v4, Lo/c;->f:Lo/c;

    iget-object v5, v5, Lo/c;->d:Lo/d;

    move/from16 p9, v10

    iget-object v10, v0, Lo/d;->M:Lo/d;

    const/16 v16, 0x6

    if-eqz v15, :cond_32

    if-nez v3, :cond_25

    if-nez p5, :cond_22

    if-nez v13, :cond_22

    iget-boolean v12, v9, Ln/h;->f:Z

    if-eqz v12, :cond_21

    iget-boolean v12, v6, Ln/h;->f:Z

    if-eqz v12, :cond_21

    invoke-virtual/range {p10 .. p10}, Lo/c;->d()I

    move-result v2

    const/16 v13, 0x8

    invoke-virtual {v1, v7, v9, v2, v13}, Ln/c;->e(Ln/h;Ln/h;II)V

    invoke-virtual {v4}, Lo/c;->d()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, v8, v6, v2, v13}, Ln/c;->e(Ln/h;Ln/h;II)V

    return-void

    :cond_21
    const/16 v12, 0x8

    const/16 v17, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v23, 0x8

    goto :goto_c

    :cond_22
    const/4 v12, 0x5

    const/16 v17, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v23, 0x5

    :goto_c
    instance-of v1, v2, Lo/a;

    if-nez v1, :cond_24

    instance-of v1, v5, Lo/a;

    if-eqz v1, :cond_23

    goto :goto_e

    :cond_23
    move-object v1, v9

    move v9, v3

    move-object v3, v1

    move-object v1, v8

    move-object v8, v7

    move-object v7, v1

    move-object/from16 v1, p1

    move/from16 v24, v19

    move/from16 v25, v23

    move/from16 v19, v12

    move/from16 v23, v17

    move-object/from16 v12, p7

    :goto_d
    move/from16 v17, v16

    goto/16 :goto_19

    :cond_24
    :goto_e
    move-object v1, v9

    move v9, v3

    move-object v3, v1

    move-object v1, v8

    move-object v8, v7

    move-object v7, v1

    move-object/from16 v1, p1

    move-object/from16 v12, p7

    move/from16 v24, v19

    move/from16 v25, v23

    const/16 v19, 0x4

    move/from16 v23, v17

    goto :goto_d

    :cond_25
    const/4 v1, 0x1

    if-ne v3, v1, :cond_26

    move-object v1, v9

    move v9, v3

    move-object v3, v1

    move-object v1, v8

    move-object v8, v7

    move-object v7, v1

    move-object/from16 v1, p1

    move-object/from16 v12, p7

    move/from16 v17, v16

    const/16 v19, 0x4

    const/16 v20, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x0

    :goto_f
    const/16 v25, 0x8

    goto/16 :goto_19

    :cond_26
    const/4 v1, 0x3

    if-ne v3, v1, :cond_31

    iget v12, v0, Lo/d;->u:I

    const/4 v1, -0x1

    if-ne v12, v1, :cond_29

    if-eqz p20, :cond_28

    move-object v1, v9

    move v9, v3

    move-object v3, v1

    move-object v1, v8

    move-object v8, v7

    move-object v7, v1

    move-object/from16 v1, p1

    move-object/from16 v12, p7

    if-eqz p3, :cond_27

    const/16 v17, 0x5

    :goto_10
    const/16 v19, 0x5

    const/16 v20, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x1

    goto :goto_f

    :cond_27
    const/16 v17, 0x4

    goto :goto_10

    :cond_28
    move-object v1, v9

    move v9, v3

    move-object v3, v1

    move-object v1, v8

    move-object v8, v7

    move-object v7, v1

    move-object/from16 v1, p1

    move-object/from16 v12, p7

    const/16 v17, 0x8

    goto :goto_10

    :cond_29
    if-eqz p17, :cond_2c

    move/from16 v1, p23

    const/4 v12, 0x2

    if-eq v1, v12, :cond_2b

    const/4 v12, 0x1

    if-ne v1, v12, :cond_2a

    goto :goto_11

    :cond_2a
    const/4 v1, 0x5

    const/16 v12, 0x8

    goto :goto_12

    :cond_2b
    :goto_11
    const/4 v1, 0x4

    const/4 v12, 0x5

    :goto_12
    move-object/from16 v17, v9

    move v9, v3

    move-object/from16 v3, v17

    move-object/from16 v17, v8

    move-object v8, v7

    move-object/from16 v7, v17

    move/from16 v19, v1

    move/from16 v25, v12

    move/from16 v17, v16

    const/16 v20, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v1, p1

    move-object/from16 v12, p7

    goto/16 :goto_19

    :cond_2c
    if-lez p5, :cond_2d

    move-object v1, v9

    move v9, v3

    move-object v3, v1

    move-object v1, v8

    move-object v8, v7

    move-object v7, v1

    move-object/from16 v1, p1

    move-object/from16 v12, p7

    move/from16 v17, v16

    const/16 v19, 0x5

    :goto_13
    const/16 v20, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x1

    :goto_14
    const/16 v25, 0x5

    goto/16 :goto_19

    :cond_2d
    if-nez p5, :cond_30

    if-nez v13, :cond_30

    if-nez p20, :cond_2e

    move-object v1, v9

    move v9, v3

    move-object v3, v1

    move-object v1, v8

    move-object v8, v7

    move-object v7, v1

    move-object/from16 v1, p1

    move-object/from16 v12, p7

    move/from16 v17, v16

    const/16 v19, 0x8

    goto :goto_13

    :cond_2e
    if-eq v2, v10, :cond_2f

    if-eq v5, v10, :cond_2f

    const/4 v1, 0x4

    goto :goto_15

    :cond_2f
    const/4 v1, 0x5

    :goto_15
    move-object v12, v9

    move v9, v3

    move-object v3, v12

    move-object v12, v8

    move-object v8, v7

    move-object v7, v12

    move-object/from16 v12, p7

    move/from16 v25, v1

    move/from16 v17, v16

    const/16 v19, 0x4

    const/16 v20, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_19

    :cond_30
    move-object v1, v9

    move v9, v3

    move-object v3, v1

    move-object v1, v8

    move-object v8, v7

    move-object v7, v1

    move-object/from16 v1, p1

    move-object/from16 v12, p7

    move/from16 v17, v16

    const/16 v19, 0x4

    goto :goto_13

    :cond_31
    move-object v1, v9

    move v9, v3

    move-object v3, v1

    move-object v1, v8

    move-object v8, v7

    move-object v7, v1

    move-object/from16 v1, p1

    move-object/from16 v12, p7

    move/from16 v17, v16

    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v23, 0x0

    :goto_16
    const/16 v24, 0x0

    goto :goto_14

    :cond_32
    iget-boolean v1, v9, Ln/h;->f:Z

    if-eqz v1, :cond_34

    iget-boolean v1, v6, Ln/h;->f:Z

    if-eqz v1, :cond_34

    invoke-virtual/range {p10 .. p10}, Lo/c;->d()I

    move-result v1

    invoke-virtual {v4}, Lo/c;->d()I

    move-result v2

    const/16 v3, 0x8

    move-object/from16 p17, p1

    move/from16 p21, p16

    move/from16 p20, v1

    move/from16 p24, v2

    move/from16 p25, v3

    move-object/from16 p22, v6

    move-object/from16 p18, v7

    move-object/from16 p23, v8

    move-object/from16 p19, v9

    invoke-virtual/range {p17 .. p25}, Ln/c;->b(Ln/h;Ln/h;IFLn/h;Ln/h;II)V

    move-object/from16 v1, p17

    move-object/from16 v7, p23

    if-eqz p3, :cond_54

    if-eqz p9, :cond_54

    iget-object v2, v4, Lo/c;->f:Lo/c;

    if-eqz v2, :cond_33

    invoke-virtual {v4}, Lo/c;->d()I

    move-result v15

    :goto_17
    move-object/from16 v12, p7

    goto :goto_18

    :cond_33
    const/4 v15, 0x0

    goto :goto_17

    :goto_18
    if-eq v6, v12, :cond_54

    const/4 v2, 0x5

    invoke-virtual {v1, v12, v7, v15, v2}, Ln/c;->f(Ln/h;Ln/h;II)V

    return-void

    :cond_34
    move-object v1, v9

    move v9, v3

    move-object v3, v1

    move-object v1, v8

    move-object v8, v7

    move-object v7, v1

    move-object/from16 v1, p1

    move-object/from16 v12, p7

    move/from16 v17, v16

    const/16 v19, 0x4

    const/16 v20, 0x1

    const/16 v23, 0x1

    goto :goto_16

    :goto_19
    if-eqz v20, :cond_35

    if-ne v3, v6, :cond_35

    if-eq v2, v10, :cond_35

    const/16 v20, 0x0

    const/16 v26, 0x0

    goto :goto_1a

    :cond_35
    const/16 v26, 0x1

    :goto_1a
    if-eqz v23, :cond_37

    if-nez v15, :cond_36

    if-nez p18, :cond_36

    if-nez p20, :cond_36

    if-ne v3, v11, :cond_36

    if-ne v6, v12, :cond_36

    move/from16 v23, v9

    const/16 v9, 0x8

    const/16 v17, 0x0

    const/16 v25, 0x8

    const/16 v26, 0x0

    goto :goto_1b

    :cond_36
    move/from16 v23, v9

    move/from16 v9, v17

    move/from16 v17, p3

    :goto_1b
    invoke-virtual/range {p10 .. p10}, Lo/c;->d()I

    move-result v4

    move-object/from16 v27, v2

    move-object v2, v8

    invoke-virtual/range {p11 .. p11}, Lo/c;->d()I

    move-result v8

    move-object v12, v5

    move/from16 p5, v13

    move/from16 p8, v15

    move/from16 v14, v23

    move-object/from16 v15, v27

    move-object/from16 v13, p11

    move/from16 v5, p16

    invoke-virtual/range {v1 .. v9}, Ln/c;->b(Ln/h;Ln/h;IFLn/h;Ln/h;II)V

    goto :goto_1c

    :cond_37
    move-object v12, v5

    move v14, v9

    move/from16 p5, v13

    move/from16 p8, v15

    move-object v15, v2

    move-object v13, v4

    move-object v2, v8

    move/from16 v17, p3

    :goto_1c
    iget v4, v0, Lo/d;->Z:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_39

    iget-object v4, v13, Lo/c;->a:Ljava/util/HashSet;

    if-nez v4, :cond_38

    goto/16 :goto_2b

    :cond_38
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_54

    :cond_39
    if-eqz v20, :cond_3c

    if-eqz v17, :cond_3b

    if-eq v3, v6, :cond_3b

    if-nez p8, :cond_3b

    instance-of v4, v15, Lo/a;

    if-nez v4, :cond_3a

    instance-of v4, v12, Lo/a;

    if-eqz v4, :cond_3b

    :cond_3a
    move/from16 v4, v16

    goto :goto_1d

    :cond_3b
    move/from16 v4, v25

    :goto_1d
    invoke-virtual/range {p10 .. p10}, Lo/c;->d()I

    move-result v5

    invoke-virtual {v1, v2, v3, v5, v4}, Ln/c;->f(Ln/h;Ln/h;II)V

    invoke-virtual {v13}, Lo/c;->d()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v1, v7, v6, v5, v4}, Ln/c;->g(Ln/h;Ln/h;II)V

    move/from16 v25, v4

    :cond_3c
    if-eqz v17, :cond_3d

    if-eqz p21, :cond_3d

    instance-of v4, v15, Lo/a;

    if-nez v4, :cond_3d

    instance-of v4, v12, Lo/a;

    if-nez v4, :cond_3d

    move/from16 v4, v16

    move v5, v4

    const/16 v21, 0x1

    goto :goto_1e

    :cond_3d
    move/from16 v4, v19

    move/from16 v5, v25

    move/from16 v21, v26

    :goto_1e
    if-eqz v21, :cond_49

    if-eqz v24, :cond_46

    if-eqz p20, :cond_3e

    if-eqz p4, :cond_46

    :cond_3e
    if-eq v15, v10, :cond_40

    if-ne v12, v10, :cond_3f

    goto :goto_1f

    :cond_3f
    move/from16 v16, v4

    :cond_40
    :goto_1f
    instance-of v8, v15, Lo/f;

    if-nez v8, :cond_41

    instance-of v8, v12, Lo/f;

    if-eqz v8, :cond_42

    :cond_41
    const/16 v16, 0x5

    :cond_42
    instance-of v8, v15, Lo/a;

    if-nez v8, :cond_43

    instance-of v8, v12, Lo/a;

    if-eqz v8, :cond_44

    :cond_43
    const/16 v16, 0x5

    :cond_44
    if-eqz p20, :cond_45

    const/4 v8, 0x5

    goto :goto_20

    :cond_45
    move/from16 v8, v16

    :goto_20
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_46
    if-eqz v17, :cond_48

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-eqz p17, :cond_48

    if-nez p20, :cond_48

    if-eq v15, v10, :cond_47

    if-ne v12, v10, :cond_48

    :cond_47
    const/4 v10, 0x4

    goto :goto_21

    :cond_48
    move v10, v4

    :goto_21
    invoke-virtual/range {p10 .. p10}, Lo/c;->d()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v10}, Ln/c;->e(Ln/h;Ln/h;II)V

    invoke-virtual {v13}, Lo/c;->d()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v1, v7, v6, v4, v10}, Ln/c;->e(Ln/h;Ln/h;II)V

    :cond_49
    if-eqz v17, :cond_4b

    if-ne v11, v3, :cond_4a

    invoke-virtual/range {p10 .. p10}, Lo/c;->d()I

    move-result v4

    goto :goto_22

    :cond_4a
    const/4 v4, 0x0

    :goto_22
    if-eq v3, v11, :cond_4b

    const/4 v15, 0x5

    invoke-virtual {v1, v2, v11, v4, v15}, Ln/c;->f(Ln/h;Ln/h;II)V

    :cond_4b
    if-eqz v17, :cond_4d

    if-eqz p8, :cond_4d

    if-nez p14, :cond_4d

    if-nez p5, :cond_4d

    if-eqz p8, :cond_4c

    const/4 v15, 0x3

    if-ne v14, v15, :cond_4c

    const/16 v5, 0x8

    const/4 v15, 0x0

    invoke-virtual {v1, v7, v2, v15, v5}, Ln/c;->f(Ln/h;Ln/h;II)V

    goto :goto_24

    :cond_4c
    const/4 v15, 0x0

    const/4 v3, 0x5

    invoke-virtual {v1, v7, v2, v15, v3}, Ln/c;->f(Ln/h;Ln/h;II)V

    goto :goto_24

    :goto_23
    move/from16 v17, p3

    :cond_4d
    :goto_24
    if-eqz v17, :cond_54

    if-eqz p9, :cond_54

    iget-object v2, v13, Lo/c;->f:Lo/c;

    if-eqz v2, :cond_4e

    invoke-virtual {v13}, Lo/c;->d()I

    move-result v15

    :goto_25
    move-object/from16 v12, p7

    goto :goto_26

    :cond_4e
    const/4 v15, 0x0

    goto :goto_25

    :goto_26
    if-eq v6, v12, :cond_54

    const/4 v2, 0x5

    invoke-virtual {v1, v12, v7, v15, v2}, Ln/c;->f(Ln/h;Ln/h;II)V

    return-void

    :cond_4f
    move-object/from16 v12, p7

    move-object v2, v7

    move-object v7, v8

    move/from16 p9, v10

    const/4 v15, 0x3

    move-object/from16 v10, p6

    const/4 v3, 0x2

    :goto_27
    if-ge v11, v3, :cond_54

    if-eqz p3, :cond_54

    if-eqz p9, :cond_54

    const/4 v3, 0x0

    const/16 v13, 0x8

    invoke-virtual {v1, v2, v10, v3, v13}, Ln/c;->f(Ln/h;Ln/h;II)V

    iget-object v2, v0, Lo/d;->F:Lo/c;

    if-nez p2, :cond_51

    iget-object v3, v2, Lo/c;->f:Lo/c;

    if-nez v3, :cond_50

    goto :goto_28

    :cond_50
    const/4 v3, 0x0

    goto :goto_29

    :cond_51
    :goto_28
    const/4 v3, 0x1

    :goto_29
    if-nez p2, :cond_53

    iget-object v2, v2, Lo/c;->f:Lo/c;

    if-eqz v2, :cond_53

    iget-object v2, v2, Lo/c;->d:Lo/d;

    iget v3, v2, Lo/d;->P:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_52

    iget-object v2, v2, Lo/d;->i0:[I

    const/16 v22, 0x0

    aget v3, v2, v22

    if-ne v3, v15, :cond_52

    const/16 v21, 0x1

    aget v2, v2, v21

    if-ne v2, v15, :cond_52

    move/from16 v10, v21

    goto :goto_2a

    :cond_52
    const/4 v10, 0x0

    goto :goto_2a

    :cond_53
    move v10, v3

    :goto_2a
    if-eqz v10, :cond_54

    const/16 v13, 0x8

    const/4 v15, 0x0

    invoke-virtual {v1, v12, v7, v15, v13}, Ln/c;->f(Ln/h;Ln/h;II)V

    :cond_54
    :goto_2b
    return-void
.end method

.method public final e(Ln/c;)V
    .locals 1

    iget-object v0, p0, Lo/d;->B:Lo/c;

    invoke-virtual {p1, v0}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    iget-object v0, p0, Lo/d;->C:Lo/c;

    invoke-virtual {p1, v0}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    iget-object v0, p0, Lo/d;->D:Lo/c;

    invoke-virtual {p1, v0}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    iget-object v0, p0, Lo/d;->E:Lo/c;

    invoke-virtual {p1, v0}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    iget v0, p0, Lo/d;->T:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lo/d;->F:Lo/c;

    invoke-virtual {p1, v0}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 4

    iget-object v0, p0, Lo/d;->d:Lp/k;

    if-nez v0, :cond_0

    new-instance v0, Lp/k;

    invoke-direct {v0, p0}, Lp/o;-><init>(Lo/d;)V

    iget-object v1, v0, Lp/o;->h:Lp/f;

    const/4 v2, 0x4

    iput v2, v1, Lp/f;->e:I

    iget-object v1, v0, Lp/o;->i:Lp/f;

    const/4 v2, 0x5

    iput v2, v1, Lp/f;->e:I

    const/4 v1, 0x0

    iput v1, v0, Lp/o;->f:I

    iput-object v0, p0, Lo/d;->d:Lp/k;

    :cond_0
    iget-object v0, p0, Lo/d;->e:Lp/m;

    if-nez v0, :cond_1

    new-instance v0, Lp/m;

    invoke-direct {v0, p0}, Lp/o;-><init>(Lo/d;)V

    new-instance v1, Lp/f;

    invoke-direct {v1, v0}, Lp/f;-><init>(Lp/o;)V

    iput-object v1, v0, Lp/m;->k:Lp/f;

    const/4 v2, 0x0

    iput-object v2, v0, Lp/m;->l:Lp/a;

    iget-object v2, v0, Lp/o;->h:Lp/f;

    const/4 v3, 0x6

    iput v3, v2, Lp/f;->e:I

    iget-object v2, v0, Lp/o;->i:Lp/f;

    const/4 v3, 0x7

    iput v3, v2, Lp/f;->e:I

    const/16 v2, 0x8

    iput v2, v1, Lp/f;->e:I

    const/4 v1, 0x1

    iput v1, v0, Lp/o;->f:I

    iput-object v0, p0, Lo/d;->e:Lp/m;

    :cond_1
    return-void
.end method

.method public g(I)Lo/c;
    .locals 1

    invoke-static {p1}, Ln/g;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {p1}, Landroidx/activity/result/b;->u(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    iget-object p1, p0, Lo/d;->H:Lo/c;

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lo/d;->G:Lo/c;

    return-object p1

    :pswitch_2
    iget-object p1, p0, Lo/d;->I:Lo/c;

    return-object p1

    :pswitch_3
    iget-object p1, p0, Lo/d;->F:Lo/c;

    return-object p1

    :pswitch_4
    iget-object p1, p0, Lo/d;->E:Lo/c;

    return-object p1

    :pswitch_5
    iget-object p1, p0, Lo/d;->D:Lo/c;

    return-object p1

    :pswitch_6
    iget-object p1, p0, Lo/d;->C:Lo/c;

    return-object p1

    :pswitch_7
    iget-object p1, p0, Lo/d;->B:Lo/c;

    return-object p1

    :pswitch_8
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h(I)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lo/d;->i0:[I

    if-nez p1, :cond_0

    aget p1, v1, v0

    return p1

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    aget p1, v1, v2

    return p1

    :cond_1
    return v0
.end method

.method public final i()I
    .locals 2

    iget v0, p0, Lo/d;->Z:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lo/d;->O:I

    return v0
.end method

.method public final j(I)Lo/d;
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lo/d;->D:Lo/c;

    iget-object v0, p1, Lo/c;->f:Lo/c;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lo/c;->f:Lo/c;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Lo/c;->d:Lo/d;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lo/d;->E:Lo/c;

    iget-object v0, p1, Lo/c;->f:Lo/c;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lo/c;->f:Lo/c;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Lo/c;->d:Lo/d;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final k(I)Lo/d;
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lo/d;->B:Lo/c;

    iget-object v0, p1, Lo/c;->f:Lo/c;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lo/c;->f:Lo/c;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Lo/c;->d:Lo/d;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lo/d;->C:Lo/c;

    iget-object v0, p1, Lo/c;->f:Lo/c;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lo/c;->f:Lo/c;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Lo/c;->d:Lo/d;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final l()I
    .locals 2

    iget v0, p0, Lo/d;->Z:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lo/d;->N:I

    return v0
.end method

.method public final m()I
    .locals 2

    iget-object v0, p0, Lo/d;->M:Lo/d;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lo/e;

    if-eqz v1, :cond_0

    check-cast v0, Lo/e;

    iget v0, v0, Lo/e;->p0:I

    iget v1, p0, Lo/d;->R:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lo/d;->R:I

    return v0
.end method

.method public final n()I
    .locals 2

    iget-object v0, p0, Lo/d;->M:Lo/d;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lo/e;

    if-eqz v1, :cond_0

    check-cast v0, Lo/e;

    iget v0, v0, Lo/e;->q0:I

    iget v1, p0, Lo/d;->S:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lo/d;->S:I

    return v0
.end method

.method public final o(I)Z
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_2

    iget-object p1, p0, Lo/d;->B:Lo/c;

    iget-object p1, p1, Lo/c;->f:Lo/c;

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object v3, p0, Lo/d;->D:Lo/c;

    iget-object v3, v3, Lo/c;->f:Lo/c;

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    add-int/2addr p1, v3

    if-ge p1, v0, :cond_6

    goto :goto_5

    :cond_2
    iget-object p1, p0, Lo/d;->C:Lo/c;

    iget-object p1, p1, Lo/c;->f:Lo/c;

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_2

    :cond_3
    move p1, v1

    :goto_2
    iget-object v3, p0, Lo/d;->E:Lo/c;

    iget-object v3, v3, Lo/c;->f:Lo/c;

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_3

    :cond_4
    move v3, v1

    :goto_3
    add-int/2addr p1, v3

    iget-object v3, p0, Lo/d;->F:Lo/c;

    iget-object v3, v3, Lo/c;->f:Lo/c;

    if-eqz v3, :cond_5

    move v3, v2

    goto :goto_4

    :cond_5
    move v3, v1

    :goto_4
    add-int/2addr p1, v3

    if-ge p1, v0, :cond_6

    :goto_5
    return v2

    :cond_6
    return v1
.end method

.method public final p(IIIILo/d;)V
    .locals 0

    invoke-virtual {p0, p1}, Lo/d;->g(I)Lo/c;

    move-result-object p1

    invoke-virtual {p5, p2}, Lo/d;->g(I)Lo/c;

    move-result-object p2

    invoke-virtual {p1, p2, p3, p4}, Lo/c;->a(Lo/c;II)V

    return-void
.end method

.method public final q(I)Z
    .locals 3

    mul-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lo/d;->J:[Lo/c;

    aget-object v1, v0, p1

    iget-object v2, v1, Lo/c;->f:Lo/c;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lo/c;->f:Lo/c;

    if-eq v2, v1, :cond_0

    const/4 v1, 0x1

    add-int/2addr p1, v1

    aget-object p1, v0, p1

    iget-object v0, p1, Lo/c;->f:Lo/c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lo/c;->f:Lo/c;

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final r()Z
    .locals 2

    iget-object v0, p0, Lo/d;->B:Lo/c;

    iget-object v1, v0, Lo/c;->f:Lo/c;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lo/c;->f:Lo/c;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lo/d;->D:Lo/c;

    iget-object v1, v0, Lo/c;->f:Lo/c;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lo/c;->f:Lo/c;

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final s()Z
    .locals 2

    iget-object v0, p0, Lo/d;->C:Lo/c;

    iget-object v1, v0, Lo/c;->f:Lo/c;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lo/c;->f:Lo/c;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lo/d;->E:Lo/c;

    iget-object v1, v0, Lo/c;->f:Lo/c;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lo/c;->f:Lo/c;

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final t()Z
    .locals 2

    iget-boolean v0, p0, Lo/d;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lo/d;->Z:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/d;->a0:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/d;->a0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/d;->R:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/d;->S:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/d;->N:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/d;->O:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lo/d;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/d;->B:Lo/c;

    iget-boolean v0, v0, Lo/c;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/d;->D:Lo/c;

    iget-boolean v0, v0, Lo/c;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Lo/d;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/d;->C:Lo/c;

    iget-boolean v0, v0, Lo/c;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/d;->E:Lo/c;

    iget-boolean v0, v0, Lo/c;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public w()V
    .locals 5

    iget-object v0, p0, Lo/d;->B:Lo/c;

    invoke-virtual {v0}, Lo/c;->g()V

    iget-object v0, p0, Lo/d;->C:Lo/c;

    invoke-virtual {v0}, Lo/c;->g()V

    iget-object v0, p0, Lo/d;->D:Lo/c;

    invoke-virtual {v0}, Lo/c;->g()V

    iget-object v0, p0, Lo/d;->E:Lo/c;

    invoke-virtual {v0}, Lo/c;->g()V

    iget-object v0, p0, Lo/d;->F:Lo/c;

    invoke-virtual {v0}, Lo/c;->g()V

    iget-object v0, p0, Lo/d;->G:Lo/c;

    invoke-virtual {v0}, Lo/c;->g()V

    iget-object v0, p0, Lo/d;->H:Lo/c;

    invoke-virtual {v0}, Lo/c;->g()V

    iget-object v0, p0, Lo/d;->I:Lo/c;

    invoke-virtual {v0}, Lo/c;->g()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/d;->M:Lo/d;

    const/4 v1, 0x0

    iput v1, p0, Lo/d;->x:F

    const/4 v2, 0x0

    iput v2, p0, Lo/d;->N:I

    iput v2, p0, Lo/d;->O:I

    iput v1, p0, Lo/d;->P:F

    const/4 v1, -0x1

    iput v1, p0, Lo/d;->Q:I

    iput v2, p0, Lo/d;->R:I

    iput v2, p0, Lo/d;->S:I

    iput v2, p0, Lo/d;->T:I

    iput v2, p0, Lo/d;->U:I

    iput v2, p0, Lo/d;->V:I

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Lo/d;->W:F

    iput v3, p0, Lo/d;->X:F

    iget-object v3, p0, Lo/d;->i0:[I

    const/4 v4, 0x1

    aput v4, v3, v2

    aput v4, v3, v4

    iput-object v0, p0, Lo/d;->Y:Landroid/view/View;

    iput v2, p0, Lo/d;->Z:I

    iput v2, p0, Lo/d;->b0:I

    iput v2, p0, Lo/d;->c0:I

    iget-object v0, p0, Lo/d;->d0:[F

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v0, v2

    aput v3, v0, v4

    iput v1, p0, Lo/d;->j:I

    iput v1, p0, Lo/d;->k:I

    iget-object v0, p0, Lo/d;->w:[I

    const v3, 0x7fffffff

    aput v3, v0, v2

    aput v3, v0, v4

    iput v2, p0, Lo/d;->l:I

    iput v2, p0, Lo/d;->m:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lo/d;->q:F

    iput v0, p0, Lo/d;->t:F

    iput v3, p0, Lo/d;->p:I

    iput v3, p0, Lo/d;->s:I

    iput v2, p0, Lo/d;->o:I

    iput v2, p0, Lo/d;->r:I

    iput v1, p0, Lo/d;->u:I

    iput v0, p0, Lo/d;->v:F

    iget-object v0, p0, Lo/d;->f:[Z

    aput-boolean v4, v0, v2

    aput-boolean v4, v0, v4

    iget-object v0, p0, Lo/d;->L:[Z

    aput-boolean v2, v0, v2

    aput-boolean v2, v0, v4

    iput-boolean v4, p0, Lo/d;->g:Z

    return-void
.end method

.method public x(Landroidx/fragment/app/f;)V
    .locals 0

    iget-object p1, p0, Lo/d;->B:Lo/c;

    invoke-virtual {p1}, Lo/c;->h()V

    iget-object p1, p0, Lo/d;->C:Lo/c;

    invoke-virtual {p1}, Lo/c;->h()V

    iget-object p1, p0, Lo/d;->D:Lo/c;

    invoke-virtual {p1}, Lo/c;->h()V

    iget-object p1, p0, Lo/d;->E:Lo/c;

    invoke-virtual {p1}, Lo/c;->h()V

    iget-object p1, p0, Lo/d;->F:Lo/c;

    invoke-virtual {p1}, Lo/c;->h()V

    iget-object p1, p0, Lo/d;->I:Lo/c;

    invoke-virtual {p1}, Lo/c;->h()V

    iget-object p1, p0, Lo/d;->G:Lo/c;

    invoke-virtual {p1}, Lo/c;->h()V

    iget-object p1, p0, Lo/d;->H:Lo/c;

    invoke-virtual {p1}, Lo/c;->h()V

    return-void
.end method

.method public final y(II)V
    .locals 1

    iget-object v0, p0, Lo/d;->B:Lo/c;

    invoke-virtual {v0, p1}, Lo/c;->i(I)V

    iget-object v0, p0, Lo/d;->D:Lo/c;

    invoke-virtual {v0, p2}, Lo/c;->i(I)V

    iput p1, p0, Lo/d;->R:I

    sub-int/2addr p2, p1

    iput p2, p0, Lo/d;->N:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/d;->h:Z

    return-void
.end method

.method public final z(II)V
    .locals 1

    iget-object v0, p0, Lo/d;->C:Lo/c;

    invoke-virtual {v0, p1}, Lo/c;->i(I)V

    iget-object v0, p0, Lo/d;->E:Lo/c;

    invoke-virtual {v0, p2}, Lo/c;->i(I)V

    iput p1, p0, Lo/d;->S:I

    sub-int/2addr p2, p1

    iput p2, p0, Lo/d;->O:I

    iget-boolean p2, p0, Lo/d;->y:Z

    if-eqz p2, :cond_0

    iget p2, p0, Lo/d;->T:I

    add-int/2addr p1, p2

    iget-object p2, p0, Lo/d;->F:Lo/c;

    invoke-virtual {p2, p1}, Lo/c;->i(I)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/d;->i:Z

    return-void
.end method
