.class public final synthetic Lw0/lf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Z

.field public final synthetic d:Landroid/content/ContextWrapper;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;ZLcom/ex/auto/QuickAccessFloaterService;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p5, p0, Lw0/lf;->a:I

    iput-object p1, p0, Lw0/lf;->b:Landroid/widget/TextView;

    iput-boolean p2, p0, Lw0/lf;->c:Z

    iput-object p3, p0, Lw0/lf;->d:Landroid/content/ContextWrapper;

    iput-object p4, p0, Lw0/lf;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Lcom/ex/auto/MasterToggleView;ZLandroid/widget/TextView;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Lw0/lf;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/lf;->d:Landroid/content/ContextWrapper;

    iput-object p2, p0, Lw0/lf;->e:Ljava/lang/Object;

    iput-boolean p3, p0, Lw0/lf;->c:Z

    iput-object p4, p0, Lw0/lf;->b:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lw0/lf;->a:I

    iget-object v1, p0, Lw0/lf;->b:Landroid/widget/TextView;

    iget-boolean v2, p0, Lw0/lf;->c:Z

    iget-object v3, p0, Lw0/lf;->e:Ljava/lang/Object;

    iget-object v4, p0, Lw0/lf;->d:Landroid/content/ContextWrapper;

    packed-switch v0, :pswitch_data_0

    check-cast v4, Lcom/ex/auto/MainActivity;

    check-cast v3, Lcom/ex/auto/MasterToggleView;

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v4}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v2}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    if-eqz v2, :cond_1

    const v0, 0x7f0f04bc

    goto :goto_0

    :cond_1
    const v0, 0x7f0f04b9

    :goto_0
    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    check-cast v4, Lcom/ex/auto/QuickAccessFloaterService;

    check-cast v3, Ljava/lang/String;

    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    if-eqz v2, :cond_3

    const-string v0, "\u21ba AA\n\u2713"

    goto :goto_2

    :cond_3
    const-string v0, "\u21ba AA\n\u2717"

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v4, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v2, Lw0/mf;

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4}, Lw0/mf;-><init>(Landroid/widget/TextView;Ljava/lang/String;I)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_1
    check-cast v4, Lcom/ex/auto/QuickAccessFloaterService;

    check-cast v3, Ljava/lang/String;

    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    if-eqz v2, :cond_4

    const-string v0, "\u25b6 AA\n\u2713"

    goto :goto_3

    :cond_4
    const-string v0, "\u25b6 AA\n\u2717"

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v4, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v2, Lw0/mf;

    const/4 v4, 0x2

    invoke-direct {v2, v1, v3, v4}, Lw0/mf;-><init>(Landroid/widget/TextView;Ljava/lang/String;I)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
