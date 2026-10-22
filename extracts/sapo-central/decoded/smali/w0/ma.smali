.class public final synthetic Lw0/ma;
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

    .line 1
    iput p2, p0, Lw0/ma;->a:I

    iput-object p1, p0, Lw0/ma;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 2
    const/16 p2, 0x19

    iput p2, p0, Lw0/ma;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/ma;->b:Lcom/ex/auto/MainActivity;

    return-void
.end method

.method private final a()V
    .locals 11

    sget-object v0, Lw0/y4;->b:Lw0/y4;

    sget-object v1, Lw0/y4;->d:Lw0/y4;

    iget-object v2, p0, Lw0/ma;->b:Lcom/ex/auto/MainActivity;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lw0/u;->z:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "awk -v target="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " \'$2 == target { print; found=1 } END { exit found ? 0 : 1 }\' /proc/mounts"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " || true"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x1388

    invoke-virtual {v2, v5, v3}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "Falha no ADB local"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v9, v7

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lo2/k;->n0(Ljava/lang/CharSequence;)Ln2/c;

    move-result-object v3

    iget-object v6, v3, Ln2/c;->b:Ln2/f;

    invoke-interface {v6}, Ln2/f;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v3, Ln2/c;->c:Ljava/lang/Object;

    check-cast v8, Lh2/l;

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lo2/h;

    const-string v10, "\\s+"

    invoke-direct {v9, v10}, Lo2/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7, v8}, Lo2/h;->d(ILjava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    if-lt v9, v10, :cond_2

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v4}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ -f "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/data/local/tmp/fixes/keyserver_em_bind"

    invoke-static {v4}, Lw0/e8;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ] && echo SIM"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "SIM"

    invoke-static {v3, v6, v7}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v9, :cond_3

    if-eqz v3, :cond_3

    sget-object v3, Lw0/y4;->a:Lw0/y4;

    goto :goto_1

    :cond_3
    if-eqz v9, :cond_4

    if-nez v3, :cond_4

    move-object v3, v1

    goto :goto_1

    :cond_4
    if-nez v9, :cond_5

    if-eqz v3, :cond_5

    move-object v3, v0

    goto :goto_1

    :cond_5
    sget-object v3, Lw0/y4;->c:Lw0/y4;

    :goto_1
    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v8, "keyserver_bind_enabled"

    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eq v9, v6, :cond_7

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v9, :cond_6

    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {v6, v2, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v6}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_6
    sget-object v6, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-object v6, Lcom/ex/auto/CentralWatchdogService;->V2:Lcom/ex/auto/CentralWatchdogService;

    if-eqz v6, :cond_7

    iget-object v7, v6, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v8, Lw0/v2;

    const/16 v9, 0xa

    invoke-direct {v8, v6, v9}, Lw0/v2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    if-ne v3, v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "touch "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lw0/e8;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " 2>/dev/null || true"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    :cond_8
    if-ne v3, v0, :cond_9

    const-string v0, "KeyServerAtivador"

    const-string v1, "volante: o dono tinha ligado e o bind nao esta de pe \u2014 o BootScript remonta no proximo boot"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v0, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v1, Lw0/ma;

    const/16 v3, 0x17

    invoke-direct {v1, v2, v3}, Lw0/ma;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final b()V
    .locals 5

    iget-object v0, p0, Lw0/ma;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    :try_start_0
    new-instance v1, Lw0/n2;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Lw0/n2;-><init>(I)V

    invoke-static {v0, v1}, Lw0/m;->d(Landroid/content/Context;Lh2/l;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dep gestos update: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Update"

    invoke-virtual {v0, v2, v1}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, Lw0/f9;

    const/16 v4, 0xe

    invoke-direct {v3, v0, v1, v4}, Lw0/f9;-><init>(Lcom/ex/auto/MainActivity;ZI)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final c()V
    .locals 9

    iget-object v0, p0, Lw0/ma;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    sget-object v1, Lw0/ae;->a:Lw0/ae;

    const-string v1, "Reiniciar"

    const-string v2, "garantindo o bind do CarplayMonitor"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x2

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lw0/t1;->p()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lw0/l9;

    invoke-direct {v6, v0, v2}, Lw0/l9;-><init>(Lcom/ex/auto/MainActivity;I)V

    const v7, 0xea60

    invoke-static {v5, v7, v4, v6}, Lw0/m;->x(Ljava/lang/String;ILh2/l;Lh2/p;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "erro: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    sget-object v6, Lw0/ae;->a:Lw0/ae;

    invoke-static {v5}, Lo2/k;->n0(Ljava/lang/CharSequence;)Ln2/c;

    move-result-object v6

    new-instance v7, Lw0/ya;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Lw0/ya;-><init>(I)V

    new-instance v8, Ln2/c;

    invoke-direct {v8, v6, v7, v2}, Ln2/c;-><init>(Ln2/f;Ljava/lang/Object;I)V

    new-instance v2, Lw0/ya;

    const/4 v6, 0x5

    invoke-direct {v2, v6}, Lw0/ya;-><init>(I)V

    new-instance v6, Ln2/d;

    const/4 v7, 0x1

    invoke-direct {v6, v8, v7, v2}, Ln2/d;-><init>(Ln2/f;ZLh2/l;)V

    invoke-static {v6}, Ln2/g;->W(Ln2/f;)Ljava/util/List;

    move-result-object v2

    const-string v6, " | "

    const/16 v7, 0x3e

    invoke-static {v2, v6, v4, v7}, Ly1/g;->e0(Ljava/lang/Iterable;Ljava/lang/String;Lh2/l;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v5}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x78

    invoke-static {v4, v2}, Lo2/k;->D0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\n"

    const-string v6, " "

    invoke-static {v2, v4, v6}, Lo2/t;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v4, "bind do monitor: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, Lw0/c9;

    const/16 v3, 0xd

    invoke-direct {v2, v0, v5, v3}, Lw0/c9;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final d()V
    .locals 2

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    iget-object v0, p0, Lw0/ma;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->e1()V

    :cond_0
    return-void
.end method

.method private final e()V
    .locals 3

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    const v0, 0x7f0f01f1

    iget-object v1, p0, Lw0/ma;->b:Lcom/ex/auto/MainActivity;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getString(...)"

    invoke-static {v0, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/ex/auto/MainActivity;->S1(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 31

    move-object/from16 v1, p0

    iget v0, v1, Lw0/ma;->a:I

    const-string v4, "Reiniciar"

    const-string v5, "SIM"

    const/4 v6, 0x4

    const-string v7, "Update"

    const-string v8, "MD5"

    const-string v9, "grep -F \' "

    const/16 v11, 0xa

    const-wide/16 v16, 0x0

    const-string v13, "getString(...)"

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lw0/ma;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget-object v2, Lw0/ae;->a:Lw0/ae;

    const-string v2, "in\u00edcio"

    const-string v6, "Ativar"

    invoke-static {v6, v2, v3}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/ex/auto/MainActivity;->F()Z

    move-result v2

    iget-object v7, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    if-nez v2, :cond_0

    const-string v2, "ABORTADO: canal do ADB local fora do ar"

    invoke-static {v6, v2, v3}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v2, Lw0/nb;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lw0/nb;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v7, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_8

    :cond_0
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->P()Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/io/File;

    invoke-static {v11, v2}, Lw0/u;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v12

    const v3, 0x7f0f012e

    if-eqz v12, :cond_1

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v18

    cmp-long v12, v18, v16

    if-gtz v12, :cond_2

    :cond_1
    move-wide/from16 v18, v4

    goto/16 :goto_6

    :cond_2
    invoke-virtual {v0, v13}, Lcom/ex/auto/MainActivity;->H0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-wide/from16 v18, v4

    goto/16 :goto_7

    :cond_3
    invoke-static {v11, v2}, Lw0/u;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/16 v15, 0x29

    const-string v10, "CaFix"

    if-eqz v3, :cond_4

    invoke-virtual {v0, v12, v11, v2}, Lcom/ex/auto/MainActivity;->p0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "validateCaFix: build reconhecida ("

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x2f

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v18, v4

    :goto_0
    const/4 v14, 0x0

    goto/16 :goto_7

    :cond_4
    const-string v3, "carplay"

    const-string v15, "ambos"

    const-string v14, "aa"

    filled-new-array {v14, v3, v15}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    const-string v15, " \u2014 recusado"

    move-object/from16 v17, v3

    const-string v3, "validateCaFix: "

    if-eqz v14, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14, v11}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    move-wide/from16 v18, v4

    invoke-static {v14, v2}, Lw0/u;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cont\u00e9m a build de "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v14}, Lcom/ex/auto/MainActivity;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v11}, Lcom/ex/auto/MainActivity;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f0f010d

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_7

    :cond_5
    move-object/from16 v3, v17

    move-wide/from16 v4, v18

    goto :goto_1

    :cond_6
    move-object/from16 v3, v17

    goto :goto_1

    :cond_7
    move-wide/from16 v18, v4

    const-string v4, "1114"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "1111"

    goto :goto_2

    :cond_8
    move-object v5, v4

    :goto_2
    sget v14, Lw0/u;->a:I

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "4b0e1de041032ee63ef0c223926d7889"

    goto :goto_3

    :cond_9
    const-string v4, "260459e68360a4ff5c3720d84a2acddd"

    :goto_3
    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cont\u00e9m a build da "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v5}, Lcom/ex/auto/MainActivity;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2}, Lcom/ex/auto/MainActivity;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f0f010c

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_7

    :cond_a
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v11, v2}, Lw0/u;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-static {v2}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "validateCaFix: md5 confere ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "validateCaFix: md5 DIVERGE \u2014 esperado="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " achado="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x8

    invoke-static {v3, v2}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v12}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f0f012d

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_7

    :cond_d
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lw0/u;->w:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \' /proc/mounts >/dev/null 2>&1 && echo Y || echo N"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x1f40

    invoke-virtual {v0, v5, v2}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "Y"

    const/4 v9, 0x0

    invoke-static {v2, v5, v9}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_e

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v16

    cmp-long v4, v14, v16

    if-nez v4, :cond_e

    :try_start_0
    invoke-static {v5, v8}, Lcom/ex/auto/MainActivity;->h0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_e

    invoke-virtual {v4, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u00e9 IGUAL ao /system sem bind \u2014 \u00e9 o stock, n\u00e3o o patch"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f0f012c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_7

    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "validateCaFix: sem md5 de refer\u00eancia (bind="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", md5="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") \u2014 seguindo"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :goto_6
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_7
    sget-object v2, Lw0/ae;->a:Lw0/ae;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "md5 do ca_fix conferido em "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v3, v3, v18

    const/16 v5, 0x3e8

    int-to-long v8, v5

    div-long/2addr v3, v8

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x73

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    invoke-static {v6, v2, v9}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v2, Lw0/c9;

    const/16 v3, 0xe

    invoke-direct {v2, v14, v0, v3}, Lw0/c9;-><init>(Ljava/lang/String;Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v7, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_8
    return-void

    :pswitch_0
    invoke-direct {v1}, Lw0/ma;->e()V

    return-void

    :pswitch_1
    invoke-direct {v1}, Lw0/ma;->d()V

    return-void

    :pswitch_2
    invoke-direct {v1}, Lw0/ma;->c()V

    return-void

    :pswitch_3
    iget-object v0, v1, Lw0/ma;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    return-void

    :pswitch_4
    iget-object v0, v1, Lw0/ma;->b:Lcom/ex/auto/MainActivity;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0, v2}, Lcom/ex/auto/MainActivity;->x1(Z)V

    return-void

    :pswitch_5
    iget-object v0, v1, Lw0/ma;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->v1()V

    return-void

    :pswitch_6
    iget-object v0, v1, Lw0/ma;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->Y()V

    :cond_f
    return-void

    :pswitch_7
    iget-object v0, v1, Lw0/ma;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->f1()V

    return-void

    :pswitch_8
    invoke-direct {v1}, Lw0/ma;->b()V

    return-void

    :pswitch_9
    iget-object v3, v1, Lw0/ma;->b:Lcom/ex/auto/MainActivity;

    iget-object v4, v3, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    :try_start_1
    invoke-static {v3}, Lcom/ex/auto/MainActivity;->e0(Lcom/ex/auto/MainActivity;)Lw0/zb;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dep ConnAdaptor update: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v7, v5}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lw0/oa;

    invoke-direct {v5, v3, v0, v2}, Lw0/oa;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/Exception;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_10

    iget-object v2, v0, Lw0/zb;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/ex/auto/MainActivity;->K0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_a

    :cond_10
    const/4 v14, 0x0

    :goto_a
    new-instance v2, La1/g;

    const/16 v5, 0x14

    invoke-direct {v2, v3, v0, v14, v5}, La1/g;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-virtual {v4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_a
    iget-object v0, v1, Lw0/ma;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->s1()V

    return-void

    :pswitch_b
    iget-object v0, v1, Lw0/ma;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f0f0208

    const/4 v9, 0x0

    invoke-static {v2, v9, v0, v13}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    return-void

    :pswitch_c
    move v9, v3

    iget-object v0, v1, Lw0/ma;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f0f020a

    invoke-static {v2, v9, v0, v13}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    return-void

    :pswitch_d
    invoke-direct {v1}, Lw0/ma;->a()V

    return-void

    :pswitch_e
    iget-object v3, v1, Lw0/ma;->b:Lcom/ex/auto/MainActivity;

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "central-persist-log"

    invoke-static {v0, v7}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_b

    :cond_11
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    :try_start_2
    sget-object v7, Lw0/ae;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v8, Lw0/a6;

    invoke-direct {v8, v0, v2}, Lw0/a6;-><init>(Ljava/util/concurrent/CountDownLatch;I)V

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x5dc

    invoke-virtual {v0, v7, v8, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :goto_b
    new-instance v0, Lw0/n;

    invoke-direct {v0, v6}, Lw0/n;-><init>(I)V

    const-string v2, "ArmadilhaDeslig"

    const-string v6, "/data/local/tmp/fixes/desligamento.log"

    const-string v7, "armar: "

    const-string v8, "[ -e "

    const-string v9, "rm -f "

    :try_start_3
    invoke-static {v6}, Lw0/e8;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " 2>/dev/null; setsid sh -c \"logcat -v time -b all -f /data/local/tmp/fixes/desligamento.log ShutdownThread:V PowerManagerService:V ActivityManager:I SystemServer:V init:V vold:V healthd:V watchdog:V Watchdog:V ecarx_power:V *:F\" </dev/null >/dev/null 2>&1 &"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v20, 0x1f40

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lw0/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lw0/e8;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ] && echo SIM"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x1770

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Lw0/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v9, 0x0

    invoke-static {v0, v5, v9}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "capturando"

    goto :goto_c

    :catchall_1
    move-exception v0

    goto :goto_d

    :cond_12
    const-string v0, "nao consegui criar o arquivo"

    :goto_c
    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_e

    :goto_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v5, v2}, Landroidx/activity/result/b;->s(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_e
    :try_start_4
    const-string v0, "power"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-static {v0, v2}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/PowerManager;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_f

    :catchall_2
    move-exception v0

    sget-object v2, Lw0/ae;->a:Lw0/ae;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PowerManager.reboot falhou ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") \u2014 caindo pro shell"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    invoke-static {v4, v0, v9}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lkotlinx/coroutines/scheduling/h;

    const/16 v2, 0x15b3

    invoke-direct {v0, v2}, Lkotlinx/coroutines/scheduling/h;-><init>(I)V

    const-string v2, "reboot"

    const v3, 0xea60

    invoke-virtual {v0, v3, v2}, Lkotlinx/coroutines/scheduling/h;->b(ILjava/lang/String;)Ljava/lang/String;

    :goto_f
    return-void

    :pswitch_f
    iget-object v2, v1, Lw0/ma;->b:Lcom/ex/auto/MainActivity;

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    :try_start_5
    const-string v0, "carplay.desfazerBindMonitor"

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-static {v2, v0, v4, v3}, Lw0/qe;->e(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "monitor desmontado"

    goto :goto_11

    :catch_2
    move-exception v0

    goto :goto_10

    :cond_13
    const-string v0, "sem playbook \u2014 sincronize a central uma vez"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_11

    :goto_10
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "erro: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_11
    const/16 v3, 0xa0

    invoke-static {v3, v0}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v6, " "

    invoke-static {v3, v4, v6}, Lo2/t;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lw0/u;->y:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " \' /proc/mounts >/dev/null && echo SIM || echo NAO"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x1f40

    invoke-virtual {v2, v6, v4}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    invoke-static {v2, v5, v9}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_12

    :catch_3
    const/4 v2, 0x0

    :goto_12
    sget-object v4, Lw0/ae;->a:Lw0/ae;

    if-nez v2, :cond_14

    const-string v0, "modo AA: patch do monitor desfeito"

    goto :goto_13

    :cond_14
    invoke-static {v0}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "modo AA: canal ADB indispon\u00edvel \u2014 o patch do monitor sai s\u00f3 no pr\u00f3ximo boot"

    goto :goto_13

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "modo AA: o monitor CONTINUA montado \u2014 "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_13
    const-string v2, "Modo"

    const/4 v9, 0x0

    invoke-static {v2, v0, v9}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :pswitch_10
    iget-object v0, v1, Lw0/ma;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-static {v0}, Lw0/eg;->b(Landroid/content/Context;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "apply "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_16

    const-string v4, "OK"

    goto :goto_14

    :cond_16
    const-string v4, "FAIL"

    :goto_14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Lw0/eg;->b:Ljava/lang/String;

    const/16 v5, 0x2ee0

    invoke-static {v5, v4}, Lcom/ex/auto/MainActivity;->v2(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RVC"

    invoke-virtual {v0, v4, v3}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, Lw0/f9;

    const/16 v5, 0xd

    invoke-direct {v4, v0, v2, v5}, Lw0/f9;-><init>(Lcom/ex/auto/MainActivity;ZI)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_11
    iget-object v0, v1, Lw0/ma;->b:Lcom/ex/auto/MainActivity;

    iget-object v0, v0, Lcom/ex/auto/MainActivity;->K:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_17

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void

    :cond_17
    const-string v0, "wifiManager"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    const/16 v21, 0x0

    throw v21

    :pswitch_12
    iget-object v0, v1, Lw0/ma;->b:Lcom/ex/auto/MainActivity;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ -f \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->E()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' ] && echo CAFIX_YES || echo CAFIX_NO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x1f40

    invoke-virtual {v0, v5, v3}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CAFIX_YES"

    const/4 v9, 0x0

    invoke-static {v3, v4, v9}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    invoke-static {v3}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_19

    const-string v5, "Falha no ADB local"

    invoke-static {v3, v5, v9}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_15

    :cond_18
    const/4 v2, 0x0

    :cond_19
    :goto_15
    iget-object v3, v0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v5, Lw0/ta;

    invoke-direct {v5, v6, v0, v4, v2}, Lw0/ta;-><init>(ILcom/ex/auto/MainActivity;ZZ)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_13
    iget-object v0, v1, Lw0/ma;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v2, v0, Lcom/ex/auto/MainActivity;->J0:Z

    if-eqz v2, :cond_1a

    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/ex/auto/MainActivity;->J0:Z

    :cond_1a
    return-void

    :pswitch_14
    iget-object v0, v1, Lw0/ma;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->n1()V

    return-void

    :pswitch_15
    iget-object v0, v1, Lw0/ma;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->s1()V

    return-void

    :pswitch_16
    const-string v0, "/data/local/tmp/GeelyAutoKeyServer-patched-update.apk"

    iget-object v3, v1, Lw0/ma;->b:Lcom/ex/auto/MainActivity;

    sget v4, Lcom/ex/auto/MainActivity;->z1:I

    const-string v4, "KeyServerAtivador"

    const-string v5, "/data/local/tmp/fixes/GeelyAutoKeyServer-patched.apk"

    const-string v6, "bind="

    const-string v7, "ERRO: o playbook parou em "

    :try_start_7
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :try_start_8
    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->f0()Lw0/bc;

    move-result-object v9
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_16

    :catch_4
    :try_start_9
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v9
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    if-eqz v9, :cond_2a

    const/4 v9, 0x0

    :goto_16
    const-string v10, "KeyServer"

    const-string v12, "fixApk"

    if-eqz v9, :cond_1e

    :try_start_a
    invoke-virtual {v9}, Lw0/bc;->a()Z

    move-result v13

    if-eqz v13, :cond_1c

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v13

    if-eqz v13, :cond_1b

    invoke-virtual {v3, v8}, Lcom/ex/auto/MainActivity;->y2(Ljava/io/File;)Ljava/lang/Long;

    move-result-object v8

    goto :goto_19

    :catch_5
    move-exception v0

    :goto_17
    move-object v2, v3

    :goto_18
    const/4 v3, 0x0

    goto/16 :goto_24

    :cond_1b
    const/4 v8, 0x0

    :goto_19
    if-eqz v8, :cond_1f

    iget-wide v13, v9, Lw0/bc;->d:J

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    cmp-long v8, v22, v13

    if-eqz v8, :cond_1e

    goto :goto_1b

    :cond_1c
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v13

    if-eqz v13, :cond_1d

    const-string v13, "SHA-256"

    invoke-static {v8, v13}, Lcom/ex/auto/MainActivity;->h0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1a

    :cond_1d
    const/4 v8, 0x0

    :goto_1a
    if-eqz v8, :cond_1f

    iget-object v13, v9, Lw0/bc;->c:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1e

    goto :goto_1b

    :cond_1e
    move-object v2, v3

    goto/16 :goto_21

    :cond_1f
    :goto_1b
    invoke-static {}, Lw0/e8;->v()Ljava/lang/String;

    move-result-object v8

    const/16 v13, 0x1f40

    invoke-virtual {v3, v13, v8}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    iget-object v8, v9, Lw0/bc;->b:Ljava/lang/String;

    invoke-virtual {v9}, Lw0/bc;->a()Z

    move-result v13

    if-eqz v13, :cond_20

    const/16 v26, 0x0

    goto :goto_1c

    :cond_20
    iget-object v13, v9, Lw0/bc;->c:Ljava/lang/String;

    move-object/from16 v26, v13

    :goto_1c
    invoke-virtual {v9}, Lw0/bc;->a()Z

    move-result v13

    if-eqz v13, :cond_21

    iget-wide v13, v9, Lw0/bc;->d:J

    goto :goto_1d

    :cond_21
    move-wide/from16 v13, v16

    :goto_1d
    new-instance v9, Lw0/e9;

    const/16 v15, 0xe

    invoke-direct {v9, v3, v15}, Lw0/e9;-><init>(Lcom/ex/auto/MainActivity;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :try_start_b
    new-instance v15, Ljava/io/File;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v11

    const-string v2, "GeelyAutoKeyServer-patched-update-staging.apk"

    invoke-direct {v15, v11, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v25, "KeyServer"
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    const/16 v28, 0x0

    const/16 v30, 0x70

    const/16 v27, 0x0

    move-object/from16 v22, v3

    move-object/from16 v23, v8

    move-object/from16 v29, v9

    move-object/from16 v24, v15

    :try_start_c
    invoke-static/range {v22 .. v30}, Lcom/ex/auto/MainActivity;->X(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh2/a;Lh2/l;I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    move-object/from16 v2, v22

    move-object/from16 v3, v24

    cmp-long v8, v13, v16

    if-lez v8, :cond_22

    :try_start_d
    const-string v8, "com.flyme.auto.keyserver"

    invoke-virtual {v2, v3, v8, v13, v14}, Lcom/ex/auto/MainActivity;->z2(Ljava/io/File;Ljava/lang/String;J)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_1e

    :catch_6
    move-exception v0

    :try_start_e
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    throw v0

    :cond_22
    :goto_1e
    const-string v8, "keyserver_patch"

    const/4 v9, 0x0

    invoke-virtual {v2, v3, v0, v8, v9}, Lcom/ex/auto/MainActivity;->q2(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v8, Lw0/ma;

    const/16 v9, 0x10

    invoke-direct {v8, v2, v9}, Lw0/ma;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v3, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Lw0/qe;->a:Lw0/qe;

    const-string v9, "volante.aplicarPatchKeyServer"

    new-instance v11, Lx1/a;

    invoke-direct {v11, v12, v5}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v13, "staging"

    new-instance v14, Lx1/a;

    invoke-direct {v14, v13, v0}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v11, v14}, [Lx1/a;

    move-result-object v0

    invoke-static {v0}, Ly1/s;->X([Lx1/a;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v8, v2, v9, v0, v3}, Lw0/qe;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/ArrayList;)Z

    move-result v0

    invoke-static {v3}, Lw0/ne;->f(Ljava/util/ArrayList;)Z

    move-result v8

    if-eqz v8, :cond_23

    const-string v0, "ok"

    :goto_1f
    const/16 v3, 0x2ee0

    goto :goto_20

    :catch_7
    move-exception v0

    goto/16 :goto_18

    :cond_23
    if-nez v0, :cond_24

    const-string v0, "ERRO: sem playbook \u2014 sincronize a central uma vez"

    goto :goto_1f

    :cond_24
    const/16 v0, 0x3f

    const/4 v8, 0x0

    invoke-static {v3, v8, v8, v0}, Ly1/g;->e0(Ljava/lang/Iterable;Ljava/lang/String;Lh2/l;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :goto_20
    invoke-static {v3, v0}, Lcom/ex/auto/MainActivity;->v2(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v10, v0}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    :catch_8
    move-exception v0

    move-object/from16 v2, v22

    goto/16 :goto_18

    :catch_9
    move-exception v0

    goto/16 :goto_17

    :goto_21
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, Lw0/ma;

    const/16 v7, 0x11

    invoke-direct {v3, v2, v7}, Lw0/ma;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lw0/qe;->a:Lw0/qe;

    const-string v3, "volante.ativarPatch"

    new-instance v7, Lx1/a;

    invoke-direct {v7, v12, v5}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v5, "svcKeyServer"

    const-string v8, "com.flyme.auto.keyserver.service.AutoKeyService"

    new-instance v9, Lx1/a;

    invoke-direct {v9, v5, v8}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v7, v9}, [Lx1/a;

    move-result-object v5

    invoke-static {v5}, Ly1/s;->X([Lx1/a;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v5}, Lw0/qe;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->y0()Z

    move-result v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    if-eqz v3, :cond_25

    goto :goto_22

    :cond_25
    const/4 v3, 0x0

    goto :goto_23

    :cond_26
    :goto_22
    const/4 v3, 0x1

    :goto_23
    :try_start_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " servico="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v10, v5}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_27

    if-eqz v0, :cond_27

    const v0, 0x7f0f01fe

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    :catch_a
    move-exception v0

    goto :goto_24

    :cond_27
    if-eqz v3, :cond_28

    const v0, 0x7f0f01ff

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    :cond_28
    const v0, 0x7f0f0204

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    goto :goto_25

    :cond_29
    :try_start_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const v3, 0x7f0f0205

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    move-object v2, v3

    new-instance v0, Ljava/lang/IllegalStateException;

    const v3, 0x7f0f0209

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    :goto_24
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "runKeyServerApply: exce\u00e7\u00e3o \u2014 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2b

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    :cond_2b
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v0

    const v5, 0x7f0f0203

    invoke-virtual {v2, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_25
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "runKeyServerApply: resultado ok="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " message=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x22

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_2c

    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "keyserver_bind_enabled"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "touch "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\'\\\'\'"

    const/16 v7, 0x27

    const-string v8, "/data/local/tmp/fixes/keyserver_em_bind"

    invoke-static {v8, v5, v6, v4, v7}, Landroidx/activity/result/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " 2>/dev/null || true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1388

    invoke-virtual {v2, v4, v3}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->V2:Lcom/ex/auto/CentralWatchdogService;

    if-eqz v3, :cond_2c

    iget-object v4, v3, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v5, Lw0/v2;

    const/16 v6, 0xa

    invoke-direct {v5, v3, v6}, Lw0/v2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_26

    :cond_2c
    const/16 v6, 0xa

    :goto_26
    iget-object v3, v2, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, Lw0/c9;

    invoke-direct {v4, v2, v0, v6}, Lw0/c9;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_17
    iget-object v0, v1, Lw0/ma;->b:Lcom/ex/auto/MainActivity;

    iget-boolean v2, v0, Lcom/ex/auto/MainActivity;->p0:Z

    if-eqz v2, :cond_2d

    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/ex/auto/MainActivity;->p0:Z

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/ex/auto/MainActivity;->q0:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->v1()V

    :cond_2d
    return-void

    :pswitch_18
    iget-object v0, v1, Lw0/ma;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f0f053f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/ex/auto/MainActivity;->Z1(Ljava/lang/CharSequence;)V

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v5}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    invoke-virtual {v0, v7, v2}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_19
    const/4 v5, 0x0

    iget-object v9, v1, Lw0/ma;->b:Lcom/ex/auto/MainActivity;

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    const-string v0, "/proc/mounts"

    const-string v2, "com.njda.adapter"

    :try_start_11
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v6, "sourceDir"

    invoke-static {v3, v6}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "/data/app/"

    invoke-static {v3, v6, v4}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    move v10, v3

    goto :goto_27

    :catchall_3
    const/4 v10, 0x0

    :goto_27
    const/16 v3, 0x20

    :try_start_12
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lf2/d;->g0(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2f

    :cond_2e
    const/4 v4, 0x0

    goto :goto_28

    :cond_2f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :cond_30
    if-ge v7, v6, :cond_2e

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v7, v7, 0x1

    check-cast v11, Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v14, Lw0/u;->w:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static {v11, v12, v14}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v11
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    if-eqz v11, :cond_30

    const/4 v4, 0x1

    :goto_28
    move v12, v4

    goto :goto_29

    :catchall_4
    const/4 v12, 0x0

    :goto_29
    :try_start_13
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lf2/d;->g0(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_31

    goto :goto_2a

    :cond_31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    :cond_32
    if-ge v6, v4, :cond_33

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v14, Lw0/u;->y:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    invoke-static {v7, v11, v14}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    if-eqz v7, :cond_32

    const/16 v20, 0x1

    goto :goto_2b

    :catchall_5
    :cond_33
    :goto_2a
    const/16 v20, 0x0

    :goto_2b
    const-string v3, "ConnAdaptor"

    if-eqz v10, :cond_34

    if-eqz v12, :cond_34

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, "bind legado sobre instala\u00e7\u00e3o \u2014 desmontando sozinho"

    const/4 v14, 0x0

    invoke-static {v3, v0, v14}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_14
    invoke-static {}, Lw0/e8;->F()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x7530

    invoke-virtual {v9, v4, v0}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "limpeza do bind legado: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x78

    invoke-static {v6, v0}, Lo2/k;->D0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    invoke-static {v3, v0, v14}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b

    :cond_34
    const/4 v14, 0x0

    goto :goto_2c

    :catch_b
    move-exception v0

    sget-object v4, Lw0/ae;->a:Lw0/ae;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "limpeza do bind legado falhou: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    invoke-static {v3, v0, v14}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_2c
    invoke-virtual {v9}, Lcom/ex/auto/MainActivity;->U()Ljava/lang/String;

    move-result-object v4

    :try_start_15
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    sget-object v2, Lw0/ae;->a:Lw0/ae;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "status repintado: instalado="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " sourceDir="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    const/16 v6, 0x30

    invoke-static {v6, v0}, Lo2/k;->D0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " md5="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/ex/auto/MainActivity;->G0()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    const/16 v6, 0x8

    invoke-static {v6, v0}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :catchall_6
    move-exception v0

    goto :goto_2e

    :cond_35
    move-object v0, v5

    :goto_2d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " rotulo="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/ex/auto/MainActivity;->E1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    invoke-static {v3, v0, v14}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    goto :goto_2f

    :goto_2e
    sget-object v2, Lw0/ae;->a:Lw0/ae;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "status repintado: n\u00e3o consegui ler o ApplicationInfo \u2014 "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    invoke-static {v3, v0, v14}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_2f
    invoke-virtual {v9}, Lcom/ex/auto/MainActivity;->E1()Ljava/lang/String;

    :try_start_16
    new-instance v0, Ljava/io/File;

    invoke-virtual {v9}, Lcom/ex/auto/MainActivity;->E()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-static {v0, v8}, Lcom/ex/auto/MainActivity;->h0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x8

    invoke-static {v3, v0}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    goto :goto_30

    :catchall_7
    :cond_36
    move-object v14, v5

    :goto_30
    if-eqz v14, :cond_3b

    invoke-static {v4, v14}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    new-instance v0, Ljava/io/File;

    invoke-virtual {v9}, Lcom/ex/auto/MainActivity;->E()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v2, v16

    if-gtz v2, :cond_37

    goto :goto_32

    :cond_37
    invoke-virtual {v9, v0}, Lcom/ex/auto/MainActivity;->H0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/ex/auto/MainActivity;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_38

    invoke-virtual {v9, v0}, Lcom/ex/auto/MainActivity;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_38

    const v2, 0x7f0f0112

    invoke-virtual {v9, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_38
    if-eqz v0, :cond_39

    const/16 v3, 0x8

    invoke-static {v3, v0}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    :cond_39
    const-string v0, "?"

    :goto_31
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f0f00d2

    invoke-virtual {v9, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_33

    :cond_3a
    :goto_32
    const v0, 0x7f0f00d1

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3b
    :goto_33
    iget-object v0, v9, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v8, Lw0/ja;

    move v11, v10

    move/from16 v13, v20

    invoke-direct/range {v8 .. v13}, Lw0/ja;-><init>(Lcom/ex/auto/MainActivity;ZZZZ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1a
    iget-object v0, v1, Lw0/ma;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->Y()V

    :cond_3c
    return-void

    :pswitch_1b
    iget-object v3, v1, Lw0/ma;->b:Lcom/ex/auto/MainActivity;

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {v3}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3d

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, "in\u00edcio \u2014 reiniciando AA/CarPlay"

    const/4 v9, 0x0

    invoke-static {v4, v0, v9}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/ex/auto/MainActivity;->l0:Z

    const v0, 0x7f0f02df

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v13}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0f02de

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lw0/e9;

    const/16 v0, 0xf

    invoke-direct {v11, v3, v0}, Lw0/e9;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v12, Lw0/e9;

    const/16 v9, 0x10

    invoke-direct {v12, v3, v9}, Lw0/e9;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v15, Lw0/h9;

    const/16 v0, 0xe

    invoke-direct {v15, v3, v0}, Lw0/h9;-><init>(Lcom/ex/auto/MainActivity;I)V

    const/16 v16, 0x400

    const/4 v4, 0x0

    const-wide/16 v6, 0x3a98

    const v8, 0xea60

    const-string v9, ""

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static/range {v3 .. v16}, Lcom/ex/auto/MainActivity;->J1(Lcom/ex/auto/MainActivity;Landroid/view/View;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Lh2/l;Lh2/l;ZLjava/lang/String;Lh2/a;I)V

    :cond_3d
    return-void

    :pswitch_1c
    iget-object v0, v1, Lw0/ma;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_3e

    goto :goto_34

    :cond_3e
    const v2, 0x7f0f02d0

    const/4 v5, 0x1

    invoke-static {v2, v5, v0, v13}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    :cond_3f
    :goto_34
    return-void

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
