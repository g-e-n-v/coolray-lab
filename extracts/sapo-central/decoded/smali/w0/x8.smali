.class public final synthetic Lw0/x8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;I)V
    .locals 0

    iput p2, p0, Lw0/x8;->a:I

    iput-object p1, p0, Lw0/x8;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget v0, p0, Lw0/x8;->a:I

    const-string v1, "<get-prefs>(...)"

    const/16 v2, 0x10

    const-string v3, ""

    const/4 v4, 0x5

    const/16 v5, 0x1388

    const-string v6, " 2>/dev/null || true"

    const-string v7, "rm -f "

    const/4 v8, 0x7

    const/4 v9, 0x4

    const/16 v10, 0x1f40

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/x8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f0f02d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v12}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    new-instance v2, Le/h;

    invoke-direct {v2, v0}, Le/h;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f02d2

    invoke-virtual {v2, v0}, Le/h;->g(I)V

    iget-object v0, v2, Le/h;->b:Ljava/lang/Object;

    check-cast v0, Le/d;

    iget-object v3, v0, Le/d;->a:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Le/d;->f:Ljava/lang/CharSequence;

    const v0, 0x104000a

    invoke-virtual {v2, v0, v11}, Le/h;->e(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2}, Le/h;->h()Le/i;

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/x8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\'\\\'\'"

    const/16 v7, 0x27

    const-string v8, "/data/local/tmp/fixes/keyserver_em_bind"

    invoke-static {v8, v3, v4, v2, v7}, Landroidx/activity/result/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    return-void

    :pswitch_1
    iget-object v0, p0, Lw0/x8;->b:Lcom/ex/auto/MainActivity;

    invoke-static {}, Lcom/ex/auto/MainActivity;->F()Z

    move-result v1

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    const-string v3, "Reiniciar"

    if-nez v1, :cond_2

    sget-object v1, Lw0/ae;->a:Lw0/ae;

    const-string v1, "canal ADB local fora \u2014 nada foi feito"

    invoke-static {v3, v1, v13}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Lw0/x8;

    const/16 v3, 0x1d

    invoke-direct {v1, v0, v3}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-static {v3}, Lw0/t1;->q(Ljava/lang/String;)Lw0/a5;

    move-result-object v1

    sget-object v3, Lw0/a5;->b:Lw0/a5;

    if-ne v1, v3, :cond_3

    new-instance v1, Lw0/ma;

    invoke-direct {v1, v0, v13}, Lw0/ma;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    new-instance v1, Lw0/ma;

    invoke-direct {v1, v0, v12}, Lw0/ma;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    :pswitch_2
    iget-object v0, p0, Lw0/x8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    :try_start_0
    sget-object v1, Lw0/i0;->a:Landroidx/emoji2/text/m;

    iget-object v1, v1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw0/n6;

    if-eqz v1, :cond_6

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->W2:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    iget-object v3, v1, Lw0/n6;->a:Ljava/lang/String;

    const-string v5, "auto"

    invoke-static {v3, v5}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v11, v2

    :cond_4
    check-cast v11, Ljava/lang/String;

    if-nez v11, :cond_5

    iget-object v11, v1, Lw0/n6;->b:Ljava/lang/String;

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v1, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, Lw0/c9;

    invoke-direct {v2, v0, v11, v4}, Lw0/c9;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->g0()Lw0/hc;

    move-result-object v1

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->T()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v5, :cond_7

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->T()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    :cond_7
    iget-wide v6, v1, Lw0/hc;->a:J

    cmp-long v3, v6, v3

    if-gtz v3, :cond_8

    new-instance v1, Lw0/ma;

    invoke-direct {v1, v0, v9}, Lw0/ma;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_8
    new-instance v3, La1/g;

    const/16 v4, 0xf

    invoke-direct {v3, v0, v5, v1, v4}, La1/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    iget-object v2, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, Lw0/oa;

    invoke-direct {v3, v0, v1, v13}, Lw0/oa;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/Exception;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_4
    return-void

    :pswitch_3
    iget-object v0, p0, Lw0/x8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    const-string v1, "echo TTL_V4=$(iptables  -t mangle -S POSTROUTING | grep -c \'ttl-set 65\'); echo TTL_V6=$(ip6tables -t mangle -S POSTROUTING | grep -c \'hl-set 65\')"

    const/16 v2, 0x2ee0

    invoke-virtual {v0, v2, v1}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "saida"

    invoke-static {v1, v2}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "TTL_V4"

    invoke-static {v1, v2}, Lw0/e8;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_9

    const-string v2, "TTL_V6"

    invoke-static {v1, v2}, Lw0/e8;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_9

    goto :goto_5

    :cond_9
    move v12, v13

    :goto_5
    iget-object v1, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, Lw0/f9;

    const/16 v3, 0xb

    invoke-direct {v2, v0, v12, v3}, Lw0/f9;-><init>(Lcom/ex/auto/MainActivity;ZI)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_4
    iget-object v0, p0, Lw0/x8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {v0, v12}, Lw0/t1;->e0(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarplayMonitor"

    if-nez v1, :cond_a

    const-string v1, "n\u00e3o consegui gravar o script"

    invoke-virtual {v0, v2, v1}, Lcom/ex/auto/MainActivity;->x(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget-object v5, Lw0/ae;->a:Lw0/ae;

    const-string v5, "patch do monitor: in\u00edcio (segundo plano)"

    const-string v6, "Ativar"

    invoke-static {v6, v5, v13}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    const v5, 0x1d4c0

    :try_start_1
    invoke-virtual {v0, v5, v1}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "erro: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_6
    sget-object v5, Lw0/ae;->a:Lw0/ae;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "patch do monitor terminou em "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v3

    const/16 v3, 0x3e8

    int-to-long v3, v3

    div-long/2addr v7, v3

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x73

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v13}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v3, 0x190

    invoke-static {v3, v1}, Lo2/k;->D0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ex/auto/MainActivity;->x(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, Lw0/c9;

    invoke-direct {v3, v0, v1, v9}, Lw0/c9;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_7
    return-void

    :pswitch_5
    iget-object v0, p0, Lw0/x8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->v1()V

    return-void

    :pswitch_6
    iget-object v0, p0, Lw0/x8;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v1, v0, Lcom/ex/auto/MainActivity;->p0:Z

    if-eqz v1, :cond_b

    iput-boolean v13, v0, Lcom/ex/auto/MainActivity;->p0:Z

    iput-object v11, v0, Lcom/ex/auto/MainActivity;->q0:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->v1()V

    :cond_b
    return-void

    :pswitch_7
    iget-object v0, p0, Lw0/x8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "auto_connect_preferred_bt"

    invoke-interface {v1, v2, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-static {v1}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    move-object v11, v1

    :cond_c
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lw0/c9;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v11, v3}, Lw0/c9;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :pswitch_8
    iget-object v0, p0, Lw0/x8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->A0()Ljava/util/List;

    move-result-object v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v1}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx1/a;

    iget-object v5, v5, Lx1/a;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_d
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v6, v12

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ly1/g;->Z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    new-instance v4, Lw0/mc;

    invoke-direct {v4, v0}, Lw0/mc;-><init>(Lcom/ex/auto/MainActivity;)V

    invoke-static {v1, v4}, Ly1/g;->i0(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lw0/r5;->i(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_9

    :cond_e
    const v3, 0x15f90

    invoke-virtual {v0, v3, v4}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_9
    invoke-static {v3}, Lw0/r5;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v4

    invoke-static {v4}, Ly1/s;->V(I)I

    move-result v4

    if-ge v4, v2, :cond_f

    goto :goto_a

    :cond_f
    move v2, v4

    :goto_a
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lw0/o5;

    iget-object v5, v5, Lw0/o5;->a:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_10
    iget-object v2, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, La1/g;

    const/16 v5, 0xe

    invoke-direct {v3, v0, v1, v4, v5}, La1/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_9
    iget-object v0, p0, Lw0/x8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    :try_start_2
    iget-object v1, v0, Lcom/ex/auto/MainActivity;->b1:Le/i;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Le/i;->dismiss()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_11
    iput-object v11, v0, Lcom/ex/auto/MainActivity;->b1:Le/i;

    iput-object v11, v0, Lcom/ex/auto/MainActivity;->a1:Landroid/widget/ProgressBar;

    return-void

    :pswitch_a
    iget-object v0, p0, Lw0/x8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->a0:Lx1/c;

    invoke-virtual {v1}, Lx1/c;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v4

    invoke-static {v4}, Ly1/s;->V(I)I

    move-result v4

    if-ge v4, v2, :cond_12

    goto :goto_c

    :cond_12
    move v2, v4

    :goto_c
    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/ex/auto/MainActivity;->m0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_13
    iget-object v1, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, La1/i;

    const/16 v4, 0x1c

    invoke-direct {v2, v0, v4, v3}, La1/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_b
    iget-object v0, p0, Lw0/x8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    :try_start_3
    const-string v1, "RULES=$(ip rule show 2>/dev/null | grep -c \"12500:\" || echo 0)\necho \"rules=${RULES}\""

    invoke-virtual {v0, v10, v1}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    const-string v1, "rules=(\\d+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v2, "compile(...)"

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "input"

    invoke-static {v3, v2}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "matcher(...)"

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v13, v3}, Lk1/a;->b(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lo2/e;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lo2/e;->a()Ljava/util/List;

    move-result-object v1

    check-cast v1, Lo2/d;

    invoke-virtual {v1, v12}, Lo2/d;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_14

    invoke-static {v1}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-static {v1}, Lo2/s;->W(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_e

    :cond_14
    move v1, v13

    :goto_e
    if-lez v1, :cond_15

    goto :goto_f

    :cond_15
    move v12, v13

    :goto_f
    iget-object v1, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, Lw0/f9;

    const/16 v3, 0x8

    invoke-direct {v2, v0, v12, v3}, Lw0/f9;-><init>(Lcom/ex/auto/MainActivity;ZI)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_c
    iget-object v0, p0, Lw0/x8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->s1()V

    return-void

    :pswitch_d
    iget-object v0, p0, Lw0/x8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->q1()V

    return-void

    :pswitch_e
    iget-object v0, p0, Lw0/x8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    const-string v1, "[ -f \'/data/local/gesture-launcher/launcher.apk\' ] && echo G_YES || echo G_NO"

    invoke-virtual {v0, v10, v1}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "G_YES"

    invoke-static {v1, v2, v13}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    invoke-static {v1}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    const-string v3, "Falha no ADB local"

    invoke-static {v1, v3, v13}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_10

    :cond_16
    move v12, v13

    :cond_17
    :goto_10
    iget-object v1, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, Lw0/ta;

    invoke-direct {v3, v13, v0, v2, v12}, Lw0/ta;-><init>(ILcom/ex/auto/MainActivity;ZZ)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_f
    iget-object v0, p0, Lw0/x8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    sget-object v1, Lw0/qe;->a:Lw0/qe;

    const-string v2, "visual.removerGestos"

    sget-object v3, Ly1/q;->a:Ly1/q;

    invoke-virtual {v1, v0, v2, v3}, Lw0/qe;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v2, "GesturePatch"

    const-string v3, "remove: sem playbook ou bind resistiu"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    iget-object v2, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, Lw0/f9;

    invoke-direct {v3, v0, v1, v8}, Lw0/f9;-><init>(Lcom/ex/auto/MainActivity;ZI)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_10
    iget-object v0, p0, Lw0/x8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_4
    invoke-virtual {v1, v13}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    const-string v3, "getInstalledApplications(...)"

    invoke-static {v2, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_19

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_1a
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v3}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v13

    :goto_12
    if-ge v5, v4, :cond_1b

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lx1/a;

    invoke-direct {v9, v7, v6}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_1b
    new-instance v1, Lw0/b6;

    invoke-direct {v1, v8}, Lw0/b6;-><init>(I)V

    invoke-static {v2, v1}, Ly1/g;->i0(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_13

    :catch_3
    sget-object v1, Ly1/p;->a:Ly1/p;

    :goto_13
    iget-object v2, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, Lw0/ua;

    invoke-direct {v3, v0, v1, v13}, Lw0/ua;-><init>(Lcom/ex/auto/MainActivity;Ljava/util/List;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_11
    iget-object v0, p0, Lw0/x8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {v0}, Lw0/eg;->e(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, Lw0/f9;

    const/16 v4, 0xa

    invoke-direct {v3, v0, v1, v4}, Lw0/f9;-><init>(Lcom/ex/auto/MainActivity;ZI)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_12
    iget-object v0, p0, Lw0/x8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->r1()V

    return-void

    :pswitch_13
    iget-object v0, p0, Lw0/x8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lw0/m;->z(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    return-void

    :pswitch_14
    iget-object v0, p0, Lw0/x8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o1()V

    return-void

    :pswitch_15
    sget-object v0, Lw0/o4;->e:Lw0/o4;

    sget-object v1, Lw0/o4;->d:Lw0/o4;

    iget-object v2, p0, Lw0/x8;->b:Lcom/ex/auto/MainActivity;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    const-string v3, "echo WPP=$(netstat -tn 2>/dev/null | grep -cE \'3051[56].*ESTABLISHED\'); echo AP0=$(awk \'$6==\"ap0\" && $3!=\"0x0\"{n++} END{print n+0}\' /proc/net/arp 2>/dev/null); echo BT=$(dumpsys bluetooth_manager 2>/dev/null | grep -cE \'(A2dpSinkStateMachine|HeadsetClientStateMachine) state=Connected\')"

    invoke-virtual {v2, v10, v3}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "WPP"

    invoke-static {v3, v4}, Lcom/ex/auto/MainActivity;->k1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "AP0"

    invoke-static {v3, v5}, Lcom/ex/auto/MainActivity;->k1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "BT"

    invoke-static {v3, v6}, Lcom/ex/auto/MainActivity;->k1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v6}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    sget-object v0, Lw0/o4;->a:Lw0/o4;

    goto :goto_15

    :cond_1c
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4, v7}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-static {v5, v6}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    sget-object v0, Lw0/o4;->b:Lw0/o4;

    goto :goto_15

    :cond_1d
    invoke-static {v3, v6}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    sget-object v0, Lw0/o4;->c:Lw0/o4;

    goto :goto_15

    :cond_1e
    invoke-static {v5, v7}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-static {v3, v7}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    :goto_14
    move-object v0, v1

    goto :goto_15

    :cond_1f
    invoke-static {v5, v7}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-static {v3, v7}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_14

    :cond_20
    :goto_15
    iget-object v1, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, La1/i;

    const/16 v4, 0x1a

    invoke-direct {v3, v2, v4, v0}, La1/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_16
    iget-object v0, p0, Lw0/x8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {}, Lw0/e8;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, Lw0/c9;

    invoke-direct {v3, v0, v1, v13}, Lw0/c9;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_17
    iget-object v0, p0, Lw0/x8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {}, Lw0/eg;->c()Z

    move-result v1

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, Lw0/f9;

    invoke-direct {v3, v0, v1, v4}, Lw0/f9;-><init>(Lcom/ex/auto/MainActivity;ZI)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_18
    iget-object v0, p0, Lw0/x8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    const-string v1, "/data/local/tmp/ca_fix-update.apk"

    const-string v2, "/data/local/tmp/CentralEXAuto-update.apk"

    :try_start_5
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v8, "CentralEXAuto-update-staging.apk"

    invoke-direct {v3, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :try_start_6
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v8, "ca_fix-update-staging.apk"

    invoke-direct {v3, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :try_start_7
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    :try_start_8
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    :catch_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    return-void

    :pswitch_19
    iget-object v0, p0, Lw0/x8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lw0/nb;

    invoke-direct {v2, v0, v9}, Lw0/nb;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_21
    return-void

    :pswitch_1a
    iget-object v0, p0, Lw0/x8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    sget-object v2, Lw0/k5;->a:Lw0/k5;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lw0/k5;->d(Landroid/content/SharedPreferences;)I

    return-void

    :pswitch_1b
    iget-object v0, p0, Lw0/x8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "primeiro desenho em "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/ex/auto/MainActivity;->Q:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ArranqueUI"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ll2/c;

    invoke-direct {v1, v12, v8, v12}, Ll2/a;-><init>(III)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ll2/a;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    :goto_16
    move-object v3, v1

    check-cast v3, Ll2/b;

    iget-boolean v4, v3, Ll2/b;->c:Z

    if-eqz v4, :cond_23

    invoke-virtual {v3}, Ll2/b;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget-object v5, v0, Lcom/ex/auto/MainActivity;->S0:[Z

    aget-boolean v4, v5, v4

    if-nez v4, :cond_22

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_23
    invoke-static {v2}, Ly1/g;->n0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_17

    :cond_24
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v2

    new-instance v3, Lw0/lc;

    invoke-direct {v3, v0, v1}, Lw0/lc;-><init>(Lcom/ex/auto/MainActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    :goto_17
    return-void

    :pswitch_1c
    iget-object v0, p0, Lw0/x8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    :try_start_9
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->I0()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
