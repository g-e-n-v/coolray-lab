.class public final Landroidx/activity/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Ljava/util/ArrayDeque;

.field public final c:Landroidx/activity/j;

.field public final d:Landroid/window/OnBackInvokedCallback;

.field public e:Landroid/window/OnBackInvokedDispatcher;

.field public f:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/activity/n;->b:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/activity/n;->f:Z

    iput-object p1, p0, Landroidx/activity/n;->a:Ljava/lang/Runnable;

    invoke-static {}, Lk1/a;->E()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/activity/j;

    invoke-direct {p1, p0}, Landroidx/activity/j;-><init>(Landroidx/activity/n;)V

    iput-object p1, p0, Landroidx/activity/n;->c:Landroidx/activity/j;

    new-instance p1, La1/r;

    const/4 v0, 0x3

    invoke-direct {p1, v0, p0}, La1/r;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Landroidx/activity/l;->a(Ljava/lang/Runnable;)Landroid/window/OnBackInvokedCallback;

    move-result-object p1

    iput-object p1, p0, Landroidx/activity/n;->d:Landroid/window/OnBackInvokedCallback;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/q;Landroidx/fragment/app/a0;)V
    .locals 2

    invoke-interface {p1}, Landroidx/lifecycle/q;->f()Landroidx/lifecycle/s;

    move-result-object p1

    iget-object v0, p1, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/l;

    sget-object v1, Landroidx/lifecycle/l;->a:Landroidx/lifecycle/l;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    invoke-direct {v0, p0, p1, p2}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Landroidx/activity/n;Landroidx/lifecycle/s;Landroidx/fragment/app/a0;)V

    iget-object p1, p2, Landroidx/fragment/app/a0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lk1/a;->E()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/activity/n;->c()V

    iget-object p1, p0, Landroidx/activity/n;->c:Landroidx/activity/j;

    iput-object p1, p2, Landroidx/fragment/app/a0;->c:Landroidx/activity/j;

    :cond_1
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Landroidx/activity/n;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a0;

    iget-boolean v2, v1, Landroidx/fragment/app/a0;->a:Z

    if-eqz v2, :cond_0

    iget-object v0, v1, Landroidx/fragment/app/a0;->d:Landroidx/fragment/app/h0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/h0;->w(Z)Z

    iget-object v1, v0, Landroidx/fragment/app/h0;->h:Landroidx/fragment/app/a0;

    iget-boolean v1, v1, Landroidx/fragment/app/a0;->a:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/h0;->J()Z

    return-void

    :cond_1
    iget-object v0, v0, Landroidx/fragment/app/h0;->g:Landroidx/activity/n;

    invoke-virtual {v0}, Landroidx/activity/n;->b()V

    return-void

    :cond_2
    iget-object v0, p0, Landroidx/activity/n;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Landroidx/activity/n;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a0;

    iget-boolean v1, v1, Landroidx/fragment/app/a0;->a:Z

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iget-object v1, p0, Landroidx/activity/n;->e:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    iget-boolean v4, p0, Landroidx/activity/n;->f:Z

    if-nez v4, :cond_2

    iget-object v0, p0, Landroidx/activity/n;->d:Landroid/window/OnBackInvokedCallback;

    invoke-static {v1, v3, v0}, Landroidx/activity/l;->b(Ljava/lang/Object;ILjava/lang/Object;)V

    iput-boolean v2, p0, Landroidx/activity/n;->f:Z

    return-void

    :cond_2
    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroidx/activity/n;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/activity/n;->d:Landroid/window/OnBackInvokedCallback;

    invoke-static {v1, v0}, Landroidx/activity/l;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v3, p0, Landroidx/activity/n;->f:Z

    :cond_3
    return-void
.end method
