.class public final synthetic Lw0/j2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/CentralWatchdogService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/CentralWatchdogService;I)V
    .locals 0

    iput p2, p0, Lw0/j2;->a:I

    iput-object p1, p0, Lw0/j2;->b:Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    move-object/from16 v1, p0

    iget v0, v1, Lw0/j2;->a:I

    const-string v3, "CentralWatchdog"

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v6, "boot"

    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lw0/j2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0, v6}, Lcom/ex/auto/CentralWatchdogService;->G(Ljava/lang/String;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, v1, Lw0/j2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lw0/a2;

    invoke-direct {v3, v0, v6, v4}, Lw0/a2;-><init>(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, v1, Lw0/j2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lw0/r0;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v0}, Lw0/r0;-><init>(ILjava/lang/Object;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :pswitch_2
    iget-object v0, v1, Lw0/j2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_3

    invoke-virtual {v0, v6}, Lcom/ex/auto/CentralWatchdogService;->h0(Ljava/lang/String;)V

    :cond_3
    return-void

    :pswitch_3
    iget-object v0, v1, Lw0/j2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->J()V

    :cond_4
    return-void

    :pswitch_4
    iget-object v0, v1, Lw0/j2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_5

    invoke-virtual {v0, v5, v6}, Lcom/ex/auto/CentralWatchdogService;->g0(ILjava/lang/String;)V

    :cond_5
    return-void

    :pswitch_5
    iget-object v0, v1, Lw0/j2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "boot_stable"

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "boot est\u00e1vel confirmado"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :pswitch_6
    iget-object v0, v1, Lw0/j2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_7

    const-string v2, "d\u00edvida pendente"

    invoke-virtual {v0, v7, v2}, Lcom/ex/auto/CentralWatchdogService;->V(ILjava/lang/String;)V

    :cond_7
    return-void

    :pswitch_7
    iget-object v0, v1, Lw0/j2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_8

    const-string v2, "ctx"

    invoke-static {v0, v2}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ex/auto/PhoneSyncService;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    return-void

    :pswitch_8
    iget-object v0, v1, Lw0/j2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_9

    invoke-static {v0, v7}, Lcom/ex/auto/VhalProviderService;->c(Landroid/content/Context;Z)V

    :cond_9
    return-void

    :pswitch_9
    iget-object v0, v1, Lw0/j2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_a

    sget-boolean v2, Lw0/sd;->a:Z

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v0, v2}, Lw0/sd;->b(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    sget-boolean v2, Lw0/n0;->a:Z

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v0, v2}, Lw0/n0;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    :cond_a
    return-void

    :pswitch_a
    iget-object v0, v1, Lw0/j2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->Q0()V

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->s0()V

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->t0()V

    :cond_b
    return-void

    :pswitch_b
    sget-object v3, Lw0/fg;->c:Lw0/fg;

    sget-object v6, Lw0/fg;->b:Lw0/fg;

    sget-object v0, Lw0/j4;->a:Lw0/j4;

    iget-object v7, v1, Lw0/j2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v8, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-object v8, Lw0/d8;->a:Lw0/d8;

    invoke-virtual {v7}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v9

    :try_start_1
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v12, -0x1

    const-string v14, "hvac_digital_last_app_vc"

    invoke-interface {v9, v14, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    cmp-long v15, v12, v10

    if-nez v15, :cond_c

    goto/16 :goto_13

    :cond_c
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    invoke-interface {v15, v14, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v14, "https://raw.githubusercontent.com/swimapps/Outros/main/hvacdigital.json"

    invoke-static {v7, v14}, Lw0/t5;->a(Landroid/content/Context;Ljava/lang/String;)Lw0/s5;

    move-result-object v14

    const-string v2, "companion do Ar Digital mudou \u2014 reinstalado por cima: "

    const-string v17, "FALHOU (tenta no pr\u00f3ximo boot)"

    const-string v18, "OK"

    const-string v4, "hvac_digital_batt"

    const-string v15, "hvac_digital_temp"

    const-string v5, "companion mudou, mas n\u00e3o consegui trazer o novo \u2014 a c\u00f3pia que funciona FICA"

    move-object/from16 v19, v8

    const-string v8, "HvacDigital"

    if-eqz v14, :cond_16

    iget-wide v10, v14, Lw0/s5;->b:J

    const-string v12, "tela_preta_prefs"

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "hvac_digital_vc_baixado"

    move-object/from16 v20, v2

    const-wide/16 v1, 0x0

    invoke-interface {v12, v13, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    cmp-long v1, v12, v1

    if-lez v1, :cond_d

    move-object/from16 v1, v16

    goto :goto_1

    :cond_d
    const/4 v1, 0x0

    :goto_1
    iget-object v2, v14, Lw0/s5;->d:Ljava/lang/String;

    const-string v12, "pacote"

    invoke-static {v2, v12}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_2
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v2, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    const/4 v2, 0x0

    :goto_2
    sget-object v12, Lw0/d8;->a:Lw0/d8;

    const-string v13, "pm path com.flyme.auto.systemuiplugin"

    const/16 v14, 0x1f40

    invoke-static {v14, v13}, Lw0/d8;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "/data/app"

    move-object/from16 v16, v2

    const/4 v2, 0x0

    invoke-static {v13, v14, v2}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v13

    if-eqz v13, :cond_e

    goto :goto_3

    :cond_e
    const/16 v16, 0x0

    :goto_3
    if-nez v16, :cond_f

    move-object/from16 v16, v1

    :cond_f
    if-nez v16, :cond_10

    :goto_4
    move-object v2, v0

    goto :goto_5

    :cond_10
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v2, v13, v10

    if-nez v2, :cond_11

    goto :goto_4

    :cond_11
    sget-object v2, Lw0/j4;->b:Lw0/j4;

    :goto_5
    if-ne v2, v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "invalidateCacheIfAppUpdated: nada a confirmar (baixado="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " servidor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") \u2014 n\u00e3o mexe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    :cond_12
    sget-object v0, Lw0/ae;->a:Lw0/ae;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "companion do Ar Digital mudou (baixado vc="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " != servidor vc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x0

    invoke-static {v8, v0, v13}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    filled-new-array {v6, v3}, [Lw0/fg;

    move-result-object v0

    invoke-static {v0}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v12}, Lw0/d8;->e()Lw0/fg;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-static {v7, v2, v13, v1}, Lw0/d8;->d(Landroid/content/Context;Lh2/l;ZI)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-static {v8, v5, v13}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_13

    :cond_13
    if-eqz v0, :cond_21

    invoke-interface {v9, v15, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-interface {v9, v4, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_14
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v7, v2, v2, v1}, Lw0/d8;->b(Landroid/content/Context;Lh2/l;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_15

    move-object/from16 v0, v18

    :goto_6
    move-object/from16 v1, v20

    goto :goto_7

    :cond_15
    move-object/from16 v0, v17

    goto :goto_6

    :goto_7
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0, v13}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_13

    :cond_16
    move-object v1, v2

    invoke-static {}, Lw0/d8;->f()Ljava/lang/String;

    move-result-object v2

    const-string v14, " -> "

    move-object/from16 v20, v1

    const-string v1, "invalidateCacheIfAppUpdated: "

    if-nez v2, :cond_17

    sget-object v0, Lw0/b5;->a:Lw0/b5;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " \u2014 o servidor nao respondeu e o manifesto do GitHub nao existe mais; nao mexo em nada"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    :cond_17
    :try_start_3
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    move-object/from16 v21, v4

    :try_start_4
    const-string v4, "com.flyme.auto.systemuiplugin"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    move-object/from16 v22, v9

    const/4 v9, 0x0

    :try_start_5
    invoke-virtual {v0, v4, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    new-instance v9, Ljava/io/FileInputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    move-object/from16 v23, v15

    :try_start_6
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const/high16 v0, 0x10000

    :try_start_7
    new-array v0, v0, [B

    :goto_8
    invoke-virtual {v9, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-ltz v15, :cond_18

    move-object/from16 v24, v5

    const/4 v5, 0x0

    :try_start_8
    invoke-virtual {v4, v0, v5, v15}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v5, v24

    goto :goto_8

    :catchall_1
    move-exception v0

    :goto_9
    move-object v4, v0

    goto :goto_a

    :cond_18
    move-object/from16 v24, v5

    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const-string v4, "digest(...)"

    invoke-static {v0, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lw0/n2;

    const/16 v5, 0x16

    invoke-direct {v4, v5}, Lw0/n2;-><init>(I)V

    invoke-static {v0, v4}, Ly1/f;->b0([BLh2/l;)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_e

    :catchall_2
    move-exception v0

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object/from16 v24, v5

    goto :goto_9

    :goto_a
    :try_start_a
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_b
    invoke-static {v9, v4}, La1/b;->p(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_5
    move-exception v0

    move-object/from16 v24, v5

    goto :goto_d

    :catchall_6
    move-exception v0

    move-object/from16 v24, v5

    :goto_b
    move-object/from16 v23, v15

    goto :goto_d

    :catchall_7
    move-exception v0

    :goto_c
    move-object/from16 v24, v5

    move-object/from16 v22, v9

    goto :goto_b

    :catchall_8
    move-exception v0

    move-object/from16 v21, v4

    goto :goto_c

    :goto_d
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "installedSha: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", plugin instalado j\u00e1 \u00e9 o do manifesto \u2014 nada a fazer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    :cond_19
    const-string v4, "sha256sum \'/data/local/hvac-digital/sysui.apk\' 2>/dev/null | awk \'{print $1}\'"

    const/16 v5, 0x1f40

    invoke-static {v5, v4}, Lw0/d8;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[0-9a-fA-F]{64}"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    const-string v9, "compile(...)"

    invoke-static {v5, v9}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "input"

    invoke-static {v4, v9}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_1a

    goto :goto_f

    :cond_1a
    const/4 v4, 0x0

    :goto_f
    if-eqz v4, :cond_1b

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", companion sem mudan\u00e7a \u2014 nada a fazer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    :cond_1b
    if-eqz v0, :cond_1c

    sget-object v1, Lw0/ae;->a:Lw0/ae;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "companion do Ar Digital mudou (instalado "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x8

    invoke-static {v4, v0}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " != manifesto "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v2}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x0

    invoke-static {v8, v0, v13}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_10

    :cond_1c
    const/4 v13, 0x0

    :goto_10
    filled-new-array {v6, v3}, [Lw0/fg;

    move-result-object v0

    invoke-static {v0}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {v19 .. v19}, Lw0/d8;->e()Lw0/fg;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-static {v7, v2, v13, v1}, Lw0/d8;->d(Landroid/content/Context;Lh2/l;ZI)Z

    move-result v1

    if-nez v1, :cond_1d

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    move-object/from16 v1, v24

    invoke-static {v8, v1, v13}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_13

    :cond_1d
    if-eqz v0, :cond_20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v1, v2, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1e

    move-object/from16 v2, v21

    invoke-interface {v1, v2, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v7, v2, v2, v1}, Lw0/d8;->b(Landroid/content/Context;Lh2/l;Ljava/lang/String;I)Z

    move-result v0

    sget-object v1, Lw0/ae;->a:Lw0/ae;

    if-eqz v0, :cond_1f

    move-object/from16 v0, v18

    :goto_11
    move-object/from16 v1, v20

    goto :goto_12

    :cond_1f
    move-object/from16 v0, v17

    goto :goto_11

    :goto_12
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0, v13}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_13

    :cond_20
    const-string v0, "invalidateCacheIfAppUpdated: companion mudou, mas n\u00e3o estava instalado \u2014 s\u00f3 limpou a c\u00f3pia"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :cond_21
    :goto_13
    return-void

    :pswitch_c
    iget-object v0, v1, Lw0/j2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_22

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lw0/p2;

    const/4 v4, 0x3

    invoke-direct {v3, v0, v4}, Lw0/p2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_22
    return-void

    :pswitch_d
    iget-object v0, v1, Lw0/j2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_23

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lw0/p2;

    const/16 v4, 0x1b

    invoke-direct {v3, v0, v4}, Lw0/p2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_23
    return-void

    :pswitch_e
    iget-object v0, v1, Lw0/j2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_26

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "wifi_auto_enable_on_wake"

    const/4 v13, 0x0

    invoke-interface {v2, v3, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_14

    :cond_24
    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-object v4, v0, Lcom/ex/auto/CentralWatchdogService;->X:Lw0/p2;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput v13, v0, Lcom/ex/auto/CentralWatchdogService;->U:I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v3, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_25

    goto :goto_14

    :cond_25
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lw0/a2;

    const/16 v4, 0x8

    invoke-direct {v3, v0, v6, v4}, Lw0/a2;-><init>(Lcom/ex/auto/CentralWatchdogService;Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_26
    :goto_14
    return-void

    :pswitch_f
    iget-object v0, v1, Lw0/j2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_27

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lw0/p2;

    invoke-direct {v3, v0, v7}, Lw0/p2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_27
    return-void

    :pswitch_10
    iget-object v0, v1, Lw0/j2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_28

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->X()V

    :cond_28
    return-void

    :pswitch_11
    iget-object v0, v1, Lw0/j2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_29

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->Z()V

    :cond_29
    return-void

    :pswitch_12
    iget-object v0, v1, Lw0/j2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_2a

    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->b0:Ljava/lang/String;

    if-nez v2, :cond_2a

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lw0/p2;

    const/16 v4, 0x13

    invoke-direct {v3, v0, v4}, Lw0/p2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_2a
    return-void

    :pswitch_13
    iget-object v0, v1, Lw0/j2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    const v2, 0x7f0f02a5

    :try_start_c
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    :catchall_9
    return-void

    :pswitch_14
    iget-object v0, v1, Lw0/j2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->f0()V

    return-void

    :pswitch_15
    iget-object v0, v1, Lw0/j2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_2b

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->a0()V

    :cond_2b
    return-void

    :pswitch_16
    iget-object v0, v1, Lw0/j2;->b:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean v2, v0, Lcom/ex/auto/CentralWatchdogService;->W0:Z

    if-eqz v2, :cond_2c

    iget-object v2, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    iget-object v3, v0, Lcom/ex/auto/CentralWatchdogService;->b1:Lw0/a3;

    iget-wide v4, v0, Lcom/ex/auto/CentralWatchdogService;->T0:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2c
    return-void

    :pswitch_17
    iget-object v0, v1, Lw0/j2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    const-string v2, "j\u00e1 projetando"

    invoke-virtual {v0, v2}, Lcom/ex/auto/CentralWatchdogService;->R0(Ljava/lang/String;)V

    return-void

    :pswitch_18
    iget-object v0, v1, Lw0/j2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_2d

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->b0()V

    :cond_2d
    return-void

    :pswitch_19
    iget-object v0, v1, Lw0/j2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    const-string v2, "sem telefone Android conectado \u2014 acess\u00f3rios n\u00e3o iniciam proje\u00e7\u00e3o"

    invoke-virtual {v0, v2}, Lcom/ex/auto/CentralWatchdogService;->R0(Ljava/lang/String;)V

    return-void

    :pswitch_1a
    iget-object v0, v1, Lw0/j2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    const-string v2, "CarPlay em sess\u00e3o"

    invoke-virtual {v0, v2}, Lcom/ex/auto/CentralWatchdogService;->R0(Ljava/lang/String;)V

    return-void

    :pswitch_1b
    iget-object v0, v1, Lw0/j2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    :try_start_d
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    invoke-static {v0, v2}, Li2/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, "STA apos AP: Wi-Fi religado (era do usu\u00e1rio antes do hotspot)"

    const/4 v13, 0x0

    invoke-static {v3, v0, v13}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    goto :goto_15

    :catchall_a
    move-exception v0

    sget-object v2, Lw0/ae;->a:Lw0/ae;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "STA apos AP: falhou religar \u2014 "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x0

    invoke-static {v3, v0, v13}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_15
    return-void

    :pswitch_1c
    move v13, v5

    iget-object v0, v1, Lw0/j2;->b:Lcom/ex/auto/CentralWatchdogService;

    sget-boolean v2, Lcom/ex/auto/CentralWatchdogService;->U2:Z

    if-eqz v2, :cond_2f

    invoke-virtual {v0}, Lcom/ex/auto/CentralWatchdogService;->W()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "swc_media_control_enabled"

    invoke-interface {v2, v3, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2e

    goto :goto_16

    :cond_2e
    sget-object v2, Lw0/od;->a:Lw0/od;

    invoke-virtual {v2, v0}, Lw0/od;->p(Landroid/content/Context;)V

    iget-boolean v0, v0, Lcom/ex/auto/CentralWatchdogService;->Z1:Z

    invoke-static {v0}, Lw0/od;->o(Z)V

    :cond_2f
    :goto_16
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
