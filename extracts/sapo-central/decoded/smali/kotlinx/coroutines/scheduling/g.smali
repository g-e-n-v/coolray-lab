.class public abstract Lkotlinx/coroutines/scheduling/g;
.super Lp2/o;
.source "SourceFile"


# instance fields
.field public b:Lkotlinx/coroutines/scheduling/b;


# virtual methods
.method public final a(Lb2/h;Ljava/lang/Runnable;)V
    .locals 1

    iget-object p1, p0, Lkotlinx/coroutines/scheduling/g;->b:Lkotlinx/coroutines/scheduling/b;

    sget-object v0, Lkotlinx/coroutines/scheduling/b;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object v0, Lkotlinx/coroutines/scheduling/j;->f:Lkotlinx/coroutines/scheduling/h;

    invoke-virtual {p1, p2, v0}, Lkotlinx/coroutines/scheduling/b;->b(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/h;)V

    return-void
.end method
