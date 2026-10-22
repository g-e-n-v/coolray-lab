.class public final synthetic Lw0/h2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(ILcom/ex/auto/CentralWatchdogService;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput p1, p0, Lw0/h2;->a:I

    iput-object p2, p0, Lw0/h2;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-object p3, p0, Lw0/h2;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lw0/h2;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;Lcom/ex/auto/CentralWatchdogService;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lw0/h2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lw0/h2;->d:Z

    iput-object p2, p0, Lw0/h2;->c:Ljava/lang/String;

    iput-object p3, p0, Lw0/h2;->b:Lcom/ex/auto/CentralWatchdogService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Lw0/h2;->a:I

    const-wide/16 v1, 0x1388

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/h2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v3, p0, Lw0/h2;->c:Ljava/lang/String;

    iget-boolean v5, p0, Lw0/h2;->d:Z

    iput-boolean v4, v0, Lcom/ex/auto/CentralWatchdogService;->l0:Z

    iget-object v4, v0, Lcom/ex/auto/CentralWatchdogService;->b0:Ljava/lang/String;

    invoke-static {v4, v3}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v5, :cond_1

    iput-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->i0:Ljava/lang/String;

    iput-wide v1, v0, Lcom/ex/auto/CentralWatchdogService;->j0:J

    goto :goto_1

    :cond_1
    iget-wide v1, v0, Lcom/ex/auto/CentralWatchdogService;->j0:J

    const-wide/16 v3, 0x3a98

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x7530

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    goto :goto_0

    :cond_3
    const-wide/32 v3, 0xea60

    :goto_0
    iput-wide v3, v0, Lcom/ex/auto/CentralWatchdogService;->j0:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/ex/auto/CentralWatchdogService;->j0:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/ex/auto/CentralWatchdogService;->k0:J

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/h2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v1, p0, Lw0/h2;->c:Ljava/lang/String;

    iget-boolean v2, p0, Lw0/h2;->d:Z

    iput-boolean v4, v0, Lcom/ex/auto/CentralWatchdogService;->l0:Z

    iget-object v5, v0, Lcom/ex/auto/CentralWatchdogService;->i0:Ljava/lang/String;

    invoke-static {v5, v1}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    iput v4, v0, Lcom/ex/auto/CentralWatchdogService;->m0:I

    goto :goto_2

    :cond_5
    invoke-static {v0, v3}, Lcom/ex/auto/CentralWatchdogService;->f(Lcom/ex/auto/CentralWatchdogService;Z)V

    :goto_2
    return-void

    :pswitch_1
    iget-object v0, p0, Lw0/h2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v3, p0, Lw0/h2;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lw0/h2;->d:Z

    iget-object v5, v0, Lcom/ex/auto/CentralWatchdogService;->d0:Ljava/lang/String;

    invoke-static {v5, v3}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    iput-object v6, v0, Lcom/ex/auto/CentralWatchdogService;->d0:Ljava/lang/String;

    :cond_6
    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/ex/auto/CentralWatchdogService;->i0:Ljava/lang/String;

    invoke-static {v4, v3}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iput-object v6, v0, Lcom/ex/auto/CentralWatchdogService;->i0:Ljava/lang/String;

    iput-wide v1, v0, Lcom/ex/auto/CentralWatchdogService;->j0:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/ex/auto/CentralWatchdogService;->k0:J

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lw0/p2;

    const/16 v3, 0x13

    invoke-direct {v2, v0, v3}, Lw0/p2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_7
    return-void

    :pswitch_2
    iget-boolean v0, p0, Lw0/h2;->d:Z

    iget-object v1, p0, Lw0/h2;->c:Ljava/lang/String;

    iget-object v2, p0, Lw0/h2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v5, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v5, :cond_8

    goto/16 :goto_6

    :cond_8
    const-string v5, "CentralWatchdog"

    if-eqz v0, :cond_9

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, "WiFi ao acordar ("

    const-string v2, "): pulado \u2014 h\u00e1 proje\u00e7\u00e3o em curso; ligar o WiFi cliente derrubaria a sess\u00e3o (r\u00e1dio \u00fanica)"

    invoke-static {v0, v1, v2, v5, v4}, Landroidx/activity/result/b;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_6

    :cond_9
    const-string v0, ") tentativa "

    const-string v6, "WiFi auto-enable ("

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    invoke-static {v7, v8}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    const-wide/16 v9, 0x7d0

    if-eqz v8, :cond_a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "): j\u00e1 ligado (tentativa "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v2, Lcom/ex/auto/CentralWatchdogService;->U:I

    add-int/2addr v11, v3

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v11, 0x29

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v2, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v11, Lw0/l2;

    invoke-direct {v11, v7, v1, v4}, Lw0/l2;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;I)V

    invoke-virtual {v8, v11, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_6

    :catch_0
    move-exception v4

    goto/16 :goto_4

    :cond_a
    invoke-static {}, Lcom/ex/auto/CentralWatchdogService;->v()Z

    move-result v8

    invoke-virtual {v7, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v11

    if-eqz v11, :cond_b

    iput-boolean v3, v2, Lcom/ex/auto/CentralWatchdogService;->V:Z

    :cond_b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v2, Lcom/ex/auto/CentralWatchdogService;->U:I

    add-int/2addr v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "/3: setWifiEnabled retornou "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "ap_sempre_aberto"

    invoke-interface {v12, v13, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v8, :cond_c

    if-eqz v12, :cond_c

    move v12, v3

    goto :goto_3

    :cond_c
    move v12, v4

    :goto_3
    if-eqz v11, :cond_d

    if-eqz v8, :cond_d

    if-nez v12, :cond_d

    sget-object v8, Lw0/ae;->a:Lw0/ae;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "): o AP estava no ar e caiu com a STA \u2014 N\u00c3O reabro (AP sempre aberto desmarcado); volta quando um celular pedir"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_d
    if-eqz v11, :cond_e

    if-eqz v12, :cond_e

    sget-object v8, Lw0/ae;->a:Lw0/ae;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "): o AP estava no ar e cai com a STA \u2014 reabro em "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v2, Lcom/ex/auto/CentralWatchdogService;->W:J

    const/16 v13, 0x3e8

    int-to-long v13, v13

    div-long/2addr v11, v13

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "s (ordem STA\u2192AP convive)"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v4, v2, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v8, Lw0/a2;

    const/4 v11, 0x4

    invoke-direct {v8, v2, v1, v11}, Lw0/a2;-><init>(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;I)V

    iget-wide v11, v2, Lcom/ex/auto/CentralWatchdogService;->W:J

    invoke-virtual {v4, v8, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_e
    iget-object v4, v2, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v8, Lw0/l2;

    invoke-direct {v8, v7, v1, v3}, Lw0/l2;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;I)V

    invoke-virtual {v4, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    invoke-static {v6, v1, v0}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Lcom/ex/auto/CentralWatchdogService;->U:I

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " falhou: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    iget v0, v2, Lcom/ex/auto/CentralWatchdogService;->U:I

    add-int/2addr v0, v3

    iput v0, v2, Lcom/ex/auto/CentralWatchdogService;->U:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_f

    iget-object v0, v2, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-object v1, v2, Lcom/ex/auto/CentralWatchdogService;->X:Lw0/p2;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_f
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
