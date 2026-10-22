.class public final Lw0/u7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lw0/u7;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/ex/auto/HomeFloatingWidgetsService;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lw0/u7;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lw0/u7;->b:Ljava/lang/Object;

    iput-object p2, p0, Lw0/u7;->c:Ljava/lang/Object;

    iput-object p3, p0, Lw0/u7;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lw0/u7;->a:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    iget-object v0, p0, Lw0/u7;->b:Ljava/lang/Object;

    check-cast v0, Lz/d;

    invoke-virtual {v0}, Lz/d;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lw0/u7;->c:Ljava/lang/Object;

    check-cast v1, Lz/e;

    iget-object v2, p0, Lw0/u7;->d:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Landroidx/fragment/app/c;

    const/4 v4, 0x4

    invoke-direct {v3, v1, v4, v0}, Landroidx/fragment/app/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    sget-object v0, Lw0/n3;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lw0/u7;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v1, p0, Lw0/u7;->c:Ljava/lang/Object;

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lw0/u7;->d:Ljava/lang/Object;

    check-cast v2, Landroid/widget/LinearLayout;

    new-instance v3, Lw0/h0;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v1, v2, v4}, Lw0/h0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const-string v1, "widgets-cpu-panel"

    invoke-static {v1, v3}, Lw0/n3;->b(Ljava/lang/String;Lh2/a;)V

    iget-object v0, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
