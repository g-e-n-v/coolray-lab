.class public final Lq/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final synthetic h:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/f;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lq/f;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public static a(III)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne p0, v1, :cond_2

    const/high16 p0, -0x80000000

    if-eq v0, p0, :cond_1

    if-nez v0, :cond_2

    :cond_1
    if-ne p2, p1, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final b(Lo/d;Lp/b;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v1, Lo/d;->D:Lo/c;

    iget-object v4, v1, Lo/d;->B:Lo/c;

    iget v5, v1, Lo/d;->Z:I

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-ne v5, v6, :cond_0

    iput v7, v2, Lp/b;->e:I

    iput v7, v2, Lp/b;->f:I

    iput v7, v2, Lp/b;->g:I

    return-void

    :cond_0
    iget-object v5, v1, Lo/d;->M:Lo/d;

    if-nez v5, :cond_1

    goto/16 :goto_10

    :cond_1
    iget v5, v2, Lp/b;->a:I

    iget v6, v2, Lp/b;->b:I

    iget v8, v2, Lp/b;->c:I

    iget v9, v2, Lp/b;->d:I

    iget v10, v0, Lq/f;->b:I

    iget v11, v0, Lq/f;->c:I

    add-int/2addr v10, v11

    iget v11, v0, Lq/f;->d:I

    iget-object v12, v1, Lo/d;->Y:Landroid/view/View;

    invoke-static {v5}, Ln/g;->b(I)I

    move-result v13

    const/4 v14, 0x1

    const/4 v15, 0x3

    const/4 v7, 0x2

    if-eqz v13, :cond_b

    if-eq v13, v14, :cond_a

    if-eq v13, v7, :cond_3

    if-eq v13, v15, :cond_2

    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_2
    iget v8, v0, Lq/f;->f:I

    iget v4, v4, Lo/c;->g:I

    iget v3, v3, Lo/c;->g:I

    add-int/2addr v4, v3

    add-int/2addr v4, v11

    const/4 v3, -0x1

    invoke-static {v8, v4, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    goto :goto_4

    :cond_3
    iget v3, v0, Lq/f;->f:I

    const/4 v4, -0x2

    invoke-static {v3, v11, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    iget v4, v1, Lo/d;->l:I

    if-ne v4, v14, :cond_4

    move v4, v14

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    iget v8, v2, Lp/b;->j:I

    if-eq v8, v14, :cond_5

    if-ne v8, v7, :cond_8

    :cond_5
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v1}, Lo/d;->i()I

    move-result v11

    if-ne v8, v11, :cond_6

    move v8, v14

    goto :goto_1

    :cond_6
    const/4 v8, 0x0

    :goto_1
    iget v11, v2, Lp/b;->j:I

    if-eq v11, v7, :cond_9

    if-eqz v4, :cond_9

    if-eqz v4, :cond_7

    if-nez v8, :cond_9

    :cond_7
    invoke-virtual {v1}, Lo/d;->u()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    move v4, v3

    goto :goto_4

    :cond_9
    :goto_3
    invoke-virtual {v1}, Lo/d;->l()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_2

    :cond_a
    const/high16 v4, 0x40000000    # 2.0f

    iget v3, v0, Lq/f;->f:I

    const/4 v8, -0x2

    invoke-static {v3, v11, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    goto :goto_2

    :cond_b
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v8, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_2

    :goto_4
    invoke-static {v6}, Ln/g;->b(I)I

    move-result v3

    if-eqz v3, :cond_14

    if-eq v3, v14, :cond_13

    if-eq v3, v7, :cond_d

    if-eq v3, v15, :cond_c

    const/4 v3, 0x0

    goto :goto_7

    :cond_c
    iget v3, v0, Lq/f;->g:I

    iget-object v8, v1, Lo/d;->C:Lo/c;

    iget v8, v8, Lo/c;->g:I

    iget-object v9, v1, Lo/d;->E:Lo/c;

    iget v9, v9, Lo/c;->g:I

    add-int/2addr v8, v9

    add-int/2addr v8, v10

    const/4 v9, -0x1

    invoke-static {v3, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    goto :goto_7

    :cond_d
    iget v3, v0, Lq/f;->g:I

    const/4 v8, -0x2

    invoke-static {v3, v10, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    iget v8, v1, Lo/d;->m:I

    if-ne v8, v14, :cond_e

    move v8, v14

    goto :goto_5

    :cond_e
    const/4 v8, 0x0

    :goto_5
    iget v9, v2, Lp/b;->j:I

    if-eq v9, v14, :cond_f

    if-ne v9, v7, :cond_15

    :cond_f
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v1}, Lo/d;->l()I

    move-result v10

    if-ne v9, v10, :cond_10

    move v9, v14

    goto :goto_6

    :cond_10
    const/4 v9, 0x0

    :goto_6
    iget v10, v2, Lp/b;->j:I

    if-eq v10, v7, :cond_12

    if-eqz v8, :cond_12

    if-eqz v8, :cond_11

    if-nez v9, :cond_12

    :cond_11
    invoke-virtual {v1}, Lo/d;->v()Z

    move-result v8

    if-eqz v8, :cond_15

    :cond_12
    invoke-virtual {v1}, Lo/d;->i()I

    move-result v3

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_7

    :cond_13
    const/high16 v8, 0x40000000    # 2.0f

    iget v3, v0, Lq/f;->g:I

    const/4 v9, -0x2

    invoke-static {v3, v10, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    goto :goto_7

    :cond_14
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    :cond_15
    :goto_7
    iget-object v8, v1, Lo/d;->M:Lo/d;

    check-cast v8, Lo/e;

    iget-object v9, v0, Lq/f;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v8, :cond_16

    iget v10, v9, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    const/16 v11, 0x100

    invoke-static {v10, v11}, Lo/g;->c(II)Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {v1}, Lo/d;->l()I

    move-result v11

    if-ne v10, v11, :cond_16

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {v8}, Lo/d;->l()I

    move-result v11

    if-ge v10, v11, :cond_16

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-virtual {v1}, Lo/d;->i()I

    move-result v11

    if-ne v10, v11, :cond_16

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-virtual {v8}, Lo/d;->i()I

    move-result v8

    if-ge v10, v8, :cond_16

    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    move-result v8

    iget v10, v1, Lo/d;->T:I

    if-ne v8, v10, :cond_16

    invoke-virtual {v1}, Lo/d;->t()Z

    move-result v8

    if-nez v8, :cond_16

    iget v8, v1, Lo/d;->z:I

    invoke-virtual {v1}, Lo/d;->l()I

    move-result v10

    invoke-static {v8, v4, v10}, Lq/f;->a(III)Z

    move-result v8

    if-eqz v8, :cond_16

    iget v8, v1, Lo/d;->A:I

    invoke-virtual {v1}, Lo/d;->i()I

    move-result v10

    invoke-static {v8, v3, v10}, Lq/f;->a(III)Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-virtual {v1}, Lo/d;->l()I

    move-result v3

    iput v3, v2, Lp/b;->e:I

    invoke-virtual {v1}, Lo/d;->i()I

    move-result v3

    iput v3, v2, Lp/b;->f:I

    iget v1, v1, Lo/d;->T:I

    iput v1, v2, Lp/b;->g:I

    return-void

    :cond_16
    if-ne v5, v15, :cond_17

    move v8, v14

    goto :goto_8

    :cond_17
    const/4 v8, 0x0

    :goto_8
    if-ne v6, v15, :cond_18

    move v10, v14

    goto :goto_9

    :cond_18
    const/4 v10, 0x0

    :goto_9
    const/4 v11, 0x4

    if-eq v6, v11, :cond_1a

    if-ne v6, v14, :cond_19

    goto :goto_a

    :cond_19
    const/4 v6, 0x0

    goto :goto_b

    :cond_1a
    :goto_a
    move v6, v14

    :goto_b
    if-eq v5, v11, :cond_1c

    if-ne v5, v14, :cond_1b

    goto :goto_c

    :cond_1b
    const/4 v5, 0x0

    goto :goto_d

    :cond_1c
    :goto_c
    move v5, v14

    :goto_d
    const/4 v11, 0x0

    if-eqz v8, :cond_1d

    iget v13, v1, Lo/d;->P:F

    cmpl-float v13, v13, v11

    if-lez v13, :cond_1d

    move v13, v14

    goto :goto_e

    :cond_1d
    const/4 v13, 0x0

    :goto_e
    if-eqz v10, :cond_1e

    iget v15, v1, Lo/d;->P:F

    cmpl-float v11, v15, v11

    if-lez v11, :cond_1e

    move v11, v14

    goto :goto_f

    :cond_1e
    const/4 v11, 0x0

    :goto_f
    if-nez v12, :cond_1f

    :goto_10
    return-void

    :cond_1f
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lq/e;

    iget v0, v2, Lp/b;->j:I

    if-eq v0, v14, :cond_21

    if-eq v0, v7, :cond_21

    if-eqz v8, :cond_21

    iget v0, v1, Lo/d;->l:I

    if-nez v0, :cond_21

    if-eqz v10, :cond_21

    iget v0, v1, Lo/d;->m:I

    if-eqz v0, :cond_20

    goto :goto_11

    :cond_20
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v9, -0x1

    const/4 v14, 0x0

    goto/16 :goto_19

    :cond_21
    :goto_11
    invoke-virtual {v12, v4, v3}, Landroid/view/View;->measure(II)V

    iput v4, v1, Lo/d;->z:I

    iput v3, v1, Lo/d;->A:I

    const/4 v0, 0x0

    iput-boolean v0, v1, Lo/d;->g:Z

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    move-result v8

    iget v10, v1, Lo/d;->o:I

    if-lez v10, :cond_22

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_12

    :cond_22
    move v10, v0

    :goto_12
    iget v14, v1, Lo/d;->p:I

    if-lez v14, :cond_23

    invoke-static {v14, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    :cond_23
    iget v14, v1, Lo/d;->r:I

    if-lez v14, :cond_24

    invoke-static {v14, v7}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_13
    move/from16 v16, v3

    goto :goto_14

    :cond_24
    move v14, v7

    goto :goto_13

    :goto_14
    iget v3, v1, Lo/d;->s:I

    if-lez v3, :cond_25

    invoke-static {v3, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    :cond_25
    iget v3, v9, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    const/4 v9, 0x1

    invoke-static {v3, v9}, Lo/g;->c(II)Z

    move-result v3

    if-nez v3, :cond_27

    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz v13, :cond_26

    if-eqz v6, :cond_26

    iget v5, v1, Lo/d;->P:F

    int-to-float v6, v14

    mul-float/2addr v6, v5

    add-float/2addr v6, v3

    float-to-int v3, v6

    move v10, v3

    goto :goto_15

    :cond_26
    if-eqz v11, :cond_27

    if-eqz v5, :cond_27

    iget v5, v1, Lo/d;->P:F

    int-to-float v6, v10

    div-float/2addr v6, v5

    add-float/2addr v6, v3

    float-to-int v3, v6

    move v14, v3

    :cond_27
    :goto_15
    if-ne v0, v10, :cond_29

    if-eq v7, v14, :cond_28

    goto :goto_17

    :cond_28
    move v5, v8

    move v3, v10

    const/4 v0, 0x0

    :goto_16
    const/4 v9, -0x1

    goto :goto_19

    :cond_29
    :goto_17
    const/high16 v8, 0x40000000    # 2.0f

    if-eq v0, v10, :cond_2a

    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    :cond_2a
    if-eq v7, v14, :cond_2b

    invoke-static {v14, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_18

    :cond_2b
    move/from16 v3, v16

    :goto_18
    invoke-virtual {v12, v4, v3}, Landroid/view/View;->measure(II)V

    iput v4, v1, Lo/d;->z:I

    iput v3, v1, Lo/d;->A:I

    const/4 v0, 0x0

    iput-boolean v0, v1, Lo/d;->g:Z

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    move-result v5

    move v14, v4

    goto :goto_16

    :goto_19
    if-eq v5, v9, :cond_2c

    const/4 v4, 0x1

    goto :goto_1a

    :cond_2c
    move v4, v0

    :goto_1a
    iget v6, v2, Lp/b;->c:I

    if-ne v3, v6, :cond_2e

    iget v6, v2, Lp/b;->d:I

    if-eq v14, v6, :cond_2d

    goto :goto_1b

    :cond_2d
    move v7, v0

    goto :goto_1c

    :cond_2e
    :goto_1b
    const/4 v7, 0x1

    :goto_1c
    iput-boolean v7, v2, Lp/b;->i:Z

    iget-boolean v0, v15, Lq/e;->X:Z

    if-eqz v0, :cond_2f

    const/4 v9, 0x1

    goto :goto_1d

    :cond_2f
    move v9, v4

    :goto_1d
    if-eqz v9, :cond_30

    const/4 v0, -0x1

    if-eq v5, v0, :cond_30

    iget v0, v1, Lo/d;->T:I

    if-eq v0, v5, :cond_30

    const/4 v0, 0x1

    iput-boolean v0, v2, Lp/b;->i:Z

    :cond_30
    iput v3, v2, Lp/b;->e:I

    iput v14, v2, Lp/b;->f:I

    iput-boolean v9, v2, Lp/b;->h:Z

    iput v5, v2, Lp/b;->g:I

    return-void
.end method
