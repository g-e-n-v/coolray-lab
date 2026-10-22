.class public final Lw0/g0;
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

    iput p2, p0, Lw0/g0;->a:I

    iput-object p1, p0, Lw0/g0;->b:Lcom/ex/auto/AppPipFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lw0/g0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/g0;->b:Lcom/ex/auto/AppPipFloaterService;

    iget-object v1, v0, Lcom/ex/auto/AppPipFloaterService;->i:Lw0/mg;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lw0/h0;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, p0, v3}, Lw0/h0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v2}, Lw0/n3;->a(Lh2/a;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/g0;->b:Lcom/ex/auto/AppPipFloaterService;

    iget-boolean v0, v0, Lcom/ex/auto/AppPipFloaterService;->t:Z

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lw0/g0;->b:Lcom/ex/auto/AppPipFloaterService;

    invoke-virtual {v0}, Lcom/ex/auto/AppPipFloaterService;->j()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, v0, Lcom/ex/auto/AppPipFloaterService;->n:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lw0/b0;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lw0/b0;-><init>(Lcom/ex/auto/AppPipFloaterService;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lw0/g0;->b:Lcom/ex/auto/AppPipFloaterService;

    iget-object v0, v0, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
