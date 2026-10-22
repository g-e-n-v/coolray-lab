.class public final Lo/f;
.super Lo/d;
.source "SourceFile"


# instance fields
.field public j0:F

.field public k0:I

.field public l0:I

.field public m0:Lo/c;

.field public n0:I

.field public o0:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lo/d;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lo/f;->j0:F

    const/4 v0, -0x1

    iput v0, p0, Lo/f;->k0:I

    iput v0, p0, Lo/f;->l0:I

    iget-object v0, p0, Lo/d;->C:Lo/c;

    iput-object v0, p0, Lo/f;->m0:Lo/c;

    const/4 v0, 0x0

    iput v0, p0, Lo/f;->n0:I

    iget-object v1, p0, Lo/d;->K:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lo/d;->K:Ljava/util/ArrayList;

    iget-object v2, p0, Lo/f;->m0:Lo/c;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lo/d;->J:[Lo/c;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lo/d;->J:[Lo/c;

    iget-object v3, p0, Lo/f;->m0:Lo/c;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final F(Ln/c;Z)V
    .locals 2

    iget-object p2, p0, Lo/d;->M:Lo/d;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lo/f;->m0:Lo/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Ln/c;->n(Ljava/lang/Object;)I

    move-result p1

    iget p2, p0, Lo/f;->n0:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    iput p1, p0, Lo/d;->R:I

    iput v1, p0, Lo/d;->S:I

    iget-object p1, p0, Lo/d;->M:Lo/d;

    invoke-virtual {p1}, Lo/d;->i()I

    move-result p1

    invoke-virtual {p0, p1}, Lo/d;->A(I)V

    invoke-virtual {p0, v1}, Lo/d;->D(I)V

    return-void

    :cond_1
    iput v1, p0, Lo/d;->R:I

    iput p1, p0, Lo/d;->S:I

    iget-object p1, p0, Lo/d;->M:Lo/d;

    invoke-virtual {p1}, Lo/d;->l()I

    move-result p1

    invoke-virtual {p0, p1}, Lo/d;->D(I)V

    invoke-virtual {p0, v1}, Lo/d;->A(I)V

    return-void
.end method

.method public final G(I)V
    .locals 1

    iget-object v0, p0, Lo/f;->m0:Lo/c;

    invoke-virtual {v0, p1}, Lo/c;->i(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/f;->o0:Z

    return-void
.end method

.method public final H(I)V
    .locals 3

    iget v0, p0, Lo/f;->n0:I

    if-ne v0, p1, :cond_0

    goto :goto_2

    :cond_0
    iput p1, p0, Lo/f;->n0:I

    iget-object p1, p0, Lo/d;->K:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Lo/f;->n0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lo/d;->B:Lo/c;

    iput-object v0, p0, Lo/f;->m0:Lo/c;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lo/d;->C:Lo/c;

    iput-object v0, p0, Lo/f;->m0:Lo/c;

    :goto_0
    iget-object v0, p0, Lo/f;->m0:Lo/c;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lo/d;->J:[Lo/c;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lo/f;->m0:Lo/c;

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public final b(Ln/c;Z)V
    .locals 8

    iget-object p2, p0, Lo/d;->M:Lo/d;

    check-cast p2, Lo/e;

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lo/d;->g(I)Lo/c;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Lo/d;->g(I)Lo/c;

    move-result-object v2

    iget-object v3, p0, Lo/d;->M:Lo/d;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-object v3, v3, Lo/d;->i0:[I

    aget v3, v3, v5

    if-ne v3, v0, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    iget v6, p0, Lo/f;->n0:I

    const/4 v7, 0x5

    if-nez v6, :cond_3

    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Lo/d;->g(I)Lo/c;

    move-result-object v1

    invoke-virtual {p2, v7}, Lo/d;->g(I)Lo/c;

    move-result-object v2

    iget-object p2, p0, Lo/d;->M:Lo/d;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lo/d;->i0:[I

    aget p2, p2, v4

    if-ne p2, v0, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    move v3, v4

    :cond_3
    iget-boolean p2, p0, Lo/f;->o0:Z

    const/4 v0, -0x1

    if-eqz p2, :cond_6

    iget-object p2, p0, Lo/f;->m0:Lo/c;

    iget-boolean v4, p2, Lo/c;->c:Z

    if-eqz v4, :cond_6

    invoke-virtual {p1, p2}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object p2

    iget-object v4, p0, Lo/f;->m0:Lo/c;

    invoke-virtual {v4}, Lo/c;->c()I

    move-result v4

    invoke-virtual {p1, p2, v4}, Ln/c;->d(Ln/h;I)V

    iget v4, p0, Lo/f;->k0:I

    if-eq v4, v0, :cond_4

    if-eqz v3, :cond_5

    invoke-virtual {p1, v2}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v5, v7}, Ln/c;->f(Ln/h;Ln/h;II)V

    goto :goto_2

    :cond_4
    iget v4, p0, Lo/f;->l0:I

    if-eq v4, v0, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {p1, v2}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v0

    invoke-virtual {p1, v1}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v1

    invoke-virtual {p1, p2, v1, v5, v7}, Ln/c;->f(Ln/h;Ln/h;II)V

    invoke-virtual {p1, v0, p2, v5, v7}, Ln/c;->f(Ln/h;Ln/h;II)V

    :cond_5
    :goto_2
    iput-boolean v5, p0, Lo/f;->o0:Z

    return-void

    :cond_6
    iget p2, p0, Lo/f;->k0:I

    const/16 v4, 0x8

    if-eq p2, v0, :cond_7

    iget-object p2, p0, Lo/f;->m0:Lo/c;

    invoke-virtual {p1, p2}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object p2

    invoke-virtual {p1, v1}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v0

    iget v1, p0, Lo/f;->k0:I

    invoke-virtual {p1, p2, v0, v1, v4}, Ln/c;->e(Ln/h;Ln/h;II)V

    if-eqz v3, :cond_9

    invoke-virtual {p1, v2}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v5, v7}, Ln/c;->f(Ln/h;Ln/h;II)V

    return-void

    :cond_7
    iget p2, p0, Lo/f;->l0:I

    if-eq p2, v0, :cond_8

    iget-object p2, p0, Lo/f;->m0:Lo/c;

    invoke-virtual {p1, p2}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object p2

    invoke-virtual {p1, v2}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v0

    iget v2, p0, Lo/f;->l0:I

    neg-int v2, v2

    invoke-virtual {p1, p2, v0, v2, v4}, Ln/c;->e(Ln/h;Ln/h;II)V

    if-eqz v3, :cond_9

    invoke-virtual {p1, v1}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v1

    invoke-virtual {p1, p2, v1, v5, v7}, Ln/c;->f(Ln/h;Ln/h;II)V

    invoke-virtual {p1, v0, p2, v5, v7}, Ln/c;->f(Ln/h;Ln/h;II)V

    return-void

    :cond_8
    iget p2, p0, Lo/f;->j0:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_9

    iget-object p2, p0, Lo/f;->m0:Lo/c;

    invoke-virtual {p1, p2}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object p2

    invoke-virtual {p1, v2}, Ln/c;->k(Ljava/lang/Object;)Ln/h;

    move-result-object v1

    iget v2, p0, Lo/f;->j0:F

    invoke-virtual {p1}, Ln/c;->l()Ln/b;

    move-result-object v3

    iget-object v4, v3, Ln/b;->d:Ln/a;

    invoke-virtual {v4, p2, v0}, Ln/a;->g(Ln/h;F)V

    iget-object p2, v3, Ln/b;->d:Ln/a;

    invoke-virtual {p2, v1, v2}, Ln/a;->g(Ln/h;F)V

    invoke-virtual {p1, v3}, Ln/c;->c(Ln/b;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final g(I)Lo/c;
    .locals 2

    invoke-static {p1}, Ln/g;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lo/f;->n0:I

    if-nez v0, :cond_0

    iget-object p1, p0, Lo/f;->m0:Lo/c;

    return-object p1

    :pswitch_1
    iget v0, p0, Lo/f;->n0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lo/f;->m0:Lo/c;

    return-object p1

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {p1}, Landroidx/activity/result/b;->u(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_2
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final u()Z
    .locals 1

    iget-boolean v0, p0, Lo/f;->o0:Z

    return v0
.end method

.method public final v()Z
    .locals 1

    iget-boolean v0, p0, Lo/f;->o0:Z

    return v0
.end method
