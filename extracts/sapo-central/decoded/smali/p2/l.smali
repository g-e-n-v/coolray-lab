.class public abstract Lp2/l;
.super Lp2/m;
.source "SourceFile"

# interfaces
.implements Lp2/i;


# static fields
.field public static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _delayed:Ljava/lang/Object;

.field private volatile synthetic _isCompleted:I

.field private volatile synthetic _queue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_queue"

    const-class v1, Lp2/l;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lp2/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_delayed"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lp2/c;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lp2/l;->_queue:Ljava/lang/Object;

    iput-object v0, p0, Lp2/l;->_delayed:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lp2/l;->_isCompleted:I

    return-void
.end method


# virtual methods
.method public final a(Lb2/h;Ljava/lang/Runnable;)V
    .locals 0

    check-cast p2, Lr2/a;

    invoke-virtual {p0, p2}, Lp2/l;->d(Lr2/a;)V

    return-void
.end method

.method public d(Lr2/a;)V
    .locals 4

    :goto_0
    iget-object v0, p0, Lp2/l;->_queue:Ljava/lang/Object;

    iget v1, p0, Lp2/l;->_isCompleted:I

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_3

    sget-object v1, Lp2/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_3
    instance-of v1, v0, Lr2/d;

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Lr2/d;

    invoke-virtual {v1, p1}, Lr2/d;->a(Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_b

    if-eq v3, v2, :cond_4

    const/4 v0, 0x2

    if-eq v3, v0, :cond_8

    goto :goto_0

    :cond_4
    sget-object v2, Lp2/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1}, Lr2/d;->e()Lr2/d;

    move-result-object v1

    :cond_5
    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v0, :cond_5

    goto :goto_0

    :cond_7
    sget-object v1, Lp2/n;->a:Landroidx/emoji2/text/m;

    if-ne v0, v1, :cond_9

    :cond_8
    :goto_1
    sget-object v0, Lp2/g;->c:Lp2/g;

    invoke-virtual {v0, p1}, Lp2/g;->d(Lr2/a;)V

    return-void

    :cond_9
    new-instance v1, Lr2/d;

    const/16 v3, 0x8

    invoke-direct {v1, v3, v2}, Lr2/d;-><init>(IZ)V

    move-object v2, v0

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lr2/d;->a(Ljava/lang/Object;)I

    invoke-virtual {v1, p1}, Lr2/d;->a(Ljava/lang/Object;)I

    sget-object v2, Lp2/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_a
    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_b
    :goto_2
    invoke-virtual {p0}, Lp2/m;->c()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p1, :cond_c

    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_c
    return-void

    :cond_d
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v0, :cond_a

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lp2/l;->_delayed:Ljava/lang/Object;

    if-nez v0, :cond_3

    iget-object v0, p0, Lp2/l;->_queue:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lr2/d;

    if-eqz v1, :cond_1

    check-cast v0, Lr2/d;

    invoke-virtual {v0}, Lr2/d;->d()Z

    move-result v0

    return v0

    :cond_1
    sget-object v1, Lp2/n;->a:Landroidx/emoji2/text/m;

    if-ne v0, v1, :cond_2

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method

.method public final f()J
    .locals 5

    sget-object v0, Lp2/n;->a:Landroidx/emoji2/text/m;

    iget-object v1, p0, Lp2/l;->_delayed:Ljava/lang/Object;

    if-nez v1, :cond_e

    :goto_0
    iget-object v1, p0, Lp2/l;->_queue:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v3, v1, Lr2/d;

    if-eqz v3, :cond_4

    move-object v2, v1

    check-cast v2, Lr2/d;

    invoke-virtual {v2}, Lr2/d;->f()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lr2/d;->g:Landroidx/emoji2/text/m;

    if-eq v3, v4, :cond_1

    move-object v2, v3

    check-cast v2, Ljava/lang/Runnable;

    goto :goto_1

    :cond_1
    sget-object v3, Lp2/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2}, Lr2/d;->e()Lr2/d;

    move-result-object v4

    :cond_2
    invoke-virtual {v3, p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_2

    goto :goto_0

    :cond_4
    if-ne v1, v0, :cond_5

    goto :goto_1

    :cond_5
    sget-object v3, Lp2/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_6
    invoke-virtual {v3, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object v2, v1

    check-cast v2, Ljava/lang/Runnable;

    :goto_1
    const-wide/16 v3, 0x0

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    return-wide v3

    :cond_7
    iget-object v1, p0, Lp2/l;->_queue:Ljava/lang/Object;

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    instance-of v2, v1, Lr2/d;

    if-eqz v2, :cond_b

    check-cast v1, Lr2/d;

    invoke-virtual {v1}, Lr2/d;->d()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    :goto_2
    iget-object v0, p0, Lp2/l;->_delayed:Ljava/lang/Object;

    if-nez v0, :cond_a

    goto :goto_3

    :cond_a
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_b
    if-ne v1, v0, :cond_c

    :goto_3
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_c
    :goto_4
    return-wide v3

    :cond_d
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v1, :cond_6

    goto :goto_0

    :cond_e
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lp2/l;->_queue:Ljava/lang/Object;

    iput-object v0, p0, Lp2/l;->_delayed:Ljava/lang/Object;

    return-void
.end method
