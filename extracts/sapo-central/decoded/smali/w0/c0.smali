.class public final synthetic Lw0/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V
    .locals 0

    .line 1
    iput p4, p0, Lw0/c0;->a:I

    iput-object p1, p0, Lw0/c0;->c:Ljava/lang/Object;

    iput-object p2, p0, Lw0/c0;->d:Ljava/lang/Object;

    iput-boolean p3, p0, Lw0/c0;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ZLjava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, Lw0/c0;->a:I

    iput-object p1, p0, Lw0/c0;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lw0/c0;->b:Z

    iput-object p3, p0, Lw0/c0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLandroid/content/ContextWrapper;Ljava/lang/Object;I)V
    .locals 0

    .line 3
    iput p4, p0, Lw0/c0;->a:I

    iput-boolean p1, p0, Lw0/c0;->b:Z

    iput-object p2, p0, Lw0/c0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lw0/c0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget v0, p0, Lw0/c0;->a:I

    const-wide/16 v1, 0xbb8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/c0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    iget-object v6, p0, Lw0/c0;->d:Ljava/lang/Object;

    check-cast v6, Landroid/car/Car;

    iget-boolean v7, p0, Lw0/c0;->b:Z

    const-string v8, "DriveRegenFloater"

    iget-object v9, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->v:La1/d;

    iget-object v9, v9, La1/d;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v9

    iget-object v11, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->u:Landroid/os/Handler;

    if-eqz v11, :cond_0

    iget-object v12, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->I:Landroidx/activity/d;

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v12, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->q:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v12, :cond_1

    :try_start_0
    iget-object v13, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->L:Lw0/e1;

    invoke-virtual {v12, v13}, Landroid/car/hardware/property/CarPropertyManager;->unregisterCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->v:La1/d;

    iget-boolean v7, v7, La1/d;->b:Z

    if-eqz v7, :cond_2

    goto/16 :goto_2

    :cond_2
    :try_start_1
    iput-object v6, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->p:Landroid/car/Car;

    const-string v7, "property"

    invoke-virtual {v6, v7}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/car/hardware/property/CarPropertyManager;

    iput-object v6, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->q:Landroid/car/hardware/property/CarPropertyManager;

    const-string v6, "Car OK"

    invoke-virtual {v0, v6}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->q(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->q:Landroid/car/hardware/property/CarPropertyManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    :try_start_2
    iget-object v6, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->q:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v7, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->L:Lw0/e1;

    const v12, 0x11400400

    const/4 v13, 0x0

    invoke-virtual {v6, v7, v12, v13}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v6

    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, "registerGearCallback failed: "

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->m()V

    const-string v6, "car_ready"

    invoke-virtual {v0, v6}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->c(Ljava/lang/String;)V

    if-eqz v11, :cond_6

    iget-object v6, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->v:La1/d;

    iget-boolean v7, v6, La1/d;->b:Z

    if-nez v7, :cond_4

    iget-object v6, v6, La1/d;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    cmp-long v6, v6, v9

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    move v4, v5

    :goto_1
    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->I:Landroidx/activity/d;

    invoke-virtual {v11, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    iput-object v3, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->q:Landroid/car/hardware/property/CarPropertyManager;

    const-string v2, "car ready"

    invoke-static {v8, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Erro Car: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->q(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    :goto_2
    iput-object v3, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->q:Landroid/car/hardware/property/CarPropertyManager;

    const-string v1, "Car desconectado"

    invoke-virtual {v0, v1}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->q(Ljava/lang/String;)V

    :cond_6
    :goto_3
    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/c0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/QuickAccessFloaterService;

    iget-object v1, p0, Lw0/c0;->d:Ljava/lang/Object;

    check-cast v1, Landroid/car/hardware/property/CarPropertyManager;

    iget-boolean v2, p0, Lw0/c0;->b:Z

    iget-boolean v3, v0, Lcom/ex/auto/QuickAccessFloaterService;->M:Z

    if-eqz v3, :cond_7

    goto :goto_6

    :cond_7
    sget-object v3, Lw0/p1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v3, Lcom/ex/auto/QuickAccessFloaterService;->u0:I

    invoke-static {v1, v3, v5}, Lw0/p1;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    move v4, v5

    :goto_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_5

    :cond_9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_5
    iput-object v1, v0, Lcom/ex/auto/QuickAccessFloaterService;->u:Ljava/lang/Boolean;

    iget-object v1, v0, Lcom/ex/auto/QuickAccessFloaterService;->u:Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->r()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "aeb_state_saved"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_a
    iget-object v1, v0, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v2, Lw0/ve;

    const/16 v3, 0x10

    invoke-direct {v2, v3, v0}, Lw0/ve;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_6
    return-void

    :pswitch_1
    iget-object v0, p0, Lw0/c0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lw0/c0;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-boolean v2, p0, Lw0/c0;->b:Z

    sget-object v3, Lw0/ae;->a:Lw0/ae;

    const-string v5, "n\u00e3o consegui gravar em "

    const-string v6, "== log podado (mantida a metade mais recente) ==\n"

    monitor-enter v3

    :try_start_4
    invoke-static {}, Lw0/ae;->a()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    const/16 v9, 0xa

    if-eqz v8, :cond_c

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-wide/32 v12, 0x40000

    cmp-long v8, v10, v12

    if-lez v8, :cond_c

    :try_start_5
    invoke-static {v7}, Lf2/d;->h0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    const/4 v11, 0x4

    invoke-static {v8, v9, v10, v11}, Lo2/k;->j0(Ljava/lang/CharSequence;CII)I

    move-result v11

    if-gez v11, :cond_b

    goto :goto_7

    :cond_b
    add-int/lit8 v10, v11, 0x1

    :goto_7
    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "substring(...)"

    invoke-static {v8, v10}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lf2/d;->i0(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_8

    :catchall_0
    :try_start_6
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_b

    :catchall_2
    :cond_c
    :goto_8
    :try_start_7
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_d

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lw0/ae;->c:Ljava/text/SimpleDateFormat;

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lo2/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "getBytes(...)"

    invoke-static {v0, v1}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    if-eqz v2, :cond_e

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v0

    goto :goto_a

    :cond_e
    :goto_9
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_c

    :goto_a
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v2

    :try_start_b
    invoke-static {v1, v0}, La1/b;->p(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :goto_b
    :try_start_c
    const-string v1, "PersistLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lw0/ae;->a()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :goto_c
    monitor-exit v3

    return-void

    :catchall_5
    move-exception v0

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v0

    :pswitch_2
    iget-boolean v0, p0, Lw0/c0;->b:Z

    iget-object v3, p0, Lw0/c0;->c:Ljava/lang/Object;

    check-cast v3, Lcom/ex/auto/MediaBarFloaterService;

    iget-object v4, p0, Lw0/c0;->d:Ljava/lang/Object;

    check-cast v4, Landroidx/activity/d;

    iget-boolean v5, v3, Lcom/ex/auto/MediaBarFloaterService;->t:Z

    if-eq v0, v5, :cond_11

    iput-boolean v0, v3, Lcom/ex/auto/MediaBarFloaterService;->t:Z

    const-string v5, "MediaBarFloater"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "smartbar escondida: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " \u2014 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_f

    const-string v7, "escondendo"

    goto :goto_d

    :cond_f
    const-string v7, "liberando"

    :goto_d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " o floater"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_10

    invoke-virtual {v3}, Lcom/ex/auto/MediaBarFloaterService;->b()V

    goto :goto_e

    :cond_10
    invoke-virtual {v3}, Lcom/ex/auto/MediaBarFloaterService;->e()V

    :cond_11
    :goto_e
    iget-object v0, v3, Lcom/ex/auto/MediaBarFloaterService;->c:Landroid/os/Handler;

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_3
    iget-boolean v0, p0, Lw0/c0;->b:Z

    iget-object v1, p0, Lw0/c0;->c:Ljava/lang/Object;

    check-cast v1, Lcom/ex/auto/MainActivity;

    iget-object v2, p0, Lw0/c0;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget v4, Lcom/ex/auto/MainActivity;->z1:I

    if-eqz v0, :cond_12

    new-instance v0, Le/h;

    invoke-direct {v0, v1}, Le/h;-><init>(Landroid/content/Context;)V

    iget-object v2, v0, Le/h;->b:Ljava/lang/Object;

    check-cast v2, Le/d;

    const v4, 0x7f0f019f

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Le/d;->d:Ljava/lang/CharSequence;

    const v4, 0x7f0f01a7

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Le/d;->f:Ljava/lang/CharSequence;

    const v4, 0x7f0f0038

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    iput-boolean v5, v2, Le/d;->m:Z

    invoke-virtual {v0}, Le/h;->h()Le/i;

    goto :goto_f

    :cond_12
    invoke-virtual {v1, v2, v5}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    :goto_f
    return-void

    :pswitch_4
    iget-object v0, p0, Lw0/c0;->c:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/property/CarPropertyManager;

    iget-boolean v1, p0, Lw0/c0;->b:Z

    iget-object v2, p0, Lw0/c0;->d:Ljava/lang/Object;

    check-cast v2, Lcom/ex/auto/MainActivity;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    sget v3, Lw0/u;->a:I

    invoke-static {v0, v3, v5, v1}, Lw0/p1;->l(Landroid/car/hardware/property/CarPropertyManager;III)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v4, "AEB"

    const-string v5, "setIntProperty AEB falhou"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :try_start_e
    iget-object v4, v2, Lcom/ex/auto/MainActivity;->z:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v5, Lw0/sa;

    invoke-direct {v5, v3, v0, v2, v1}, Lw0/sa;-><init>(ZLandroid/car/hardware/property/CarPropertyManager;Lcom/ex/auto/MainActivity;Z)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x15e

    invoke-virtual {v4, v5, v1, v2, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_e
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_e .. :try_end_e} :catch_3

    :catch_3
    return-void

    :pswitch_5
    iget-object v0, p0, Lw0/c0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/InstallerActivity;

    iget-boolean v1, p0, Lw0/c0;->b:Z

    iget-object v2, p0, Lw0/c0;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget v3, Lcom/ex/auto/InstallerActivity;->v:I

    invoke-virtual {v0, v2, v1}, Lcom/ex/auto/InstallerActivity;->w(Ljava/lang/String;Z)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lw0/c0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/AppPipFloaterService;

    iget-boolean v1, p0, Lw0/c0;->b:Z

    iget-object v2, p0, Lw0/c0;->d:Ljava/lang/Object;

    check-cast v2, Lw0/lg;

    sget-object v3, Lcom/ex/auto/AppPipFloaterService;->x:Lcom/ex/auto/AppPipFloaterService;

    invoke-virtual {v0}, Lcom/ex/auto/AppPipFloaterService;->l()V

    if-nez v1, :cond_14

    if-nez v2, :cond_14

    sget-object v1, Lw0/og;->a:Lo2/h;

    sget-object v1, Lw0/og;->f:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f0f0088

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ex/auto/AppPipFloaterService;->k(Ljava/lang/String;)Z

    :cond_14
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
