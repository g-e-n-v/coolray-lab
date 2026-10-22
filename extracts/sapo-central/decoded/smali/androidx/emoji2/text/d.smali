.class public final Landroidx/emoji2/text/d;
.super La1/b;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/emoji2/text/e;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/d;->a:Landroidx/emoji2/text/e;

    return-void
.end method


# virtual methods
.method public final K(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/d;->a:Landroidx/emoji2/text/e;

    iget-object v0, v0, Landroidx/emoji2/text/e;->a:Landroidx/emoji2/text/k;

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/k;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final N(Landroidx/emoji2/text/t;)V
    .locals 4

    iget-object v0, p0, Landroidx/emoji2/text/d;->a:Landroidx/emoji2/text/e;

    iput-object p1, v0, Landroidx/emoji2/text/e;->c:Landroidx/emoji2/text/t;

    new-instance p1, Landroidx/activity/result/c;

    iget-object v1, v0, Landroidx/emoji2/text/e;->c:Landroidx/emoji2/text/t;

    iget-object v2, v0, Landroidx/emoji2/text/e;->a:Landroidx/emoji2/text/k;

    iget-object v2, v2, Landroidx/emoji2/text/k;->h:Landroidx/emoji2/text/c;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p1, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    iput-object v2, p1, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/emoji2/text/e;->b:Landroidx/activity/result/c;

    iget-object p1, v0, Landroidx/emoji2/text/e;->a:Landroidx/emoji2/text/k;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Landroidx/emoji2/text/k;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x1

    :try_start_0
    iput v1, p1, Landroidx/emoji2/text/k;->c:I

    iget-object v1, p1, Landroidx/emoji2/text/k;->b:Ll/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p1, Landroidx/emoji2/text/k;->b:Ll/c;

    invoke-virtual {v1}, Ll/c;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p1, Landroidx/emoji2/text/k;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v1, p1, Landroidx/emoji2/text/k;->d:Landroid/os/Handler;

    new-instance v2, Landroidx/emoji2/text/i;

    iget p1, p1, Landroidx/emoji2/text/k;->c:I

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Landroidx/emoji2/text/i;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    iget-object p1, p1, Landroidx/emoji2/text/k;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
