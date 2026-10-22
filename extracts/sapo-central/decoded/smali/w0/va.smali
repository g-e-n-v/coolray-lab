.class public final synthetic Lw0/va;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lh2/a;

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:J

.field public final synthetic g:J

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Lh2/l;

.field public final synthetic j:Z

.field public final synthetic k:Landroid/view/View;

.field public final synthetic l:Lh2/l;


# direct methods
.method public synthetic constructor <init>(Lh2/a;Lcom/ex/auto/MainActivity;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;Lh2/l;ZLandroid/view/View;Lh2/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/va;->a:Lh2/a;

    iput-object p2, p0, Lw0/va;->b:Lcom/ex/auto/MainActivity;

    iput-object p3, p0, Lw0/va;->c:Ljava/lang/String;

    iput p4, p0, Lw0/va;->d:I

    iput-object p5, p0, Lw0/va;->e:Ljava/lang/String;

    iput-wide p6, p0, Lw0/va;->f:J

    iput-wide p8, p0, Lw0/va;->g:J

    iput-object p10, p0, Lw0/va;->h:Ljava/lang/String;

    iput-object p11, p0, Lw0/va;->i:Lh2/l;

    iput-boolean p12, p0, Lw0/va;->j:Z

    iput-object p13, p0, Lw0/va;->k:Landroid/view/View;

    iput-object p14, p0, Lw0/va;->l:Lh2/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lw0/va;->c:Ljava/lang/String;

    iget v1, p0, Lw0/va;->d:I

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const-string v2, "ERROR: "

    iget-object v3, p0, Lw0/va;->a:Lh2/a;

    iget-object v5, p0, Lw0/va;->b:Lcom/ex/auto/MainActivity;

    iget-object v4, p0, Lw0/va;->e:Ljava/lang/String;

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3}, Lh2/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    new-instance v3, Lw0/e9;

    const/16 v6, 0x11

    invoke-direct {v3, v5, v6}, Lw0/e9;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lw0/l9;

    const/4 v7, 0x1

    invoke-direct {v6, v5, v7}, Lw0/l9;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-static {v0, v1, v3, v6}, Lw0/m;->x(Ljava/lang/String;ILh2/l;Lh2/p;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v4, :cond_1

    :goto_1
    sget-object v1, Lw0/zd;->a:Landroidx/emoji2/text/m;

    invoke-static {v4}, Lw0/zd;->a(Ljava/lang/String;)V

    :cond_1
    move-object v7, v0

    goto :goto_4

    :goto_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_2
    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_1

    goto :goto_1

    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lw0/va;->f:J

    sub-long/2addr v0, v2

    iget-object v2, v5, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, Lw0/ib;

    iget-object v6, p0, Lw0/va;->h:Ljava/lang/String;

    iget-object v8, p0, Lw0/va;->i:Lh2/l;

    iget-boolean v9, p0, Lw0/va;->j:Z

    iget-object v10, p0, Lw0/va;->k:Landroid/view/View;

    iget-object v11, p0, Lw0/va;->l:Lh2/l;

    invoke-direct/range {v4 .. v11}, Lw0/ib;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;Lh2/l;ZLandroid/view/View;Lh2/l;)V

    iget-wide v5, p0, Lw0/va;->g:J

    sub-long/2addr v5, v0

    const-wide/16 v0, 0x0

    cmp-long v3, v5, v0

    if-gez v3, :cond_3

    move-wide v5, v0

    :cond_3
    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :goto_5
    if-eqz v4, :cond_4

    sget-object v1, Lw0/zd;->a:Landroidx/emoji2/text/m;

    invoke-static {v4}, Lw0/zd;->a(Ljava/lang/String;)V

    :cond_4
    throw v0
.end method
