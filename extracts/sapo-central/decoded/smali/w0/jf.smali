.class public final synthetic Lw0/jf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Landroid/content/ContextWrapper;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContextWrapper;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lw0/jf;->a:I

    iput-object p1, p0, Lw0/jf;->c:Landroid/content/ContextWrapper;

    iput-boolean p2, p0, Lw0/jf;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/ex/auto/QuickAccessFloaterService;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lw0/jf;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lw0/jf;->b:Z

    iput-object p2, p0, Lw0/jf;->c:Landroid/content/ContextWrapper;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    iget v0, v1, Lw0/jf;->a:I

    const/4 v2, 0x0

    const-string v3, "QuickAccessFloater"

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lw0/jf;->c:Landroid/content/ContextWrapper;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-boolean v2, v1, Lw0/jf;->b:Z

    move-object/from16 v3, p1

    check-cast v3, Ljava/lang/String;

    sget v4, Lcom/ex/auto/MainActivity;->z1:I

    const-string v4, "result"

    invoke-static {v3, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "Falha no ADB local"

    invoke-static {v3, v4, v5}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "adb_gpio_enabled"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->d1()V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_0
    iget-boolean v0, v1, Lw0/jf;->b:Z

    iget-object v5, v1, Lw0/jf;->c:Landroid/content/ContextWrapper;

    check-cast v5, Lcom/ex/auto/QuickAccessFloaterService;

    move-object/from16 v6, p1

    check-cast v6, Landroid/car/hardware/property/CarPropertyManager;

    sget v7, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    const-string v7, "manager"

    invoke-static {v6, v7}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget v7, Lcom/ex/auto/QuickAccessFloaterService;->u0:I

    invoke-static {v6, v7, v4, v0}, Lw0/p1;->l(Landroid/car/hardware/property/CarPropertyManager;III)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v0, "AEB write: escrita falhou"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, v5, Lcom/ex/auto/QuickAccessFloaterService;->u:Ljava/lang/Boolean;

    iget-object v0, v5, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v2, Lw0/ve;

    const/16 v3, 0xe

    invoke-direct {v2, v3, v5}, Lw0/ve;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v2, v5, Lcom/ex/auto/QuickAccessFloaterService;->O:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v3, Lw0/c0;

    const/4 v4, 0x6

    invoke-direct {v3, v5, v6, v0, v4}, Lw0/c0;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v3, v4, v5, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_1
    iget-object v0, v1, Lw0/jf;->c:Landroid/content/ContextWrapper;

    check-cast v0, Lcom/ex/auto/QuickAccessFloaterService;

    iget-boolean v6, v1, Lw0/jf;->b:Z

    move-object/from16 v7, p1

    check-cast v7, Landroid/car/hardware/property/CarPropertyManager;

    sget v8, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    const-string v8, "cpm"

    invoke-static {v7, v8}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v0, Lcom/ex/auto/QuickAccessFloaterService;->L:Landroid/car/media/CarAudioManager;

    if-nez v8, :cond_2

    const-string v0, "toggleAvas: CarAudioManager indispon\u00edvel"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_2
    const-string v9, "avas_mode_ativo"

    const-string v10, "avas_sound_type_saved"

    const/4 v11, -0x1

    if-eqz v6, :cond_7

    :try_start_1
    sget-object v12, Lw0/u;->c:[I

    array-length v13, v12

    move v14, v4

    :goto_1
    if-ge v14, v13, :cond_4

    aget v15, v12, v14

    sget-object v16, Lw0/p1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v4, Lw0/u;->b:I

    invoke-static {v7, v4, v15}, Lw0/p1;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->r()Landroid/content/SharedPreferences;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12, v10, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :cond_3
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    :goto_2
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v12, "getAVASMode"

    invoke-virtual {v4, v12, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v8, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v12, v4, Ljava/lang/Integer;

    if-eqz v12, :cond_5

    move-object v2, v4

    check-cast v2, Ljava/lang/Integer;

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    :cond_6
    move v2, v11

    :goto_3
    :try_start_3
    invoke-static {v2}, Lw0/t1;->R(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->r()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v9, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_7
    if-eqz v6, :cond_8

    const/4 v5, 0x0

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->r()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->r()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v9, 0x4

    if-gt v5, v2, :cond_9

    if-ge v2, v9, :cond_9

    move v5, v2

    goto :goto_4

    :cond_9
    if-gt v5, v4, :cond_a

    if-ge v4, v9, :cond_a

    move v5, v4

    :cond_a
    :goto_4
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setAVASMode"

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v9}, [Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v2, v4, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v8, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v6, :cond_b

    invoke-virtual {v0}, Lcom/ex/auto/QuickAccessFloaterService;->r()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_b

    sget-object v2, Lw0/u;->c:[I

    array-length v4, v2

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v4, :cond_b

    aget v6, v2, v5

    sget v8, Lw0/u;->b:I

    invoke-static {v7, v8, v6, v0}, Lw0/p1;->l(Landroid/car/hardware/property/CarPropertyManager;III)Z

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-nez v6, :cond_b

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "toggleAvas: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v3}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_b
    :goto_7
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
