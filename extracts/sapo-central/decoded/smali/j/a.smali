.class public final Lj/a;
.super La1/b;
.source "SourceFile"


# static fields
.field public static volatile b:Lj/a;


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method public static e0()Lj/a;
    .locals 5

    sget-object v0, Lj/a;->b:Lj/a;

    if-eqz v0, :cond_0

    sget-object v0, Lj/a;->b:Lj/a;

    return-object v0

    :cond_0
    const-class v0, Lj/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lj/a;->b:Lj/a;

    if-nez v1, :cond_1

    new-instance v1, Lj/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lj/a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v2, Lj/a;->a:Ljava/lang/Object;

    new-instance v3, Lj/b;

    invoke-direct {v3}, Lj/b;-><init>()V

    const/4 v4, 0x4

    invoke-static {v4, v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    iput-object v2, v1, Lj/a;->a:Ljava/lang/Object;

    sput-object v1, Lj/a;->b:Lj/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lj/a;->b:Lj/a;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
