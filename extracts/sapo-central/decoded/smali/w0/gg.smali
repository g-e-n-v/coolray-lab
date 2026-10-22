.class public final synthetic Lw0/gg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/SplitFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/SplitFloaterService;I)V
    .locals 0

    iput p2, p0, Lw0/gg;->a:I

    iput-object p1, p0, Lw0/gg;->b:Lcom/ex/auto/SplitFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget p1, p0, Lw0/gg;->a:I

    const/4 v0, 0x0

    const/16 v1, 0x8

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lw0/gg;->b:Lcom/ex/auto/SplitFloaterService;

    sget-object v2, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    iget-object v2, p1, Lcom/ex/auto/SplitFloaterService;->e:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iput-boolean v0, p1, Lcom/ex/auto/SplitFloaterService;->n:Z

    return-void

    :pswitch_0
    iget-object p1, p0, Lw0/gg;->b:Lcom/ex/auto/SplitFloaterService;

    iget-boolean v2, p1, Lcom/ex/auto/SplitFloaterService;->o:Z

    if-eqz v2, :cond_1

    const v0, 0x7f0f0349

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/ex/auto/SplitFloaterService;->g(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-boolean v2, p1, Lcom/ex/auto/SplitFloaterService;->n:Z

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/ex/auto/SplitFloaterService;->e:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iput-boolean v0, p1, Lcom/ex/auto/SplitFloaterService;->n:Z

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lcom/ex/auto/SplitFloaterService;->j:Lw0/mg;

    const/4 v1, 0x1

    if-nez v0, :cond_5

    iget-object v2, p1, Lcom/ex/auto/SplitFloaterService;->k:Lw0/mg;

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    iput-boolean v1, p1, Lcom/ex/auto/SplitFloaterService;->o:Z

    invoke-virtual {p1}, Lcom/ex/auto/SplitFloaterService;->h()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lw0/ig;

    const/4 v2, 0x7

    invoke-direct {v1, p1, v2}, Lw0/ig;-><init>(Lcom/ex/auto/SplitFloaterService;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_5
    :goto_0
    iget-object v2, p1, Lcom/ex/auto/SplitFloaterService;->k:Lw0/mg;

    iput-boolean v1, p1, Lcom/ex/auto/SplitFloaterService;->o:Z

    invoke-virtual {p1}, Lcom/ex/auto/SplitFloaterService;->h()V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lw0/hg;

    invoke-direct {v4, v2, p1, v0, v1}, Lw0/hg;-><init>(Lw0/mg;Lcom/ex/auto/SplitFloaterService;Lw0/mg;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
