.class public final synthetic Lw0/g3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic b:J

.field public final synthetic c:I

.field public final synthetic d:Lw0/a3;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;JILw0/a3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/g3;->a:Lcom/ex/auto/CentralWatchdogService;

    iput-wide p2, p0, Lw0/g3;->b:J

    iput p4, p0, Lw0/g3;->c:I

    iput-object p5, p0, Lw0/g3;->d:Lw0/a3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lw0/g3;->a:Lcom/ex/auto/CentralWatchdogService;

    iget-wide v1, p0, Lw0/g3;->b:J

    iget v3, p0, Lw0/g3;->c:I

    iget-object v4, p0, Lw0/g3;->d:Lw0/a3;

    sget-object v5, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-boolean v5, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v5, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/ex/auto/CentralWatchdogService;->z0:J

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-ltz v9, :cond_1

    cmp-long v7, v1, v7

    if-eqz v7, :cond_2

    :cond_1
    iput-wide v5, v0, Lcom/ex/auto/CentralWatchdogService;->A0:J

    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/ex/auto/CentralWatchdogService;->B0:Z

    :cond_2
    iput-wide v1, v0, Lcom/ex/auto/CentralWatchdogService;->z0:J

    iget-wide v1, v0, Lcom/ex/auto/CentralWatchdogService;->A0:J

    sub-long/2addr v5, v1

    iget-boolean v1, v0, Lcom/ex/auto/CentralWatchdogService;->B0:Z

    if-nez v1, :cond_3

    int-to-long v1, v3

    const-wide/16 v7, 0x3e8

    mul-long/2addr v1, v7

    cmp-long v1, v5, v1

    if-ltz v1, :cond_3

    new-instance v1, Lw0/k1;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v3, v2}, Lw0/k1;-><init>(Ljava/lang/Object;II)V

    invoke-static {v1}, Lw0/n3;->a(Lh2/a;)V

    :cond_3
    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-wide v2, v0, Lcom/ex/auto/CentralWatchdogService;->w0:J

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
