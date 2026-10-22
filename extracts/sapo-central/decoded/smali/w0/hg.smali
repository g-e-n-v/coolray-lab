.class public final synthetic Lw0/hg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lw0/mg;

.field public final synthetic c:Lcom/ex/auto/SplitFloaterService;

.field public final synthetic d:Lw0/mg;


# direct methods
.method public synthetic constructor <init>(Lw0/mg;Lcom/ex/auto/SplitFloaterService;Lw0/mg;I)V
    .locals 0

    iput p4, p0, Lw0/hg;->a:I

    iput-object p1, p0, Lw0/hg;->b:Lw0/mg;

    iput-object p2, p0, Lw0/hg;->c:Lcom/ex/auto/SplitFloaterService;

    iput-object p3, p0, Lw0/hg;->d:Lw0/mg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lw0/hg;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/hg;->b:Lw0/mg;

    iget-object v3, p0, Lw0/hg;->c:Lcom/ex/auto/SplitFloaterService;

    iget-object v4, p0, Lw0/hg;->d:Lw0/mg;

    if-eqz v0, :cond_0

    sget-object v5, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    invoke-static {v0}, Lw0/og;->c(Lw0/mg;)V

    :cond_0
    iget-object v0, v3, Lcom/ex/auto/SplitFloaterService;->l:Lw0/ng;

    if-nez v0, :cond_1

    invoke-static {}, Lw0/og;->f()Lw0/ng;

    move-result-object v0

    :cond_1
    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    sget-object v5, Lw0/og;->a:Lo2/h;

    new-instance v5, Lw0/lg;

    iget v6, v3, Lcom/ex/auto/SplitFloaterService;->u:I

    iget v7, v0, Lw0/ng;->a:I

    iget v0, v0, Lw0/ng;->b:I

    invoke-direct {v5, v2, v6, v7, v0}, Lw0/lg;-><init>(IIII)V

    invoke-static {v4, v5}, Lw0/og;->l(Lw0/mg;Lw0/lg;)Z

    :cond_2
    iput-object v1, v3, Lcom/ex/auto/SplitFloaterService;->j:Lw0/mg;

    iput-object v1, v3, Lcom/ex/auto/SplitFloaterService;->k:Lw0/mg;

    iput-boolean v2, v3, Lcom/ex/auto/SplitFloaterService;->o:Z

    iget-object v0, v3, Lcom/ex/auto/SplitFloaterService;->i:Landroid/os/Handler;

    new-instance v1, Lw0/ig;

    const/4 v2, 0x3

    invoke-direct {v1, v3, v2}, Lw0/ig;-><init>(Lcom/ex/auto/SplitFloaterService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const v0, 0x7f0f0318

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/ex/auto/SplitFloaterService;->g(Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/hg;->b:Lw0/mg;

    iget-object v3, p0, Lw0/hg;->c:Lcom/ex/auto/SplitFloaterService;

    iget-object v4, p0, Lw0/hg;->d:Lw0/mg;

    if-eqz v0, :cond_3

    sget-object v5, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    invoke-static {v0}, Lw0/og;->c(Lw0/mg;)V

    :cond_3
    iget-object v0, v3, Lcom/ex/auto/SplitFloaterService;->l:Lw0/ng;

    if-nez v0, :cond_4

    invoke-static {}, Lw0/og;->f()Lw0/ng;

    move-result-object v0

    :cond_4
    if-eqz v4, :cond_5

    if-eqz v0, :cond_5

    sget-object v5, Lw0/og;->a:Lo2/h;

    new-instance v5, Lw0/lg;

    iget v6, v3, Lcom/ex/auto/SplitFloaterService;->u:I

    iget v7, v0, Lw0/ng;->a:I

    iget v0, v0, Lw0/ng;->b:I

    invoke-direct {v5, v2, v6, v7, v0}, Lw0/lg;-><init>(IIII)V

    invoke-static {v4, v5}, Lw0/og;->l(Lw0/mg;Lw0/lg;)Z

    :cond_5
    iput-object v1, v3, Lcom/ex/auto/SplitFloaterService;->j:Lw0/mg;

    iput-object v1, v3, Lcom/ex/auto/SplitFloaterService;->k:Lw0/mg;

    iget-object v0, v3, Lcom/ex/auto/SplitFloaterService;->i:Landroid/os/Handler;

    new-instance v1, Lw0/ig;

    invoke-direct {v1, v3, v2}, Lw0/ig;-><init>(Lcom/ex/auto/SplitFloaterService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
