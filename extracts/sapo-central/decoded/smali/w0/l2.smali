.class public final synthetic Lw0/l2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/net/wifi/WifiManager;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lw0/l2;->a:I

    iput-object p1, p0, Lw0/l2;->b:Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lw0/l2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lw0/l2;->a:I

    const-string v1, ") rescan/reconnect falhou: "

    const-string v2, "): rescan + reconnect disparados"

    const-string v3, "WiFi auto-enable ("

    const-string v4, "CentralWatchdog"

    iget-object v5, p0, Lw0/l2;->c:Ljava/lang/String;

    iget-object v6, p0, Lw0/l2;->b:Landroid/net/wifi/WifiManager;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    :try_start_0
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->startScan()Z

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->reconnect()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v3, v5, v1}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    :try_start_1
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->startScan()Z

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->reconnect()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v3, v5, v1}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
