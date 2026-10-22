.class public final synthetic Lw0/o2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lw0/te;

.field public final synthetic c:Lcom/ex/auto/CentralWatchdogService;


# direct methods
.method public synthetic constructor <init>(Lw0/te;Lcom/ex/auto/CentralWatchdogService;I)V
    .locals 0

    iput p3, p0, Lw0/o2;->a:I

    iput-object p1, p0, Lw0/o2;->b:Lw0/te;

    iput-object p2, p0, Lw0/o2;->c:Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lw0/o2;->a:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/o2;->b:Lw0/te;

    iget-boolean v2, v0, Lw0/te;->b:Z

    iget-object v3, p0, Lw0/o2;->c:Lcom/ex/auto/CentralWatchdogService;

    sget-object v4, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    const-string v4, "JIT: restaurado ap\u00f3s o restart (wifi="

    iget-boolean v0, v0, Lw0/te;->a:Z

    const/4 v5, 0x0

    const-string v6, "CentralWatchdog"

    if-eqz v2, :cond_0

    :try_start_0
    const-string v7, "p\u00f3s-JIT"

    invoke-virtual {v3, v7, v5}, Lcom/ex/auto/CentralWatchdogService;->U(Ljava/lang/String;Z)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    invoke-static {v7, v8}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_1
    sget-object v1, Lw0/ae;->a:Lw0/ae;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " ap="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "); wifi agora="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/ex/auto/CentralWatchdogService;->c1()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " ap agora="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ex/auto/CentralWatchdogService;->v()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v5}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lw0/ae;->a:Lw0/ae;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JIT: restauro falhou: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v5}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_2
    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/o2;->b:Lw0/te;

    iget-object v2, p0, Lw0/o2;->c:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v3, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lw0/o2;

    invoke-direct {v4, v0, v2, v1}, Lw0/o2;-><init>(Lw0/te;Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
