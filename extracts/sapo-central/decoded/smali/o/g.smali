.class public abstract Lo/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Z

    sput-object v0, Lo/g;->a:[Z

    return-void
.end method

.method public static a(Lo/e;Ln/c;Ljava/util/ArrayList;I)V
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    if-nez p3, :cond_0

    iget v2, v0, Lo/e;->r0:I

    iget-object v3, v0, Lo/e;->u0:[Lo/b;

    const/4 v15, 0x0

    :goto_0
    move v13, v2

    move-object v14, v3

    goto :goto_1

    :cond_0
    iget v2, v0, Lo/e;->s0:I

    iget-object v3, v0, Lo/e;->t0:[Lo/b;

    const/4 v15, 0x2

    goto :goto_0

    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v13, :cond_6f

    aget-object v3, v14, v2

    iget-boolean v4, v3, Lo/b;->q:Z

    iget-object v5, v3, Lo/b;->a:Lo/d;

    iget-object v6, v5, Lo/d;->J:[Lo/c;

    const/4 v7, 0x3

    const/16 v16, 0x0

    const/16 v8, 0x8

    const/16 v17, 0x0

    if-nez v4, :cond_19

    iget v4, v3, Lo/b;->l:I

    mul-int/lit8 v18, v4, 0x2

    move-object v12, v5

    move-object/from16 v21, v12

    const/16 v19, 0x0

    :goto_3
    if-nez v19, :cond_14

    const/16 v22, 0x1

    iget v9, v3, Lo/b;->i:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v3, Lo/b;->i:I

    iget-object v9, v12, Lo/d;->f0:[Lo/d;

    iget-object v11, v12, Lo/d;->J:[Lo/c;

    aput-object v16, v9, v4

    iget-object v9, v12, Lo/d;->e0:[Lo/d;

    aput-object v16, v9, v4

    iget v9, v12, Lo/d;->Z:I

    if-eq v9, v8, :cond_f

    invoke-virtual {v12, v4}, Lo/d;->h(I)I

    aget-object v9, v11, v18

    invoke-virtual {v9}, Lo/c;->d()I

    add-int/lit8 v9, v18, 0x1

    aget-object v24, v11, v9

    invoke-virtual/range {v24 .. v24}, Lo/c;->d()I

    aget-object v24, v11, v18

    invoke-virtual/range {v24 .. v24}, Lo/c;->d()I

    aget-object v9, v11, v9

    invoke-virtual {v9}, Lo/c;->d()I

    iget-object v9, v3, Lo/b;->b:Lo/d;

    if-nez v9, :cond_1

    iput-object v12, v3, Lo/b;->b:Lo/d;

    :cond_1
    iput-object v12, v3, Lo/b;->d:Lo/d;

    iget-object v9, v12, Lo/d;->i0:[I

    aget v9, v9, v4

    if-ne v9, v7, :cond_f

    iget-object v8, v12, Lo/d;->n:[I

    aget v8, v8, v4

    if-eqz v8, :cond_3

    if-eq v8, v7, :cond_3

    const/4 v7, 0x2

    if-ne v8, v7, :cond_2

    goto :goto_4

    :cond_2
    move/from16 v26, v2

    move/from16 v27, v4

    goto :goto_7

    :cond_3
    :goto_4
    iget v7, v3, Lo/b;->j:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lo/b;->j:I

    iget-object v7, v12, Lo/d;->d0:[F

    aget v7, v7, v4

    cmpl-float v26, v7, v17

    if-lez v26, :cond_4

    move/from16 v26, v2

    iget v2, v3, Lo/b;->k:F

    add-float/2addr v2, v7

    iput v2, v3, Lo/b;->k:F

    goto :goto_5

    :cond_4
    move/from16 v26, v2

    :goto_5
    iget v2, v12, Lo/d;->Z:I

    move/from16 v27, v4

    const/16 v4, 0x8

    if-eq v2, v4, :cond_8

    const/4 v2, 0x3

    if-ne v9, v2, :cond_8

    if-eqz v8, :cond_5

    if-ne v8, v2, :cond_8

    :cond_5
    cmpg-float v2, v7, v17

    if-gez v2, :cond_6

    move/from16 v2, v22

    iput-boolean v2, v3, Lo/b;->n:Z

    goto :goto_6

    :cond_6
    move/from16 v2, v22

    iput-boolean v2, v3, Lo/b;->o:Z

    :goto_6
    iget-object v2, v3, Lo/b;->h:Ljava/util/ArrayList;

    if-nez v2, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v3, Lo/b;->h:Ljava/util/ArrayList;

    :cond_7
    iget-object v2, v3, Lo/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v2, v3, Lo/b;->f:Lo/d;

    if-nez v2, :cond_9

    iput-object v12, v3, Lo/b;->f:Lo/d;

    :cond_9
    iget-object v2, v3, Lo/b;->g:Lo/d;

    if-eqz v2, :cond_a

    iget-object v2, v2, Lo/d;->e0:[Lo/d;

    aput-object v12, v2, v27

    :cond_a
    iput-object v12, v3, Lo/b;->g:Lo/d;

    :goto_7
    if-nez v27, :cond_c

    iget v2, v12, Lo/d;->l:I

    if-eqz v2, :cond_b

    goto :goto_8

    :cond_b
    iget v2, v12, Lo/d;->o:I

    if-nez v2, :cond_e

    iget v2, v12, Lo/d;->p:I

    goto :goto_8

    :cond_c
    iget v2, v12, Lo/d;->m:I

    if-eqz v2, :cond_d

    goto :goto_8

    :cond_d
    iget v2, v12, Lo/d;->r:I

    if-nez v2, :cond_e

    iget v2, v12, Lo/d;->s:I

    :cond_e
    :goto_8
    move-object/from16 v2, v21

    goto :goto_9

    :cond_f
    move/from16 v26, v2

    move/from16 v27, v4

    goto :goto_8

    :goto_9
    if-eq v2, v12, :cond_10

    iget-object v2, v2, Lo/d;->f0:[Lo/d;

    aput-object v12, v2, v27

    :cond_10
    add-int/lit8 v2, v18, 0x1

    aget-object v2, v11, v2

    iget-object v2, v2, Lo/c;->f:Lo/c;

    if-eqz v2, :cond_11

    iget-object v2, v2, Lo/c;->d:Lo/d;

    iget-object v4, v2, Lo/d;->J:[Lo/c;

    aget-object v4, v4, v18

    iget-object v4, v4, Lo/c;->f:Lo/c;

    if-eqz v4, :cond_11

    iget-object v4, v4, Lo/c;->d:Lo/d;

    if-eq v4, v12, :cond_12

    :cond_11
    move-object/from16 v2, v16

    :cond_12
    if-eqz v2, :cond_13

    goto :goto_a

    :cond_13
    move-object v2, v12

    const/16 v19, 0x1

    :goto_a
    move-object/from16 v21, v12

    move/from16 v4, v27

    const/4 v7, 0x3

    const/16 v8, 0x8

    move-object v12, v2

    move/from16 v2, v26

    goto/16 :goto_3

    :cond_14
    move/from16 v26, v2

    move/from16 v27, v4

    iget-object v2, v3, Lo/b;->b:Lo/d;

    if-eqz v2, :cond_15

    iget-object v2, v2, Lo/d;->J:[Lo/c;

    aget-object v2, v2, v18

    invoke-virtual {v2}, Lo/c;->d()I

    :cond_15
    iget-object v2, v3, Lo/b;->d:Lo/d;

    if-eqz v2, :cond_16

    iget-object v2, v2, Lo/d;->J:[Lo/c;

    add-int/lit8 v18, v18, 0x1

    aget-object v2, v2, v18

    invoke-virtual {v2}, Lo/c;->d()I

    :cond_16
    iput-object v12, v3, Lo/b;->c:Lo/d;

    if-nez v27, :cond_17

    iget-boolean v2, v3, Lo/b;->m:Z

    if-eqz v2, :cond_17

    iput-object v12, v3, Lo/b;->e:Lo/d;

    goto :goto_b

    :cond_17
    iput-object v5, v3, Lo/b;->e:Lo/d;

    :goto_b
    iget-boolean v2, v3, Lo/b;->o:Z

    if-eqz v2, :cond_18

    iget-boolean v2, v3, Lo/b;->n:Z

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    goto :goto_c

    :cond_18
    const/4 v2, 0x0

    :goto_c
    iput-boolean v2, v3, Lo/b;->p:Z

    :goto_d
    const/4 v2, 0x1

    goto :goto_e

    :cond_19
    move/from16 v26, v2

    goto :goto_d

    :goto_e
    iput-boolean v2, v3, Lo/b;->q:Z

    if-eqz v10, :cond_1b

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_f

    :cond_1a
    move/from16 v17, v13

    const/16 v28, 0x2

    goto/16 :goto_48

    :cond_1b
    :goto_f
    iget-object v11, v3, Lo/b;->c:Lo/d;

    iget-object v12, v3, Lo/b;->b:Lo/d;

    iget-object v2, v3, Lo/b;->d:Lo/d;

    iget-object v4, v3, Lo/b;->e:Lo/d;

    iget v7, v3, Lo/b;->k:F

    iget-object v8, v0, Lo/d;->i0:[I

    iget-object v9, v0, Lo/d;->J:[Lo/c;

    aget v8, v8, p3

    move-object/from16 v18, v9

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1c

    const/4 v8, 0x1

    goto :goto_10

    :cond_1c
    const/4 v8, 0x0

    :goto_10
    if-nez p3, :cond_20

    iget v9, v4, Lo/d;->b0:I

    if-nez v9, :cond_1d

    const/16 v22, 0x1

    :goto_11
    move-object/from16 v19, v6

    const/4 v6, 0x1

    goto :goto_12

    :cond_1d
    const/16 v22, 0x0

    goto :goto_11

    :goto_12
    if-ne v9, v6, :cond_1e

    move/from16 v21, v6

    :goto_13
    const/4 v6, 0x2

    goto :goto_14

    :cond_1e
    const/16 v21, 0x0

    goto :goto_13

    :goto_14
    if-ne v9, v6, :cond_1f

    const/4 v9, 0x1

    goto :goto_15

    :cond_1f
    const/4 v9, 0x0

    :goto_15
    move-object v6, v5

    move/from16 v29, v7

    move/from16 v23, v21

    move/from16 v27, v22

    :goto_16
    const/16 v21, 0x0

    goto :goto_1c

    :cond_20
    move-object/from16 v19, v6

    move v6, v9

    iget v9, v4, Lo/d;->c0:I

    if-nez v9, :cond_21

    const/16 v23, 0x1

    :goto_17
    const/4 v6, 0x1

    goto :goto_18

    :cond_21
    const/16 v23, 0x0

    goto :goto_17

    :goto_18
    if-ne v9, v6, :cond_22

    const/16 v21, 0x1

    :goto_19
    const/4 v6, 0x2

    goto :goto_1a

    :cond_22
    const/16 v21, 0x0

    goto :goto_19

    :goto_1a
    if-ne v9, v6, :cond_23

    const/4 v9, 0x1

    goto :goto_1b

    :cond_23
    const/4 v9, 0x0

    :goto_1b
    move-object v6, v5

    move/from16 v29, v7

    move/from16 v27, v23

    move/from16 v23, v21

    goto :goto_16

    :goto_1c
    if-nez v21, :cond_30

    iget-object v7, v6, Lo/d;->J:[Lo/c;

    move-object/from16 v33, v7

    iget-object v7, v6, Lo/d;->i0:[I

    move-object/from16 v34, v7

    aget-object v7, v33, v15

    if-eqz v9, :cond_24

    const/16 v32, 0x1

    goto :goto_1d

    :cond_24
    const/16 v32, 0x4

    :goto_1d
    invoke-virtual {v7}, Lo/c;->d()I

    move-result v35

    move/from16 v36, v8

    aget v8, v34, p3

    move/from16 v37, v9

    const/4 v9, 0x3

    if-ne v8, v9, :cond_25

    iget-object v8, v6, Lo/d;->n:[I

    aget v8, v8, p3

    if-nez v8, :cond_25

    const/4 v8, 0x1

    goto :goto_1e

    :cond_25
    const/4 v8, 0x0

    :goto_1e
    iget-object v9, v7, Lo/c;->f:Lo/c;

    if-eqz v9, :cond_26

    if-eq v6, v5, :cond_26

    invoke-virtual {v9}, Lo/c;->d()I

    move-result v9

    add-int v35, v9, v35

    :cond_26
    move/from16 v9, v35

    if-eqz v37, :cond_27

    if-eq v6, v5, :cond_27

    if-eq v6, v12, :cond_27

    const/16 v32, 0x8

    :cond_27
    move-object/from16 v35, v5

    iget-object v5, v7, Lo/c;->f:Lo/c;

    if-eqz v5, :cond_2a

    if-ne v6, v12, :cond_28

    move/from16 v38, v8

    iget-object v8, v7, Lo/c;->i:Ln/h;

    iget-object v5, v5, Lo/c;->i:Ln/h;

    const/4 v10, 0x6

    invoke-virtual {v1, v8, v5, v9, v10}, Ln/c;->f(Ln/h;Ln/h;II)V

    goto :goto_1f

    :cond_28
    move/from16 v38, v8

    iget-object v8, v7, Lo/c;->i:Ln/h;

    iget-object v5, v5, Lo/c;->i:Ln/h;

    const/16 v10, 0x8

    invoke-virtual {v1, v8, v5, v9, v10}, Ln/c;->f(Ln/h;Ln/h;II)V

    :goto_1f
    if-eqz v38, :cond_29

    if-nez v37, :cond_29

    const/4 v5, 0x5

    goto :goto_20

    :cond_29
    move/from16 v5, v32

    :goto_20
    iget-object v8, v7, Lo/c;->i:Ln/h;

    iget-object v7, v7, Lo/c;->f:Lo/c;

    iget-object v7, v7, Lo/c;->i:Ln/h;

    invoke-virtual {v1, v8, v7, v9, v5}, Ln/c;->e(Ln/h;Ln/h;II)V

    :cond_2a
    if-eqz v36, :cond_2c

    iget v5, v6, Lo/d;->Z:I

    const/16 v10, 0x8

    if-eq v5, v10, :cond_2b

    aget v5, v34, p3

    const/4 v9, 0x3

    if-ne v5, v9, :cond_2b

    add-int/lit8 v5, v15, 0x1

    aget-object v5, v33, v5

    iget-object v5, v5, Lo/c;->i:Ln/h;

    aget-object v7, v33, v15

    iget-object v7, v7, Lo/c;->i:Ln/h;

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual {v1, v5, v7, v8, v9}, Ln/c;->f(Ln/h;Ln/h;II)V

    goto :goto_21

    :cond_2b
    const/4 v8, 0x0

    :goto_21
    aget-object v5, v33, v15

    iget-object v5, v5, Lo/c;->i:Ln/h;

    aget-object v7, v18, v15

    iget-object v7, v7, Lo/c;->i:Ln/h;

    const/16 v10, 0x8

    invoke-virtual {v1, v5, v7, v8, v10}, Ln/c;->f(Ln/h;Ln/h;II)V

    :cond_2c
    add-int/lit8 v5, v15, 0x1

    aget-object v5, v33, v5

    iget-object v5, v5, Lo/c;->f:Lo/c;

    if-eqz v5, :cond_2d

    iget-object v5, v5, Lo/c;->d:Lo/d;

    iget-object v7, v5, Lo/d;->J:[Lo/c;

    aget-object v7, v7, v15

    iget-object v7, v7, Lo/c;->f:Lo/c;

    if-eqz v7, :cond_2d

    iget-object v7, v7, Lo/c;->d:Lo/d;

    if-eq v7, v6, :cond_2e

    :cond_2d
    move-object/from16 v5, v16

    :cond_2e
    if-eqz v5, :cond_2f

    move-object v6, v5

    goto :goto_22

    :cond_2f
    const/16 v21, 0x1

    :goto_22
    move-object/from16 v10, p2

    move-object/from16 v5, v35

    move/from16 v8, v36

    move/from16 v9, v37

    goto/16 :goto_1c

    :cond_30
    move/from16 v36, v8

    move/from16 v37, v9

    if-eqz v2, :cond_33

    iget-object v5, v11, Lo/d;->J:[Lo/c;

    add-int/lit8 v6, v15, 0x1

    aget-object v5, v5, v6

    iget-object v5, v5, Lo/c;->f:Lo/c;

    if-eqz v5, :cond_33

    iget-object v5, v2, Lo/d;->J:[Lo/c;

    aget-object v5, v5, v6

    iget-object v7, v2, Lo/d;->i0:[I

    aget v7, v7, p3

    const/4 v9, 0x3

    if-ne v7, v9, :cond_31

    iget-object v7, v2, Lo/d;->n:[I

    aget v7, v7, p3

    if-nez v7, :cond_31

    if-nez v37, :cond_31

    iget-object v7, v5, Lo/c;->f:Lo/c;

    iget-object v8, v7, Lo/c;->d:Lo/d;

    if-ne v8, v0, :cond_31

    iget-object v8, v5, Lo/c;->i:Ln/h;

    iget-object v7, v7, Lo/c;->i:Ln/h;

    invoke-virtual {v5}, Lo/c;->d()I

    move-result v9

    neg-int v9, v9

    const/4 v10, 0x5

    invoke-virtual {v1, v8, v7, v9, v10}, Ln/c;->e(Ln/h;Ln/h;II)V

    goto :goto_23

    :cond_31
    const/4 v10, 0x5

    if-eqz v37, :cond_32

    iget-object v7, v5, Lo/c;->f:Lo/c;

    iget-object v8, v7, Lo/c;->d:Lo/d;

    if-ne v8, v0, :cond_32

    iget-object v8, v5, Lo/c;->i:Ln/h;

    iget-object v7, v7, Lo/c;->i:Ln/h;

    invoke-virtual {v5}, Lo/c;->d()I

    move-result v9

    neg-int v9, v9

    const/4 v10, 0x4

    invoke-virtual {v1, v8, v7, v9, v10}, Ln/c;->e(Ln/h;Ln/h;II)V

    :cond_32
    :goto_23
    iget-object v7, v5, Lo/c;->i:Ln/h;

    iget-object v8, v11, Lo/d;->J:[Lo/c;

    aget-object v6, v8, v6

    iget-object v6, v6, Lo/c;->f:Lo/c;

    iget-object v6, v6, Lo/c;->i:Ln/h;

    invoke-virtual {v5}, Lo/c;->d()I

    move-result v5

    neg-int v5, v5

    const/4 v10, 0x6

    invoke-virtual {v1, v7, v6, v5, v10}, Ln/c;->g(Ln/h;Ln/h;II)V

    :cond_33
    if-eqz v36, :cond_34

    add-int/lit8 v5, v15, 0x1

    aget-object v6, v18, v5

    iget-object v6, v6, Lo/c;->i:Ln/h;

    iget-object v7, v11, Lo/d;->J:[Lo/c;

    aget-object v5, v7, v5

    iget-object v7, v5, Lo/c;->i:Ln/h;

    invoke-virtual {v5}, Lo/c;->d()I

    move-result v5

    const/16 v10, 0x8

    invoke-virtual {v1, v6, v7, v5, v10}, Ln/c;->f(Ln/h;Ln/h;II)V

    :cond_34
    iget-object v5, v3, Lo/b;->h:Ljava/util/ArrayList;

    if-eqz v5, :cond_3e

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_3e

    iget-boolean v8, v3, Lo/b;->n:Z

    if-eqz v8, :cond_35

    iget-boolean v8, v3, Lo/b;->p:Z

    if-nez v8, :cond_35

    iget v8, v3, Lo/b;->j:I

    int-to-float v8, v8

    move/from16 v29, v8

    :cond_35
    move-object/from16 v9, v16

    move/from16 v10, v17

    const/4 v8, 0x0

    :goto_24
    if-ge v8, v6, :cond_3e

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v7, v18

    check-cast v7, Lo/d;

    iget-object v0, v7, Lo/d;->d0:[F

    move-object/from16 v18, v0

    iget-object v0, v7, Lo/d;->J:[Lo/c;

    aget v18, v18, p3

    cmpg-float v21, v18, v17

    move-object/from16 v25, v0

    if-gez v21, :cond_37

    iget-boolean v0, v3, Lo/b;->p:Z

    if-eqz v0, :cond_36

    add-int/lit8 v0, v15, 0x1

    aget-object v0, v25, v0

    iget-object v0, v0, Lo/c;->i:Ln/h;

    aget-object v7, v25, v15

    iget-object v7, v7, Lo/c;->i:Ln/h;

    move-object/from16 v30, v5

    move/from16 v32, v6

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v1, v0, v7, v5, v6}, Ln/c;->e(Ln/h;Ln/h;II)V

    move/from16 v20, v10

    move v10, v5

    goto :goto_25

    :cond_36
    const/high16 v18, 0x3f800000    # 1.0f

    :cond_37
    move-object/from16 v30, v5

    move/from16 v32, v6

    const/4 v6, 0x4

    cmpl-float v0, v18, v17

    if-nez v0, :cond_38

    add-int/lit8 v0, v15, 0x1

    aget-object v0, v25, v0

    iget-object v0, v0, Lo/c;->i:Ln/h;

    aget-object v5, v25, v15

    iget-object v5, v5, Lo/c;->i:Ln/h;

    move/from16 v20, v10

    const/16 v7, 0x8

    const/4 v10, 0x0

    invoke-virtual {v1, v0, v5, v10, v7}, Ln/c;->e(Ln/h;Ln/h;II)V

    :goto_25
    move/from16 v21, v8

    move/from16 v36, v17

    move/from16 v10, v20

    move/from16 v17, v13

    goto/16 :goto_2a

    :cond_38
    move/from16 v20, v10

    const/4 v10, 0x0

    if-eqz v9, :cond_3d

    iget-object v5, v9, Lo/d;->J:[Lo/c;

    aget-object v9, v5, v15

    iget-object v9, v9, Lo/c;->i:Ln/h;

    add-int/lit8 v33, v15, 0x1

    aget-object v5, v5, v33

    iget-object v5, v5, Lo/c;->i:Ln/h;

    aget-object v6, v25, v15

    iget-object v6, v6, Lo/c;->i:Ln/h;

    aget-object v10, v25, v33

    iget-object v10, v10, Lo/c;->i:Ln/h;

    move/from16 v25, v0

    invoke-virtual {v1}, Ln/c;->l()Ln/b;

    move-result-object v0

    move-object/from16 v33, v7

    move/from16 v7, v17

    iput v7, v0, Ln/b;->b:F

    cmpl-float v17, v29, v7

    move/from16 v36, v7

    const/high16 v7, -0x40800000    # -1.0f

    if-eqz v17, :cond_39

    cmpl-float v17, v20, v18

    if-nez v17, :cond_3a

    :cond_39
    move/from16 v21, v8

    move/from16 v17, v13

    move v13, v7

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_27

    :cond_3a
    cmpl-float v17, v20, v36

    if-nez v17, :cond_3b

    iget-object v6, v0, Ln/b;->d:Ln/a;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v6, v9, v10}, Ln/a;->g(Ln/h;F)V

    iget-object v6, v0, Ln/b;->d:Ln/a;

    invoke-virtual {v6, v5, v7}, Ln/a;->g(Ln/h;F)V

    :goto_26
    move/from16 v21, v8

    move/from16 v17, v13

    goto :goto_28

    :cond_3b
    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v25, :cond_3c

    iget-object v5, v0, Ln/b;->d:Ln/a;

    invoke-virtual {v5, v6, v7}, Ln/a;->g(Ln/h;F)V

    iget-object v5, v0, Ln/b;->d:Ln/a;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v5, v10, v6}, Ln/a;->g(Ln/h;F)V

    goto :goto_26

    :cond_3c
    div-float v17, v20, v29

    div-float v20, v18, v29

    move/from16 v21, v8

    div-float v8, v17, v20

    move/from16 v17, v13

    iget-object v13, v0, Ln/b;->d:Ln/a;

    invoke-virtual {v13, v9, v7}, Ln/a;->g(Ln/h;F)V

    iget-object v7, v0, Ln/b;->d:Ln/a;

    const/high16 v13, -0x40800000    # -1.0f

    invoke-virtual {v7, v5, v13}, Ln/a;->g(Ln/h;F)V

    iget-object v5, v0, Ln/b;->d:Ln/a;

    invoke-virtual {v5, v10, v8}, Ln/a;->g(Ln/h;F)V

    iget-object v5, v0, Ln/b;->d:Ln/a;

    neg-float v7, v8

    invoke-virtual {v5, v6, v7}, Ln/a;->g(Ln/h;F)V

    goto :goto_28

    :goto_27
    iget-object v8, v0, Ln/b;->d:Ln/a;

    invoke-virtual {v8, v9, v7}, Ln/a;->g(Ln/h;F)V

    iget-object v8, v0, Ln/b;->d:Ln/a;

    invoke-virtual {v8, v5, v13}, Ln/a;->g(Ln/h;F)V

    iget-object v5, v0, Ln/b;->d:Ln/a;

    invoke-virtual {v5, v10, v7}, Ln/a;->g(Ln/h;F)V

    iget-object v5, v0, Ln/b;->d:Ln/a;

    invoke-virtual {v5, v6, v13}, Ln/a;->g(Ln/h;F)V

    :goto_28
    invoke-virtual {v1, v0}, Ln/c;->c(Ln/b;)V

    goto :goto_29

    :cond_3d
    move-object/from16 v33, v7

    move/from16 v21, v8

    move/from16 v36, v17

    move/from16 v17, v13

    :goto_29
    move/from16 v10, v18

    move-object/from16 v9, v33

    :goto_2a
    add-int/lit8 v8, v21, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move/from16 v13, v17

    move-object/from16 v5, v30

    move/from16 v6, v32

    move/from16 v17, v36

    goto/16 :goto_24

    :cond_3e
    move/from16 v17, v13

    if-eqz v12, :cond_3f

    if-eq v12, v2, :cond_40

    if-eqz v37, :cond_3f

    goto :goto_2b

    :cond_3f
    move-object v0, v2

    const/16 v28, 0x2

    goto :goto_30

    :cond_40
    :goto_2b
    aget-object v0, v19, v15

    iget-object v3, v11, Lo/d;->J:[Lo/c;

    add-int/lit8 v5, v15, 0x1

    aget-object v3, v3, v5

    iget-object v0, v0, Lo/c;->f:Lo/c;

    if-eqz v0, :cond_41

    iget-object v0, v0, Lo/c;->i:Ln/h;

    goto :goto_2c

    :cond_41
    move-object/from16 v0, v16

    :goto_2c
    iget-object v3, v3, Lo/c;->f:Lo/c;

    if-eqz v3, :cond_42

    iget-object v3, v3, Lo/c;->i:Ln/h;

    move-object v6, v3

    goto :goto_2d

    :cond_42
    move-object/from16 v6, v16

    :goto_2d
    iget-object v3, v12, Lo/d;->J:[Lo/c;

    aget-object v3, v3, v15

    iget-object v7, v2, Lo/d;->J:[Lo/c;

    aget-object v5, v7, v5

    if-eqz v0, :cond_44

    if-eqz v6, :cond_44

    if-nez p3, :cond_43

    iget v4, v4, Lo/d;->W:F

    goto :goto_2e

    :cond_43
    iget v4, v4, Lo/d;->X:F

    :goto_2e
    invoke-virtual {v3}, Lo/c;->d()I

    move-result v7

    invoke-virtual {v5}, Lo/c;->d()I

    move-result v8

    iget-object v3, v3, Lo/c;->i:Ln/h;

    iget-object v5, v5, Lo/c;->i:Ln/h;

    const/4 v9, 0x7

    move-object/from16 v28, v3

    move-object v3, v0

    move-object v0, v2

    move-object/from16 v2, v28

    move-object/from16 v28, v5

    move v5, v4

    move v4, v7

    move-object/from16 v7, v28

    const/16 v28, 0x2

    invoke-virtual/range {v1 .. v9}, Ln/c;->b(Ln/h;Ln/h;IFLn/h;Ln/h;II)V

    goto :goto_2f

    :cond_44
    move-object v0, v2

    const/16 v28, 0x2

    :cond_45
    :goto_2f
    move-object/from16 v1, p1

    goto/16 :goto_45

    :goto_30
    if-eqz v27, :cond_58

    if-eqz v12, :cond_58

    iget v1, v3, Lo/b;->j:I

    if-lez v1, :cond_46

    iget v2, v3, Lo/b;->i:I

    if-ne v2, v1, :cond_46

    const/16 v22, 0x1

    goto :goto_31

    :cond_46
    const/16 v22, 0x0

    :goto_31
    move-object v10, v12

    move-object v13, v10

    :goto_32
    if-eqz v10, :cond_45

    iget-object v1, v10, Lo/d;->J:[Lo/c;

    iget-object v2, v10, Lo/d;->f0:[Lo/d;

    aget-object v2, v2, p3

    :goto_33
    if-eqz v2, :cond_47

    iget v3, v2, Lo/d;->Z:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_48

    iget-object v2, v2, Lo/d;->f0:[Lo/d;

    aget-object v2, v2, p3

    goto :goto_33

    :cond_47
    const/16 v4, 0x8

    :cond_48
    if-nez v2, :cond_4a

    if-ne v10, v0, :cond_49

    goto :goto_34

    :cond_49
    move-object/from16 v18, v2

    move-object/from16 v20, v19

    const/16 v31, 0x5

    move-object/from16 v19, v13

    move v13, v4

    goto/16 :goto_3b

    :cond_4a
    :goto_34
    aget-object v3, v1, v15

    iget-object v5, v3, Lo/c;->i:Ln/h;

    iget-object v6, v3, Lo/c;->f:Lo/c;

    if-eqz v6, :cond_4b

    iget-object v6, v6, Lo/c;->i:Ln/h;

    goto :goto_35

    :cond_4b
    move-object/from16 v6, v16

    :goto_35
    if-eq v13, v10, :cond_4c

    iget-object v6, v13, Lo/d;->J:[Lo/c;

    add-int/lit8 v7, v15, 0x1

    aget-object v6, v6, v7

    iget-object v6, v6, Lo/c;->i:Ln/h;

    goto :goto_36

    :cond_4c
    if-ne v10, v12, :cond_4e

    if-ne v13, v10, :cond_4e

    aget-object v6, v19, v15

    iget-object v6, v6, Lo/c;->f:Lo/c;

    if-eqz v6, :cond_4d

    iget-object v6, v6, Lo/c;->i:Ln/h;

    goto :goto_36

    :cond_4d
    move-object/from16 v6, v16

    :cond_4e
    :goto_36
    invoke-virtual {v3}, Lo/c;->d()I

    move-result v3

    add-int/lit8 v7, v15, 0x1

    aget-object v8, v1, v7

    invoke-virtual {v8}, Lo/c;->d()I

    move-result v8

    if-eqz v2, :cond_4f

    iget-object v9, v2, Lo/d;->J:[Lo/c;

    aget-object v9, v9, v15

    iget-object v4, v9, Lo/c;->i:Ln/h;

    aget-object v1, v1, v7

    iget-object v1, v1, Lo/c;->i:Ln/h;

    goto :goto_38

    :cond_4f
    iget-object v4, v11, Lo/d;->J:[Lo/c;

    aget-object v4, v4, v7

    iget-object v9, v4, Lo/c;->f:Lo/c;

    if-eqz v9, :cond_50

    iget-object v4, v9, Lo/c;->i:Ln/h;

    goto :goto_37

    :cond_50
    move-object/from16 v4, v16

    :goto_37
    aget-object v1, v1, v7

    iget-object v1, v1, Lo/c;->i:Ln/h;

    :goto_38
    if-eqz v9, :cond_51

    invoke-virtual {v9}, Lo/c;->d()I

    move-result v9

    add-int/2addr v8, v9

    :cond_51
    if-eqz v13, :cond_52

    iget-object v9, v13, Lo/d;->J:[Lo/c;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lo/c;->d()I

    move-result v9

    add-int/2addr v3, v9

    :cond_52
    if-eqz v5, :cond_56

    if-eqz v6, :cond_56

    if-eqz v4, :cond_56

    if-eqz v1, :cond_56

    if-ne v10, v12, :cond_53

    iget-object v3, v12, Lo/d;->J:[Lo/c;

    aget-object v3, v3, v15

    invoke-virtual {v3}, Lo/c;->d()I

    move-result v3

    :cond_53
    if-ne v10, v0, :cond_54

    iget-object v8, v0, Lo/d;->J:[Lo/c;

    aget-object v7, v8, v7

    invoke-virtual {v7}, Lo/c;->d()I

    move-result v8

    :cond_54
    if-eqz v22, :cond_55

    const/16 v9, 0x8

    :goto_39
    move-object v7, v2

    move-object v2, v5

    goto :goto_3a

    :cond_55
    const/4 v9, 0x5

    goto :goto_39

    :goto_3a
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v18, v4

    move v4, v3

    move-object v3, v6

    move-object/from16 v6, v18

    move-object/from16 v18, v7

    move-object/from16 v20, v19

    const/16 v31, 0x5

    move-object v7, v1

    move-object/from16 v19, v13

    const/16 v13, 0x8

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Ln/c;->b(Ln/h;Ln/h;IFLn/h;Ln/h;II)V

    goto :goto_3b

    :cond_56
    move-object/from16 v18, v2

    move-object/from16 v20, v19

    const/16 v31, 0x5

    move-object/from16 v19, v13

    const/16 v13, 0x8

    :goto_3b
    iget v1, v10, Lo/d;->Z:I

    if-eq v1, v13, :cond_57

    move-object/from16 v19, v10

    :cond_57
    move-object/from16 v10, v18

    move-object/from16 v13, v19

    move-object/from16 v19, v20

    goto/16 :goto_32

    :cond_58
    move-object/from16 v20, v19

    const/16 v13, 0x8

    if-eqz v23, :cond_45

    if-eqz v12, :cond_45

    iget v1, v3, Lo/b;->j:I

    if-lez v1, :cond_59

    iget v2, v3, Lo/b;->i:I

    if-ne v2, v1, :cond_59

    const/16 v22, 0x1

    goto :goto_3c

    :cond_59
    const/16 v22, 0x0

    :goto_3c
    move-object v1, v12

    move-object v10, v1

    :goto_3d
    if-eqz v10, :cond_64

    iget-object v2, v10, Lo/d;->J:[Lo/c;

    iget-object v3, v10, Lo/d;->f0:[Lo/d;

    aget-object v3, v3, p3

    :goto_3e
    if-eqz v3, :cond_5a

    iget v4, v3, Lo/d;->Z:I

    if-ne v4, v13, :cond_5a

    iget-object v3, v3, Lo/d;->f0:[Lo/d;

    aget-object v3, v3, p3

    goto :goto_3e

    :cond_5a
    if-eq v10, v12, :cond_62

    if-eq v10, v0, :cond_62

    if-eqz v3, :cond_62

    if-ne v3, v0, :cond_5b

    move-object/from16 v3, v16

    :cond_5b
    aget-object v4, v2, v15

    move-object v5, v2

    iget-object v2, v4, Lo/c;->i:Ln/h;

    iget-object v6, v1, Lo/d;->J:[Lo/c;

    add-int/lit8 v7, v15, 0x1

    aget-object v6, v6, v7

    iget-object v6, v6, Lo/c;->i:Ln/h;

    invoke-virtual {v4}, Lo/c;->d()I

    move-result v4

    aget-object v8, v5, v7

    invoke-virtual {v8}, Lo/c;->d()I

    move-result v8

    if-eqz v3, :cond_5d

    iget-object v5, v3, Lo/d;->J:[Lo/c;

    aget-object v5, v5, v15

    iget-object v9, v5, Lo/c;->i:Ln/h;

    iget-object v13, v5, Lo/c;->f:Lo/c;

    if-eqz v13, :cond_5c

    iget-object v13, v13, Lo/c;->i:Ln/h;

    goto :goto_40

    :cond_5c
    move-object/from16 v13, v16

    goto :goto_40

    :cond_5d
    iget-object v9, v0, Lo/d;->J:[Lo/c;

    aget-object v9, v9, v15

    if-eqz v9, :cond_5e

    iget-object v13, v9, Lo/c;->i:Ln/h;

    goto :goto_3f

    :cond_5e
    move-object/from16 v13, v16

    :goto_3f
    aget-object v5, v5, v7

    iget-object v5, v5, Lo/c;->i:Ln/h;

    move-object/from16 v39, v13

    move-object v13, v5

    move-object v5, v9

    move-object/from16 v9, v39

    :goto_40
    if-eqz v5, :cond_5f

    invoke-virtual {v5}, Lo/c;->d()I

    move-result v5

    add-int/2addr v8, v5

    :cond_5f
    iget-object v5, v1, Lo/d;->J:[Lo/c;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lo/c;->d()I

    move-result v5

    add-int/2addr v4, v5

    move-object v5, v3

    move-object v3, v6

    move-object v6, v9

    if-eqz v22, :cond_60

    const/16 v9, 0x8

    goto :goto_41

    :cond_60
    const/4 v9, 0x4

    :goto_41
    if-eqz v2, :cond_61

    if-eqz v3, :cond_61

    if-eqz v6, :cond_61

    if-eqz v13, :cond_61

    move-object v7, v5

    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v18, v7

    move-object v7, v13

    const/16 v32, 0x4

    move-object v13, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Ln/c;->b(Ln/h;Ln/h;IFLn/h;Ln/h;II)V

    goto :goto_42

    :cond_61
    move-object v13, v1

    move-object/from16 v18, v5

    const/16 v32, 0x4

    move-object/from16 v1, p1

    :goto_42
    move-object/from16 v3, v18

    goto :goto_43

    :cond_62
    move-object v13, v1

    const/16 v32, 0x4

    move-object/from16 v1, p1

    :goto_43
    iget v2, v10, Lo/d;->Z:I

    const/16 v4, 0x8

    if-eq v2, v4, :cond_63

    move-object v13, v10

    :cond_63
    move-object v10, v3

    move-object v1, v13

    move v13, v4

    goto/16 :goto_3d

    :cond_64
    move-object/from16 v1, p1

    iget-object v2, v12, Lo/d;->J:[Lo/c;

    aget-object v2, v2, v15

    aget-object v3, v20, v15

    iget-object v3, v3, Lo/c;->f:Lo/c;

    iget-object v4, v0, Lo/d;->J:[Lo/c;

    add-int/lit8 v5, v15, 0x1

    aget-object v10, v4, v5

    iget-object v4, v11, Lo/d;->J:[Lo/c;

    aget-object v4, v4, v5

    iget-object v13, v4, Lo/c;->f:Lo/c;

    const/4 v9, 0x5

    if-eqz v3, :cond_66

    if-eq v12, v0, :cond_65

    iget-object v4, v2, Lo/c;->i:Ln/h;

    iget-object v3, v3, Lo/c;->i:Ln/h;

    invoke-virtual {v2}, Lo/c;->d()I

    move-result v2

    invoke-virtual {v1, v4, v3, v2, v9}, Ln/c;->e(Ln/h;Ln/h;II)V

    goto :goto_44

    :cond_65
    if-eqz v13, :cond_66

    move-object v4, v2

    iget-object v2, v4, Lo/c;->i:Ln/h;

    iget-object v3, v3, Lo/c;->i:Ln/h;

    invoke-virtual {v4}, Lo/c;->d()I

    move-result v4

    iget-object v6, v10, Lo/c;->i:Ln/h;

    iget-object v7, v13, Lo/c;->i:Ln/h;

    invoke-virtual {v10}, Lo/c;->d()I

    move-result v8

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual/range {v1 .. v9}, Ln/c;->b(Ln/h;Ln/h;IFLn/h;Ln/h;II)V

    :cond_66
    :goto_44
    if-eqz v13, :cond_67

    if-eq v12, v0, :cond_67

    iget-object v2, v10, Lo/c;->i:Ln/h;

    iget-object v3, v13, Lo/c;->i:Ln/h;

    invoke-virtual {v10}, Lo/c;->d()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v1, v2, v3, v4, v9}, Ln/c;->e(Ln/h;Ln/h;II)V

    :cond_67
    :goto_45
    if-nez v27, :cond_68

    if-eqz v23, :cond_6e

    :cond_68
    if-eqz v12, :cond_6e

    if-eq v12, v0, :cond_6e

    iget-object v2, v12, Lo/d;->J:[Lo/c;

    aget-object v3, v2, v15

    iget-object v4, v0, Lo/d;->J:[Lo/c;

    add-int/lit8 v5, v15, 0x1

    aget-object v4, v4, v5

    iget-object v6, v3, Lo/c;->f:Lo/c;

    if-eqz v6, :cond_69

    iget-object v6, v6, Lo/c;->i:Ln/h;

    goto :goto_46

    :cond_69
    move-object/from16 v6, v16

    :goto_46
    iget-object v7, v4, Lo/c;->f:Lo/c;

    if-eqz v7, :cond_6a

    iget-object v7, v7, Lo/c;->i:Ln/h;

    goto :goto_47

    :cond_6a
    move-object/from16 v7, v16

    :goto_47
    if-eq v11, v0, :cond_6c

    iget-object v7, v11, Lo/d;->J:[Lo/c;

    aget-object v7, v7, v5

    iget-object v7, v7, Lo/c;->f:Lo/c;

    if-eqz v7, :cond_6b

    iget-object v7, v7, Lo/c;->i:Ln/h;

    move-object/from16 v16, v7

    :cond_6b
    move-object/from16 v7, v16

    :cond_6c
    if-ne v12, v0, :cond_6d

    aget-object v4, v2, v5

    :cond_6d
    if-eqz v6, :cond_6e

    if-eqz v7, :cond_6e

    invoke-virtual {v3}, Lo/c;->d()I

    move-result v2

    iget-object v0, v0, Lo/d;->J:[Lo/c;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lo/c;->d()I

    move-result v8

    iget-object v0, v3, Lo/c;->i:Ln/h;

    iget-object v3, v4, Lo/c;->i:Ln/h;

    const/4 v9, 0x5

    const/high16 v5, 0x3f000000    # 0.5f

    move-object v4, v7

    move-object v7, v3

    move-object v3, v6

    move-object v6, v4

    move v4, v2

    move-object v2, v0

    invoke-virtual/range {v1 .. v9}, Ln/c;->b(Ln/h;Ln/h;IFLn/h;Ln/h;II)V

    :cond_6e
    :goto_48
    add-int/lit8 v2, v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    move/from16 v13, v17

    goto/16 :goto_2

    :cond_6f
    return-void
.end method

.method public static b(Lo/e;Ln/c;Lo/d;)V
    .locals 12

    const/4 v0, -0x1

    iput v0, p2, Lo/d;->j:I

    iget-object v1, p2, Lo/d;->F:Lo/c;

    iget-object v2, p2, Lo/d;->i0:[I

    iget-object v3, p2, Lo/d;->E:Lo/c;

    iget-object v4, p2, Lo/d;->C:Lo/c;

    iget-object v5, p2, Lo/d;->D:Lo/c;

    iget-object v6, p2, Lo/d;->B:Lo/c;

    iput v0, p2, Lo/d;->k:I

    iget-object v0, p0, Lo/d;->i0:[I

    const/4 v7, 0x0

    aget v8, v0, v7

    const/4 v9, 0x2

    const/4 v10, 0x4

    if-eq v8, v9, :cond_0

    aget v7, v2, v7

    if-ne v7, v10, :cond_0

    iget v7, v6, Lo/c;->g:I

    invoke-virtual {p0}, Lo/d;->l()I

    move-result v8

    iget v11, v5, Lo/c;->g:I

    sub-int/2addr v8, v11

    invoke-virtual {p1, v6}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v11

    iput-object v11, v6, Lo/c;->i:Ln/h;

    invoke-virtual {p1, v5}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v11

    iput-object v11, v5, Lo/c;->i:Ln/h;

    iget-object v6, v6, Lo/c;->i:Ln/h;

    invoke-virtual {p1, v6, v7}, Ln/c;->d(Ln/h;I)V

    iget-object v5, v5, Lo/c;->i:Ln/h;

    invoke-virtual {p1, v5, v8}, Ln/c;->d(Ln/h;I)V

    iput v9, p2, Lo/d;->j:I

    iput v7, p2, Lo/d;->R:I

    sub-int/2addr v8, v7

    iput v8, p2, Lo/d;->N:I

    iget v5, p2, Lo/d;->U:I

    if-ge v8, v5, :cond_0

    iput v5, p2, Lo/d;->N:I

    :cond_0
    const/4 v5, 0x1

    aget v0, v0, v5

    if-eq v0, v9, :cond_3

    aget v0, v2, v5

    if-ne v0, v10, :cond_3

    iget v0, v4, Lo/c;->g:I

    invoke-virtual {p0}, Lo/d;->i()I

    move-result p0

    iget v2, v3, Lo/c;->g:I

    sub-int/2addr p0, v2

    invoke-virtual {p1, v4}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v2

    iput-object v2, v4, Lo/c;->i:Ln/h;

    invoke-virtual {p1, v3}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v2

    iput-object v2, v3, Lo/c;->i:Ln/h;

    iget-object v2, v4, Lo/c;->i:Ln/h;

    invoke-virtual {p1, v2, v0}, Ln/c;->d(Ln/h;I)V

    iget-object v2, v3, Lo/c;->i:Ln/h;

    invoke-virtual {p1, v2, p0}, Ln/c;->d(Ln/h;I)V

    iget v2, p2, Lo/d;->T:I

    if-gtz v2, :cond_1

    iget v2, p2, Lo/d;->Z:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-virtual {p1, v1}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v2

    iput-object v2, v1, Lo/c;->i:Ln/h;

    iget v1, p2, Lo/d;->T:I

    add-int/2addr v1, v0

    invoke-virtual {p1, v2, v1}, Ln/c;->d(Ln/h;I)V

    :cond_2
    iput v9, p2, Lo/d;->k:I

    iput v0, p2, Lo/d;->S:I

    sub-int/2addr p0, v0

    iput p0, p2, Lo/d;->O:I

    iget p1, p2, Lo/d;->V:I

    if-ge p0, p1, :cond_3

    iput p1, p2, Lo/d;->O:I

    :cond_3
    return-void
.end method

.method public static final c(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
