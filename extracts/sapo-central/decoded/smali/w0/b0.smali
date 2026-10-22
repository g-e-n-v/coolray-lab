.class public final synthetic Lw0/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/AppPipFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/AppPipFloaterService;I)V
    .locals 0

    iput p2, p0, Lw0/b0;->a:I

    iput-object p1, p0, Lw0/b0;->b:Lcom/ex/auto/AppPipFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lw0/b0;->a:I

    const-wide/16 v1, 0x7d0

    const-string v3, "getString(...)"

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/b0;->b:Lcom/ex/auto/AppPipFloaterService;

    sget-object v1, Lcom/ex/auto/AppPipFloaterService;->x:Lcom/ex/auto/AppPipFloaterService;

    invoke-virtual {v0}, Lcom/ex/auto/AppPipFloaterService;->l()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/b0;->b:Lcom/ex/auto/AppPipFloaterService;

    sget-object v4, Lcom/ex/auto/AppPipFloaterService;->x:Lcom/ex/auto/AppPipFloaterService;

    invoke-virtual {v0}, Lcom/ex/auto/AppPipFloaterService;->l()V

    iget-object v4, v0, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    iget-object v5, v0, Lcom/ex/auto/AppPipFloaterService;->v:Lw0/g0;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v4, v5, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const v1, 0x7f0f029b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/AppPipFloaterService;->k(Ljava/lang/String;)Z

    return-void

    :pswitch_1
    iget-object v0, p0, Lw0/b0;->b:Lcom/ex/auto/AppPipFloaterService;

    sget-object v1, Lcom/ex/auto/AppPipFloaterService;->x:Lcom/ex/auto/AppPipFloaterService;

    const v1, 0x7f0f029d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/AppPipFloaterService;->k(Ljava/lang/String;)Z

    return-void

    :pswitch_2
    iget-object v0, p0, Lw0/b0;->b:Lcom/ex/auto/AppPipFloaterService;

    sget-object v4, Lcom/ex/auto/AppPipFloaterService;->x:Lcom/ex/auto/AppPipFloaterService;

    invoke-virtual {v0}, Lcom/ex/auto/AppPipFloaterService;->l()V

    iget-object v4, v0, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    iget-object v5, v0, Lcom/ex/auto/AppPipFloaterService;->v:Lw0/g0;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v4, v5, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const v1, 0x7f0f0298

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/AppPipFloaterService;->k(Ljava/lang/String;)Z

    return-void

    :pswitch_3
    iget-object v0, p0, Lw0/b0;->b:Lcom/ex/auto/AppPipFloaterService;

    sget-object v1, Lcom/ex/auto/AppPipFloaterService;->x:Lcom/ex/auto/AppPipFloaterService;

    invoke-virtual {v0}, Lcom/ex/auto/AppPipFloaterService;->l()V

    return-void

    :pswitch_4
    sget-object v0, Lw0/z3;->a:Lw0/z3;

    iget-object v2, p0, Lw0/b0;->b:Lcom/ex/auto/AppPipFloaterService;

    sget-object v1, Lcom/ex/auto/AppPipFloaterService;->x:Lcom/ex/auto/AppPipFloaterService;

    invoke-static {}, Lw0/og;->j()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lw0/z3;->b:Lw0/z3;

    :goto_0
    if-eq v1, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v3}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lw0/og;->b(I)Lw0/lg;

    move-result-object v4

    iget-object v0, v2, Lcom/ex/auto/AppPipFloaterService;->j:Lw0/ng;

    if-nez v0, :cond_2

    invoke-static {}, Lw0/og;->f()Lw0/ng;

    move-result-object v0

    :cond_2
    move-object v5, v0

    iget-object v0, v2, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    new-instance v1, Lw0/z;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lw0/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    :pswitch_5
    iget-object v0, p0, Lw0/b0;->b:Lcom/ex/auto/AppPipFloaterService;

    sget-object v1, Lcom/ex/auto/AppPipFloaterService;->x:Lcom/ex/auto/AppPipFloaterService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
