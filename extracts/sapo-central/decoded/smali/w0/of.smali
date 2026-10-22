.class public final synthetic Lw0/of;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/QuickAccessFloaterService;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/QuickAccessFloaterService;Ljava/util/ArrayList;I)V
    .locals 0

    iput p3, p0, Lw0/of;->a:I

    iput-object p1, p0, Lw0/of;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iput-object p2, p0, Lw0/of;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lw0/of;->a:I

    iget-object v1, p0, Lw0/of;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Lw0/of;->b:Lcom/ex/auto/QuickAccessFloaterService;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f0f00fc

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/ex/auto/QuickAccessFloaterService;->G(Ljava/lang/String;)V

    return-void

    :pswitch_0
    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    const-string v0, "activity"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {v0, v3}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/ActivityManager;

    invoke-static {v1}, Ly1/g;->p0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    new-instance v4, Lw0/kf;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v2}, Lw0/kf;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    invoke-static {v0, v3, v4}, Lw0/e8;->y(Landroid/app/ActivityManager;Ljava/util/Set;Lh2/l;)V

    iget-object v0, v2, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v3, Lw0/of;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v1, v4}, Lw0/of;-><init>(Lcom/ex/auto/QuickAccessFloaterService;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
