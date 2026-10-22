.class public final synthetic Lw0/z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lw0/z1;->a:I

    iput-object p1, p0, Lw0/z1;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-object p2, p0, Lw0/z1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lw0/z1;->a:I

    iget-object v1, p0, Lw0/z1;->c:Ljava/lang/String;

    iget-object v2, p0, Lw0/z1;->b:Lcom/ex/auto/CentralWatchdogService;

    packed-switch v0, :pswitch_data_0

    invoke-static {v2, v1}, Lcom/ex/auto/CentralWatchdogService;->g(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;)Z

    move-result v0

    iget-object v3, v2, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v4, Lw0/h2;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v2, v1, v0}, Lw0/h2;-><init>(ILcom/ex/auto/CentralWatchdogService;Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_0
    :try_start_0
    new-instance v0, Lkotlinx/coroutines/scheduling/h;

    const/16 v3, 0x15b3

    invoke-direct {v0, v3}, Lkotlinx/coroutines/scheduling/h;-><init>(I)V

    const-string v3, "settings get global global_http_proxy_host 2>/dev/null"

    const/16 v4, 0xbb8

    invoke-virtual {v0, v4, v3}, Lkotlinx/coroutines/scheduling/h;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "runShell(...)"

    invoke-static {v0, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, ""

    :goto_1
    iget-object v3, v2, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v4, Lw0/g2;

    invoke-direct {v4, v2, v1, v0}, Lw0/g2;-><init>(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_1
    invoke-static {v2, v1}, Lcom/ex/auto/CentralWatchdogService;->g(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;)Z

    move-result v0

    iget-object v3, v2, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v4, Lw0/h2;

    const/4 v5, 0x3

    invoke-direct {v4, v5, v2, v1, v0}, Lw0/h2;-><init>(ILcom/ex/auto/CentralWatchdogService;Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1f90

    invoke-virtual {v2, v0, v1}, Lcom/ex/auto/CentralWatchdogService;->E(ILjava/lang/String;)V

    :cond_0
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    const/4 v0, 0x1

    invoke-virtual {v2, v0, v1}, Lcom/ex/auto/CentralWatchdogService;->V(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v2, v1}, Lcom/ex/auto/CentralWatchdogService;->h0(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
