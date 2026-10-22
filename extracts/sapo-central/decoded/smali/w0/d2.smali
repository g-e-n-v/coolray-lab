.class public final synthetic Lw0/d2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;I)V
    .locals 0

    iput p2, p0, Lw0/d2;->a:I

    iput-object p1, p0, Lw0/d2;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    iget v0, v1, Lw0/d2;->a:I

    const/4 v2, 0x6

    const/16 v3, 0x400

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v7, "CentralWatchdog"

    const/4 v8, 0x2

    const/4 v9, 0x1

    const-string v10, "despertar"

    const/4 v11, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lw0/d2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    const-string v2, "conex\u00e3o BT"

    invoke-virtual {v0, v2}, Lcom/ex/auto/CentralWatchdogService;->w0(Ljava/lang/String;)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_0
    iget-object v0, v1, Lw0/d2;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {v0}, Lw0/m;->q(Landroid/content/Context;)Z

    move-result v2

    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget v3, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    sget-boolean v3, Lcom/ex/auto/QuickAccessFloaterService;->z0:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/ex/auto/BlackoutFloaterService;->q:Z

    if-nez v3, :cond_2

    iget-boolean v3, v0, Lcom/ex/auto/CentralWatchdogService;->E0:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->a0:Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, v0, Lcom/ex/auto/CentralWatchdogService;->a0:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v0, v3}, Lw0/m;->w(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v0, v3}, Lw0/m;->z(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    :cond_2
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->a0:Ljava/lang/Boolean;

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_1
    iget-object v0, v1, Lw0/d2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0, v9}, Lcom/ex/auto/CentralWatchdogService;->a(Z)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_2
    iget-object v0, v1, Lw0/d2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->J()V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_3
    iget-object v0, v1, Lw0/d2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->c1()Z

    move-result v2

    if-nez v2, :cond_3

    iput-boolean v11, v0, Lcom/ex/auto/CentralWatchdogService;->V:Z

    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->N0:Lw0/l4;

    sget-object v3, Lw0/l4;->c:Lw0/l4;

    if-eq v2, v3, :cond_3

    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v3, Lw0/p2;

    const/16 v4, 0x14

    invoke-direct {v3, v0, v4}, Lw0/p2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    iget-wide v8, v0, Lcom/ex/auto/CentralWatchdogService;->E1:J

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->c1()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->N0:Lw0/l4;

    iget-boolean v3, v0, Lcom/ex/auto/CentralWatchdogService;->V:Z

    if-eqz v3, :cond_4

    sget-object v3, Lw0/l4;->b:Lw0/l4;

    goto :goto_1

    :cond_4
    sget-object v3, Lw0/l4;->a:Lw0/l4;

    :goto_1
    iput-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->N0:Lw0/l4;

    iget-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->N0:Lw0/l4;

    if-eq v2, v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dono do WiFi: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->N0:Lw0/l4;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (STA subiu)"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-wide v2, v0, Lcom/ex/auto/CentralWatchdogService;->L0:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/ex/auto/CentralWatchdogService;->L0:J

    cmp-long v4, v2, v5

    if-eqz v4, :cond_6

    iget-wide v4, v0, Lcom/ex/auto/CentralWatchdogService;->L0:J

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x7530

    cmp-long v2, v4, v2

    if-lez v2, :cond_7

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "STA ligada carimbada em "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lcom/ex/auto/CentralWatchdogService;->L0:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms (elapsedRealtime)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_4
    iget-object v0, v1, Lw0/d2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->d2:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    :try_start_0
    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {v3, v5}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/app/ActivityManager;

    invoke-virtual {v3, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    const-string v5, "getRunningTasks(...)"

    invoke-static {v3, v5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ly1/g;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v3, :cond_8

    invoke-static {v3}, Landroidx/lifecycle/y;->b(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    iget-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v5, Lw0/v;

    invoke-direct {v5, v2, v0, v4, v8}, Lw0/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_5
    iget-object v0, v1, Lw0/d2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v3, Lw0/p2;

    const/16 v4, 0x19

    invoke-direct {v3, v0, v4}, Lw0/p2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_6
    iget-object v0, v1, Lw0/d2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    const-string v2, "tela_preta_prefs"

    invoke-virtual {v0, v2, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    :pswitch_7
    iget-object v0, v1, Lw0/d2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v4, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    new-instance v4, Lw0/n;

    invoke-direct {v4, v0, v8}, Lw0/n;-><init>(Landroid/app/Service;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "stat -c %s "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/data/local/tmp/fixes/desligamento.log"

    invoke-static {v7}, Lw0/e8;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " 2>/dev/null"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v10, 0x1770

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v0, v10}, Lw0/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2/s;->Y(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v5, v12, v5

    if-nez v5, :cond_9

    goto/16 :goto_4

    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mv "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lw0/e8;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, "/data/local/tmp/fixes/desligamento_anterior.log"

    invoke-static {v6}, Lw0/e8;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v10}, Lw0/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "grep -aiE \'ShutdownThread|Shutdown sequence|waiting for|timed out|Timeout\' "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lw0/e8;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " 2>/dev/null | tail -n 12"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x2710

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lw0/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "tail -n 6 "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lw0/e8;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1f40

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lw0/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lw0/ae;->a:Lw0/ae;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "captura do desligamento anterior: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    int-to-long v12, v3

    div-long/2addr v7, v12

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " KB em /data/local/tmp/fixes/desligamento_anterior.log"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ArmadilhaDeslig"

    invoke-static {v3, v0, v9}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v5}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v6, 0xa0

    if-nez v0, :cond_a

    invoke-static {v5}, Lo2/k;->o0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/16 v5, 0xc

    invoke-static {v0, v5}, Ly1/g;->k0(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v7, Lw0/ae;->a:Lw0/ae;

    invoke-static {v6, v5}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "  desligamento | "

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_a
    const-string v0, "  desligamento | nenhuma linha de ShutdownThread/espera \u2014 o tail se perdeu ou a queda nao passou pelo caminho ordenado"

    invoke-static {v3, v0, v11}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_b
    invoke-static {v4}, Lo2/k;->o0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v2}, Ly1/g;->k0(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v4, Lw0/ae;->a:Lw0/ae;

    invoke-static {v6, v2}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "  ultima linha | "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v11}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_c
    :goto_4
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_8
    iget-object v0, v1, Lw0/d2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    const-string v2, "RecorteDeLog"

    const-string v5, "recorte do log do sistema: "

    const-string v6, "(e o caminho unico do adb reboot, do botao da tela e do comando do celular)\nATENCAO: sys.boot.reason pode estar VELHO neste aparelho (STR/IPO). Este veredito nao depende dele.\n\n"

    const-string v7, "ShutdownThread encontrado "

    const-string v10, "VEREDITO: "

    const-string v12, "== recorte do log do sistema (MTKLogger) \u2014 gerado no arranque ==\n"

    :try_start_1
    const-string v13, "D=$(ls -1dt /log/mtklog/mobilelog/APLog_* 2>/dev/null | sed -n 2p)\nif [ -z \"$D\" ]; then echo SEM_SESSAO_ANTERIOR; exit 0; fi\necho \"SESSAO=$D\"\necho \"SHUTDOWNTHREAD=$(grep -ah -c ShutdownThread $D/*.curf 2>/dev/null | awk \'{s+=$1} END{print s+0}\')\"\nM=$(ls -1t $D/main_log_*.curf 2>/dev/null | head -1)\necho \"MAIN=$M\"\nF=$(awk -F\'[ :.]\' \'NF>4 {s=$2*3600+$3*60+$4; if(p!=\"\" && (s-p>60||p-s>60)) {printf \"%d %02d:%02d:%02d %02d:%02d:%02d %+d\\n\", NR, int(p/3600),int(p%3600/60),p%60, $2,$3,$4, s-p; exit} p=s}\' \"$M\" 2>/dev/null)\nif [ -n \"$F\" ]; then\n  set -- $F\n  echo \"FRONTEIRA: linha $1  $2 -> $3  ($4 s)\"\n  echo \"--- 40 linhas ANTES da fronteira (a morte) ---\"\n  sed -n \"$(($1-40)),$(($1-1))p\" \"$M\" 2>/dev/null\n  echo \"--- 10 linhas DEPOIS (a volta) ---\"\n  sed -n \"$1,$(($1+9))p\" \"$M\" 2>/dev/null\nelse\n  echo \"FRONTEIRA: nao detectada (sessao sem salto de relogio)\"\n  echo \"--- 60 linhas finais ---\"\n  tail -n 60 \"$M\" 2>/dev/null\nfi\necho \"--- ar digital / gestos / volante: instalacao, bind e rotulos ---\"\ngrep -ahE \'systemuiplugin|hvac-digital|INSTALL_FAILED|Failed to install|aplicarArDigital|aplicarGestos\' \"$M\" 2>/dev/null | tail -25\necho \"--- negacoes de SELinux tocando os NOSSOS caminhos (SELinux=Permissive: registrado, nao aplicado) ---\"\ngrep -ah \'avc: denied\' \"$M\" 2>/dev/null | grep -E \'hvac-digital|systemuiplugin|com.ex.auto|/data/local\' | tail -15\necho \"--- o que gritou na sessao ---\"\ngrep -ahE \'FATAL EXCEPTION|ANR in|WTF|has died|Process com.ex.auto\' \"$M\" 2>/dev/null | tail -30"

    new-instance v14, Lw0/n;

    invoke-direct {v14, v11}, Lw0/n;-><init>(I)V

    const/16 v15, 0x61a8

    invoke-static {v13, v15, v4, v14}, Lw0/m;->x(Ljava/lang/String;ILh2/l;Lh2/p;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "SEM_SESSAO_ANTERIOR"

    invoke-static {v13, v14, v11}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v14

    if-nez v14, :cond_d

    const-string v14, "SESSAO="

    invoke-static {v13, v14, v11}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v14

    if-eqz v14, :cond_d

    move v14, v9

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_d
    move v14, v11

    :goto_5
    const-string v15, "SHUTDOWNTHREAD=(\\d+)"

    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    const-string v3, "compile(...)"

    invoke-static {v15, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v15, "matcher(...)"

    invoke-static {v3, v15}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v11, v13}, Lk1/a;->b(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lo2/e;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lo2/e;->a()Ljava/util/List;

    move-result-object v3

    check-cast v3, Lo2/d;

    invoke-virtual {v3, v9}, Lo2/d;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_e

    invoke-static {v3}, Lo2/s;->W(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_6

    :cond_e
    move v3, v11

    :goto_6
    if-nez v14, :cond_f

    sget-object v14, Lw0/tf;->c:Lw0/tf;

    goto :goto_7

    :cond_f
    if-lez v3, :cond_10

    sget-object v14, Lw0/tf;->a:Lw0/tf;

    goto :goto_7

    :cond_10
    sget-object v14, Lw0/tf;->b:Lw0/tf;

    :goto_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    if-eqz v10, :cond_13

    if-eq v10, v9, :cond_12

    if-ne v10, v8, :cond_11

    const-string v8, "nao havia sessao anterior legivel"

    goto :goto_8

    :cond_11
    new-instance v0, Landroidx/fragment/app/q;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_12
    const-string v8, "a sessao anterior SUMIU sem sequencia de desligamento (corte de energia / chave)"

    goto :goto_8

    :cond_13
    const-string v8, "a sessao anterior foi DESLIGADA de forma ordenada (alguem pediu: botao, adb ou celular)"

    :goto_8
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0xa

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "toString(...)"

    invoke-static {v3, v6}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lw0/e8;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/io/File;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_14

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    :cond_14
    const-string v0, "central_logtail.log"

    invoke-direct {v6, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6, v3}, Lf2/d;->i0(Ljava/io/File;Ljava/lang/String;)V

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lo2/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const-string v4, "getBytes(...)"

    invoke-static {v3, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v3

    const/16 v4, 0x400

    div-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " KB)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v11}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_a

    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "n\u00e3o consegui recortar o log do sistema: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v2}, Landroidx/activity/result/b;->s(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_a
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_9
    iget-object v0, v1, Lw0/d2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0, v10}, Lcom/ex/auto/CentralWatchdogService;->w0(Ljava/lang/String;)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_a
    iget-object v0, v1, Lw0/d2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->r()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->L()V

    :cond_15
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_b
    iget-object v0, v1, Lw0/d2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0, v10}, Lcom/ex/auto/CentralWatchdogService;->G(Ljava/lang/String;)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_c
    iget-object v0, v1, Lw0/d2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lw0/a2;

    invoke-direct {v4, v0, v10, v2}, Lw0/a2;-><init>(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_d
    iget-object v0, v1, Lw0/d2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0, v11, v10}, Lcom/ex/auto/CentralWatchdogService;->g0(ILjava/lang/String;)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_e
    iget-object v0, v1, Lw0/d2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0, v10}, Lcom/ex/auto/CentralWatchdogService;->h0(Ljava/lang/String;)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_f
    iget-object v0, v1, Lw0/d2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    new-instance v2, Lw0/d2;

    const/16 v3, 0x8

    invoke-direct {v2, v0, v3}, Lw0/d2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-static {v2}, Lw0/n3;->a(Lh2/a;)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_10
    iget-object v0, v1, Lw0/d2;->b:Lcom/ex/auto/CentralWatchdogService;

    iput-boolean v11, v0, Lcom/ex/auto/CentralWatchdogService;->a2:Z

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, "despertar: sess\u00e3o do AA descartada (plano)"

    invoke-static {v7, v0, v11}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_11
    iget-object v0, v1, Lw0/d2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0, v10}, Lcom/ex/auto/CentralWatchdogService;->w0(Ljava/lang/String;)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
