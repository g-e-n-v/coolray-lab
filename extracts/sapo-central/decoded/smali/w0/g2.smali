.class public final synthetic Lw0/g2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lw0/g2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/g2;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-object p2, p0, Lw0/g2;->c:Ljava/lang/String;

    iput-object p3, p0, Lw0/g2;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lw0/g2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/g2;->c:Ljava/lang/String;

    iput-object p2, p0, Lw0/g2;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-object p3, p0, Lw0/g2;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v1, p0

    iget v0, v1, Lw0/g2;->a:I

    const-string v2, "CentralWatchdog"

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lw0/g2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v4, v1, Lw0/g2;->c:Ljava/lang/String;

    iget-object v5, v1, Lw0/g2;->d:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/ex/auto/CentralWatchdogService;->n0:Z

    iget-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->b0:Ljava/lang/String;

    invoke-static {v3, v4}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v5, v4}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "auto-proxy divergente (real=\'"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' esperado="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") \u2014 reaplicando"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x1f90

    invoke-virtual {v0, v2, v4}, Lcom/ex/auto/CentralWatchdogService;->E(ILjava/lang/String;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, v1, Lw0/g2;->c:Ljava/lang/String;

    iget-object v4, v1, Lw0/g2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v5, v1, Lw0/g2;->d:Ljava/lang/String;

    sget-object v6, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    const-string v6, "): "

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v7

    :goto_0
    if-nez v0, :cond_4

    :cond_2
    invoke-virtual {v4}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v8, "auto_connect_preferred_bt"

    invoke-interface {v0, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v7

    :cond_4
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "CarPlay trigger ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x29

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v3}, Lcom/ex/auto/CentralWatchdogService;->U(Ljava/lang/String;Z)Z

    move-result v8

    iget-object v11, v4, Lcom/ex/auto/CentralWatchdogService;->G1:Ljava/util/HashMap;

    if-nez v8, :cond_5

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, "): AP n\u00e3o abriu \u2014 n\u00e3o sigo para o connect"

    invoke-static {v9, v5, v0, v2, v3}, Landroidx/activity/result/b;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_5
    if-eqz v0, :cond_8

    invoke-virtual {v4}, Lcom/ex/auto/CentralWatchdogService;->K()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    goto :goto_2

    :cond_6
    const-wide/16 v14, 0x0

    :goto_2
    sub-long v14, v12, v14

    iget-wide v7, v4, Lcom/ex/auto/CentralWatchdogService;->H1:J

    cmp-long v7, v14, v7

    if-ltz v7, :cond_7

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v11, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    :try_start_0
    invoke-static {v4, v0, v7}, Lw0/u1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "CarPlay trigger: inje\u00e7\u00e3o pulada, h\u00e1 "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x3e8

    int-to-long v11, v8

    div-long/2addr v14, v11

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "s (car\u00eancia anti-colis\u00e3o)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :catchall_0
    :cond_8
    :goto_3
    :try_start_1
    invoke-static {v4, v0}, Lw0/t1;->r(Landroid/content/Context;Ljava/lang/String;)Lw0/s1;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object v7, Lw0/ae;->a:Lw0/ae;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (preferido="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_9

    const-string v0, "(qualquer)"

    :cond_9
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v3}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4

    :catchall_1
    move-exception v0

    invoke-static {v9, v5, v6}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroidx/activity/result/b;->s(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
