.class public final synthetic Lw0/e2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;II)V
    .locals 0

    iput p3, p0, Lw0/e2;->a:I

    iput-object p1, p0, Lw0/e2;->b:Lcom/ex/auto/CentralWatchdogService;

    iput p2, p0, Lw0/e2;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lw0/e2;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/e2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget v1, p0, Lw0/e2;->c:I

    sget-boolean v3, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v3, :cond_1

    const-string v3, "Ar Digital"

    invoke-virtual {v0, v3}, Lcom/ex/auto/CentralWatchdogService;->F(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lw0/e2;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v1, v4}, Lw0/e2;-><init>(Lcom/ex/auto/CentralWatchdogService;II)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/ex/auto/CentralWatchdogService;->G2:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/e2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget v1, p0, Lw0/e2;->c:I

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    :try_start_0
    sget-object v2, Lw0/t1;->e:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-boolean v3, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v3, :cond_3

    iget-object v0, v0, Lcom/ex/auto/CentralWatchdogService;->e0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Lkotlinx/coroutines/scheduling/h;

    const/16 v1, 0x15b3

    invoke-direct {v0, v1}, Lkotlinx/coroutines/scheduling/h;-><init>(I)V

    const-string v1, "for P in 12500 18500 21000; do\n  while ip rule del prio $P lookup 200 2>/dev/null; do :; done\ndone\nip route flush table 200 2>/dev/null\nif [ \"$(settings get global exsapo_route_dns_zero_owned)\" = 1 ]; then\n  ndc resolver clearnetdns 0\n  settings delete global exsapo_route_dns_zero_owned\nfi"

    const/16 v3, 0x2710

    invoke-virtual {v0, v3, v1}, Lkotlinx/coroutines/scheduling/h;->b(ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_2
    monitor-exit v2

    goto :goto_5

    :goto_3
    monitor-exit v2

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_4
    const-string v1, "CentralWatchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AutoRota: limpeza pendente: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v1}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_5
    return-void

    :pswitch_1
    iget-object v0, p0, Lw0/e2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget v2, p0, Lw0/e2;->c:I

    sget-boolean v3, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v3, :cond_4

    goto :goto_6

    :cond_4
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lw0/e2;

    invoke-direct {v4, v0, v2, v1}, Lw0/e2;-><init>(Lcom/ex/auto/CentralWatchdogService;II)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :goto_6
    return-void

    :pswitch_2
    iget-object v0, p0, Lw0/e2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget v2, p0, Lw0/e2;->c:I

    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/ex/auto/CentralWatchdogService;->o(I)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lw0/e2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget v2, p0, Lw0/e2;->c:I

    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/ex/auto/CentralWatchdogService;->T0(I)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lw0/e2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->G2:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget v4, p0, Lw0/e2;->c:I

    sget-object v5, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    const-string v5, "CentralWatchdog"

    :try_start_3
    sget-object v6, Lw0/d8;->a:Lw0/d8;

    invoke-virtual {v6, v0, v4}, Lw0/d8;->h(Landroid/content/Context;I)Lw0/b4;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    move-exception v6

    sget-object v7, Lw0/ae;->a:Lw0/ae;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Ar Digital [boot]: exce\u00e7\u00e3o \u2014 "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v6, Lw0/b4;->c:Lw0/b4;

    :goto_7
    const-string v7, "t"

    invoke-static {v6, v7}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lw0/b4;->a:Lw0/b4;

    if-eq v6, v7, :cond_6

    sget-object v7, Lw0/b4;->b:Lw0/b4;

    if-ne v6, v7, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_9

    :cond_6
    :goto_8
    const/4 v6, 0x3

    if-ge v4, v6, :cond_7

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v2, Lw0/e2;

    invoke-direct {v2, v0, v4, v6}, Lw0/e2;-><init>(Lcom/ex/auto/CentralWatchdogService;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9

    :cond_7
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Ar Digital [boot]: restaura\u00e7\u00e3o pendente ap\u00f3s "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tentativas"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v1}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_9
    return-void

    :pswitch_5
    iget-object v0, p0, Lw0/e2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget v1, p0, Lw0/e2;->c:I

    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    const-string v3, "CentralWatchdog"

    :try_start_4
    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->B()Z

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_a

    :catchall_1
    move-exception v4

    sget-object v5, Lw0/ae;->a:Lw0/ae;

    const-string v5, "patch do monitor: exce\u00e7\u00e3o na tentativa "

    const-string v6, " \u2014 "

    invoke-static {v5, v1, v6}, Landroidx/activity/result/b;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    move v4, v2

    :goto_a
    if-nez v4, :cond_8

    iget v4, v0, Lcom/ex/auto/CentralWatchdogService;->H2:I

    if-ge v1, v4, :cond_8

    sget-object v4, Lw0/ae;->a:Lw0/ae;

    const-string v4, "patch do monitor: tentativa "

    const-string v5, " n\u00e3o confirmou \u2014 nova tentativa em "

    invoke-static {v4, v1, v5}, Landroidx/activity/result/b;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/ex/auto/CentralWatchdogService;->J2:J

    const/16 v7, 0x3e8

    int-to-long v7, v7

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v5, 0x73

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v3, Lw0/e2;

    const/4 v4, 0x4

    invoke-direct {v3, v0, v1, v4}, Lw0/e2;-><init>(Lcom/ex/auto/CentralWatchdogService;II)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    return-void

    :pswitch_6
    iget-object v0, p0, Lw0/e2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget v1, p0, Lw0/e2;->c:I

    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-static {v0, v1, v2}, Lw0/m;->f(Landroid/content/Context;IZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
