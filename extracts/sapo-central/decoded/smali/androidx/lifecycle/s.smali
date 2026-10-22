.class public final Landroidx/lifecycle/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lk/a;

.field public b:Landroidx/lifecycle/l;

.field public final c:Ljava/lang/ref/WeakReference;

.field public d:I

.field public e:Z

.field public f:Z

.field public final g:Ljava/util/ArrayList;

.field public final h:Z


# direct methods
.method public constructor <init>(Landroidx/lifecycle/q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, Lk/a;

    invoke-direct {v0}, Lk/a;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/s;->a:Lk/a;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/s;->d:I

    iput-boolean v0, p0, Landroidx/lifecycle/s;->e:Z

    iput-boolean v0, p0, Landroidx/lifecycle/s;->f:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/s;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/s;->c:Ljava/lang/ref/WeakReference;

    sget-object p1, Landroidx/lifecycle/l;->b:Landroidx/lifecycle/l;

    iput-object p1, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/l;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/lifecycle/s;->h:Z

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/p;)V
    .locals 10

    const-string v0, "addObserver"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/s;->c(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/l;

    sget-object v1, Landroidx/lifecycle/l;->a:Landroidx/lifecycle/l;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/lifecycle/l;->b:Landroidx/lifecycle/l;

    :goto_0
    new-instance v0, Landroidx/lifecycle/r;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Landroidx/lifecycle/t;->a:Ljava/util/HashMap;

    instance-of v2, p1, Landroidx/lifecycle/o;

    instance-of v3, p1, Landroidx/lifecycle/d;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    new-instance v2, Landroidx/lifecycle/FullLifecycleObserverAdapter;

    move-object v3, p1

    check-cast v3, Landroidx/lifecycle/d;

    move-object v8, p1

    check-cast v8, Landroidx/lifecycle/o;

    invoke-direct {v2, v3, v8}, Landroidx/lifecycle/FullLifecycleObserverAdapter;-><init>(Landroidx/lifecycle/d;Landroidx/lifecycle/o;)V

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_2

    new-instance v2, Landroidx/lifecycle/FullLifecycleObserverAdapter;

    move-object v3, p1

    check-cast v3, Landroidx/lifecycle/d;

    invoke-direct {v2, v3, v5}, Landroidx/lifecycle/FullLifecycleObserverAdapter;-><init>(Landroidx/lifecycle/d;Landroidx/lifecycle/o;)V

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Landroidx/lifecycle/o;

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Landroidx/lifecycle/t;->c(Ljava/lang/Class;)I

    move-result v3

    if-ne v3, v4, :cond_6

    sget-object v3, Landroidx/lifecycle/t;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v7, :cond_4

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    invoke-static {v2, p1}, Landroidx/lifecycle/t;->a(Ljava/lang/reflect/Constructor;Landroidx/lifecycle/p;)V

    new-instance v2, Landroidx/lifecycle/SingleGeneratedAdapterObserver;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    goto :goto_2

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroidx/lifecycle/g;

    move v8, v6

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/Constructor;

    invoke-static {v9, p1}, Landroidx/lifecycle/t;->a(Ljava/lang/reflect/Constructor;Landroidx/lifecycle/p;)V

    aput-object v5, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    new-instance v2, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;

    invoke-direct {v2, v3}, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;-><init>([Landroidx/lifecycle/g;)V

    goto :goto_2

    :cond_6
    new-instance v2, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;

    invoke-direct {v2, p1}, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;-><init>(Landroidx/lifecycle/p;)V

    :goto_2
    iput-object v2, v0, Landroidx/lifecycle/r;->b:Landroidx/lifecycle/o;

    iput-object v1, v0, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    iget-object v1, p0, Landroidx/lifecycle/s;->a:Lk/a;

    invoke-virtual {v1, p1}, Lk/a;->a(Ljava/lang/Object;)Lk/c;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v1, v2, Lk/c;->b:Ljava/lang/Object;

    goto :goto_4

    :cond_7
    iget-object v2, v1, Lk/a;->e:Ljava/util/HashMap;

    new-instance v3, Lk/c;

    invoke-direct {v3, p1, v0}, Lk/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v8, v1, Lk/f;->d:I

    add-int/2addr v8, v7

    iput v8, v1, Lk/f;->d:I

    iget-object v8, v1, Lk/f;->b:Lk/c;

    if-nez v8, :cond_8

    iput-object v3, v1, Lk/f;->a:Lk/c;

    iput-object v3, v1, Lk/f;->b:Lk/c;

    goto :goto_3

    :cond_8
    iput-object v3, v8, Lk/c;->c:Lk/c;

    iput-object v8, v3, Lk/c;->d:Lk/c;

    iput-object v3, v1, Lk/f;->b:Lk/c;

    :goto_3
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v5

    :goto_4
    check-cast v1, Landroidx/lifecycle/r;

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    iget-object v1, p0, Landroidx/lifecycle/s;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/q;

    if-nez v1, :cond_a

    :goto_5
    return-void

    :cond_a
    iget v2, p0, Landroidx/lifecycle/s;->d:I

    if-nez v2, :cond_b

    iget-boolean v2, p0, Landroidx/lifecycle/s;->e:Z

    if-eqz v2, :cond_c

    :cond_b
    move v6, v7

    :cond_c
    invoke-virtual {p0, p1}, Landroidx/lifecycle/s;->b(Landroidx/lifecycle/p;)Landroidx/lifecycle/l;

    move-result-object v2

    iget v3, p0, Landroidx/lifecycle/s;->d:I

    add-int/2addr v3, v7

    iput v3, p0, Landroidx/lifecycle/s;->d:I

    :goto_6
    iget-object v3, v0, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    invoke-virtual {v3, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gez v2, :cond_11

    iget-object v2, p0, Landroidx/lifecycle/s;->a:Lk/a;

    iget-object v2, v2, Lk/a;->e:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v0, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    iget-object v3, p0, Landroidx/lifecycle/s;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v2, v7, :cond_f

    if-eq v2, v4, :cond_e

    const/4 v8, 0x3

    if-eq v2, v8, :cond_d

    move-object v2, v5

    goto :goto_7

    :cond_d
    sget-object v2, Landroidx/lifecycle/k;->ON_RESUME:Landroidx/lifecycle/k;

    goto :goto_7

    :cond_e
    sget-object v2, Landroidx/lifecycle/k;->ON_START:Landroidx/lifecycle/k;

    goto :goto_7

    :cond_f
    sget-object v2, Landroidx/lifecycle/k;->ON_CREATE:Landroidx/lifecycle/k;

    :goto_7
    if-eqz v2, :cond_10

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/q;Landroidx/lifecycle/k;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v7

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/s;->b(Landroidx/lifecycle/p;)Landroidx/lifecycle/l;

    move-result-object v2

    goto :goto_6

    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no event up from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    if-nez v6, :cond_12

    invoke-virtual {p0}, Landroidx/lifecycle/s;->g()V

    :cond_12
    iget p1, p0, Landroidx/lifecycle/s;->d:I

    sub-int/2addr p1, v7

    iput p1, p0, Landroidx/lifecycle/s;->d:I

    return-void
.end method

.method public final b(Landroidx/lifecycle/p;)Landroidx/lifecycle/l;
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/s;->a:Lk/a;

    iget-object v0, v0, Lk/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk/c;

    iget-object p1, p1, Lk/c;->d:Lk/c;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Lk/c;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/lifecycle/r;

    iget-object p1, p1, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    iget-object v0, p0, Landroidx/lifecycle/s;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/lifecycle/l;

    :cond_2
    iget-object v0, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/l;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_3

    goto :goto_2

    :cond_3
    move-object p1, v0

    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_4

    return-object v2

    :cond_4
    return-object p1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Landroidx/lifecycle/s;->h:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lj/a;->e0()Lj/a;

    move-result-object v0

    iget-object v0, v0, Lj/a;->a:Ljava/lang/Object;

    check-cast v0, Lj/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method "

    const-string v2, " must be called on the main thread"

    invoke-static {v1, p1, v2}, Landroidx/activity/result/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public final d(Landroidx/lifecycle/k;)V
    .locals 1

    const-string v0, "handleLifecycleEvent"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/s;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/lifecycle/k;->a()Landroidx/lifecycle/l;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/s;->e(Landroidx/lifecycle/l;)V

    return-void
.end method

.method public final e(Landroidx/lifecycle/l;)V
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/l;

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Landroidx/lifecycle/l;->b:Landroidx/lifecycle/l;

    sget-object v2, Landroidx/lifecycle/l;->a:Landroidx/lifecycle/l;

    if-ne v0, v1, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no event down from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/l;

    iget-boolean p1, p0, Landroidx/lifecycle/s;->e:Z

    const/4 v0, 0x1

    if-nez p1, :cond_5

    iget p1, p0, Landroidx/lifecycle/s;->d:I

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    iput-boolean v0, p0, Landroidx/lifecycle/s;->e:Z

    invoke-virtual {p0}, Landroidx/lifecycle/s;->g()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/lifecycle/s;->e:Z

    iget-object p1, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/l;

    if-ne p1, v2, :cond_4

    new-instance p1, Lk/a;

    invoke-direct {p1}, Lk/a;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/s;->a:Lk/a;

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    iput-boolean v0, p0, Landroidx/lifecycle/s;->f:Z

    return-void
.end method

.method public final f(Landroidx/lifecycle/p;)V
    .locals 1

    const-string v0, "removeObserver"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/s;->c(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/s;->a:Lk/a;

    invoke-virtual {v0, p1}, Lk/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final g()V
    .locals 11

    iget-object v0, p0, Landroidx/lifecycle/s;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/q;

    if-eqz v0, :cond_e

    :cond_0
    iget-object v1, p0, Landroidx/lifecycle/s;->a:Lk/a;

    iget v2, v1, Lk/f;->d:I

    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lk/f;->a:Lk/c;

    iget-object v2, v2, Lk/c;->b:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Landroidx/lifecycle/r;

    iget-object v4, v4, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    iget-object v1, v1, Lk/f;->b:Lk/c;

    iget-object v1, v1, Lk/c;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/r;

    iget-object v1, v1, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    if-ne v4, v1, :cond_2

    iget-object v4, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/l;

    if-ne v4, v1, :cond_2

    :goto_0
    iput-boolean v3, p0, Landroidx/lifecycle/s;->f:Z

    return-void

    :cond_2
    iput-boolean v3, p0, Landroidx/lifecycle/s;->f:Z

    iget-object v1, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/l;

    check-cast v2, Landroidx/lifecycle/r;

    iget-object v2, v2, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    iget-object v6, p0, Landroidx/lifecycle/s;->g:Ljava/util/ArrayList;

    if-gez v1, :cond_8

    iget-object v1, p0, Landroidx/lifecycle/s;->a:Lk/a;

    new-instance v7, Lk/b;

    iget-object v8, v1, Lk/f;->b:Lk/c;

    iget-object v9, v1, Lk/f;->a:Lk/c;

    const/4 v10, 0x1

    invoke-direct {v7, v8, v9, v10}, Lk/b;-><init>(Lk/c;Lk/c;I)V

    iget-object v1, v1, Lk/f;->c:Ljava/util/WeakHashMap;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v7, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v7}, Lk/b;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Landroidx/lifecycle/s;->f:Z

    if-nez v1, :cond_8

    invoke-virtual {v7}, Lk/b;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/lifecycle/r;

    :goto_1
    iget-object v9, v8, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    iget-object v10, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/l;

    invoke-virtual {v9, v10}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v9

    if-lez v9, :cond_3

    iget-boolean v9, p0, Landroidx/lifecycle/s;->f:Z

    if-nez v9, :cond_3

    iget-object v9, p0, Landroidx/lifecycle/s;->a:Lk/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/lifecycle/p;

    iget-object v9, v9, Lk/a;->e:Ljava/util/HashMap;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v8, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    if-eq v9, v4, :cond_6

    if-eq v9, v3, :cond_5

    const/4 v10, 0x4

    if-eq v9, v10, :cond_4

    move-object v9, v2

    goto :goto_2

    :cond_4
    sget-object v9, Landroidx/lifecycle/k;->ON_PAUSE:Landroidx/lifecycle/k;

    goto :goto_2

    :cond_5
    sget-object v9, Landroidx/lifecycle/k;->ON_STOP:Landroidx/lifecycle/k;

    goto :goto_2

    :cond_6
    sget-object v9, Landroidx/lifecycle/k;->ON_DESTROY:Landroidx/lifecycle/k;

    :goto_2
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroidx/lifecycle/k;->a()Landroidx/lifecycle/l;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v0, v9}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/q;Landroidx/lifecycle/k;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no event down from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v8, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v1, p0, Landroidx/lifecycle/s;->a:Lk/a;

    iget-object v1, v1, Lk/f;->b:Lk/c;

    iget-boolean v7, p0, Landroidx/lifecycle/s;->f:Z

    if-nez v7, :cond_0

    if-eqz v1, :cond_0

    iget-object v7, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/l;

    iget-object v1, v1, Lk/c;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/r;

    iget-object v1, v1, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    invoke-virtual {v7, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Landroidx/lifecycle/s;->a:Lk/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lk/d;

    invoke-direct {v7, v1}, Lk/d;-><init>(Lk/f;)V

    iget-object v1, v1, Lk/f;->c:Ljava/util/WeakHashMap;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v7, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-virtual {v7}, Lk/d;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/lifecycle/s;->f:Z

    if-nez v1, :cond_0

    invoke-virtual {v7}, Lk/d;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/lifecycle/r;

    :goto_3
    iget-object v9, v8, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    iget-object v10, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/l;

    invoke-virtual {v9, v10}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v9

    if-gez v9, :cond_9

    iget-boolean v9, p0, Landroidx/lifecycle/s;->f:Z

    if-nez v9, :cond_9

    iget-object v9, p0, Landroidx/lifecycle/s;->a:Lk/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/lifecycle/p;

    iget-object v9, v9, Lk/a;->e:Ljava/util/HashMap;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, v8, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v8, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    if-eq v9, v5, :cond_c

    if-eq v9, v4, :cond_b

    if-eq v9, v3, :cond_a

    move-object v9, v2

    goto :goto_4

    :cond_a
    sget-object v9, Landroidx/lifecycle/k;->ON_RESUME:Landroidx/lifecycle/k;

    goto :goto_4

    :cond_b
    sget-object v9, Landroidx/lifecycle/k;->ON_START:Landroidx/lifecycle/k;

    goto :goto_4

    :cond_c
    sget-object v9, Landroidx/lifecycle/k;->ON_CREATE:Landroidx/lifecycle/k;

    :goto_4
    if-eqz v9, :cond_d

    invoke-virtual {v8, v0, v9}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/q;Landroidx/lifecycle/k;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no event up from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v8, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/l;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
