.class public final synthetic Lw0/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/car/Car$CarServiceLifecycleListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    iput p3, p0, Lw0/z0;->a:I

    iput-object p1, p0, Lw0/z0;->c:Ljava/lang/Object;

    iput p2, p0, Lw0/z0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLifecycleChanged(Landroid/car/Car;Z)V
    .locals 9

    iget v0, p0, Lw0/z0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/z0;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/ex/auto/QuickAccessFloaterService;

    iget v3, p0, Lw0/z0;->b:I

    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    :try_start_0
    iget-object v0, v2, Lcom/ex/auto/QuickAccessFloaterService;->O:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lw0/c1;

    const/4 v6, 0x4

    move-object v5, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lw0/c1;-><init>(Ljava/lang/Object;IZLandroid/car/Car;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    iput-boolean p1, v2, Lcom/ex/auto/QuickAccessFloaterService;->N:Z

    :goto_0
    return-void

    :pswitch_0
    move-object v7, p1

    move v6, p2

    iget-object p1, p0, Lw0/z0;->c:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lcom/ex/auto/HomeWidgetsPollService;

    iget v5, p0, Lw0/z0;->b:I

    sget p1, Lcom/ex/auto/HomeWidgetsPollService;->E:I

    :try_start_1
    iget-object p1, v4, Lcom/ex/auto/HomeWidgetsPollService;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lw0/c1;

    const/4 v8, 0x2

    invoke-direct/range {v3 .. v8}, Lw0/c1;-><init>(Ljava/lang/Object;IZLandroid/car/Car;I)V

    invoke-virtual {p1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void

    :pswitch_1
    move-object v7, p1

    move v6, p2

    iget-object p1, p0, Lw0/z0;->c:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lw0/f1;

    iget v5, p0, Lw0/z0;->b:I

    iget-object p1, v4, Lw0/f1;->c:Landroid/os/Handler;

    new-instance v3, Lw0/c1;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lw0/c1;-><init>(Ljava/lang/Object;IZLandroid/car/Car;I)V

    invoke-virtual {p1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
