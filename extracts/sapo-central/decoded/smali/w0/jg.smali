.class public final synthetic Lw0/jg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/SplitFloaterService;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/SplitFloaterService;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lw0/jg;->a:I

    iput-object p1, p0, Lw0/jg;->b:Lcom/ex/auto/SplitFloaterService;

    iput-object p2, p0, Lw0/jg;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lw0/jg;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/jg;->b:Lcom/ex/auto/SplitFloaterService;

    iget-object v1, p0, Lw0/jg;->c:Ljava/lang/String;

    sget-object v2, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/jg;->b:Lcom/ex/auto/SplitFloaterService;

    iget-object v1, p0, Lw0/jg;->c:Ljava/lang/String;

    iget-object v2, v0, Lcom/ex/auto/SplitFloaterService;->l:Lw0/ng;

    if-nez v2, :cond_0

    invoke-static {}, Lw0/og;->f()Lw0/ng;

    move-result-object v2

    :cond_0
    const-string v3, "getString(...)"

    if-nez v2, :cond_1

    sget-object v1, Lw0/og;->a:Lo2/h;

    sget-object v1, Lw0/og;->f:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f0f017d

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/SplitFloaterService;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    invoke-static {v0, v1}, Lw0/og;->n(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const v1, 0x7f0f0179

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/SplitFloaterService;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Lcom/ex/auto/SplitFloaterService;->e(Lw0/ng;)Lw0/lg;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lw0/og;->k(Ljava/lang/String;Ljava/lang/String;Lw0/lg;)Lw0/mg;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iput-boolean v2, v0, Lcom/ex/auto/SplitFloaterService;->o:Z

    iget-object v1, v0, Lcom/ex/auto/SplitFloaterService;->i:Landroid/os/Handler;

    new-instance v2, Lw0/ig;

    const/4 v4, 0x4

    invoke-direct {v2, v0, v4}, Lw0/ig;-><init>(Lcom/ex/auto/SplitFloaterService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v1, Lw0/og;->f:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f0f0183

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/SplitFloaterService;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v4, v0, Lcom/ex/auto/SplitFloaterService;->j:Lw0/mg;

    if-eqz v4, :cond_4

    invoke-static {v4}, Lw0/og;->g(Lw0/mg;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v1}, Lw0/og;->c(Lw0/mg;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ex/auto/SplitFloaterService;->j:Lw0/mg;

    iput-object v1, v0, Lcom/ex/auto/SplitFloaterService;->k:Lw0/mg;

    iput-boolean v2, v0, Lcom/ex/auto/SplitFloaterService;->o:Z

    iget-object v1, v0, Lcom/ex/auto/SplitFloaterService;->i:Landroid/os/Handler;

    new-instance v2, Lw0/ig;

    const/4 v4, 0x5

    invoke-direct {v2, v0, v4}, Lw0/ig;-><init>(Lcom/ex/auto/SplitFloaterService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const v1, 0x7f0f0315

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/SplitFloaterService;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iput-object v1, v0, Lcom/ex/auto/SplitFloaterService;->k:Lw0/mg;

    iput-boolean v2, v0, Lcom/ex/auto/SplitFloaterService;->o:Z

    iget-object v1, v0, Lcom/ex/auto/SplitFloaterService;->i:Landroid/os/Handler;

    new-instance v2, Lw0/ig;

    const/4 v3, 0x6

    invoke-direct {v2, v0, v3}, Lw0/ig;-><init>(Lcom/ex/auto/SplitFloaterService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
