.class public final synthetic Lw0/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    iput p3, p0, Lw0/k1;->a:I

    iput-object p1, p0, Lw0/k1;->c:Ljava/lang/Object;

    iput p2, p0, Lw0/k1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lw0/k1;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/k1;->c:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/CentralWatchdogService;

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->y0:Ljava/lang/String;

    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->x0:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "activity"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {v5, v6}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/app/ActivityManager;

    invoke-virtual {v5, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    const-string v6, "getRunningTasks(...)"

    invoke-static {v5, v6}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ly1/g;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v5, :cond_0

    invoke-static {v5}, Landroidx/lifecycle/y;->b(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "flattenToShortString(...)"

    invoke-static {v5, v6}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v2, v4}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v5, v1, v4}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_1

    :catchall_0
    :cond_2
    const-string v5, "dumpsys activity activities 2>/dev/null | grep mResumedActivity"

    const/16 v6, 0xbb8

    invoke-static {v6, v5}, Lcom/ex/auto/CentralWatchdogService;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2, v4}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v5, v1, v4}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v2, Lw0/wa;

    const/4 v4, 0x2

    iget v5, p0, Lw0/k1;->b:I

    invoke-direct {v2, v3, v0, v5, v4}, Lw0/wa;-><init>(ZLandroid/content/ContextWrapper;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lw0/k1;->c:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/property/CarPropertyManager;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    iget v3, p0, Lw0/k1;->b:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/car/hardware/property/CarPropertyManager;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
