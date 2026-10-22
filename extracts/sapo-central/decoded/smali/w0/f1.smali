.class public final Lw0/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/ex/auto/CentralWatchdogService;

.field public final b:Landroid/content/SharedPreferences;

.field public final c:Landroid/os/Handler;

.field public final d:Ljava/util/concurrent/ExecutorService;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Lw0/y0;

.field public g:Landroid/car/Car;

.field public h:Landroid/car/hardware/property/CarPropertyManager;

.field public i:I

.field public j:Z

.field public final k:[I

.field public final l:Lw0/a1;

.field public final m:Lw0/e1;

.field public final n:Landroidx/activity/d;


# direct methods
.method public constructor <init>(Lcom/ex/auto/CentralWatchdogService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/f1;->a:Lcom/ex/auto/CentralWatchdogService;

    const-string v0, "tela_preta_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lw0/f1;->b:Landroid/content/SharedPreferences;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lw0/f1;->c:Landroid/os/Handler;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lw0/f1;->d:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lw0/f1;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Lw0/y0;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/f1;->f:Lw0/y0;

    const p1, 0x11400400

    const v0, 0x11400401

    filled-new-array {p1, v0}, [I

    move-result-object p1

    iput-object p1, p0, Lw0/f1;->k:[I

    new-instance p1, Lw0/a1;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Lw0/a1;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lw0/f1;->l:Lw0/a1;

    new-instance p1, Lw0/e1;

    invoke-direct {p1, v0, p0}, Lw0/e1;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lw0/f1;->m:Lw0/e1;

    new-instance p1, Landroidx/activity/d;

    const/16 v0, 0xd

    invoke-direct {p1, v0, p0}, Landroidx/activity/d;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lw0/f1;->n:Landroidx/activity/d;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw0/f1;->j:Z

    iget v1, p0, Lw0/f1;->i:I

    add-int/2addr v1, v0

    iput v1, p0, Lw0/f1;->i:I

    iget-object v0, p0, Lw0/f1;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lw0/f1;->l:Lw0/a1;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v0, p0, Lw0/f1;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lw0/f1;->h:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lw0/f1;->m:Lw0/e1;

    invoke-virtual {v0, v2}, Landroid/car/hardware/property/CarPropertyManager;->unregisterCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iput-object v1, p0, Lw0/f1;->h:Landroid/car/hardware/property/CarPropertyManager;

    :try_start_1
    iget-object v0, p0, Lw0/f1;->g:Landroid/car/Car;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/car/Car;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    iput-object v1, p0, Lw0/f1;->g:Landroid/car/Car;

    iget-object v0, p0, Lw0/f1;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method public final b()V
    .locals 6

    iget v0, p0, Lw0/f1;->i:I

    :try_start_0
    iget-object v1, p0, Lw0/f1;->a:Lcom/ex/auto/CentralWatchdogService;

    iget-object v2, p0, Lw0/f1;->c:Landroid/os/Handler;

    new-instance v3, Lw0/z0;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v4}, Lw0/z0;-><init>(Ljava/lang/Object;II)V

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v4, v5, v3}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/os/Handler;JLandroid/car/Car$CarServiceLifecycleListener;)Landroid/car/Car;

    move-result-object v0

    iput-object v0, p0, Lw0/f1;->g:Landroid/car/Car;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lw0/f1;->g:Landroid/car/Car;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Conex\u00e3o Car indispon\u00edvel: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraOnDrive"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final c()Z
    .locals 3

    sget-object v0, Lw0/wd;->a:Lw0/wd;

    iget-object v0, p0, Lw0/f1;->a:Lcom/ex/auto/CentralWatchdogService;

    invoke-static {v0}, Lw0/wd;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lw0/f1;->b:Landroid/content/SharedPreferences;

    const-string v2, "camera_on_drive"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public final d()V
    .locals 3

    iget-boolean v0, p0, Lw0/f1;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lw0/f1;->c()Z

    move-result v0

    iget-object v1, p0, Lw0/f1;->n:Landroidx/activity/d;

    iget-object v2, p0, Lw0/f1;->c:Landroid/os/Handler;

    if-nez v0, :cond_3

    iget v0, p0, Lw0/f1;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lw0/f1;->i:I

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :try_start_0
    iget-object v0, p0, Lw0/f1;->h:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lw0/f1;->m:Lw0/e1;

    invoke-virtual {v0, v1}, Landroid/car/hardware/property/CarPropertyManager;->unregisterCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lw0/f1;->h:Landroid/car/hardware/property/CarPropertyManager;

    :try_start_1
    iget-object v1, p0, Lw0/f1;->g:Landroid/car/Car;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/car/Car;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    iput-object v0, p0, Lw0/f1;->g:Landroid/car/Car;

    iget-object v0, p0, Lw0/f1;->f:Lw0/y0;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lw0/y0;->a:Z

    return-void

    :cond_3
    iget-object v0, p0, Lw0/f1;->g:Landroid/car/Car;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lw0/f1;->b()V

    :cond_4
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Lw0/f1;->h:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lw0/f1;->j:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lw0/f1;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lw0/f1;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p0, Lw0/f1;->i:I

    new-instance v2, Lw0/v;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v1, v3}, Lw0/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    iget-object v0, p0, Lw0/f1;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method
