.class public final synthetic Lw0/ed;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/a;


# instance fields
.field public final synthetic a:Lcom/ex/auto/MediaBarFloaterService;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lw0/dd;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MediaBarFloaterService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lw0/dd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/ed;->a:Lcom/ex/auto/MediaBarFloaterService;

    iput-object p2, p0, Lw0/ed;->b:Ljava/lang/String;

    iput-object p3, p0, Lw0/ed;->c:Ljava/lang/String;

    iput-object p4, p0, Lw0/ed;->d:Ljava/lang/String;

    iput-object p5, p0, Lw0/ed;->e:Lw0/dd;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 12

    sget-object v0, Lcom/ex/auto/MediaBarFloaterService;->v:Ljava/util/Set;

    sget-object v0, Lw0/cg;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lw0/q1;

    const/4 v0, 0x4

    iget-object v1, p0, Lw0/ed;->e:Lw0/dd;

    invoke-direct {v7, v0, v1}, Lw0/q1;-><init>(ILjava/lang/Object;)V

    iget-object v2, p0, Lw0/ed;->b:Ljava/lang/String;

    invoke-static {v2}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v3, p0, Lw0/ed;->c:Ljava/lang/String;

    invoke-static {v3}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v4, p0, Lw0/ed;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v4}, Lo2/k;->m0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_0
    invoke-static {v2, v3, v4}, Lw0/m;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lw0/ed;->a:Lcom/ex/auto/MediaBarFloaterService;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-static {v6, v5}, Lw0/cg;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v7, v0}, Lw0/q1;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    sget-object v0, Lw0/cg;->f:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v7, v1}, Lw0/q1;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-object v0, Lw0/cg;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_0

    :cond_3
    const-wide/16 v10, 0x0

    :goto_0
    cmp-long v0, v8, v10

    if-gez v0, :cond_4

    invoke-virtual {v7, v1}, Lw0/q1;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    sget-object v0, Lw0/cg;->h:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v7, v1}, Lw0/q1;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    sget-object v0, Lw0/cg;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lw0/ag;

    invoke-direct/range {v1 .. v7}, Lw0/ag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lw0/q1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v7, v1}, Lw0/q1;->c(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0
.end method
