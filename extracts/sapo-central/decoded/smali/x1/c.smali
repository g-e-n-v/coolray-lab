.class public final Lx1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Lh2/a;

.field public volatile b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lh2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/c;->a:Lh2/a;

    sget-object p1, Lx1/e;->b:Lx1/e;

    iput-object p1, p0, Lx1/c;->b:Ljava/lang/Object;

    iput-object p0, p0, Lx1/c;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lx1/c;->b:Ljava/lang/Object;

    sget-object v1, Lx1/e;->b:Lx1/e;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lx1/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lx1/c;->b:Ljava/lang/Object;

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lx1/c;->a:Lh2/a;

    invoke-static {v1}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, Lh2/a;->a()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lx1/c;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lx1/c;->a:Lh2/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lx1/c;->b:Ljava/lang/Object;

    sget-object v1, Lx1/e;->b:Lx1/e;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lx1/c;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Lazy value not initialized yet."

    return-object v0
.end method
