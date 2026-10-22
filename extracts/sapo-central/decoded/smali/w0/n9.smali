.class public final synthetic Lw0/n9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:Landroid/car/hardware/property/CarPropertyManager;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/MainActivity;Landroid/car/hardware/property/CarPropertyManager;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lw0/n9;->a:I

    iput-object p2, p0, Lw0/n9;->b:Lcom/ex/auto/MainActivity;

    iput-object p3, p0, Lw0/n9;->c:Landroid/car/hardware/property/CarPropertyManager;

    iput p4, p0, Lw0/n9;->d:I

    iput p5, p0, Lw0/n9;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v3, p0, Lw0/n9;->e:I

    iget-object v2, p0, Lw0/n9;->b:Lcom/ex/auto/MainActivity;

    iget-object v0, v2, Lcom/ex/auto/MainActivity;->u1:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lw0/n9;->a:I

    if-eq v1, v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x1

    filled-new-array {v0, v4}, [I

    move-result-object v5

    move v6, v0

    :goto_0
    iget v7, p0, Lw0/n9;->d:I

    const/4 v8, 0x2

    if-ge v6, v8, :cond_2

    aget v8, v5, v6

    const v9, 0x20020500

    iget-object v10, p0, Lw0/n9;->c:Landroid/car/hardware/property/CarPropertyManager;

    invoke-static {v10, v9, v8, v7}, Lw0/p1;->l(Landroid/car/hardware/property/CarPropertyManager;III)Z

    move-result v8

    if-eqz v8, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const-string v4, "toque na tela: regen="

    const-string v5, " escrita="

    invoke-static {v4, v7, v5}, Landroidx/activity/result/b;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_3

    const-string v5, "aceita"

    goto :goto_2

    :cond_3
    const-string v5, "recusada"

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Condu\u00e7\u00e3o"

    invoke-virtual {v2, v5, v4}, Lcom/ex/auto/MainActivity;->x(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_4

    iget-object v0, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, Lw0/ma;

    const/4 v5, 0x2

    invoke-direct {v4, v2, v5}, Lw0/ma;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :try_start_0
    iget-object v6, v2, Lcom/ex/auto/MainActivity;->z:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v0, Lw0/na;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lw0/na;-><init>(ILcom/ex/auto/MainActivity;IIB)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1c2

    invoke-virtual {v6, v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_3
    return-void
.end method
