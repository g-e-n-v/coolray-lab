.class public final Lp/c;
.super Lp/o;
.source "SourceFile"


# instance fields
.field public final k:Ljava/util/ArrayList;

.field public l:I


# direct methods
.method public constructor <init>(Lo/d;I)V
    .locals 5

    invoke-direct {p0, p1}, Lp/o;-><init>(Lo/d;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lp/c;->k:Ljava/util/ArrayList;

    iput p2, p0, Lp/o;->f:I

    iget-object v0, p0, Lp/o;->b:Lo/d;

    invoke-virtual {v0, p2}, Lo/d;->k(I)Lo/d;

    move-result-object p2

    :goto_0
    move-object v4, v0

    move-object v0, p2

    move-object p2, v4

    if-eqz v0, :cond_0

    iget p2, p0, Lp/o;->f:I

    invoke-virtual {v0, p2}, Lo/d;->k(I)Lo/d;

    move-result-object p2

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lp/o;->b:Lo/d;

    iget v0, p0, Lp/o;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p2, Lo/d;->d:Lp/k;

    goto :goto_1

    :cond_1
    if-ne v0, v2, :cond_2

    iget-object v0, p2, Lo/d;->e:Lp/m;

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lp/o;->f:I

    invoke-virtual {p2, v0}, Lo/d;->j(I)Lo/d;

    move-result-object p2

    :goto_2
    if-eqz p2, :cond_5

    iget v0, p0, Lp/o;->f:I

    if-nez v0, :cond_3

    iget-object v0, p2, Lo/d;->d:Lp/k;

    goto :goto_3

    :cond_3
    if-ne v0, v2, :cond_4

    iget-object v0, p2, Lo/d;->e:Lp/m;

    goto :goto_3

    :cond_4
    move-object v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lp/o;->f:I

    invoke-virtual {p2, v0}, Lo/d;->j(I)Lo/d;

    move-result-object p2

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :cond_6
    :goto_4
    if-ge v0, p2, :cond_8

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Lp/o;

    iget v3, p0, Lp/o;->f:I

    if-nez v3, :cond_7

    iget-object v1, v1, Lp/o;->b:Lo/d;

    iput-object p0, v1, Lo/d;->b:Lp/c;

    goto :goto_4

    :cond_7
    if-ne v3, v2, :cond_6

    iget-object v1, v1, Lp/o;->b:Lo/d;

    iput-object p0, v1, Lo/d;->c:Lp/c;

    goto :goto_4

    :cond_8
    iget p2, p0, Lp/o;->f:I

    if-nez p2, :cond_9

    iget-object p2, p0, Lp/o;->b:Lo/d;

    iget-object p2, p2, Lo/d;->M:Lo/d;

    check-cast p2, Lo/e;

    iget-boolean p2, p2, Lo/e;->n0:Z

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p2, v2, :cond_9

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp/o;

    iget-object p1, p1, Lp/o;->b:Lo/d;

    iput-object p1, p0, Lp/o;->b:Lo/d;

    :cond_9
    iget p1, p0, Lp/o;->f:I

    if-nez p1, :cond_a

    iget-object p1, p0, Lp/o;->b:Lo/d;

    iget p1, p1, Lo/d;->b0:I

    goto :goto_5

    :cond_a
    iget-object p1, p0, Lp/o;->b:Lo/d;

    iget p1, p1, Lo/d;->c0:I

    :goto_5
    iput p1, p0, Lp/c;->l:I

    return-void
.end method


# virtual methods
.method public final a(Lp/d;)V
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lp/o;->h:Lp/f;

    iget-boolean v2, v1, Lp/f;->j:Z

    if-eqz v2, :cond_58

    iget-object v2, v0, Lp/o;->i:Lp/f;

    iget-boolean v3, v2, Lp/f;->j:Z

    if-nez v3, :cond_0

    goto/16 :goto_33

    :cond_0
    iget-object v3, v0, Lp/o;->b:Lo/d;

    iget-object v3, v3, Lo/d;->M:Lo/d;

    if-eqz v3, :cond_1

    instance-of v5, v3, Lo/e;

    if-eqz v5, :cond_1

    check-cast v3, Lo/e;

    iget-boolean v3, v3, Lo/e;->n0:Z

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget v5, v2, Lp/f;->g:I

    iget v6, v1, Lp/f;->g:I

    sub-int/2addr v5, v6

    iget-object v6, v0, Lp/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    const/4 v9, -0x1

    const/16 v10, 0x8

    if-ge v8, v7, :cond_2

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lp/o;

    iget-object v11, v11, Lp/o;->b:Lo/d;

    iget v11, v11, Lo/d;->Z:I

    if-ne v11, v10, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    move v8, v9

    :cond_3
    add-int/lit8 v11, v7, -0x1

    move v12, v11

    :goto_2
    if-ltz v12, :cond_5

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lp/o;

    iget-object v13, v13, Lp/o;->b:Lo/d;

    iget v13, v13, Lo/d;->Z:I

    if-ne v13, v10, :cond_4

    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    :cond_4
    move v9, v12

    :cond_5
    const/4 v12, 0x0

    :goto_3
    const/4 v15, 0x2

    const/16 p1, 0x0

    if-ge v12, v15, :cond_14

    move/from16 v19, p1

    const/4 v4, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_4
    if-ge v4, v7, :cond_11

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v13, v20

    check-cast v13, Lp/o;

    iget-object v14, v13, Lp/o;->b:Lo/d;

    move/from16 v22, v3

    iget v3, v14, Lo/d;->Z:I

    if-ne v3, v10, :cond_6

    move/from16 v24, v12

    goto/16 :goto_a

    :cond_6
    add-int/lit8 v18, v18, 0x1

    if-lez v4, :cond_7

    if-lt v4, v8, :cond_7

    iget-object v3, v13, Lp/o;->h:Lp/f;

    iget v3, v3, Lp/f;->f:I

    add-int/2addr v15, v3

    :cond_7
    iget-object v3, v13, Lp/o;->e:Lp/g;

    iget v10, v3, Lp/f;->g:I

    move/from16 v23, v10

    iget v10, v13, Lp/o;->d:I

    move/from16 v24, v12

    const/4 v12, 0x3

    if-eq v10, v12, :cond_8

    const/4 v10, 0x1

    goto :goto_5

    :cond_8
    const/4 v10, 0x0

    :goto_5
    if-eqz v10, :cond_b

    iget v3, v0, Lp/o;->f:I

    if-nez v3, :cond_9

    iget-object v12, v14, Lo/d;->d:Lp/k;

    iget-object v12, v12, Lp/o;->e:Lp/g;

    iget-boolean v12, v12, Lp/f;->j:Z

    if-nez v12, :cond_9

    goto/16 :goto_33

    :cond_9
    const/4 v12, 0x1

    if-ne v3, v12, :cond_a

    iget-object v3, v14, Lo/d;->e:Lp/m;

    iget-object v3, v3, Lp/o;->e:Lp/g;

    iget-boolean v3, v3, Lp/f;->j:Z

    if-nez v3, :cond_a

    goto/16 :goto_33

    :cond_a
    move/from16 v25, v10

    goto :goto_7

    :cond_b
    move/from16 v25, v10

    const/4 v12, 0x1

    iget v10, v13, Lp/o;->a:I

    if-ne v10, v12, :cond_c

    if-nez v24, :cond_c

    iget v10, v3, Lp/g;->m:I

    add-int/lit8 v17, v17, 0x1

    :goto_6
    const/16 v25, 0x1

    goto :goto_8

    :cond_c
    iget-boolean v3, v3, Lp/f;->j:Z

    if-eqz v3, :cond_d

    move/from16 v10, v23

    goto :goto_6

    :cond_d
    :goto_7
    move/from16 v10, v23

    :goto_8
    if-nez v25, :cond_e

    add-int/lit8 v17, v17, 0x1

    iget-object v3, v14, Lo/d;->d0:[F

    iget v10, v0, Lp/o;->f:I

    aget v3, v3, v10

    cmpl-float v10, v3, p1

    if-ltz v10, :cond_f

    add-float v19, v19, v3

    goto :goto_9

    :cond_e
    add-int/2addr v15, v10

    :cond_f
    :goto_9
    if-ge v4, v11, :cond_10

    if-ge v4, v9, :cond_10

    iget-object v3, v13, Lp/o;->i:Lp/f;

    iget v3, v3, Lp/f;->f:I

    neg-int v3, v3

    add-int/2addr v15, v3

    :cond_10
    :goto_a
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v22

    move/from16 v12, v24

    const/16 v10, 0x8

    goto/16 :goto_4

    :cond_11
    move/from16 v22, v3

    move/from16 v24, v12

    if-lt v15, v5, :cond_13

    if-nez v17, :cond_12

    goto :goto_b

    :cond_12
    add-int/lit8 v12, v24, 0x1

    move/from16 v3, v22

    const/16 v10, 0x8

    goto/16 :goto_3

    :cond_13
    :goto_b
    move/from16 v3, v17

    move/from16 v4, v18

    goto :goto_c

    :cond_14
    move/from16 v22, v3

    move/from16 v19, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v15, 0x0

    :goto_c
    iget v1, v1, Lp/f;->g:I

    if-eqz v22, :cond_15

    iget v1, v2, Lp/f;->g:I

    :cond_15
    const/high16 v2, 0x3f000000    # 0.5f

    if-le v15, v5, :cond_17

    const/high16 v10, 0x40000000    # 2.0f

    if-eqz v22, :cond_16

    sub-int v12, v15, v5

    int-to-float v12, v12

    div-float/2addr v12, v10

    add-float/2addr v12, v2

    float-to-int v10, v12

    add-int/2addr v1, v10

    goto :goto_d

    :cond_16
    sub-int v12, v15, v5

    int-to-float v12, v12

    div-float/2addr v12, v10

    add-float/2addr v12, v2

    float-to-int v10, v12

    sub-int/2addr v1, v10

    :cond_17
    :goto_d
    if-lez v3, :cond_28

    sub-int v10, v5, v15

    int-to-float v10, v10

    int-to-float v12, v3

    div-float v12, v10, v12

    add-float/2addr v12, v2

    float-to-int v12, v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_e
    if-ge v13, v7, :cond_21

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v2

    move-object/from16 v2, v17

    check-cast v2, Lp/o;

    move/from16 v17, v1

    iget-object v1, v2, Lp/o;->b:Lo/d;

    move/from16 v23, v3

    iget-object v3, v2, Lp/o;->e:Lp/g;

    move/from16 v24, v10

    iget v10, v1, Lo/d;->Z:I

    move/from16 v25, v12

    const/16 v12, 0x8

    if-ne v10, v12, :cond_19

    :cond_18
    move/from16 v26, v13

    goto/16 :goto_13

    :cond_19
    iget v10, v2, Lp/o;->d:I

    const/4 v12, 0x3

    if-ne v10, v12, :cond_18

    iget-boolean v10, v3, Lp/f;->j:Z

    if-nez v10, :cond_18

    cmpl-float v10, v19, p1

    if-lez v10, :cond_1a

    iget-object v10, v1, Lo/d;->d0:[F

    iget v12, v0, Lp/o;->f:I

    aget v10, v10, v12

    mul-float v10, v10, v24

    div-float v10, v10, v19

    add-float v10, v10, v18

    float-to-int v10, v10

    goto :goto_f

    :cond_1a
    move/from16 v10, v25

    :goto_f
    iget v12, v0, Lp/o;->f:I

    if-nez v12, :cond_1d

    iget v12, v1, Lo/d;->p:I

    iget v1, v1, Lo/d;->o:I

    iget v2, v2, Lp/o;->a:I

    move/from16 v26, v13

    const/4 v13, 0x1

    if-ne v2, v13, :cond_1b

    iget v2, v3, Lp/g;->m:I

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_10

    :cond_1b
    move v2, v10

    :goto_10
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lez v12, :cond_1c

    invoke-static {v12, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_1c
    if-eq v1, v10, :cond_20

    goto :goto_12

    :cond_1d
    move/from16 v26, v13

    iget v12, v1, Lo/d;->s:I

    iget v1, v1, Lo/d;->r:I

    iget v2, v2, Lp/o;->a:I

    const/4 v13, 0x1

    if-ne v2, v13, :cond_1e

    iget v2, v3, Lp/g;->m:I

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_11

    :cond_1e
    move v2, v10

    :goto_11
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lez v12, :cond_1f

    invoke-static {v12, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_1f
    if-eq v1, v10, :cond_20

    :goto_12
    add-int/lit8 v14, v14, 0x1

    move v10, v1

    :cond_20
    invoke-virtual {v3, v10}, Lp/g;->d(I)V

    :goto_13
    add-int/lit8 v13, v26, 0x1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v23

    move/from16 v10, v24

    move/from16 v12, v25

    goto/16 :goto_e

    :cond_21
    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v23, v3

    if-lez v14, :cond_25

    sub-int v3, v23, v14

    const/4 v1, 0x0

    const/4 v15, 0x0

    :goto_14
    if-ge v1, v7, :cond_26

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp/o;

    iget-object v10, v2, Lp/o;->b:Lo/d;

    iget v10, v10, Lo/d;->Z:I

    const/16 v12, 0x8

    if-ne v10, v12, :cond_22

    goto :goto_15

    :cond_22
    if-lez v1, :cond_23

    if-lt v1, v8, :cond_23

    iget-object v10, v2, Lp/o;->h:Lp/f;

    iget v10, v10, Lp/f;->f:I

    add-int/2addr v15, v10

    :cond_23
    iget-object v10, v2, Lp/o;->e:Lp/g;

    iget v10, v10, Lp/f;->g:I

    add-int/2addr v15, v10

    if-ge v1, v11, :cond_24

    if-ge v1, v9, :cond_24

    iget-object v2, v2, Lp/o;->i:Lp/f;

    iget v2, v2, Lp/f;->f:I

    neg-int v2, v2

    add-int/2addr v15, v2

    :cond_24
    :goto_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_25
    move/from16 v3, v23

    :cond_26
    iget v1, v0, Lp/c;->l:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_27

    if-nez v14, :cond_27

    const/4 v1, 0x0

    iput v1, v0, Lp/c;->l:I

    goto :goto_16

    :cond_27
    const/4 v1, 0x0

    goto :goto_16

    :cond_28
    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v23, v3

    const/4 v1, 0x0

    const/4 v2, 0x2

    :goto_16
    if-le v15, v5, :cond_29

    iput v2, v0, Lp/c;->l:I

    :cond_29
    if-lez v4, :cond_2a

    if-nez v3, :cond_2a

    if-ne v8, v9, :cond_2a

    iput v2, v0, Lp/c;->l:I

    :cond_2a
    iget v2, v0, Lp/c;->l:I

    const/4 v13, 0x1

    if-ne v2, v13, :cond_3a

    if-le v4, v13, :cond_2b

    sub-int/2addr v5, v15

    sub-int/2addr v4, v13

    div-int/2addr v5, v4

    goto :goto_17

    :cond_2b
    if-ne v4, v13, :cond_2c

    sub-int/2addr v5, v15

    const/16 v16, 0x2

    div-int/lit8 v5, v5, 0x2

    goto :goto_17

    :cond_2c
    move v5, v1

    :goto_17
    if-lez v3, :cond_2d

    move v5, v1

    :cond_2d
    move v4, v1

    move/from16 v1, v17

    :goto_18
    if-ge v4, v7, :cond_58

    if-eqz v22, :cond_2e

    add-int/lit8 v2, v4, 0x1

    sub-int v2, v7, v2

    goto :goto_19

    :cond_2e
    move v2, v4

    :goto_19
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp/o;

    iget-object v3, v2, Lp/o;->b:Lo/d;

    iget-object v10, v2, Lp/o;->i:Lp/f;

    iget-object v12, v2, Lp/o;->h:Lp/f;

    iget v3, v3, Lo/d;->Z:I

    const/16 v13, 0x8

    if-ne v3, v13, :cond_2f

    invoke-virtual {v12, v1}, Lp/f;->d(I)V

    invoke-virtual {v10, v1}, Lp/f;->d(I)V

    goto :goto_20

    :cond_2f
    if-lez v4, :cond_31

    if-eqz v22, :cond_30

    sub-int/2addr v1, v5

    goto :goto_1a

    :cond_30
    add-int/2addr v1, v5

    :cond_31
    :goto_1a
    if-lez v4, :cond_33

    if-lt v4, v8, :cond_33

    if-eqz v22, :cond_32

    iget v3, v12, Lp/f;->f:I

    sub-int/2addr v1, v3

    goto :goto_1b

    :cond_32
    iget v3, v12, Lp/f;->f:I

    add-int/2addr v1, v3

    :cond_33
    :goto_1b
    if-eqz v22, :cond_34

    invoke-virtual {v10, v1}, Lp/f;->d(I)V

    goto :goto_1c

    :cond_34
    invoke-virtual {v12, v1}, Lp/f;->d(I)V

    :goto_1c
    iget-object v3, v2, Lp/o;->e:Lp/g;

    iget v13, v3, Lp/f;->g:I

    iget v14, v2, Lp/o;->d:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_35

    iget v14, v2, Lp/o;->a:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_35

    iget v13, v3, Lp/g;->m:I

    :cond_35
    if-eqz v22, :cond_36

    sub-int/2addr v1, v13

    goto :goto_1d

    :cond_36
    add-int/2addr v1, v13

    :goto_1d
    if-eqz v22, :cond_37

    invoke-virtual {v12, v1}, Lp/f;->d(I)V

    :goto_1e
    const/4 v13, 0x1

    goto :goto_1f

    :cond_37
    invoke-virtual {v10, v1}, Lp/f;->d(I)V

    goto :goto_1e

    :goto_1f
    iput-boolean v13, v2, Lp/o;->g:Z

    if-ge v4, v11, :cond_39

    if-ge v4, v9, :cond_39

    if-eqz v22, :cond_38

    iget v2, v10, Lp/f;->f:I

    neg-int v2, v2

    sub-int/2addr v1, v2

    goto :goto_20

    :cond_38
    iget v2, v10, Lp/f;->f:I

    neg-int v2, v2

    add-int/2addr v1, v2

    :cond_39
    :goto_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_3a
    if-nez v2, :cond_47

    sub-int/2addr v5, v15

    const/16 v21, 0x1

    add-int/lit8 v4, v4, 0x1

    div-int/2addr v5, v4

    if-lez v3, :cond_3b

    move v5, v1

    :cond_3b
    move v4, v1

    move/from16 v1, v17

    :goto_21
    if-ge v4, v7, :cond_58

    if-eqz v22, :cond_3c

    add-int/lit8 v2, v4, 0x1

    sub-int v2, v7, v2

    goto :goto_22

    :cond_3c
    move v2, v4

    :goto_22
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp/o;

    iget-object v3, v2, Lp/o;->b:Lo/d;

    iget-object v10, v2, Lp/o;->i:Lp/f;

    iget-object v12, v2, Lp/o;->h:Lp/f;

    iget v3, v3, Lo/d;->Z:I

    const/16 v13, 0x8

    if-ne v3, v13, :cond_3d

    invoke-virtual {v12, v1}, Lp/f;->d(I)V

    invoke-virtual {v10, v1}, Lp/f;->d(I)V

    goto :goto_28

    :cond_3d
    if-eqz v22, :cond_3e

    sub-int/2addr v1, v5

    goto :goto_23

    :cond_3e
    add-int/2addr v1, v5

    :goto_23
    if-lez v4, :cond_40

    if-lt v4, v8, :cond_40

    if-eqz v22, :cond_3f

    iget v3, v12, Lp/f;->f:I

    sub-int/2addr v1, v3

    goto :goto_24

    :cond_3f
    iget v3, v12, Lp/f;->f:I

    add-int/2addr v1, v3

    :cond_40
    :goto_24
    if-eqz v22, :cond_41

    invoke-virtual {v10, v1}, Lp/f;->d(I)V

    goto :goto_25

    :cond_41
    invoke-virtual {v12, v1}, Lp/f;->d(I)V

    :goto_25
    iget-object v3, v2, Lp/o;->e:Lp/g;

    iget v13, v3, Lp/f;->g:I

    iget v14, v2, Lp/o;->d:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_42

    iget v2, v2, Lp/o;->a:I

    const/4 v15, 0x1

    if-ne v2, v15, :cond_42

    iget v2, v3, Lp/g;->m:I

    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    :cond_42
    if-eqz v22, :cond_43

    sub-int/2addr v1, v13

    goto :goto_26

    :cond_43
    add-int/2addr v1, v13

    :goto_26
    if-eqz v22, :cond_44

    invoke-virtual {v12, v1}, Lp/f;->d(I)V

    goto :goto_27

    :cond_44
    invoke-virtual {v10, v1}, Lp/f;->d(I)V

    :goto_27
    if-ge v4, v11, :cond_46

    if-ge v4, v9, :cond_46

    if-eqz v22, :cond_45

    iget v2, v10, Lp/f;->f:I

    neg-int v2, v2

    sub-int/2addr v1, v2

    goto :goto_28

    :cond_45
    iget v2, v10, Lp/f;->f:I

    neg-int v2, v2

    add-int/2addr v1, v2

    :cond_46
    :goto_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_47
    const/4 v4, 0x2

    if-ne v2, v4, :cond_58

    iget v2, v0, Lp/o;->f:I

    if-nez v2, :cond_48

    iget-object v2, v0, Lp/o;->b:Lo/d;

    iget v2, v2, Lo/d;->W:F

    goto :goto_29

    :cond_48
    iget-object v2, v0, Lp/o;->b:Lo/d;

    iget v2, v2, Lo/d;->X:F

    :goto_29
    if-eqz v22, :cond_49

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v2, v4, v2

    :cond_49
    sub-int/2addr v5, v15

    int-to-float v4, v5

    mul-float/2addr v4, v2

    add-float v4, v4, v18

    float-to-int v2, v4

    if-ltz v2, :cond_4a

    if-lez v3, :cond_4b

    :cond_4a
    move v2, v1

    :cond_4b
    if-eqz v22, :cond_4c

    sub-int v2, v17, v2

    goto :goto_2a

    :cond_4c
    add-int v2, v17, v2

    :goto_2a
    move v4, v1

    :goto_2b
    if-ge v4, v7, :cond_58

    if-eqz v22, :cond_4d

    add-int/lit8 v1, v4, 0x1

    sub-int v1, v7, v1

    goto :goto_2c

    :cond_4d
    move v1, v4

    :goto_2c
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp/o;

    iget-object v3, v1, Lp/o;->b:Lo/d;

    iget-object v5, v1, Lp/o;->i:Lp/f;

    iget-object v10, v1, Lp/o;->h:Lp/f;

    iget v3, v3, Lo/d;->Z:I

    const/16 v12, 0x8

    if-ne v3, v12, :cond_4e

    invoke-virtual {v10, v2}, Lp/f;->d(I)V

    invoke-virtual {v5, v2}, Lp/f;->d(I)V

    const/4 v14, 0x1

    const/4 v15, 0x3

    goto :goto_32

    :cond_4e
    if-lez v4, :cond_50

    if-lt v4, v8, :cond_50

    if-eqz v22, :cond_4f

    iget v3, v10, Lp/f;->f:I

    sub-int/2addr v2, v3

    goto :goto_2d

    :cond_4f
    iget v3, v10, Lp/f;->f:I

    add-int/2addr v2, v3

    :cond_50
    :goto_2d
    if-eqz v22, :cond_51

    invoke-virtual {v5, v2}, Lp/f;->d(I)V

    goto :goto_2e

    :cond_51
    invoke-virtual {v10, v2}, Lp/f;->d(I)V

    :goto_2e
    iget-object v3, v1, Lp/o;->e:Lp/g;

    iget v13, v3, Lp/f;->g:I

    iget v14, v1, Lp/o;->d:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_52

    iget v1, v1, Lp/o;->a:I

    const/4 v14, 0x1

    if-ne v1, v14, :cond_53

    iget v13, v3, Lp/g;->m:I

    goto :goto_2f

    :cond_52
    const/4 v14, 0x1

    :cond_53
    :goto_2f
    if-eqz v22, :cond_54

    sub-int/2addr v2, v13

    goto :goto_30

    :cond_54
    add-int/2addr v2, v13

    :goto_30
    if-eqz v22, :cond_55

    invoke-virtual {v10, v2}, Lp/f;->d(I)V

    goto :goto_31

    :cond_55
    invoke-virtual {v5, v2}, Lp/f;->d(I)V

    :goto_31
    if-ge v4, v11, :cond_57

    if-ge v4, v9, :cond_57

    if-eqz v22, :cond_56

    iget v1, v5, Lp/f;->f:I

    neg-int v1, v1

    sub-int/2addr v2, v1

    goto :goto_32

    :cond_56
    iget v1, v5, Lp/f;->f:I

    neg-int v1, v1

    add-int/2addr v2, v1

    :cond_57
    :goto_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_58
    :goto_33
    return-void
.end method

.method public final d()V
    .locals 7

    iget-object v0, p0, Lp/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lp/o;

    invoke-virtual {v4}, Lp/o;->d()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp/o;

    iget-object v4, v4, Lp/o;->b:Lo/d;

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/o;

    iget-object v0, v0, Lp/o;->b:Lo/d;

    iget v1, p0, Lp/o;->f:I

    iget-object v5, p0, Lp/o;->i:Lp/f;

    iget-object v6, p0, Lp/o;->h:Lp/f;

    if-nez v1, :cond_5

    iget-object v1, v4, Lo/d;->B:Lo/c;

    iget-object v0, v0, Lo/d;->D:Lo/c;

    invoke-static {v1, v2}, Lp/o;->i(Lo/c;I)Lp/f;

    move-result-object v3

    invoke-virtual {v1}, Lo/c;->d()I

    move-result v1

    invoke-virtual {p0}, Lp/c;->m()Lo/d;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v1, v4, Lo/d;->B:Lo/c;

    invoke-virtual {v1}, Lo/c;->d()I

    move-result v1

    :cond_2
    if-eqz v3, :cond_3

    invoke-static {v6, v3, v1}, Lp/o;->b(Lp/f;Lp/f;I)V

    :cond_3
    invoke-static {v0, v2}, Lp/o;->i(Lo/c;I)Lp/f;

    move-result-object v1

    invoke-virtual {v0}, Lo/c;->d()I

    move-result v0

    invoke-virtual {p0}, Lp/c;->n()Lo/d;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v0, v2, Lo/d;->D:Lo/c;

    invoke-virtual {v0}, Lo/c;->d()I

    move-result v0

    :cond_4
    if-eqz v1, :cond_9

    neg-int v0, v0

    invoke-static {v5, v1, v0}, Lp/o;->b(Lp/f;Lp/f;I)V

    goto :goto_1

    :cond_5
    iget-object v1, v4, Lo/d;->C:Lo/c;

    iget-object v0, v0, Lo/d;->E:Lo/c;

    invoke-static {v1, v3}, Lp/o;->i(Lo/c;I)Lp/f;

    move-result-object v2

    invoke-virtual {v1}, Lo/c;->d()I

    move-result v1

    invoke-virtual {p0}, Lp/c;->m()Lo/d;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v1, v4, Lo/d;->C:Lo/c;

    invoke-virtual {v1}, Lo/c;->d()I

    move-result v1

    :cond_6
    if-eqz v2, :cond_7

    invoke-static {v6, v2, v1}, Lp/o;->b(Lp/f;Lp/f;I)V

    :cond_7
    invoke-static {v0, v3}, Lp/o;->i(Lo/c;I)Lp/f;

    move-result-object v1

    invoke-virtual {v0}, Lo/c;->d()I

    move-result v0

    invoke-virtual {p0}, Lp/c;->n()Lo/d;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v0, v2, Lo/d;->E:Lo/c;

    invoke-virtual {v0}, Lo/c;->d()I

    move-result v0

    :cond_8
    if-eqz v1, :cond_9

    neg-int v0, v0

    invoke-static {v5, v1, v0}, Lp/o;->b(Lp/f;Lp/f;I)V

    :cond_9
    :goto_1
    iput-object p0, v6, Lp/f;->a:Lp/o;

    iput-object p0, v5, Lp/f;->a:Lp/o;

    return-void
.end method

.method public final e()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lp/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp/o;

    invoke-virtual {v1}, Lp/o;->e()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lp/o;->c:Lp/l;

    iget-object v0, p0, Lp/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lp/o;

    invoke-virtual {v3}, Lp/o;->f()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final j()J
    .locals 8

    iget-object v0, p0, Lp/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp/o;

    iget-object v6, v5, Lp/o;->h:Lp/f;

    iget v6, v6, Lp/f;->f:I

    int-to-long v6, v6

    add-long/2addr v2, v6

    invoke-virtual {v5}, Lp/o;->j()J

    move-result-wide v6

    add-long/2addr v6, v2

    iget-object v2, v5, Lp/o;->i:Lp/f;

    iget v2, v2, Lp/f;->f:I

    int-to-long v2, v2

    add-long/2addr v2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public final k()Z
    .locals 5

    iget-object v0, p0, Lp/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp/o;

    invoke-virtual {v4}, Lp/o;->k()Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final m()Lo/d;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lp/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp/o;

    iget-object v1, v1, Lp/o;->b:Lo/d;

    iget v2, v1, Lo/d;->Z:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n()Lo/d;
    .locals 5

    iget-object v0, p0, Lp/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp/o;

    iget-object v2, v2, Lp/o;->b:Lo/d;

    iget v3, v2, Lo/d;->Z:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lp/o;->f:I

    if-nez v0, :cond_0

    const-string v0, "horizontal : "

    goto :goto_0

    :cond_0
    const-string v0, "vertical : "

    :goto_0
    const-string v1, "ChainRun "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lp/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lp/o;

    const-string v5, "<"

    invoke-static {v0, v5}, Ln/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "> "

    invoke-static {v0, v4}, Ln/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    return-object v0
.end method
