.class public final synthetic Lw0/z8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;I)V
    .locals 0

    iput p2, p0, Lw0/z8;->a:I

    iput-object p1, p0, Lw0/z8;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 33

    move-object/from16 v1, p0

    iget v0, v1, Lw0/z8;->a:I

    const/16 v2, 0xc

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lw0/z8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_0
    iget-object v0, v1, Lw0/z8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->L()V

    return-void

    :pswitch_1
    iget-object v0, v1, Lw0/z8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0, v4, v4}, Lcom/ex/auto/MainActivity;->J(ZZ)V

    return-void

    :pswitch_2
    iget-object v0, v1, Lw0/z8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->v1()V

    iput-boolean v5, v0, Lcom/ex/auto/MainActivity;->J0:Z

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->y1()V

    return-void

    :pswitch_3
    iget-object v0, v1, Lw0/z8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->v1()V

    return-void

    :pswitch_4
    iget-object v0, v1, Lw0/z8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0, v4, v4}, Lcom/ex/auto/MainActivity;->J(ZZ)V

    return-void

    :pswitch_5
    iget-object v0, v1, Lw0/z8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "gestures_enabled"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->j0()V

    iput-boolean v4, v0, Lcom/ex/auto/MainActivity;->h1:Z

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v0, Lcom/ex/auto/MainActivity;->f1:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->l1()V

    const v2, 0x7f0f05a7

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v5}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lw0/nb;

    invoke-direct {v3, v0, v5}, Lw0/nb;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_6
    iget-object v0, v1, Lw0/z8;->b:Lcom/ex/auto/MainActivity;

    iput-boolean v5, v0, Lcom/ex/auto/MainActivity;->h1:Z

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->l1()V

    return-void

    :pswitch_7
    iget-object v0, v1, Lw0/z8;->b:Lcom/ex/auto/MainActivity;

    iput-boolean v5, v0, Lcom/ex/auto/MainActivity;->h1:Z

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->l1()V

    return-void

    :pswitch_8
    iget-object v0, v1, Lw0/z8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f0f053a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/ex/auto/MainActivity;->Z1(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2, v5}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    return-void

    :pswitch_9
    iget-object v0, v1, Lw0/z8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "device_banned"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v2, Lw0/k5;->a:Lw0/k5;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "<get-prefs>(...)"

    invoke-static {v2, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/Thread;

    new-instance v6, Lw0/j5;

    invoke-direct {v6, v2, v3}, Lw0/j5;-><init>(Landroid/content/SharedPreferences;I)V

    invoke-direct {v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    const-string v7, "quick_access_enabled"

    const-string v8, "media_bar_floater_enabled"

    const-string v9, "widget_float_apps_enabled"

    const-string v10, "widget_float_drive_regen_enabled"

    const-string v11, "lyrics_floater_enabled"

    const-string v12, "temp_batt_pill_enabled"

    const-string v13, "app_pip_enabled"

    const-string v14, "phone_sync_enabled"

    filled-new-array/range {v7 .. v14}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-class v6, Lcom/ex/auto/QuickAccessFloaterService;

    const-class v7, Lcom/ex/auto/MediaBarFloaterService;

    const-class v8, Lcom/ex/auto/HomeFloatingWidgetsService;

    const-class v9, Lcom/ex/auto/HomeWidgetsPollService;

    const-class v10, Lcom/ex/auto/LyricsFloaterService;

    const-class v11, Lcom/ex/auto/TempBattPillFloaterService;

    const-class v12, Lcom/ex/auto/AppPipFloaterService;

    const-class v13, Lcom/ex/auto/BlackoutFloaterService;

    const-class v14, Lcom/ex/auto/DpadFloaterService;

    const-class v15, Lcom/ex/auto/SplitFloaterService;

    const-class v16, Lcom/ex/auto/WifiFloaterService;

    const-class v17, Lcom/ex/auto/ExSapoCastFloaterService;

    const-class v18, Lcom/ex/auto/PhoneSyncService;

    const-class v19, Lcom/ex/auto/VhalProviderService;

    const-class v20, Lcom/ex/auto/CentralWatchdogService;

    filled-new-array/range {v6 .. v20}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Ly1/f;->U([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catchall_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    :try_start_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    sget-object v2, Lw0/ae;->a:Lw0/ae;

    const-string v2, "Ban"

    const-string v3, "bloqueio aplicado \u2014 servi\u00e7os parados e recursos desligados"

    invoke-static {v2, v3, v5}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/app/Activity;->finishAffinity()V

    :goto_2
    return-void

    :pswitch_a
    iget-object v0, v1, Lw0/z8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f0f0253

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lw0/h9;

    const/16 v4, 0x8

    invoke-direct {v3, v0, v4}, Lw0/h9;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v0, v2, v5}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v4, La1/i;

    const/16 v5, 0x1d

    invoke-direct {v4, v3, v5, v0}, La1/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_b
    iget-object v0, v1, Lw0/z8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "aeb_restore_on_boot"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->v1()V

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-object v2, Lcom/ex/auto/CentralWatchdogService;->V2:Lcom/ex/auto/CentralWatchdogService;

    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v5, Lw0/v2;

    const/4 v6, 0x7

    invoke-direct {v5, v2, v6}, Lw0/v2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object v2, v0, Lcom/ex/auto/MainActivity;->M:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v2, :cond_4

    :try_start_1
    iget-object v3, v0, Lcom/ex/auto/MainActivity;->B:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v5, Lw0/j9;

    invoke-direct {v5, v2, v0, v4}, Lw0/j9;-><init>(Landroid/car/hardware/property/CarPropertyManager;Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_4
    return-void

    :pswitch_c
    iget-object v0, v1, Lw0/z8;->b:Lcom/ex/auto/MainActivity;

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->w0:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget-object v3, v0, Lcom/ex/auto/MainActivity;->v0:Ljava/lang/StringBuilder;

    const-string v4, "<this>"

    invoke-static {v3, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    const v2, 0x7f0f0219

    const-string v3, "getString(...)"

    invoke-static {v2, v5, v0, v3}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :pswitch_d
    iget-object v2, v1, Lw0/z8;->b:Lcom/ex/auto/MainActivity;

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Ficheiro guardado: "

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMdd-HHmmss"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "centralexauto-"

    const-string v7, ".txt"

    invoke-static {v6, v3, v7}, Landroidx/activity/result/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v6}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_5

    const v0, 0x7f0f0167

    const-string v3, "getString(...)"

    invoke-static {v0, v5, v2, v3}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_5
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_3
    iget-object v6, v2, Lcom/ex/auto/MainActivity;->w0:Ljava/lang/Object;

    monitor-enter v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-object v8, v2, Lcom/ex/auto/MainActivity;->v0:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    monitor-exit v6

    const-string v6, "synchronized(...)"

    invoke-static {v8, v6}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    sget-object v5, Lo2/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const-string v8, "getBytes(...)"

    invoke-static {v5, v8}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    const-string v5, "Log"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0x7f0f02ed

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getString(...)"

    invoke-static {v0, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v4}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_9
    invoke-static {v6, v3}, La1/b;->p(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :catchall_4
    move-exception v0

    monitor-exit v6

    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    :cond_6
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0x7f0f02ec

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getString(...)"

    invoke-static {v0, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v4}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    :goto_4
    return-void

    :pswitch_e
    iget-object v0, v1, Lw0/z8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0, v4}, Lcom/ex/auto/MainActivity;->R1(Z)V

    return-void

    :pswitch_f
    iget-object v0, v1, Lw0/z8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->C()V

    return-void

    :pswitch_10
    iget-object v3, v1, Lw0/z8;->b:Lcom/ex/auto/MainActivity;

    const-string v0, "/data/local/tmp/sons"

    invoke-static {v0}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\n            "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lw0/e8;->v()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n            echo \"== copiar \u00e1udios do pen-drive para sons/ ==\"\n            mkdir -p "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " 2>&1 || exit 20\n            chmod 755 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " 2>&1 || true\n            copied=0\n            for root in /storage/* /mnt/media_rw/* /mnt/usb* /mnt/media_rw/usb*; do\n              [ -d \"$root\" ] || continue\n              case \"$root\" in\n                /storage/emulated|/storage/self) continue ;;\n              esac\n              echo \"-- procurando em $root\"\n              for f in \"$root\"/*.wav \"$root\"/*.WAV \"$root\"/*.mp3 \"$root\"/*.MP3 \"$root\"/*.ogg \"$root\"/*.OGG \"$root\"/*.flac \"$root\"/*.FLAC \"$root\"/*.m4a \"$root\"/*.M4A \"$root\"/*.aac \"$root\"/*.AAC \\\n                        \"$root\"/*/*.wav \"$root\"/*/*.WAV \"$root\"/*/*.mp3 \"$root\"/*/*.MP3 \\\n                        \"$root\"/*/*.ogg \"$root\"/*/*.OGG \"$root\"/*/*.flac \"$root\"/*/*.FLAC \\\n                        \"$root\"/*/*.m4a \"$root\"/*/*.M4A \"$root\"/*/*.aac \"$root\"/*/*.AAC; do\n                [ -f \"$f\" ] || continue\n                base=${f##*/}\n                base=$(echo \"$base\" | tr \' \' \'_\')\n                echo \"copiando $f -> /data/local/tmp/sons/$base\"\n                cp -f \"$f\" "

    const-string v5, "/\"$base\" 2>&1\n                chown root:root "

    invoke-static {v2, v4, v0, v5, v0}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "/\"$base\" 2>/dev/null || true\n                chmod 644 "

    const-string v5, "/\"$base\" 2>/dev/null || true\n                restorecon -v "

    invoke-static {v2, v4, v0, v5, v0}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "/\"$base\" 2>/dev/null || true\n                copied=$((copied + 1))\n              done\n            done\n            echo \"copiados=$copied\"\n            ls -l "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2>&1 || true\n        "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const v0, 0x7f090133

    invoke-virtual {v3, v0}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f0f0148

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v2, "getString(...)"

    invoke-static {v5, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v12, Lw0/e9;

    const/16 v0, 0xa

    invoke-direct {v12, v3, v0}, Lw0/e9;-><init>(Lcom/ex/auto/MainActivity;I)V

    const/4 v15, 0x0

    const/16 v16, 0xe80

    const-wide/16 v6, 0xbb8

    const v8, 0xea60

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v3 .. v16}, Lcom/ex/auto/MainActivity;->J1(Lcom/ex/auto/MainActivity;Landroid/view/View;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Lh2/l;Lh2/l;ZLjava/lang/String;Lh2/a;I)V

    return-void

    :pswitch_11
    iget-object v0, v1, Lw0/z8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "speed_auto_lock_enabled"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v0, v5}, Lcom/ex/auto/MainActivity;->y(Z)V

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->y1()V

    return-void

    :pswitch_12
    iget-object v0, v1, Lw0/z8;->b:Lcom/ex/auto/MainActivity;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v6, "rvc_black_bg"

    invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-boolean v4, v0, Lcom/ex/auto/MainActivity;->Z0:Z

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v0, Lcom/ex/auto/MainActivity;->X0:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->v1()V

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const v3, 0x7f0f02e6

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(...)"

    invoke-static {v3, v4}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v5}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    iget-object v3, v0, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v4, Lw0/ma;

    invoke-direct {v4, v0, v2}, Lw0/ma;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_13
    iget-object v0, v1, Lw0/z8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->P0()V

    return-void

    :pswitch_14
    iget-object v0, v1, Lw0/z8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    sget-object v2, Lw0/ae;->a:Lw0/ae;

    const-string v2, "Reiniciar"

    const-string v3, "reboot pedido pelo bot\u00e3o da tela"

    invoke-static {v2, v3, v4}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lw0/ma;

    const/16 v4, 0xe

    invoke-direct {v3, v0, v4}, Lw0/ma;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_15
    iget-object v0, v1, Lw0/z8;->b:Lcom/ex/auto/MainActivity;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\n        TS=$(date +%Y%m%d-%H%M%S)\n        F=/sdcard/Download/aa_route_create_${TS}.txt\n        (\n          "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "tela_preta_prefs"

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "auto_proxy_enabled"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Lw0/t1;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n        ) 2>&1 | tee \"$F\"\n        echo \"Salvo: $F\"\n    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const v3, 0x7f0f014b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v3, "getString(...)"

    invoke-static {v7, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f0f014c

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lw0/e9;

    invoke-direct {v13, v0, v2}, Lw0/e9;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v14, Lw0/e9;

    const/16 v2, 0xd

    invoke-direct {v14, v0, v2}, Lw0/e9;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v2, Lw0/y2;

    const/16 v3, 0x9

    invoke-direct {v2, v0, v3, v11}, Lw0/y2;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const/16 v18, 0x600

    const/4 v6, 0x0

    const-wide/16 v8, 0xbb8

    const/16 v10, 0x7530

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v5, v0

    move-object/from16 v17, v2

    invoke-static/range {v5 .. v18}, Lcom/ex/auto/MainActivity;->J1(Lcom/ex/auto/MainActivity;Landroid/view/View;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Lh2/l;Lh2/l;ZLjava/lang/String;Lh2/a;I)V

    return-void

    :pswitch_16
    iget-object v0, v1, Lw0/z8;->b:Lcom/ex/auto/MainActivity;

    const-string v2, "getString(...)"

    iget v3, v0, Lcom/ex/auto/MainActivity;->c0:I

    iget-object v4, v0, Lcom/ex/auto/MainActivity;->D:Ljava/util/ArrayList;

    invoke-static {v4, v3}, Ly1/g;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_7

    const v3, 0x7f0f02cc

    invoke-static {v3, v5, v0, v2}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    const/16 v4, 0x2f

    invoke-static {v3, v4}, Lo2/k;->z0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lw0/u;->v:Ljava/lang/String;

    invoke-static {v5}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n            echo \"== apagando \u00e1udio: "

    const-string v8, " ==\"\n            TGT_INO=$(stat -c %i "

    const-string v9, " 2>/dev/null)\n            SRC_INO=$(stat -c %i "

    invoke-static {v7, v4, v8, v6, v9}, Landroidx/activity/result/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " 2>/dev/null)\n            if [ -n \"$SRC_INO\" ] && [ \"$TGT_INO\" = \"$SRC_INO\" ] && grep -F \" "

    const-string v9, " \" /proc/mounts >/dev/null 2>&1; then\n              umount "

    invoke-static {v7, v3, v8, v5, v9}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, " 2>/dev/null || umount -l "

    const-string v8, " 2>/dev/null || true\n              restorecon -v "

    invoke-static {v7, v6, v5, v6, v8}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, " 2>/dev/null || true\n              echo \"unbind_deste_audio\"\n            else\n              echo \"unbind_nao_necessario\"\n            fi\n            rm -f "

    const-string v8, " 2>&1 || exit 41\n            sync 2>/dev/null || true\n            if [ -f "

    invoke-static {v7, v6, v5, v3, v8}, Landroidx/activity/result/b;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ]; then echo \"FALHA_REMOVER\"; exit 42; else echo \"REMOVIDO_OK\"; fi\n        "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const v3, 0x7f0f0152

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f090136

    invoke-virtual {v0, v2}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v20

    new-instance v2, Lw0/e9;

    const/16 v4, 0xb

    invoke-direct {v2, v0, v4}, Lw0/e9;-><init>(Lcom/ex/auto/MainActivity;I)V

    const/16 v31, 0x0

    const/16 v32, 0xe80

    const-wide/16 v22, 0xbb8

    const/16 v24, 0x3a98

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v26, v3

    move-object/from16 v19, v0

    move-object/from16 v28, v2

    move-object/from16 v21, v3

    invoke-static/range {v19 .. v32}, Lcom/ex/auto/MainActivity;->J1(Lcom/ex/auto/MainActivity;Landroid/view/View;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Lh2/l;Lh2/l;ZLjava/lang/String;Lh2/a;I)V

    :goto_5
    return-void

    :pswitch_17
    iget-object v0, v1, Lw0/z8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->L0()V

    return-void

    :pswitch_18
    iget-object v0, v1, Lw0/z8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "keyserver_first_activate_warned"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->I1()V

    return-void

    :pswitch_19
    iget-object v0, v1, Lw0/z8;->b:Lcom/ex/auto/MainActivity;

    invoke-static {v0, v3}, Lcom/ex/auto/MainActivity;->K(Lcom/ex/auto/MainActivity;I)V

    return-void

    :pswitch_1a
    iget-object v0, v1, Lw0/z8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "crash_action"

    const-string v4, "disable_all"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :pswitch_1b
    iget-object v0, v1, Lw0/z8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ex/auto/CentralWatchdogService;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "crash_action"

    const-string v4, "resume"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
