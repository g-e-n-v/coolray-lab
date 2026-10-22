.class public final synthetic Lw0/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lw0/y3;

.field public final synthetic c:Lw0/mg;

.field public final synthetic d:Ljava/lang/Integer;

.field public final synthetic e:Lcom/ex/auto/AppPipFloaterService;


# direct methods
.method public synthetic constructor <init>(Lw0/y3;Lw0/mg;Ljava/lang/Integer;Lcom/ex/auto/AppPipFloaterService;I)V
    .locals 0

    iput p5, p0, Lw0/x;->a:I

    iput-object p1, p0, Lw0/x;->b:Lw0/y3;

    iput-object p2, p0, Lw0/x;->c:Lw0/mg;

    iput-object p3, p0, Lw0/x;->d:Ljava/lang/Integer;

    iput-object p4, p0, Lw0/x;->e:Lcom/ex/auto/AppPipFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lw0/x;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/x;->b:Lw0/y3;

    iget-object v5, p0, Lw0/x;->c:Lw0/mg;

    iget-object v6, p0, Lw0/x;->d:Ljava/lang/Integer;

    iget-object v7, p0, Lw0/x;->e:Lcom/ex/auto/AppPipFloaterService;

    sget-object v8, Lcom/ex/auto/AppPipFloaterService;->x:Lcom/ex/auto/AppPipFloaterService;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/fragment/app/q;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v0, Lw0/og;->a:Lo2/h;

    invoke-static {v6}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lw0/og;->e(I)Z

    move-result v3

    goto :goto_0

    :cond_2
    sget-object v0, Lw0/og;->a:Lo2/h;

    invoke-static {v5}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-static {v5}, Lw0/og;->c(Lw0/mg;)V

    :goto_0
    if-eqz v3, :cond_3

    iput-object v2, v7, Lcom/ex/auto/AppPipFloaterService;->i:Lw0/mg;

    iput-object v2, v7, Lcom/ex/auto/AppPipFloaterService;->u:Ljava/lang/Integer;

    iput-object v2, v7, Lcom/ex/auto/AppPipFloaterService;->k:Lw0/lg;

    :cond_3
    iput-boolean v4, v7, Lcom/ex/auto/AppPipFloaterService;->n:Z

    iget-object v0, v7, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    new-instance v1, Lw0/d0;

    invoke-direct {v1, v7, v3, v4}, Lw0/d0;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/x;->b:Lw0/y3;

    iget-object v5, p0, Lw0/x;->c:Lw0/mg;

    iget-object v6, p0, Lw0/x;->d:Ljava/lang/Integer;

    iget-object v7, p0, Lw0/x;->e:Lcom/ex/auto/AppPipFloaterService;

    sget-object v8, Lcom/ex/auto/AppPipFloaterService;->x:Lcom/ex/auto/AppPipFloaterService;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Landroidx/fragment/app/q;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v0, Lw0/og;->a:Lo2/h;

    invoke-static {v6}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lw0/og;->e(I)Z

    goto :goto_1

    :cond_6
    sget-object v0, Lw0/og;->a:Lo2/h;

    invoke-static {v5}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-static {v5}, Lw0/og;->c(Lw0/mg;)V

    :goto_1
    iput-object v2, v7, Lcom/ex/auto/AppPipFloaterService;->i:Lw0/mg;

    iput-object v2, v7, Lcom/ex/auto/AppPipFloaterService;->u:Ljava/lang/Integer;

    iput-object v2, v7, Lcom/ex/auto/AppPipFloaterService;->k:Lw0/lg;

    iget-object v0, v7, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    new-instance v1, Lw0/b0;

    invoke-direct {v1, v7, v4}, Lw0/b0;-><init>(Lcom/ex/auto/AppPipFloaterService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
