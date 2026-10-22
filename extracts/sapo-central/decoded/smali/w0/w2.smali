.class public final synthetic Lw0/w2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z

.field public final synthetic d:I

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;ZIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/w2;->a:Lcom/ex/auto/CentralWatchdogService;

    iput-object p2, p0, Lw0/w2;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lw0/w2;->c:Z

    iput p4, p0, Lw0/w2;->d:I

    iput-boolean p5, p0, Lw0/w2;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lw0/w2;->a:Lcom/ex/auto/CentralWatchdogService;

    iget-object v1, p0, Lw0/w2;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lw0/w2;->c:Z

    iget v3, p0, Lw0/w2;->d:I

    iget-boolean v4, p0, Lw0/w2;->e:Z

    iput-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->d0:Ljava/lang/String;

    iget-object v5, v0, Lcom/ex/auto/CentralWatchdogService;->b0:Ljava/lang/String;

    invoke-static {v5, v1}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v0, Lcom/ex/auto/CentralWatchdogService;->e0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_0
    iput-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->b0:Ljava/lang/String;

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lcom/ex/auto/CentralWatchdogService;->g0:J

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "auto_proxy_enabled"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->i0:Ljava/lang/String;

    const-wide/16 v5, 0x1388

    iput-wide v5, v0, Lcom/ex/auto/CentralWatchdogService;->j0:J

    invoke-virtual {v0, v3, v1}, Lcom/ex/auto/CentralWatchdogService;->E(ILjava/lang/String;)V

    :cond_1
    if-eqz v4, :cond_2

    invoke-static {v0, v1}, Lcom/ex/auto/CentralWatchdogService;->h(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
