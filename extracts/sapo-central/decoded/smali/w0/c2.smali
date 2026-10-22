.class public final synthetic Lw0/c2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;JLcom/ex/auto/CentralWatchdogService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lw0/c2;->a:Z

    iput-object p2, p0, Lw0/c2;->b:Ljava/lang/String;

    iput-wide p3, p0, Lw0/c2;->c:J

    iput-object p5, p0, Lw0/c2;->d:Lcom/ex/auto/CentralWatchdogService;

    iput p6, p0, Lw0/c2;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-boolean v0, p0, Lw0/c2;->a:Z

    iget-object v1, p0, Lw0/c2;->b:Ljava/lang/String;

    iget-wide v2, p0, Lw0/c2;->c:J

    iget-object v4, p0, Lw0/c2;->d:Lcom/ex/auto/CentralWatchdogService;

    iget v5, p0, Lw0/c2;->e:I

    sget-boolean v6, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v6, :cond_0

    return-void

    :cond_0
    const/4 v6, 0x1

    const/16 v7, 0x3e8

    const-string v8, "BT ("

    const-string v9, "CentralWatchdog"

    const/4 v10, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, "): proje\u00e7\u00e3o pronta em "

    invoke-static {v8, v1, v0}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-long v7, v7

    div-long/2addr v2, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "s \u2014 ligando agora"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v10}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v4, v6, v1}, Lcom/ex/auto/CentralWatchdogService;->V(ILjava/lang/String;)V

    return-void

    :cond_1
    iget-wide v11, v4, Lcom/ex/auto/CentralWatchdogService;->k1:J

    cmp-long v0, v2, v11

    if-ltz v0, :cond_2

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, "): proje\u00e7\u00e3o n\u00e3o ficou pronta em "

    invoke-static {v8, v1, v0}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-long v7, v7

    div-long/2addr v2, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "s \u2014 ligando assim mesmo (Bluetooth n\u00e3o \u00e9 s\u00f3 para projetar)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v10}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v4, v6, v1}, Lcom/ex/auto/CentralWatchdogService;->V(ILjava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, v4, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v2, Lw0/i2;

    invoke-direct {v2, v4, v1, v5, v6}, Lw0/i2;-><init>(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;II)V

    iget-wide v3, v4, Lcom/ex/auto/CentralWatchdogService;->j1:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
