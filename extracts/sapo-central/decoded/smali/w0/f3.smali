.class public final Lw0/f3;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/ex/auto/CentralWatchdogService;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/ex/auto/CentralWatchdogService;Ljava/util/List;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lw0/f3;->a:Lcom/ex/auto/CentralWatchdogService;

    iput-object p2, p0, Lw0/f3;->b:Ljava/util/List;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0}, Lw0/f3;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lw0/f3;->a:Lcom/ex/auto/CentralWatchdogService;

    iget-boolean v0, p1, Lcom/ex/auto/CentralWatchdogService;->E0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 3
    :goto_0
    const-string v0, "CentralWatchdog"

    if-eqz p2, :cond_4

    .line 4
    iget-object v1, p0, Lw0/f3;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    .line 6
    invoke-static {p2, v2, v3}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7
    const-string p1, "brilho: ignorando mudan\u00e7a nossa em "

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8
    :cond_4
    :goto_1
    sget-object v1, Lw0/ae;->a:Lw0/ae;

    if-nez p2, :cond_5

    const-string p2, "Settings (sem URI)"

    :cond_5
    const-string v1, "brilho: restaurando \u2014 mudan\u00e7a em "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    .line 9
    invoke-static {v0, p2, v1}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 10
    invoke-virtual {p1}, Lcom/ex/auto/CentralWatchdogService;->x0()V

    return-void
.end method
