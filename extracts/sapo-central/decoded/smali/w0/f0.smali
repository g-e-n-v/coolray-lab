.class public final synthetic Lw0/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/AppPipFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/AppPipFloaterService;I)V
    .locals 0

    iput p2, p0, Lw0/f0;->a:I

    iput-object p1, p0, Lw0/f0;->b:Lcom/ex/auto/AppPipFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lw0/f0;->a:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lw0/y3;->c:Lw0/y3;

    iget-object v6, p0, Lw0/f0;->b:Lcom/ex/auto/AppPipFloaterService;

    iget-object v4, v6, Lcom/ex/auto/AppPipFloaterService;->i:Lw0/mg;

    iget-object v5, v6, Lcom/ex/auto/AppPipFloaterService;->u:Ljava/lang/Integer;

    if-eqz v4, :cond_0

    sget-object v2, Lw0/y3;->a:Lw0/y3;

    :goto_0
    move-object v3, v2

    goto :goto_1

    :cond_0
    if-eqz v5, :cond_1

    sget-object v2, Lw0/y3;->b:Lw0/y3;

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_1
    if-ne v3, v0, :cond_2

    goto :goto_2

    :cond_2
    iput-boolean v1, v6, Lcom/ex/auto/AppPipFloaterService;->n:Z

    invoke-virtual {v6}, Lcom/ex/auto/AppPipFloaterService;->l()V

    iget-object v0, v6, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    iget-object v1, v6, Lcom/ex/auto/AppPipFloaterService;->v:Lw0/g0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lw0/x;

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lw0/x;-><init>(Lw0/y3;Lw0/mg;Ljava/lang/Integer;Lcom/ex/auto/AppPipFloaterService;I)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_2
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lw0/f0;->b:Lcom/ex/auto/AppPipFloaterService;

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-wide/high16 v3, 0x4022000000000000L    # 9.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v4, v0, Lcom/ex/auto/AppPipFloaterService;->k:Lw0/lg;

    iget-object v5, v0, Lcom/ex/auto/AppPipFloaterService;->j:Lw0/ng;

    invoke-virtual {v0}, Lcom/ex/auto/AppPipFloaterService;->j()Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    iget-boolean v6, v0, Lcom/ex/auto/AppPipFloaterService;->n:Z

    if-eqz v6, :cond_3

    goto :goto_4

    :cond_3
    iget-boolean v1, v0, Lcom/ex/auto/AppPipFloaterService;->l:Z

    xor-int/lit8 v6, v1, 0x1

    iput-boolean v6, v0, Lcom/ex/auto/AppPipFloaterService;->l:Z

    iget v6, v4, Lw0/lg;->c:I

    iget v7, v4, Lw0/lg;->a:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    iget v8, v4, Lw0/lg;->d:I

    iget v9, v4, Lw0/lg;->b:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    mul-double/2addr v6, v8

    if-nez v1, :cond_4

    new-instance v1, Lx1/a;

    invoke-direct {v1, v3, v2}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    new-instance v1, Lx1/a;

    invoke-direct {v1, v2, v3}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    iget-object v2, v1, Lx1/a;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    iget-object v1, v1, Lx1/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    mul-double v10, v2, v8

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    double-to-int v1, v2

    mul-double/2addr v8, v6

    double-to-int v2, v8

    iget v3, v4, Lw0/lg;->a:I

    iget v6, v4, Lw0/lg;->c:I

    add-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x2

    iget v6, v4, Lw0/lg;->b:I

    iget v4, v4, Lw0/lg;->d:I

    add-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    new-instance v4, Lw0/lg;

    div-int/lit8 v1, v1, 0x2

    sub-int v7, v3, v1

    div-int/lit8 v2, v2, 0x2

    sub-int v8, v6, v2

    add-int/2addr v3, v1

    add-int/2addr v6, v2

    invoke-direct {v4, v7, v8, v3, v6}, Lw0/lg;-><init>(IIII)V

    invoke-static {v4, v5}, Lcom/ex/auto/AppPipFloaterService;->c(Lw0/lg;Lw0/ng;)Lw0/lg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ex/auto/AppPipFloaterService;->a(Lw0/lg;)V

    goto :goto_7

    :cond_5
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resize ignorado: controle="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ex/auto/AppPipFloaterService;->j()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    if-eqz v4, :cond_6

    move v4, v1

    goto :goto_5

    :cond_6
    move v4, v3

    :goto_5
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " tela="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_7

    goto :goto_6

    :cond_7
    move v1, v3

    :goto_6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ocupado="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/ex/auto/AppPipFloaterService;->n:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppPipFloater"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lw0/f0;->b:Lcom/ex/auto/AppPipFloaterService;

    sget-object v1, Lcom/ex/auto/AppPipFloaterService;->x:Lcom/ex/auto/AppPipFloaterService;

    const-wide v1, 0x3feaaaaaaaaaaaabL    # 0.8333333333333334

    invoke-virtual {v0, v1, v2}, Lcom/ex/auto/AppPipFloaterService;->i(D)V

    :goto_8
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lw0/f0;->b:Lcom/ex/auto/AppPipFloaterService;

    sget-object v1, Lcom/ex/auto/AppPipFloaterService;->x:Lcom/ex/auto/AppPipFloaterService;

    const-wide v1, 0x3ff3333333333333L    # 1.2

    invoke-virtual {v0, v1, v2}, Lcom/ex/auto/AppPipFloaterService;->i(D)V

    goto :goto_8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
