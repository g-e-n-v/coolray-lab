.class public final Lw0/v1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lw0/v1;

.field public static final b:Ljava/util/UUID;

.field public static c:Landroid/bluetooth/BluetoothServerSocket;

.field public static volatile d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lw0/v1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lw0/v1;->a:Lw0/v1;

    sget-object v0, Lcom/ex/auto/Politica;->a:Lcom/ex/auto/Politica;

    invoke-static {}, Lcom/ex/auto/Politica;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v2, Lx1/b;

    invoke-direct {v2, v0}, Lx1/b;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v2

    :goto_0
    nop

    instance-of v2, v0, Lx1/b;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_1
    check-cast v1, Ljava/util/UUID;

    :cond_1
    sput-object v1, Lw0/v1;->b:Ljava/util/UUID;

    return-void
.end method

.method public static a(J)Z
    .locals 2

    :goto_0
    sget-boolean v0, Lw0/v1;->d:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr p0, v0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    return p0

    :cond_0
    sget-boolean p0, Lw0/v1;->d:Z

    return p0
.end method


# virtual methods
.method public final declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lw0/v1;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lw0/v1;->d:Z

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lw0/r0;

    invoke-direct {v2, v0}, Lw0/r0;-><init>(I)V

    const-string v3, "carplay-sdp"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    const-string v0, "CarplaySdp"

    const-string v1, "an\u00fancio SDP de CarPlay iniciado"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lw0/v1;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lw0/v1;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v0, Lw0/v1;->c:Landroid/bluetooth/BluetoothServerSocket;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_1
    const/4 v0, 0x0

    :try_start_3
    sput-object v0, Lw0/v1;->c:Landroid/bluetooth/BluetoothServerSocket;

    const-string v0, "CarplaySdp"

    const-string v1, "an\u00fancio SDP de CarPlay parado"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
