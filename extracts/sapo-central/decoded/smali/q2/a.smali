.class public final Lq2/a;
.super Lp2/p;
.source "SourceFile"

# interfaces
.implements Lp2/i;


# instance fields
.field private volatile _immediate:Lq2/a;

.field public final b:Landroid/os/Handler;

.field public final c:Z

.field public final d:Lq2/a;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Z)V
    .locals 1

    invoke-direct {p0}, Lp2/c;-><init>()V

    iput-object p1, p0, Lq2/a;->b:Landroid/os/Handler;

    iput-boolean p2, p0, Lq2/a;->c:Z

    if-eqz p2, :cond_0

    move-object p2, p0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lq2/a;->_immediate:Lq2/a;

    iget-object p2, p0, Lq2/a;->_immediate:Lq2/a;

    if-nez p2, :cond_1

    new-instance p2, Lq2/a;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lq2/a;-><init>(Landroid/os/Handler;Z)V

    iput-object p2, p0, Lq2/a;->_immediate:Lq2/a;

    :cond_1
    iput-object p2, p0, Lq2/a;->d:Lq2/a;

    return-void
.end method


# virtual methods
.method public final a(Lb2/h;Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lq2/a;->b:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    check-cast p1, Lr2/a;

    check-cast p2, Lr2/a;

    new-instance v0, Ljava/util/concurrent/CancellationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The task was rejected, the handler underlying the dispatcher \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' was closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    sget-object v0, Lp2/d;->b:Lp2/d;

    invoke-virtual {p1, v0}, Lp2/c;->get(Lb2/g;)Lb2/f;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lp2/k;->a:Lkotlinx/coroutines/scheduling/c;

    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/scheduling/c;->a(Lb2/h;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 2

    iget-boolean v0, p0, Lq2/a;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lq2/a;->b:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lq2/a;

    if-eqz v0, :cond_0

    check-cast p1, Lq2/a;

    iget-object p1, p1, Lq2/a;->b:Landroid/os/Handler;

    iget-object v0, p0, Lq2/a;->b:Landroid/os/Handler;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lq2/a;->b:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lp2/k;->a:Lkotlinx/coroutines/scheduling/c;

    sget-object v0, Lr2/f;->a:Lp2/p;

    if-ne p0, v0, :cond_0

    const-string v0, "Dispatchers.Main"

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    check-cast v0, Lq2/a;

    iget-object v0, v0, Lq2/a;->d:Lq2/a;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :goto_0
    if-ne p0, v0, :cond_1

    const-string v0, "Dispatchers.Main.immediate"

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lq2/a;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lq2/a;->c:Z

    if-eqz v1, :cond_2

    const-string v1, ".immediate"

    invoke-static {v1, v0}, Li2/g;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method
