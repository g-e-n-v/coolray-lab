.class public final Landroidx/fragment/app/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Z

.field public B:Z

.field public C:Ljava/util/ArrayList;

.field public D:Ljava/util/ArrayList;

.field public E:Ljava/util/ArrayList;

.field public F:Landroidx/fragment/app/j0;

.field public final G:Landroidx/activity/d;

.field public final a:Ljava/util/ArrayList;

.field public b:Z

.field public final c:Landroidx/fragment/app/f;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/util/ArrayList;

.field public final f:Landroidx/fragment/app/y;

.field public g:Landroidx/activity/n;

.field public final h:Landroidx/fragment/app/a0;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Ljava/util/Map;

.field public final k:Landroidx/activity/result/c;

.field public final l:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public m:I

.field public n:Landroidx/fragment/app/u;

.field public o:La1/b;

.field public p:Landroidx/fragment/app/r;

.field public q:Landroidx/fragment/app/r;

.field public final r:Landroidx/fragment/app/b0;

.field public final s:Ls1/e;

.field public t:Landroidx/activity/result/c;

.field public u:Landroidx/activity/result/c;

.field public v:Landroidx/activity/result/c;

.field public w:Ljava/util/ArrayDeque;

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/h0;->a:Ljava/util/ArrayList;

    new-instance v0, Landroidx/fragment/app/f;

    invoke-direct {v0}, Landroidx/fragment/app/f;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    new-instance v0, Landroidx/fragment/app/y;

    invoke-direct {v0, p0}, Landroidx/fragment/app/y;-><init>(Landroidx/fragment/app/h0;)V

    iput-object v0, p0, Landroidx/fragment/app/h0;->f:Landroidx/fragment/app/y;

    new-instance v0, Landroidx/fragment/app/a0;

    invoke-direct {v0, p0}, Landroidx/fragment/app/a0;-><init>(Landroidx/fragment/app/h0;)V

    iput-object v0, p0, Landroidx/fragment/app/h0;->h:Landroidx/fragment/app/a0;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/h0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/h0;->j:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ls1/e;

    invoke-direct {v0, p0}, Ls1/e;-><init>(Ljava/lang/Object;)V

    new-instance v0, Landroidx/activity/result/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, v0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    iput-object p0, v0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/fragment/app/h0;->k:Landroidx/activity/result/c;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/h0;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/h0;->m:I

    new-instance v0, Landroidx/fragment/app/b0;

    invoke-direct {v0, p0}, Landroidx/fragment/app/b0;-><init>(Landroidx/fragment/app/h0;)V

    iput-object v0, p0, Landroidx/fragment/app/h0;->r:Landroidx/fragment/app/b0;

    new-instance v0, Ls1/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/h0;->s:Ls1/e;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/h0;->w:Ljava/util/ArrayDeque;

    new-instance v0, Landroidx/activity/d;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroidx/activity/d;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/fragment/app/h0;->G:Landroidx/activity/d;

    return-void
.end method

.method public static D(I)Z
    .locals 1

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static E(Landroidx/fragment/app/r;)Z
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    iget-object p0, p0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Landroidx/fragment/app/f;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/n0;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/r;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_2
    if-ge v3, p0, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroidx/fragment/app/r;

    if-eqz v4, :cond_3

    invoke-static {v4}, Landroidx/fragment/app/h0;->E(Landroidx/fragment/app/r;)Z

    move-result v2

    :cond_3
    if-eqz v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method public static F(Landroidx/fragment/app/r;)Z
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/fragment/app/r;->B:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/r;->r:Landroidx/fragment/app/h0;

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/r;

    invoke-static {p0}, Landroidx/fragment/app/h0;->F(Landroidx/fragment/app/r;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static G(Landroidx/fragment/app/r;)Z
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/r;->r:Landroidx/fragment/app/h0;

    iget-object v1, v0, Landroidx/fragment/app/h0;->q:Landroidx/fragment/app/r;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, v0, Landroidx/fragment/app/h0;->p:Landroidx/fragment/app/r;

    invoke-static {p0}, Landroidx/fragment/app/h0;->G(Landroidx/fragment/app/r;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static U(Landroidx/fragment/app/r;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "show: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Landroidx/fragment/app/r;->y:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/r;->y:Z

    iget-boolean v0, p0, Landroidx/fragment/app/r;->I:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/r;->I:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final A()Landroidx/fragment/app/b0;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/h0;->p:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/fragment/app/r;->r:Landroidx/fragment/app/h0;

    invoke-virtual {v0}, Landroidx/fragment/app/h0;->A()Landroidx/fragment/app/b0;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/h0;->r:Landroidx/fragment/app/b0;

    return-object v0
.end method

.method public final B()Ls1/e;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/h0;->p:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/fragment/app/r;->r:Landroidx/fragment/app/h0;

    invoke-virtual {v0}, Landroidx/fragment/app/h0;->B()Ls1/e;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/h0;->s:Ls1/e;

    return-object v0
.end method

.method public final C(Landroidx/fragment/app/r;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hide: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/r;->y:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/r;->y:Z

    iget-boolean v1, p1, Landroidx/fragment/app/r;->I:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroidx/fragment/app/r;->I:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/h0;->T(Landroidx/fragment/app/r;)V

    :cond_1
    return-void
.end method

.method public final H(IZ)V
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/h0;->n:Landroidx/fragment/app/u;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    iget p2, p0, Landroidx/fragment/app/h0;->m:I

    if-ne p1, p2, :cond_2

    goto/16 :goto_3

    :cond_2
    iput p1, p0, Landroidx/fragment/app/h0;->m:I

    iget-object p1, p0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    iget-object p2, p1, Landroidx/fragment/app/f;->c:Ljava/lang/Object;

    check-cast p2, Ljava/util/HashMap;

    iget-object v0, p1, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_3
    :goto_1
    if-ge v3, v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroidx/fragment/app/r;

    iget-object v4, v4, Landroidx/fragment/app/r;->e:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/n0;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroidx/fragment/app/n0;->k()V

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/n0;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/fragment/app/n0;->k()V

    iget-object v1, v0, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/r;

    iget-boolean v3, v1, Landroidx/fragment/app/r;->l:Z

    if-eqz v3, :cond_5

    iget v1, v1, Landroidx/fragment/app/r;->q:I

    if-lez v1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v0}, Landroidx/fragment/app/f;->t(Landroidx/fragment/app/n0;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/h0;->V()V

    iget-boolean p1, p0, Landroidx/fragment/app/h0;->x:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroidx/fragment/app/h0;->n:Landroidx/fragment/app/u;

    if-eqz p1, :cond_8

    iget p2, p0, Landroidx/fragment/app/h0;->m:I

    const/4 v0, 0x7

    if-ne p2, v0, :cond_8

    iget-object p1, p1, Landroidx/fragment/app/u;->e:Le/j;

    invoke-virtual {p1}, Le/j;->i()Le/o;

    move-result-object p1

    invoke-virtual {p1}, Le/o;->g()V

    iput-boolean v2, p0, Landroidx/fragment/app/h0;->x:Z

    :cond_8
    :goto_3
    return-void
.end method

.method public final I()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/h0;->n:Landroidx/fragment/app/u;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/h0;->y:Z

    iput-boolean v0, p0, Landroidx/fragment/app/h0;->z:Z

    iget-object v1, p0, Landroidx/fragment/app/h0;->F:Landroidx/fragment/app/j0;

    iput-boolean v0, v1, Landroidx/fragment/app/j0;->h:Z

    iget-object v0, p0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/r;

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    invoke-virtual {v1}, Landroidx/fragment/app/h0;->I()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final J()Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/h0;->w(Z)Z

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/h0;->v(Z)V

    iget-object v2, p0, Landroidx/fragment/app/h0;->q:Landroidx/fragment/app/r;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/fragment/app/r;->g()Landroidx/fragment/app/h0;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/h0;->J()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Landroidx/fragment/app/h0;->C:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/h0;->D:Ljava/util/ArrayList;

    const/4 v4, -0x1

    invoke-virtual {p0, v2, v3, v4, v0}, Landroidx/fragment/app/h0;->K(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Landroidx/fragment/app/h0;->b:Z

    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/h0;->C:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/h0;->D:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v3}, Landroidx/fragment/app/h0;->M(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/fragment/app/h0;->d()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroidx/fragment/app/h0;->d()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/h0;->W()V

    iget-boolean v1, p0, Landroidx/fragment/app/h0;->B:Z

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Landroidx/fragment/app/h0;->B:Z

    invoke-virtual {p0}, Landroidx/fragment/app/h0;->V()V

    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return v2
.end method

.method public final K(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/h0;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x1

    if-gez p3, :cond_2

    and-int/lit8 v2, p4, 0x1

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v1

    if-gez p3, :cond_1

    goto :goto_3

    :cond_1
    iget-object p4, p0, Landroidx/fragment/app/h0;->d:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1

    :cond_2
    if-ltz p3, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_4

    iget-object v2, p0, Landroidx/fragment/app/h0;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a;

    if-ltz p3, :cond_3

    iget v2, v2, Landroidx/fragment/app/a;->r:I

    if-ne p3, v2, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-gez v0, :cond_5

    goto :goto_3

    :cond_5
    and-int/2addr p4, v1

    if-eqz p4, :cond_7

    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_7

    iget-object p4, p0, Landroidx/fragment/app/h0;->d:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/fragment/app/a;

    if-ltz p3, :cond_7

    iget p4, p4, Landroidx/fragment/app/a;->r:I

    if-ne p3, p4, :cond_7

    goto :goto_2

    :cond_6
    const/4 v0, -0x1

    :cond_7
    iget-object p3, p0, Landroidx/fragment/app/h0;->d:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v1

    if-ne v0, p3, :cond_8

    :goto_3
    const/4 p1, 0x0

    return p1

    :cond_8
    iget-object p3, p0, Landroidx/fragment/app/h0;->d:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v1

    :goto_4
    if-le p3, v0, :cond_9

    iget-object p4, p0, Landroidx/fragment/app/h0;->d:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, -0x1

    goto :goto_4

    :cond_9
    return v1
.end method

.method public final L(Landroidx/fragment/app/r;)V
    .locals 4

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroidx/fragment/app/r;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Landroidx/fragment/app/r;->q:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-boolean v3, p1, Landroidx/fragment/app/r;->z:Z

    if-eqz v3, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    iget-object v3, v0, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v0, v0, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p1, Landroidx/fragment/app/r;->k:Z

    invoke-static {p1}, Landroidx/fragment/app/h0;->E(Landroidx/fragment/app/r;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Landroidx/fragment/app/h0;->x:Z

    :cond_4
    iput-boolean v2, p1, Landroidx/fragment/app/r;->l:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/h0;->T(Landroidx/fragment/app/r;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final M(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/a;->o:Z

    if-nez v3, :cond_3

    if-eq v2, v1, :cond_1

    invoke-virtual {p0, p1, p2, v2, v1}, Landroidx/fragment/app/h0;->x(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/a;->o:Z

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2, v1, v2}, Landroidx/fragment/app/h0;->x(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v0, :cond_5

    invoke-virtual {p0, p1, p2, v2, v0}, Landroidx/fragment/app/h0;->x(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal error with the back stack records"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final N(Landroid/os/Parcelable;)V
    .locals 19

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    check-cast v1, Landroidx/fragment/app/i0;

    iget-object v2, v1, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v2, v0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    iget-object v3, v2, Landroidx/fragment/app/f;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, v1, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    :cond_2
    :goto_1
    iget-object v7, v0, Landroidx/fragment/app/h0;->k:Landroidx/activity/result/c;

    const-string v8, "): "

    const/4 v9, 0x2

    const-string v10, "FragmentManager"

    if-ge v6, v4, :cond_6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v6, v6, 0x1

    check-cast v11, Landroidx/fragment/app/l0;

    if-eqz v11, :cond_2

    iget-object v12, v0, Landroidx/fragment/app/h0;->F:Landroidx/fragment/app/j0;

    iget-object v13, v11, Landroidx/fragment/app/l0;->b:Ljava/lang/String;

    iget-object v12, v12, Landroidx/fragment/app/j0;->c:Ljava/util/HashMap;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/fragment/app/r;

    if-eqz v12, :cond_4

    invoke-static {v9}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v13

    if-eqz v13, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "restoreSaveState: re-attaching retained "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v13, Landroidx/fragment/app/n0;

    invoke-direct {v13, v7, v2, v12, v11}, Landroidx/fragment/app/n0;-><init>(Landroidx/activity/result/c;Landroidx/fragment/app/f;Landroidx/fragment/app/r;Landroidx/fragment/app/l0;)V

    goto :goto_2

    :cond_4
    new-instance v12, Landroidx/fragment/app/n0;

    iget-object v7, v0, Landroidx/fragment/app/h0;->n:Landroidx/fragment/app/u;

    iget-object v7, v7, Landroidx/fragment/app/u;->b:Le/j;

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    invoke-virtual {v0}, Landroidx/fragment/app/h0;->A()Landroidx/fragment/app/b0;

    move-result-object v16

    iget-object v13, v0, Landroidx/fragment/app/h0;->k:Landroidx/activity/result/c;

    iget-object v14, v0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    move-object/from16 v17, v11

    invoke-direct/range {v12 .. v17}, Landroidx/fragment/app/n0;-><init>(Landroidx/activity/result/c;Landroidx/fragment/app/f;Ljava/lang/ClassLoader;Landroidx/fragment/app/b0;Landroidx/fragment/app/l0;)V

    move-object v13, v12

    :goto_2
    iget-object v7, v13, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/r;

    iput-object v0, v7, Landroidx/fragment/app/r;->r:Landroidx/fragment/app/h0;

    invoke-static {v9}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "restoreSaveState: active ("

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v7, Landroidx/fragment/app/r;->e:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v7, v0, Landroidx/fragment/app/h0;->n:Landroidx/fragment/app/u;

    iget-object v7, v7, Landroidx/fragment/app/u;->b:Le/j;

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroidx/fragment/app/n0;->m(Ljava/lang/ClassLoader;)V

    invoke-virtual {v2, v13}, Landroidx/fragment/app/f;->s(Landroidx/fragment/app/n0;)V

    iget v7, v0, Landroidx/fragment/app/h0;->m:I

    iput v7, v13, Landroidx/fragment/app/n0;->e:I

    goto/16 :goto_1

    :cond_6
    iget-object v3, v0, Landroidx/fragment/app/h0;->F:Landroidx/fragment/app/j0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v3, v3, Landroidx/fragment/app/j0;->c:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x0

    :goto_3
    const/4 v11, 0x1

    if-ge v6, v3, :cond_9

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v6, v6, 0x1

    check-cast v12, Landroidx/fragment/app/r;

    iget-object v13, v12, Landroidx/fragment/app/r;->e:Ljava/lang/String;

    iget-object v14, v2, Landroidx/fragment/app/f;->c:Ljava/lang/Object;

    check-cast v14, Ljava/util/HashMap;

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {v9}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v13

    if-eqz v13, :cond_8

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Discarding retained Fragment "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " that was not found in the set of active Fragments "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v13, v0, Landroidx/fragment/app/h0;->F:Landroidx/fragment/app/j0;

    invoke-virtual {v13, v12}, Landroidx/fragment/app/j0;->b(Landroidx/fragment/app/r;)V

    iput-object v0, v12, Landroidx/fragment/app/r;->r:Landroidx/fragment/app/h0;

    new-instance v13, Landroidx/fragment/app/n0;

    invoke-direct {v13, v7, v2, v12}, Landroidx/fragment/app/n0;-><init>(Landroidx/activity/result/c;Landroidx/fragment/app/f;Landroidx/fragment/app/r;)V

    iput v11, v13, Landroidx/fragment/app/n0;->e:I

    invoke-virtual {v13}, Landroidx/fragment/app/n0;->k()V

    iput-boolean v11, v12, Landroidx/fragment/app/r;->l:Z

    invoke-virtual {v13}, Landroidx/fragment/app/n0;->k()V

    goto :goto_3

    :cond_9
    iget-object v3, v1, Landroidx/fragment/app/i0;->b:Ljava/util/ArrayList;

    iget-object v4, v2, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v4, :cond_c

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroidx/fragment/app/f;->e(Ljava/lang/String;)Landroidx/fragment/app/r;

    move-result-object v12

    if-eqz v12, :cond_b

    invoke-static {v9}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v13

    if-eqz v13, :cond_a

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "restoreSaveState: added ("

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {v2, v12}, Landroidx/fragment/app/f;->a(Landroidx/fragment/app/r;)V

    goto :goto_4

    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No instantiated fragment for ("

    const-string v3, ")"

    invoke-static {v2, v7, v3}, Landroidx/activity/result/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    iget-object v3, v1, Landroidx/fragment/app/i0;->c:[Landroidx/fragment/app/b;

    const/4 v4, 0x0

    if-eqz v3, :cond_12

    new-instance v3, Ljava/util/ArrayList;

    iget-object v6, v1, Landroidx/fragment/app/i0;->c:[Landroidx/fragment/app/b;

    array-length v6, v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Landroidx/fragment/app/h0;->d:Ljava/util/ArrayList;

    const/4 v3, 0x0

    :goto_5
    iget-object v6, v1, Landroidx/fragment/app/i0;->c:[Landroidx/fragment/app/b;

    array-length v7, v6

    if-ge v3, v7, :cond_11

    aget-object v6, v6, v3

    iget-object v7, v6, Landroidx/fragment/app/b;->a:[I

    new-instance v12, Landroidx/fragment/app/a;

    invoke-direct {v12, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/h0;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_6
    array-length v15, v7

    if-ge v13, v15, :cond_f

    new-instance v15, Landroidx/fragment/app/o0;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v16, v13, 0x1

    move/from16 p1, v9

    aget v9, v7, v13

    iput v9, v15, Landroidx/fragment/app/o0;->a:I

    invoke-static/range {p1 .. p1}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v9

    if-eqz v9, :cond_d

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v5, "Instantiate "

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " op #"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " base fragment #"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v7, v16

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v5, v6, Landroidx/fragment/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_e

    invoke-virtual {v2, v5}, Landroidx/fragment/app/f;->e(Ljava/lang/String;)Landroidx/fragment/app/r;

    move-result-object v5

    iput-object v5, v15, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/r;

    goto :goto_7

    :cond_e
    iput-object v4, v15, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/r;

    :goto_7
    invoke-static {}, Landroidx/lifecycle/l;->values()[Landroidx/lifecycle/l;

    move-result-object v5

    iget-object v9, v6, Landroidx/fragment/app/b;->c:[I

    aget v9, v9, v14

    aget-object v5, v5, v9

    iput-object v5, v15, Landroidx/fragment/app/o0;->g:Landroidx/lifecycle/l;

    invoke-static {}, Landroidx/lifecycle/l;->values()[Landroidx/lifecycle/l;

    move-result-object v5

    iget-object v9, v6, Landroidx/fragment/app/b;->d:[I

    aget v9, v9, v14

    aget-object v5, v5, v9

    iput-object v5, v15, Landroidx/fragment/app/o0;->h:Landroidx/lifecycle/l;

    add-int/lit8 v5, v13, 0x2

    aget v9, v7, v16

    iput v9, v15, Landroidx/fragment/app/o0;->c:I

    add-int/lit8 v16, v13, 0x3

    aget v5, v7, v5

    iput v5, v15, Landroidx/fragment/app/o0;->d:I

    add-int/lit8 v18, v13, 0x4

    aget v4, v7, v16

    iput v4, v15, Landroidx/fragment/app/o0;->e:I

    add-int/lit8 v13, v13, 0x5

    aget v11, v7, v18

    iput v11, v15, Landroidx/fragment/app/o0;->f:I

    iput v9, v12, Landroidx/fragment/app/a;->b:I

    iput v5, v12, Landroidx/fragment/app/a;->c:I

    iput v4, v12, Landroidx/fragment/app/a;->d:I

    iput v11, v12, Landroidx/fragment/app/a;->e:I

    invoke-virtual {v12, v15}, Landroidx/fragment/app/a;->b(Landroidx/fragment/app/o0;)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v9, p1

    const/4 v4, 0x0

    const/4 v11, 0x1

    goto/16 :goto_6

    :cond_f
    move/from16 p1, v9

    iget v4, v6, Landroidx/fragment/app/b;->e:I

    iput v4, v12, Landroidx/fragment/app/a;->f:I

    iget-object v4, v6, Landroidx/fragment/app/b;->f:Ljava/lang/String;

    iput-object v4, v12, Landroidx/fragment/app/a;->h:Ljava/lang/String;

    iget v4, v6, Landroidx/fragment/app/b;->g:I

    iput v4, v12, Landroidx/fragment/app/a;->r:I

    const/4 v4, 0x1

    iput-boolean v4, v12, Landroidx/fragment/app/a;->g:Z

    iget v4, v6, Landroidx/fragment/app/b;->h:I

    iput v4, v12, Landroidx/fragment/app/a;->i:I

    iget-object v4, v6, Landroidx/fragment/app/b;->i:Ljava/lang/CharSequence;

    iput-object v4, v12, Landroidx/fragment/app/a;->j:Ljava/lang/CharSequence;

    iget v4, v6, Landroidx/fragment/app/b;->j:I

    iput v4, v12, Landroidx/fragment/app/a;->k:I

    iget-object v4, v6, Landroidx/fragment/app/b;->k:Ljava/lang/CharSequence;

    iput-object v4, v12, Landroidx/fragment/app/a;->l:Ljava/lang/CharSequence;

    iget-object v4, v6, Landroidx/fragment/app/b;->l:Ljava/util/ArrayList;

    iput-object v4, v12, Landroidx/fragment/app/a;->m:Ljava/util/ArrayList;

    iget-object v4, v6, Landroidx/fragment/app/b;->m:Ljava/util/ArrayList;

    iput-object v4, v12, Landroidx/fragment/app/a;->n:Ljava/util/ArrayList;

    iget-boolean v4, v6, Landroidx/fragment/app/b;->n:Z

    iput-boolean v4, v12, Landroidx/fragment/app/a;->o:Z

    const/4 v4, 0x1

    invoke-virtual {v12, v4}, Landroidx/fragment/app/a;->c(I)V

    invoke-static/range {p1 .. p1}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v5

    if-eqz v5, :cond_10

    const-string v5, "restoreAllState: back stack #"

    const-string v6, " (index "

    invoke-static {v5, v3, v6}, Landroidx/activity/result/b;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v12, Landroidx/fragment/app/a;->r:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroidx/fragment/app/q0;

    invoke-direct {v5}, Landroidx/fragment/app/q0;-><init>()V

    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v5, "  "

    const/4 v7, 0x0

    invoke-virtual {v12, v5, v6, v7}, Landroidx/fragment/app/a;->d(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    goto :goto_8

    :cond_10
    const/4 v7, 0x0

    :goto_8
    iget-object v5, v0, Landroidx/fragment/app/h0;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move/from16 v9, p1

    move v11, v4

    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_11
    const/4 v7, 0x0

    goto :goto_9

    :cond_12
    move-object v3, v4

    const/4 v7, 0x0

    iput-object v3, v0, Landroidx/fragment/app/h0;->d:Ljava/util/ArrayList;

    :goto_9
    iget-object v3, v0, Landroidx/fragment/app/h0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v4, v1, Landroidx/fragment/app/i0;->d:I

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v3, v1, Landroidx/fragment/app/i0;->e:Ljava/lang/String;

    if-eqz v3, :cond_13

    invoke-virtual {v2, v3}, Landroidx/fragment/app/f;->e(Ljava/lang/String;)Landroidx/fragment/app/r;

    move-result-object v2

    iput-object v2, v0, Landroidx/fragment/app/h0;->q:Landroidx/fragment/app/r;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/h0;->p(Landroidx/fragment/app/r;)V

    :cond_13
    iget-object v2, v1, Landroidx/fragment/app/i0;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_14

    move v5, v7

    :goto_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v5, v3, :cond_14

    iget-object v3, v1, Landroidx/fragment/app/i0;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    iget-object v4, v0, Landroidx/fragment/app/h0;->n:Landroidx/fragment/app/u;

    iget-object v4, v4, Landroidx/fragment/app/u;->b:Le/j;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v4, v0, Landroidx/fragment/app/h0;->j:Ljava/util/Map;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_14
    new-instance v2, Ljava/util/ArrayDeque;

    iget-object v1, v1, Landroidx/fragment/app/i0;->h:Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Landroidx/fragment/app/h0;->w:Ljava/util/ArrayDeque;

    return-void
.end method

.method public final O()Landroidx/fragment/app/i0;
    .locals 13

    invoke-virtual {p0}, Landroidx/fragment/app/h0;->e()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/j;

    iget-boolean v3, v1, Landroidx/fragment/app/j;->e:Z

    if-eqz v3, :cond_0

    iput-boolean v2, v1, Landroidx/fragment/app/j;->e:Z

    invoke-virtual {v1}, Landroidx/fragment/app/j;->c()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/h0;->e()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/j;

    invoke-virtual {v1}, Landroidx/fragment/app/j;->e()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/h0;->w(Z)Z

    iput-boolean v0, p0, Landroidx/fragment/app/h0;->y:Z

    iget-object v1, p0, Landroidx/fragment/app/h0;->F:Landroidx/fragment/app/j0;

    iput-boolean v0, v1, Landroidx/fragment/app/j0;->h:Z

    iget-object v0, p0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, v0, Landroidx/fragment/app/f;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v3, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/n0;

    if-eqz v3, :cond_3

    iget-object v6, v3, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/r;

    new-instance v7, Landroidx/fragment/app/l0;

    invoke-direct {v7, v6}, Landroidx/fragment/app/l0;-><init>(Landroidx/fragment/app/r;)V

    iget v8, v6, Landroidx/fragment/app/r;->a:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_e

    iget-object v8, v7, Landroidx/fragment/app/l0;->m:Landroid/os/Bundle;

    if-nez v8, :cond_e

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6, v8}, Landroidx/fragment/app/r;->r(Landroid/os/Bundle;)V

    iget-object v9, v6, Landroidx/fragment/app/r;->O:Lr0/d;

    invoke-virtual {v9, v8}, Lr0/d;->c(Landroid/os/Bundle;)V

    iget-object v9, v6, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    invoke-virtual {v9}, Landroidx/fragment/app/h0;->O()Landroidx/fragment/app/i0;

    move-result-object v9

    if-eqz v9, :cond_4

    const-string v10, "android:support:fragments"

    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_4
    iget-object v9, v3, Landroidx/fragment/app/n0;->a:Landroidx/activity/result/c;

    invoke-virtual {v9, v2}, Landroidx/activity/result/c;->l(Z)V

    invoke-virtual {v8}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_3

    :cond_5
    move-object v5, v8

    :goto_3
    iget-object v8, v6, Landroidx/fragment/app/r;->E:Landroid/view/View;

    if-eqz v8, :cond_6

    invoke-virtual {v3}, Landroidx/fragment/app/n0;->o()V

    :cond_6
    iget-object v3, v6, Landroidx/fragment/app/r;->c:Landroid/util/SparseArray;

    if-eqz v3, :cond_8

    if-nez v5, :cond_7

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    :cond_7
    const-string v3, "android:view_state"

    iget-object v8, v6, Landroidx/fragment/app/r;->c:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v8}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_8
    iget-object v3, v6, Landroidx/fragment/app/r;->d:Landroid/os/Bundle;

    if-eqz v3, :cond_a

    if-nez v5, :cond_9

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    :cond_9
    const-string v3, "android:view_registry_state"

    iget-object v8, v6, Landroidx/fragment/app/r;->d:Landroid/os/Bundle;

    invoke-virtual {v5, v3, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_a
    iget-boolean v3, v6, Landroidx/fragment/app/r;->G:Z

    if-nez v3, :cond_c

    if-nez v5, :cond_b

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    :cond_b
    const-string v3, "android:user_visible_hint"

    iget-boolean v8, v6, Landroidx/fragment/app/r;->G:Z

    invoke-virtual {v5, v3, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_c
    iput-object v5, v7, Landroidx/fragment/app/l0;->m:Landroid/os/Bundle;

    iget-object v3, v6, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    if-eqz v3, :cond_f

    if-nez v5, :cond_d

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, v7, Landroidx/fragment/app/l0;->m:Landroid/os/Bundle;

    :cond_d
    iget-object v3, v7, Landroidx/fragment/app/l0;->m:Landroid/os/Bundle;

    const-string v5, "android:target_state"

    iget-object v8, v6, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    invoke-virtual {v3, v5, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, v6, Landroidx/fragment/app/r;->i:I

    if-eqz v3, :cond_f

    iget-object v5, v7, Landroidx/fragment/app/l0;->m:Landroid/os/Bundle;

    const-string v8, "android:target_req_state"

    invoke-virtual {v5, v8, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    :cond_e
    iget-object v3, v6, Landroidx/fragment/app/r;->b:Landroid/os/Bundle;

    iput-object v3, v7, Landroidx/fragment/app/l0;->m:Landroid/os/Bundle;

    :cond_f
    :goto_4
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Saved state of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Landroidx/fragment/app/l0;->m:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_10
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {v4}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "FragmentManager"

    const-string v1, "saveAllState: no fragments!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-object v5

    :cond_12
    iget-object v0, p0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    iget-object v3, v0, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v6, v0, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_13

    monitor-exit v3

    move-object v6, v5

    goto :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_13
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, v0, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, v0, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v2

    :cond_14
    :goto_5
    if-ge v8, v7, :cond_15

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Landroidx/fragment/app/r;

    iget-object v10, v9, Landroidx/fragment/app/r;->e:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v10

    if-eqz v10, :cond_14

    const-string v10, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "saveAllState: adding fragment ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Landroidx/fragment/app/r;->e:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_15
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_6
    iget-object v0, p0, Landroidx/fragment/app/h0;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17

    new-array v3, v0, [Landroidx/fragment/app/b;

    :goto_7
    if-ge v2, v0, :cond_18

    new-instance v7, Landroidx/fragment/app/b;

    iget-object v8, p0, Landroidx/fragment/app/h0;->d:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/a;

    invoke-direct {v7, v8}, Landroidx/fragment/app/b;-><init>(Landroidx/fragment/app/a;)V

    aput-object v7, v3, v2

    invoke-static {v4}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v7

    if-eqz v7, :cond_16

    const-string v7, "FragmentManager"

    const-string v8, "saveAllState: adding back stack #"

    const-string v9, ": "

    invoke-static {v8, v2, v9}, Landroidx/activity/result/b;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroidx/fragment/app/h0;->d:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_17
    move-object v3, v5

    :cond_18
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v5, v0, Landroidx/fragment/app/i0;->e:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroidx/fragment/app/i0;->f:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Landroidx/fragment/app/i0;->g:Ljava/util/ArrayList;

    iput-object v1, v0, Landroidx/fragment/app/i0;->a:Ljava/util/ArrayList;

    iput-object v6, v0, Landroidx/fragment/app/i0;->b:Ljava/util/ArrayList;

    iput-object v3, v0, Landroidx/fragment/app/i0;->c:[Landroidx/fragment/app/b;

    iget-object v1, p0, Landroidx/fragment/app/h0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iput v1, v0, Landroidx/fragment/app/i0;->d:I

    iget-object v1, p0, Landroidx/fragment/app/h0;->q:Landroidx/fragment/app/r;

    if-eqz v1, :cond_19

    iget-object v1, v1, Landroidx/fragment/app/r;->e:Ljava/lang/String;

    iput-object v1, v0, Landroidx/fragment/app/i0;->e:Ljava/lang/String;

    :cond_19
    iget-object v1, p0, Landroidx/fragment/app/h0;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Landroidx/fragment/app/h0;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/h0;->w:Ljava/util/ArrayDeque;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/fragment/app/i0;->h:Ljava/util/ArrayList;

    return-object v0

    :goto_8
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final P()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/h0;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/h0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/h0;->n:Landroidx/fragment/app/u;

    iget-object v1, v1, Landroidx/fragment/app/u;->c:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/fragment/app/h0;->G:Landroidx/activity/d;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroidx/fragment/app/h0;->n:Landroidx/fragment/app/u;

    iget-object v1, v1, Landroidx/fragment/app/u;->c:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/fragment/app/h0;->G:Landroidx/activity/d;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/h0;->W()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final Q(Landroidx/fragment/app/r;Z)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/h0;->z(Landroidx/fragment/app/r;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroidx/fragment/app/w;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/fragment/app/w;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/w;->setDrawDisappearingViewsLast(Z)V

    :cond_0
    return-void
.end method

.method public final R(Landroidx/fragment/app/r;Landroidx/lifecycle/l;)V
    .locals 2

    iget-object v0, p1, Landroidx/fragment/app/r;->e:Ljava/lang/String;

    iget-object v1, p0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/f;->e(Ljava/lang/String;)Landroidx/fragment/app/r;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/r;->s:Landroidx/fragment/app/u;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/r;->r:Landroidx/fragment/app/h0;

    if-ne v0, p0, :cond_1

    :cond_0
    iput-object p2, p1, Landroidx/fragment/app/r;->K:Landroidx/lifecycle/l;

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final S(Landroidx/fragment/app/r;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/r;->e:Ljava/lang/String;

    iget-object v1, p0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/f;->e(Ljava/lang/String;)Landroidx/fragment/app/r;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/r;->s:Landroidx/fragment/app/u;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/r;->r:Landroidx/fragment/app/h0;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/h0;->q:Landroidx/fragment/app/r;

    iput-object p1, p0, Landroidx/fragment/app/h0;->q:Landroidx/fragment/app/r;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/h0;->p(Landroidx/fragment/app/r;)V

    iget-object p1, p0, Landroidx/fragment/app/h0;->q:Landroidx/fragment/app/r;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/h0;->p(Landroidx/fragment/app/r;)V

    return-void
.end method

.method public final T(Landroidx/fragment/app/r;)V
    .locals 5

    invoke-virtual {p0, p1}, Landroidx/fragment/app/h0;->z(Landroidx/fragment/app/r;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p1, Landroidx/fragment/app/r;->H:Landroidx/fragment/app/p;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    iget v3, v1, Landroidx/fragment/app/p;->b:I

    :goto_0
    if-nez v1, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    iget v4, v1, Landroidx/fragment/app/p;->c:I

    :goto_1
    add-int/2addr v4, v3

    if-nez v1, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    iget v3, v1, Landroidx/fragment/app/p;->d:I

    :goto_2
    add-int/2addr v3, v4

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    iget v1, v1, Landroidx/fragment/app/p;->e:I

    :goto_3
    add-int/2addr v1, v3

    if-lez v1, :cond_7

    const v1, 0x7f09032f

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/r;

    iget-object p1, p1, Landroidx/fragment/app/r;->H:Landroidx/fragment/app/p;

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    iget-boolean v2, p1, Landroidx/fragment/app/p;->a:Z

    :goto_4
    iget-object p1, v0, Landroidx/fragment/app/r;->H:Landroidx/fragment/app/p;

    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Landroidx/fragment/app/r;->d()Landroidx/fragment/app/p;

    move-result-object p1

    iput-boolean v2, p1, Landroidx/fragment/app/p;->a:Z

    :cond_7
    :goto_5
    return-void
.end method

.method public final V()V
    .locals 7

    iget-object v0, p0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroidx/fragment/app/n0;

    iget-object v5, v4, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/r;

    iget-boolean v6, v5, Landroidx/fragment/app/r;->F:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Landroidx/fragment/app/h0;->b:Z

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroidx/fragment/app/h0;->B:Z

    goto :goto_0

    :cond_1
    iput-boolean v2, v5, Landroidx/fragment/app/r;->F:Z

    invoke-virtual {v4}, Landroidx/fragment/app/n0;->k()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final W()V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/h0;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/h0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/h0;->h:Landroidx/fragment/app/a0;

    iput-boolean v2, v1, Landroidx/fragment/app/a0;->a:Z

    iget-object v1, v1, Landroidx/fragment/app/a0;->c:Landroidx/activity/j;

    if-eqz v1, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroidx/activity/j;->accept(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/fragment/app/h0;->h:Landroidx/fragment/app/a0;

    iget-object v1, p0, Landroidx/fragment/app/h0;->d:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-lez v1, :cond_3

    iget-object v1, p0, Landroidx/fragment/app/h0;->p:Landroidx/fragment/app/r;

    invoke-static {v1}, Landroidx/fragment/app/h0;->G(Landroidx/fragment/app/r;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    iput-boolean v2, v0, Landroidx/fragment/app/a0;->a:Z

    iget-object v0, v0, Landroidx/fragment/app/a0;->c:Landroidx/activity/j;

    if-eqz v0, :cond_4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/activity/j;->accept(Ljava/lang/Object;)V

    :cond_4
    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final a(Landroidx/fragment/app/r;)Landroidx/fragment/app/n0;
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "add: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/h0;->f(Landroidx/fragment/app/r;)Landroidx/fragment/app/n0;

    move-result-object v0

    iput-object p0, p1, Landroidx/fragment/app/r;->r:Landroidx/fragment/app/h0;

    iget-object v1, p0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/f;->s(Landroidx/fragment/app/n0;)V

    iget-boolean v2, p1, Landroidx/fragment/app/r;->z:Z

    if-nez v2, :cond_2

    invoke-virtual {v1, p1}, Landroidx/fragment/app/f;->a(Landroidx/fragment/app/r;)V

    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/fragment/app/r;->l:Z

    iget-object v2, p1, Landroidx/fragment/app/r;->E:Landroid/view/View;

    if-nez v2, :cond_1

    iput-boolean v1, p1, Landroidx/fragment/app/r;->I:Z

    :cond_1
    invoke-static {p1}, Landroidx/fragment/app/h0;->E(Landroidx/fragment/app/r;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/h0;->x:Z

    :cond_2
    return-object v0
.end method

.method public final b(Landroidx/fragment/app/u;La1/b;Landroidx/fragment/app/r;)V
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/h0;->n:Landroidx/fragment/app/u;

    if-nez v0, :cond_10

    iput-object p1, p0, Landroidx/fragment/app/h0;->n:Landroidx/fragment/app/u;

    iput-object p2, p0, Landroidx/fragment/app/h0;->o:La1/b;

    iput-object p3, p0, Landroidx/fragment/app/h0;->p:Landroidx/fragment/app/r;

    iget-object p2, p0, Landroidx/fragment/app/h0;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p3, :cond_0

    new-instance v0, Landroidx/fragment/app/c0;

    invoke-direct {v0, p3}, Landroidx/fragment/app/c0;-><init>(Landroidx/fragment/app/r;)V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/fragment/app/h0;->p:Landroidx/fragment/app/r;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/h0;->W()V

    :cond_2
    if-eqz p1, :cond_4

    iget-object p2, p1, Landroidx/fragment/app/u;->e:Le/j;

    iget-object p2, p2, Landroidx/activity/h;->g:Landroidx/activity/n;

    iput-object p2, p0, Landroidx/fragment/app/h0;->g:Landroidx/activity/n;

    if-eqz p3, :cond_3

    move-object v0, p3

    goto :goto_1

    :cond_3
    move-object v0, p1

    :goto_1
    iget-object v1, p0, Landroidx/fragment/app/h0;->h:Landroidx/fragment/app/a0;

    invoke-virtual {p2, v0, v1}, Landroidx/activity/n;->a(Landroidx/lifecycle/q;Landroidx/fragment/app/a0;)V

    :cond_4
    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p3, :cond_6

    iget-object p1, p3, Landroidx/fragment/app/r;->r:Landroidx/fragment/app/h0;

    iget-object p1, p1, Landroidx/fragment/app/h0;->F:Landroidx/fragment/app/j0;

    iget-object v1, p1, Landroidx/fragment/app/j0;->d:Ljava/util/HashMap;

    iget-object v2, p3, Landroidx/fragment/app/r;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/j0;

    if-nez v2, :cond_5

    new-instance v2, Landroidx/fragment/app/j0;

    iget-boolean p1, p1, Landroidx/fragment/app/j0;->f:Z

    invoke-direct {v2, p1}, Landroidx/fragment/app/j0;-><init>(Z)V

    iget-object p1, p3, Landroidx/fragment/app/r;->e:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iput-object v2, p0, Landroidx/fragment/app/h0;->F:Landroidx/fragment/app/j0;

    goto/16 :goto_5

    :cond_6
    if-eqz p1, :cond_b

    iget-object p1, p1, Landroidx/fragment/app/u;->e:Le/j;

    invoke-virtual {p1}, Landroidx/activity/h;->e()Landroidx/lifecycle/i0;

    move-result-object p1

    const-string v1, "store"

    invoke-static {p1, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Landroidx/lifecycle/i0;->a:Ljava/util/HashMap;

    sget-object v1, Ln0/a;->b:Ln0/a;

    const-string v2, "defaultCreationExtras"

    invoke-static {v1, v2}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v2, Landroidx/fragment/app/j0;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    const-string v4, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "key"

    invoke-static {v3, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/g0;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, v1, Ln0/b;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    sget-object v1, Landroidx/lifecycle/h0;->b:Landroidx/lifecycle/h0;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v1, Landroidx/fragment/app/j0;

    invoke-direct {v1, v0}, Landroidx/fragment/app/j0;-><init>(Z)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v4, v1

    goto :goto_3

    :catch_0
    new-instance v1, Landroidx/fragment/app/j0;

    invoke-direct {v1, v0}, Landroidx/fragment/app/j0;-><init>(Z)V

    goto :goto_2

    :goto_3
    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/g0;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroidx/lifecycle/g0;->a()V

    :cond_9
    :goto_4
    check-cast v4, Landroidx/fragment/app/j0;

    iput-object v4, p0, Landroidx/fragment/app/h0;->F:Landroidx/fragment/app/j0;

    goto :goto_5

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Landroidx/fragment/app/j0;

    invoke-direct {p1, p2}, Landroidx/fragment/app/j0;-><init>(Z)V

    iput-object p1, p0, Landroidx/fragment/app/h0;->F:Landroidx/fragment/app/j0;

    :goto_5
    iget-object p1, p0, Landroidx/fragment/app/h0;->F:Landroidx/fragment/app/j0;

    iget-boolean v1, p0, Landroidx/fragment/app/h0;->y:Z

    if-nez v1, :cond_c

    iget-boolean v1, p0, Landroidx/fragment/app/h0;->z:Z

    if-eqz v1, :cond_d

    :cond_c
    move p2, v0

    :cond_d
    iput-boolean p2, p1, Landroidx/fragment/app/j0;->h:Z

    iget-object p2, p0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    iput-object p1, p2, Landroidx/fragment/app/f;->d:Ljava/lang/Object;

    iget-object p1, p0, Landroidx/fragment/app/h0;->n:Landroidx/fragment/app/u;

    if-eqz p1, :cond_f

    iget-object p1, p1, Landroidx/fragment/app/u;->e:Le/j;

    iget-object p1, p1, Landroidx/activity/h;->h:Landroidx/activity/e;

    if-eqz p3, :cond_e

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p3, Landroidx/fragment/app/r;->e:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    :cond_e
    const-string p2, ""

    :goto_6
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "FragmentManager:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "StartActivityForResult"

    invoke-static {p2, p3}, Ln/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Landroidx/fragment/app/d0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/fragment/app/d0;-><init>(I)V

    new-instance v1, Landroidx/fragment/app/z;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Landroidx/fragment/app/z;-><init>(Landroidx/fragment/app/h0;I)V

    invoke-virtual {p1, p3, v0, v1}, Landroidx/activity/e;->b(Ljava/lang/String;La1/b;Landroidx/fragment/app/z;)Landroidx/activity/result/c;

    move-result-object p3

    iput-object p3, p0, Landroidx/fragment/app/h0;->t:Landroidx/activity/result/c;

    const-string p3, "StartIntentSenderForResult"

    invoke-static {p2, p3}, Ln/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Landroidx/fragment/app/d0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/fragment/app/d0;-><init>(I)V

    new-instance v1, Landroidx/fragment/app/z;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/fragment/app/z;-><init>(Landroidx/fragment/app/h0;I)V

    invoke-virtual {p1, p3, v0, v1}, Landroidx/activity/e;->b(Ljava/lang/String;La1/b;Landroidx/fragment/app/z;)Landroidx/activity/result/c;

    move-result-object p3

    iput-object p3, p0, Landroidx/fragment/app/h0;->u:Landroidx/activity/result/c;

    const-string p3, "RequestPermissions"

    invoke-static {p2, p3}, Ln/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Landroidx/fragment/app/d0;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroidx/fragment/app/d0;-><init>(I)V

    new-instance v0, Landroidx/fragment/app/z;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/z;-><init>(Landroidx/fragment/app/h0;I)V

    invoke-virtual {p1, p2, p3, v0}, Landroidx/activity/e;->b(Ljava/lang/String;La1/b;Landroidx/fragment/app/z;)Landroidx/activity/result/c;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/h0;->v:Landroidx/activity/result/c;

    :cond_f
    return-void

    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Landroidx/fragment/app/r;)V
    .locals 4

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "attach: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/r;->z:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/fragment/app/r;->z:Z

    iget-boolean v1, p1, Landroidx/fragment/app/r;->k:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/f;->a(Landroidx/fragment/app/r;)V

    invoke-static {v0}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "add from attach: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {p1}, Landroidx/fragment/app/h0;->E(Landroidx/fragment/app/r;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/h0;->x:Z

    :cond_2
    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/h0;->b:Z

    iget-object v0, p0, Landroidx/fragment/app/h0;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/fragment/app/h0;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final e()Ljava/util/HashSet;
    .locals 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    invoke-virtual {v1}, Landroidx/fragment/app/f;->g()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroidx/fragment/app/n0;

    iget-object v4, v4, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/r;

    iget-object v4, v4, Landroidx/fragment/app/r;->D:Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/h0;->B()Ls1/e;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/fragment/app/j;->f(Landroid/view/ViewGroup;Ls1/e;)Landroidx/fragment/app/j;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final f(Landroidx/fragment/app/r;)Landroidx/fragment/app/n0;
    .locals 3

    iget-object v0, p1, Landroidx/fragment/app/r;->e:Ljava/lang/String;

    iget-object v1, p0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    iget-object v2, v1, Landroidx/fragment/app/f;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/n0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroidx/fragment/app/n0;

    iget-object v2, p0, Landroidx/fragment/app/h0;->k:Landroidx/activity/result/c;

    invoke-direct {v0, v2, v1, p1}, Landroidx/fragment/app/n0;-><init>(Landroidx/activity/result/c;Landroidx/fragment/app/f;Landroidx/fragment/app/r;)V

    iget-object p1, p0, Landroidx/fragment/app/h0;->n:Landroidx/fragment/app/u;

    iget-object p1, p1, Landroidx/fragment/app/u;->b:Le/j;

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/n0;->m(Ljava/lang/ClassLoader;)V

    iget p1, p0, Landroidx/fragment/app/h0;->m:I

    iput p1, v0, Landroidx/fragment/app/n0;->e:I

    return-object v0
.end method

.method public final g(Landroidx/fragment/app/r;)V
    .locals 4

    const-string v0, "FragmentManager"

    const/4 v1, 0x2

    invoke-static {v1}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "detach: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p1, Landroidx/fragment/app/r;->z:Z

    if-nez v2, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p1, Landroidx/fragment/app/r;->z:Z

    iget-boolean v3, p1, Landroidx/fragment/app/r;->k:Z

    if-eqz v3, :cond_3

    invoke-static {v1}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "remove from detach: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    iget-object v1, v0, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/r;->k:Z

    invoke-static {p1}, Landroidx/fragment/app/h0;->E(Landroidx/fragment/app/r;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Landroidx/fragment/app/h0;->x:Z

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/h0;->T(Landroidx/fragment/app/r;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    return-void
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/r;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/r;->C:Z

    iget-object v1, v1, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    invoke-virtual {v1}, Landroidx/fragment/app/h0;->h()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final i()Z
    .locals 5

    iget v0, p0, Landroidx/fragment/app/h0;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/r;

    if-eqz v3, :cond_1

    iget-boolean v4, v3, Landroidx/fragment/app/r;->y:Z

    if-nez v4, :cond_2

    iget-object v3, v3, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    invoke-virtual {v3}, Landroidx/fragment/app/h0;->i()Z

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method public final j()Z
    .locals 7

    iget v0, p0, Landroidx/fragment/app/h0;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/r;

    if-eqz v5, :cond_1

    invoke-static {v5}, Landroidx/fragment/app/h0;->F(Landroidx/fragment/app/r;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, v5, Landroidx/fragment/app/r;->y:Z

    if-nez v6, :cond_2

    iget-object v6, v5, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    invoke-virtual {v6}, Landroidx/fragment/app/h0;->j()Z

    move-result v6

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    if-eqz v6, :cond_1

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/h0;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    :goto_2
    iget-object v0, p0, Landroidx/fragment/app/h0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Landroidx/fragment/app/h0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/r;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    iput-object v3, p0, Landroidx/fragment/app/h0;->e:Ljava/util/ArrayList;

    return v4
.end method

.method public final k()V
    .locals 9

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/h0;->A:Z

    invoke-virtual {p0, v0}, Landroidx/fragment/app/h0;->w(Z)Z

    invoke-virtual {p0}, Landroidx/fragment/app/h0;->e()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/j;

    invoke-virtual {v1}, Landroidx/fragment/app/j;->e()V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/h0;->s(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/h0;->n:Landroidx/fragment/app/u;

    iput-object v0, p0, Landroidx/fragment/app/h0;->o:La1/b;

    iput-object v0, p0, Landroidx/fragment/app/h0;->p:Landroidx/fragment/app/r;

    iget-object v1, p0, Landroidx/fragment/app/h0;->g:Landroidx/activity/n;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/fragment/app/h0;->h:Landroidx/fragment/app/a0;

    iget-object v1, v1, Landroidx/fragment/app/a0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/activity/a;

    invoke-interface {v2}, Landroidx/activity/a;->cancel()V

    goto :goto_1

    :cond_1
    iput-object v0, p0, Landroidx/fragment/app/h0;->g:Landroidx/activity/n;

    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/h0;->t:Landroidx/activity/result/c;

    if-eqz v0, :cond_f

    iget-object v1, v0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/activity/e;

    iget-object v0, v0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Landroidx/activity/e;->h:Landroid/os/Bundle;

    iget-object v3, v1, Landroidx/activity/e;->g:Ljava/util/HashMap;

    iget-object v4, v1, Landroidx/activity/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v1, Landroidx/activity/e;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    iget-object v5, v1, Landroidx/activity/e;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v4, v1, Landroidx/activity/e;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "ActivityResultRegistry"

    const-string v6, "Dropping pending result for request "

    const-string v7, ": "

    if-eqz v4, :cond_4

    invoke-static {v6, v0, v7}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v6, v0, v7}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_5
    iget-object v1, v1, Landroidx/activity/e;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Landroidx/fragment/app/h0;->u:Landroidx/activity/result/c;

    iget-object v1, v0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/activity/e;

    iget-object v0, v0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Landroidx/activity/e;->h:Landroid/os/Bundle;

    iget-object v3, v1, Landroidx/activity/e;->g:Ljava/util/HashMap;

    iget-object v4, v1, Landroidx/activity/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v1, Landroidx/activity/e;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_6

    iget-object v8, v1, Landroidx/activity/e;->b:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v4, v1, Landroidx/activity/e;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v6, v0, v7}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v6, v0, v7}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_8
    iget-object v1, v1, Landroidx/activity/e;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    iget-object v0, p0, Landroidx/fragment/app/h0;->v:Landroidx/activity/result/c;

    iget-object v1, v0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/activity/e;

    iget-object v0, v0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Landroidx/activity/e;->h:Landroid/os/Bundle;

    iget-object v3, v1, Landroidx/activity/e;->g:Ljava/util/HashMap;

    iget-object v4, v1, Landroidx/activity/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, v1, Landroidx/activity/e;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_9

    iget-object v8, v1, Landroidx/activity/e;->b:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v4, v1, Landroidx/activity/e;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v6, v0, v7}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {v6, v0, v7}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_b
    iget-object v1, v1, Landroidx/activity/e;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_2

    :cond_c
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_f
    :goto_2
    return-void
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/r;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/fragment/app/r;->C:Z

    iget-object v1, v1, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    invoke-virtual {v1}, Landroidx/fragment/app/h0;->l()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/r;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    invoke-virtual {v1}, Landroidx/fragment/app/h0;->m()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final n()Z
    .locals 5

    iget v0, p0, Landroidx/fragment/app/h0;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/r;

    if-eqz v3, :cond_1

    iget-boolean v4, v3, Landroidx/fragment/app/r;->y:Z

    if-nez v4, :cond_2

    iget-object v3, v3, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    invoke-virtual {v3}, Landroidx/fragment/app/h0;->n()Z

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method public final o()V
    .locals 3

    iget v0, p0, Landroidx/fragment/app/h0;->m:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/r;

    if-eqz v1, :cond_1

    iget-boolean v2, v1, Landroidx/fragment/app/r;->y:Z

    if-nez v2, :cond_1

    iget-object v1, v1, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    invoke-virtual {v1}, Landroidx/fragment/app/h0;->o()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final p(Landroidx/fragment/app/r;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/r;->e:Ljava/lang/String;

    iget-object v1, p0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/f;->e(Ljava/lang/String;)Landroidx/fragment/app/r;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/r;->r:Landroidx/fragment/app/h0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/fragment/app/h0;->G(Landroidx/fragment/app/r;)Z

    move-result v0

    iget-object v1, p1, Landroidx/fragment/app/r;->j:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Landroidx/fragment/app/r;->j:Ljava/lang/Boolean;

    iget-object p1, p1, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    invoke-virtual {p1}, Landroidx/fragment/app/h0;->W()V

    iget-object v0, p1, Landroidx/fragment/app/h0;->q:Landroidx/fragment/app/r;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/h0;->p(Landroidx/fragment/app/r;)V

    :cond_1
    return-void
.end method

.method public final q()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/r;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    invoke-virtual {v1}, Landroidx/fragment/app/h0;->q()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final r()Z
    .locals 6

    iget v0, p0, Landroidx/fragment/app/h0;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/r;

    if-eqz v4, :cond_1

    invoke-static {v4}, Landroidx/fragment/app/h0;->F(Landroidx/fragment/app/r;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, v4, Landroidx/fragment/app/r;->y:Z

    if-nez v5, :cond_2

    iget-object v4, v4, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    invoke-virtual {v4}, Landroidx/fragment/app/h0;->r()Z

    move-result v4

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    if-eqz v4, :cond_1

    move v3, v2

    goto :goto_0

    :cond_3
    return v3
.end method

.method public final s(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/h0;->b:Z

    iget-object v2, p0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    iget-object v2, v2, Landroidx/fragment/app/f;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/n0;

    if-eqz v3, :cond_0

    iput p1, v3, Landroidx/fragment/app/n0;->e:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/h0;->H(IZ)V

    invoke-virtual {p0}, Landroidx/fragment/app/h0;->e()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/j;

    invoke-virtual {v2}, Landroidx/fragment/app/j;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    iput-boolean v1, p0, Landroidx/fragment/app/h0;->b:Z

    invoke-virtual {p0, v0}, Landroidx/fragment/app/h0;->w(Z)Z

    return-void

    :goto_2
    iput-boolean v1, p0, Landroidx/fragment/app/h0;->b:Z

    throw p1
.end method

.method public final t(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 13

    move-object/from16 v0, p3

    const-string v1, "    "

    invoke-static {p1, v1}, Ln/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    iget-object v3, v2, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    const-string v4, "    "

    invoke-static {p1, v4}, Ln/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, v2, Landroidx/fragment/app/f;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_21

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "Active Fragments:"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/n0;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v5, :cond_20

    iget-object v5, v5, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/r;

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "mFragmentId=#"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v5, Landroidx/fragment/app/r;->v:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " mContainerId=#"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v5, Landroidx/fragment/app/r;->w:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " mTag="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v5, Landroidx/fragment/app/r;->x:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "mState="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v5, Landroidx/fragment/app/r;->a:I

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " mWho="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v5, Landroidx/fragment/app/r;->e:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " mBackStackNesting="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v5, Landroidx/fragment/app/r;->q:I

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "mAdded="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v5, Landroidx/fragment/app/r;->k:Z

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " mRemoving="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v5, Landroidx/fragment/app/r;->l:Z

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " mFromLayout="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v5, Landroidx/fragment/app/r;->m:Z

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " mInLayout="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v5, Landroidx/fragment/app/r;->n:Z

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "mHidden="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v5, Landroidx/fragment/app/r;->y:Z

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " mDetached="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v5, Landroidx/fragment/app/r;->z:Z

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " mMenuVisible="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v5, Landroidx/fragment/app/r;->B:Z

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " mHasMenu="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "mRetainInstance="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v5, Landroidx/fragment/app/r;->A:Z

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " mUserVisibleHint="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v5, Landroidx/fragment/app/r;->G:Z

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v7, v5, Landroidx/fragment/app/r;->r:Landroidx/fragment/app/h0;

    if-eqz v7, :cond_0

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "mFragmentManager="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v5, Landroidx/fragment/app/r;->r:Landroidx/fragment/app/h0;

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    iget-object v7, v5, Landroidx/fragment/app/r;->s:Landroidx/fragment/app/u;

    if-eqz v7, :cond_1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "mHost="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v5, Landroidx/fragment/app/r;->s:Landroidx/fragment/app/u;

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-object v7, v5, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/r;

    if-eqz v7, :cond_2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "mParentFragment="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v5, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/r;

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget-object v7, v5, Landroidx/fragment/app/r;->f:Landroid/os/Bundle;

    if-eqz v7, :cond_3

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "mArguments="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v5, Landroidx/fragment/app/r;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    iget-object v7, v5, Landroidx/fragment/app/r;->b:Landroid/os/Bundle;

    if-eqz v7, :cond_4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "mSavedFragmentState="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v5, Landroidx/fragment/app/r;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v7, v5, Landroidx/fragment/app/r;->c:Landroid/util/SparseArray;

    if-eqz v7, :cond_5

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "mSavedViewState="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v5, Landroidx/fragment/app/r;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    iget-object v7, v5, Landroidx/fragment/app/r;->d:Landroid/os/Bundle;

    if-eqz v7, :cond_6

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "mSavedViewRegistryState="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v5, Landroidx/fragment/app/r;->d:Landroid/os/Bundle;

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    iget-object v7, v5, Landroidx/fragment/app/r;->g:Landroidx/fragment/app/r;

    const/4 v8, 0x0

    if-eqz v7, :cond_7

    goto :goto_1

    :cond_7
    iget-object v7, v5, Landroidx/fragment/app/r;->r:Landroidx/fragment/app/h0;

    if-eqz v7, :cond_8

    iget-object v9, v5, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    if-eqz v9, :cond_8

    iget-object v7, v7, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    invoke-virtual {v7, v9}, Landroidx/fragment/app/f;->e(Ljava/lang/String;)Landroidx/fragment/app/r;

    move-result-object v7

    goto :goto_1

    :cond_8
    move-object v7, v8

    :goto_1
    if-eqz v7, :cond_9

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mTarget="

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, " mTargetRequestCode="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v5, Landroidx/fragment/app/r;->i:I

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(I)V

    :cond_9
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "mPopDirection="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v5, Landroidx/fragment/app/r;->H:Landroidx/fragment/app/p;

    if-nez v7, :cond_a

    move v7, v6

    goto :goto_2

    :cond_a
    iget-boolean v7, v7, Landroidx/fragment/app/p;->a:Z

    :goto_2
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v7, v5, Landroidx/fragment/app/r;->H:Landroidx/fragment/app/p;

    if-nez v7, :cond_b

    move v7, v6

    goto :goto_3

    :cond_b
    iget v7, v7, Landroidx/fragment/app/p;->b:I

    :goto_3
    if-eqz v7, :cond_d

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "getEnterAnim="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v5, Landroidx/fragment/app/r;->H:Landroidx/fragment/app/p;

    if-nez v7, :cond_c

    move v7, v6

    goto :goto_4

    :cond_c
    iget v7, v7, Landroidx/fragment/app/p;->b:I

    :goto_4
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(I)V

    :cond_d
    iget-object v7, v5, Landroidx/fragment/app/r;->H:Landroidx/fragment/app/p;

    if-nez v7, :cond_e

    move v7, v6

    goto :goto_5

    :cond_e
    iget v7, v7, Landroidx/fragment/app/p;->c:I

    :goto_5
    if-eqz v7, :cond_10

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "getExitAnim="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v5, Landroidx/fragment/app/r;->H:Landroidx/fragment/app/p;

    if-nez v7, :cond_f

    move v7, v6

    goto :goto_6

    :cond_f
    iget v7, v7, Landroidx/fragment/app/p;->c:I

    :goto_6
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(I)V

    :cond_10
    iget-object v7, v5, Landroidx/fragment/app/r;->H:Landroidx/fragment/app/p;

    if-nez v7, :cond_11

    move v7, v6

    goto :goto_7

    :cond_11
    iget v7, v7, Landroidx/fragment/app/p;->d:I

    :goto_7
    if-eqz v7, :cond_13

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "getPopEnterAnim="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v5, Landroidx/fragment/app/r;->H:Landroidx/fragment/app/p;

    if-nez v7, :cond_12

    move v7, v6

    goto :goto_8

    :cond_12
    iget v7, v7, Landroidx/fragment/app/p;->d:I

    :goto_8
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(I)V

    :cond_13
    iget-object v7, v5, Landroidx/fragment/app/r;->H:Landroidx/fragment/app/p;

    if-nez v7, :cond_14

    move v7, v6

    goto :goto_9

    :cond_14
    iget v7, v7, Landroidx/fragment/app/p;->e:I

    :goto_9
    if-eqz v7, :cond_16

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "getPopExitAnim="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v5, Landroidx/fragment/app/r;->H:Landroidx/fragment/app/p;

    if-nez v7, :cond_15

    move v7, v6

    goto :goto_a

    :cond_15
    iget v7, v7, Landroidx/fragment/app/p;->e:I

    :goto_a
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(I)V

    :cond_16
    iget-object v7, v5, Landroidx/fragment/app/r;->D:Landroid/view/ViewGroup;

    if-eqz v7, :cond_17

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "mContainer="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v5, Landroidx/fragment/app/r;->D:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_17
    iget-object v7, v5, Landroidx/fragment/app/r;->E:Landroid/view/View;

    if-eqz v7, :cond_18

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "mView="

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v5, Landroidx/fragment/app/r;->E:Landroid/view/View;

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {v5}, Landroidx/fragment/app/r;->h()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_1f

    invoke-interface {v5}, Landroidx/lifecycle/j0;->e()Landroidx/lifecycle/i0;

    move-result-object v7

    const-string v9, "store"

    invoke-static {v7, v9}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v7, Landroidx/lifecycle/i0;->a:Ljava/util/HashMap;

    sget-object v9, Ln0/a;->b:Ln0/a;

    const-string v10, "defaultCreationExtras"

    invoke-static {v9, v10}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v10, Lo0/a;

    invoke-virtual {v10}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1e

    const-string v12, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "key"

    invoke-static {v11, v12}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/lifecycle/g0;

    invoke-virtual {v10, v12}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    if-eqz v12, :cond_19

    goto :goto_d

    :cond_19
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v9, v9, Ln0/b;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v10, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    sget-object v9, Landroidx/lifecycle/h0;->b:Landroidx/lifecycle/h0;

    invoke-interface {v10, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v9, Lo0/a;

    invoke-direct {v9}, Lo0/a;-><init>()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_b
    move-object v12, v9

    goto :goto_c

    :catch_0
    new-instance v9, Lo0/a;

    invoke-direct {v9}, Lo0/a;-><init>()V

    goto :goto_b

    :goto_c
    invoke-virtual {v7, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/lifecycle/g0;

    if-eqz v7, :cond_1b

    invoke-virtual {v7}, Landroidx/lifecycle/g0;->a()V

    :cond_1b
    :goto_d
    check-cast v12, Lo0/a;

    iget-object v7, v12, Lo0/a;->c:Ll/l;

    iget v9, v7, Ll/l;->c:I

    if-lez v9, :cond_1f

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "Loaders:"

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v9, v7, Ll/l;->c:I

    if-gtz v9, :cond_1c

    goto :goto_e

    :cond_1c
    iget-object p1, v7, Ll/l;->b:[Ljava/lang/Object;

    aget-object p1, p1, v6

    if-nez p1, :cond_1d

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  #"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, v7, Ll/l;->a:[I

    aget p1, p1, v6

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    throw v8

    :cond_1d
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    :goto_e
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Child "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v5, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, v5, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    const-string v7, "  "

    invoke-static {v4, v7}, Ln/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v9, p4

    invoke-virtual {v5, v7, p2, v0, v9}, Landroidx/fragment/app/h0;->t(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_20
    move-object/from16 v9, p4

    const-string v5, "null"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_21
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_22

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Added Fragments:"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v4, v6

    :goto_f
    if-ge v4, v2, :cond_22

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/r;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "  #"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroidx/fragment/app/r;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_22
    iget-object v2, p0, Landroidx/fragment/app/h0;->e:Ljava/util/ArrayList;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_23

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Fragments Created Menus:"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v6

    :goto_10
    if-ge v3, v2, :cond_23

    iget-object v4, p0, Landroidx/fragment/app/h0;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/r;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroidx/fragment/app/r;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_23
    iget-object v2, p0, Landroidx/fragment/app/h0;->d:Ljava/util/ArrayList;

    if-eqz v2, :cond_24

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_24

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Back Stack:"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v6

    :goto_11
    if-ge v3, v2, :cond_24

    iget-object v4, p0, Landroidx/fragment/app/h0;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/a;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v0, v5}, Landroidx/fragment/app/a;->d(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_24
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Back Stack Index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/fragment/app/h0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/h0;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Landroidx/fragment/app/h0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_25

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Pending Actions:"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_12
    if-ge v6, v2, :cond_25

    iget-object v3, p0, Landroidx/fragment/app/h0;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/f0;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_13

    :cond_25
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "FragmentManager misc state:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  mHost="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/h0;->n:Landroidx/fragment/app/u;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  mContainer="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/h0;->o:La1/b;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/fragment/app/h0;->p:Landroidx/fragment/app/r;

    if-eqz v1, :cond_26

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  mParent="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/h0;->p:Landroidx/fragment/app/r;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_26
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  mCurState="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroidx/fragment/app/h0;->m:I

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " mStateSaved="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/h0;->y:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/h0;->z:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mDestroyed="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/h0;->A:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean v1, p0, Landroidx/fragment/app/h0;->x:Z

    if-eqz v1, :cond_27

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNeedMenuInvalidate="

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroidx/fragment/app/h0;->x:Z

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_27
    return-void

    :goto_13
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/h0;->p:Landroidx/fragment/app/r;

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/h0;->p:Landroidx/fragment/app/r;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/h0;->n:Landroidx/fragment/app/u;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/h0;->n:Landroidx/fragment/app/u;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Landroidx/fragment/app/f0;Z)V
    .locals 2

    if-nez p2, :cond_3

    iget-object v0, p0, Landroidx/fragment/app/h0;->n:Landroidx/fragment/app/u;

    if-nez v0, :cond_1

    iget-boolean p1, p0, Landroidx/fragment/app/h0;->A:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has not been attached to a host."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-boolean v0, p0, Landroidx/fragment/app/h0;->y:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/fragment/app/h0;->z:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/h0;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/h0;->n:Landroidx/fragment/app/u;

    if-nez v1, :cond_5

    if-eqz p2, :cond_4

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-object p2, p0, Landroidx/fragment/app/h0;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/h0;->P()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final v(Z)V
    .locals 2

    iget-boolean v0, p0, Landroidx/fragment/app/h0;->b:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/fragment/app/h0;->n:Landroidx/fragment/app/u;

    if-nez v0, :cond_1

    iget-boolean p1, p0, Landroidx/fragment/app/h0;->A:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has not been attached to a host."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/h0;->n:Landroidx/fragment/app/u;

    iget-object v1, v1, Landroidx/fragment/app/u;->c:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_5

    if-nez p1, :cond_3

    iget-boolean p1, p0, Landroidx/fragment/app/h0;->y:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Landroidx/fragment/app/h0;->z:Z

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/h0;->C:Ljava/util/ArrayList;

    if-nez p1, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/h0;->C:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/h0;->D:Ljava/util/ArrayList;

    :cond_4
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/fragment/app/h0;->b:Z

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called from main thread of fragment host"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager is already executing transactions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final w(Z)Z
    .locals 8

    invoke-virtual {p0, p1}, Landroidx/fragment/app/h0;->v(Z)V

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/h0;->C:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/h0;->D:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/h0;->a:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Landroidx/fragment/app/h0;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit v3

    move v6, p1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    iget-object v4, p0, Landroidx/fragment/app/h0;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, p1

    move v6, v5

    :goto_1
    if-ge v5, v4, :cond_1

    iget-object v7, p0, Landroidx/fragment/app/h0;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/f0;

    invoke-interface {v7, v1, v2}, Landroidx/fragment/app/f0;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v7

    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/h0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroidx/fragment/app/h0;->n:Landroidx/fragment/app/u;

    iget-object v1, v1, Landroidx/fragment/app/u;->c:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/fragment/app/h0;->G:Landroidx/activity/d;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    if-eqz v6, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/h0;->b:Z

    :try_start_1
    iget-object v1, p0, Landroidx/fragment/app/h0;->C:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/h0;->D:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/h0;->M(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0}, Landroidx/fragment/app/h0;->d()V

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Landroidx/fragment/app/h0;->d()V

    throw p1

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/h0;->W()V

    iget-boolean v1, p0, Landroidx/fragment/app/h0;->B:Z

    if-eqz v1, :cond_3

    iput-boolean p1, p0, Landroidx/fragment/app/h0;->B:Z

    invoke-virtual {p0}, Landroidx/fragment/app/h0;->V()V

    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    iget-object p1, p1, Landroidx/fragment/app/f;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return v0

    :goto_3
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final x(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    iget-object v4, v1, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    move/from16 v5, p3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/a;

    iget-boolean v6, v6, Landroidx/fragment/app/a;->o:Z

    iget-object v7, v1, Landroidx/fragment/app/h0;->E:Ljava/util/ArrayList;

    if-nez v7, :cond_0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Landroidx/fragment/app/h0;->E:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iget-object v7, v1, Landroidx/fragment/app/h0;->E:Ljava/util/ArrayList;

    invoke-virtual {v4}, Landroidx/fragment/app/f;->n()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v7, v1, Landroidx/fragment/app/h0;->q:Landroidx/fragment/app/r;

    move v9, v5

    const/4 v10, 0x0

    :goto_1
    const/4 v11, 0x1

    if-ge v9, v3, :cond_13

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/fragment/app/a;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_d

    iget-object v13, v1, Landroidx/fragment/app/h0;->E:Ljava/util/ArrayList;

    iget-object v8, v12, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    const/4 v15, 0x0

    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v15, v14, :cond_c

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/fragment/app/o0;

    iget v5, v14, Landroidx/fragment/app/o0;->a:I

    if-eq v5, v11, :cond_b

    move/from16 v16, v11

    const/4 v11, 0x2

    move/from16 v17, v6

    const/16 v6, 0x9

    if-eq v5, v11, :cond_5

    const/4 v11, 0x3

    if-eq v5, v11, :cond_4

    const/4 v11, 0x6

    if-eq v5, v11, :cond_4

    const/4 v11, 0x7

    if-eq v5, v11, :cond_3

    const/16 v11, 0x8

    if-eq v5, v11, :cond_1

    goto :goto_3

    :cond_1
    new-instance v5, Landroidx/fragment/app/o0;

    invoke-direct {v5, v6, v7}, Landroidx/fragment/app/o0;-><init>(ILandroidx/fragment/app/r;)V

    invoke-virtual {v8, v15, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    iget-object v5, v14, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/r;

    move-object v7, v5

    :cond_2
    :goto_3
    move/from16 v19, v9

    :goto_4
    move/from16 v6, v16

    goto/16 :goto_9

    :cond_3
    move/from16 v6, v16

    :goto_5
    move/from16 v19, v9

    goto/16 :goto_8

    :cond_4
    iget-object v5, v14, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/r;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v5, v14, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/r;

    if-ne v5, v7, :cond_2

    new-instance v7, Landroidx/fragment/app/o0;

    invoke-direct {v7, v6, v5}, Landroidx/fragment/app/o0;-><init>(ILandroidx/fragment/app/r;)V

    invoke-virtual {v8, v15, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    move/from16 v19, v9

    move/from16 v6, v16

    const/4 v7, 0x0

    goto/16 :goto_9

    :cond_5
    iget-object v5, v14, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/r;

    iget v11, v5, Landroidx/fragment/app/r;->w:I

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v6, v18

    const/16 v18, 0x0

    :goto_6
    if-ltz v6, :cond_9

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 v20, v6

    move-object/from16 v6, v19

    check-cast v6, Landroidx/fragment/app/r;

    move/from16 v19, v9

    iget v9, v6, Landroidx/fragment/app/r;->w:I

    if-ne v9, v11, :cond_8

    if-ne v6, v5, :cond_6

    move/from16 v18, v16

    goto :goto_7

    :cond_6
    if-ne v6, v7, :cond_7

    new-instance v7, Landroidx/fragment/app/o0;

    const/16 v9, 0x9

    invoke-direct {v7, v9, v6}, Landroidx/fragment/app/o0;-><init>(ILandroidx/fragment/app/r;)V

    invoke-virtual {v8, v15, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x0

    :cond_7
    new-instance v9, Landroidx/fragment/app/o0;

    move-object/from16 v21, v7

    const/4 v7, 0x3

    invoke-direct {v9, v7, v6}, Landroidx/fragment/app/o0;-><init>(ILandroidx/fragment/app/r;)V

    iget v7, v14, Landroidx/fragment/app/o0;->c:I

    iput v7, v9, Landroidx/fragment/app/o0;->c:I

    iget v7, v14, Landroidx/fragment/app/o0;->e:I

    iput v7, v9, Landroidx/fragment/app/o0;->e:I

    iget v7, v14, Landroidx/fragment/app/o0;->d:I

    iput v7, v9, Landroidx/fragment/app/o0;->d:I

    iget v7, v14, Landroidx/fragment/app/o0;->f:I

    iput v7, v9, Landroidx/fragment/app/o0;->f:I

    invoke-virtual {v8, v15, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, v21

    :cond_8
    :goto_7
    add-int/lit8 v6, v20, -0x1

    move/from16 v9, v19

    goto :goto_6

    :cond_9
    move/from16 v19, v9

    if-eqz v18, :cond_a

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_4

    :cond_a
    move/from16 v6, v16

    iput v6, v14, Landroidx/fragment/app/o0;->a:I

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_b
    move/from16 v17, v6

    move v6, v11

    goto/16 :goto_5

    :goto_8
    iget-object v5, v14, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/r;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/2addr v15, v6

    move/from16 v5, p3

    move v11, v6

    move/from16 v6, v17

    move/from16 v9, v19

    goto/16 :goto_2

    :cond_c
    move/from16 v17, v6

    move/from16 v19, v9

    goto :goto_c

    :cond_d
    move/from16 v17, v6

    move/from16 v19, v9

    move v6, v11

    iget-object v5, v1, Landroidx/fragment/app/h0;->E:Ljava/util/ArrayList;

    iget-object v8, v12, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v6

    :goto_a
    if-ltz v9, :cond_10

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/fragment/app/o0;

    iget v13, v11, Landroidx/fragment/app/o0;->a:I

    if-eq v13, v6, :cond_f

    const/4 v6, 0x3

    if-eq v13, v6, :cond_e

    packed-switch v13, :pswitch_data_0

    goto :goto_b

    :pswitch_0
    iget-object v13, v11, Landroidx/fragment/app/o0;->g:Landroidx/lifecycle/l;

    iput-object v13, v11, Landroidx/fragment/app/o0;->h:Landroidx/lifecycle/l;

    goto :goto_b

    :pswitch_1
    iget-object v7, v11, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/r;

    goto :goto_b

    :pswitch_2
    const/4 v7, 0x0

    goto :goto_b

    :cond_e
    :pswitch_3
    iget-object v11, v11, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/r;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_f
    const/4 v6, 0x3

    :pswitch_4
    iget-object v11, v11, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/r;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_b
    add-int/lit8 v9, v9, -0x1

    const/4 v6, 0x1

    goto :goto_a

    :cond_10
    :goto_c
    if-nez v10, :cond_12

    iget-boolean v5, v12, Landroidx/fragment/app/a;->g:Z

    if-eqz v5, :cond_11

    goto :goto_d

    :cond_11
    const/4 v10, 0x0

    goto :goto_e

    :cond_12
    :goto_d
    const/4 v10, 0x1

    :goto_e
    add-int/lit8 v9, v19, 0x1

    move/from16 v5, p3

    move/from16 v6, v17

    goto/16 :goto_1

    :cond_13
    move/from16 v17, v6

    iget-object v5, v1, Landroidx/fragment/app/h0;->E:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    if-nez v17, :cond_16

    iget v5, v1, Landroidx/fragment/app/h0;->m:I

    const/4 v6, 0x1

    if-lt v5, v6, :cond_16

    move/from16 v5, p3

    :goto_f
    if-ge v5, v3, :cond_16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/a;

    iget-object v6, v6, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :cond_14
    :goto_10
    if-ge v8, v7, :cond_15

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Landroidx/fragment/app/o0;

    iget-object v9, v9, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/r;

    if-eqz v9, :cond_14

    iget-object v10, v9, Landroidx/fragment/app/r;->r:Landroidx/fragment/app/h0;

    if-eqz v10, :cond_14

    invoke-virtual {v1, v9}, Landroidx/fragment/app/h0;->f(Landroidx/fragment/app/r;)Landroidx/fragment/app/n0;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroidx/fragment/app/f;->s(Landroidx/fragment/app/n0;)V

    goto :goto_10

    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_16
    move/from16 v4, p3

    :goto_11
    const/4 v5, -0x1

    if-ge v4, v3, :cond_22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/a;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-virtual {v6, v5}, Landroidx/fragment/app/a;->c(I)V

    iget-object v5, v6, Landroidx/fragment/app/a;->p:Landroidx/fragment/app/h0;

    iget-object v7, v6, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    :goto_12
    if-ltz v8, :cond_21

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/fragment/app/o0;

    iget-object v11, v10, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/r;

    if-eqz v11, :cond_1c

    iget-object v12, v11, Landroidx/fragment/app/r;->H:Landroidx/fragment/app/p;

    if-nez v12, :cond_17

    goto :goto_13

    :cond_17
    invoke-virtual {v11}, Landroidx/fragment/app/r;->d()Landroidx/fragment/app/p;

    move-result-object v12

    iput-boolean v9, v12, Landroidx/fragment/app/p;->a:Z

    :goto_13
    iget v12, v6, Landroidx/fragment/app/a;->f:I

    const/16 v13, 0x2002

    const/16 v14, 0x1001

    if-eq v12, v14, :cond_1a

    const/16 v15, 0x1003

    if-eq v12, v15, :cond_19

    if-eq v12, v13, :cond_18

    const/4 v13, 0x0

    goto :goto_14

    :cond_18
    move v13, v14

    goto :goto_14

    :cond_19
    move v13, v15

    :cond_1a
    :goto_14
    iget-object v12, v11, Landroidx/fragment/app/r;->H:Landroidx/fragment/app/p;

    if-nez v12, :cond_1b

    if-nez v13, :cond_1b

    goto :goto_15

    :cond_1b
    invoke-virtual {v11}, Landroidx/fragment/app/r;->d()Landroidx/fragment/app/p;

    iget-object v12, v11, Landroidx/fragment/app/r;->H:Landroidx/fragment/app/p;

    iput v13, v12, Landroidx/fragment/app/p;->f:I

    :goto_15
    invoke-virtual {v11}, Landroidx/fragment/app/r;->d()Landroidx/fragment/app/p;

    iget-object v12, v11, Landroidx/fragment/app/r;->H:Landroidx/fragment/app/p;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1c
    iget v12, v10, Landroidx/fragment/app/o0;->a:I

    packed-switch v12, :pswitch_data_1

    :pswitch_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown cmd: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v10, Landroidx/fragment/app/o0;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    iget-object v10, v10, Landroidx/fragment/app/o0;->g:Landroidx/lifecycle/l;

    invoke-virtual {v5, v11, v10}, Landroidx/fragment/app/h0;->R(Landroidx/fragment/app/r;Landroidx/lifecycle/l;)V

    goto :goto_16

    :pswitch_7
    invoke-virtual {v5, v11}, Landroidx/fragment/app/h0;->S(Landroidx/fragment/app/r;)V

    goto :goto_16

    :pswitch_8
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroidx/fragment/app/h0;->S(Landroidx/fragment/app/r;)V

    goto :goto_16

    :pswitch_9
    iget v12, v10, Landroidx/fragment/app/o0;->c:I

    iget v13, v10, Landroidx/fragment/app/o0;->d:I

    iget v14, v10, Landroidx/fragment/app/o0;->e:I

    iget v10, v10, Landroidx/fragment/app/o0;->f:I

    invoke-virtual {v11, v12, v13, v14, v10}, Landroidx/fragment/app/r;->y(IIII)V

    invoke-virtual {v5, v11, v9}, Landroidx/fragment/app/h0;->Q(Landroidx/fragment/app/r;Z)V

    invoke-virtual {v5, v11}, Landroidx/fragment/app/h0;->g(Landroidx/fragment/app/r;)V

    goto :goto_16

    :pswitch_a
    iget v12, v10, Landroidx/fragment/app/o0;->c:I

    iget v13, v10, Landroidx/fragment/app/o0;->d:I

    iget v14, v10, Landroidx/fragment/app/o0;->e:I

    iget v10, v10, Landroidx/fragment/app/o0;->f:I

    invoke-virtual {v11, v12, v13, v14, v10}, Landroidx/fragment/app/r;->y(IIII)V

    invoke-virtual {v5, v11}, Landroidx/fragment/app/h0;->c(Landroidx/fragment/app/r;)V

    goto :goto_16

    :pswitch_b
    iget v12, v10, Landroidx/fragment/app/o0;->c:I

    iget v13, v10, Landroidx/fragment/app/o0;->d:I

    iget v14, v10, Landroidx/fragment/app/o0;->e:I

    iget v10, v10, Landroidx/fragment/app/o0;->f:I

    invoke-virtual {v11, v12, v13, v14, v10}, Landroidx/fragment/app/r;->y(IIII)V

    invoke-virtual {v5, v11, v9}, Landroidx/fragment/app/h0;->Q(Landroidx/fragment/app/r;Z)V

    invoke-virtual {v5, v11}, Landroidx/fragment/app/h0;->C(Landroidx/fragment/app/r;)V

    goto :goto_16

    :pswitch_c
    iget v12, v10, Landroidx/fragment/app/o0;->c:I

    iget v13, v10, Landroidx/fragment/app/o0;->d:I

    iget v14, v10, Landroidx/fragment/app/o0;->e:I

    iget v10, v10, Landroidx/fragment/app/o0;->f:I

    invoke-virtual {v11, v12, v13, v14, v10}, Landroidx/fragment/app/r;->y(IIII)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Landroidx/fragment/app/h0;->U(Landroidx/fragment/app/r;)V

    goto :goto_16

    :pswitch_d
    iget v12, v10, Landroidx/fragment/app/o0;->c:I

    iget v13, v10, Landroidx/fragment/app/o0;->d:I

    iget v14, v10, Landroidx/fragment/app/o0;->e:I

    iget v10, v10, Landroidx/fragment/app/o0;->f:I

    invoke-virtual {v11, v12, v13, v14, v10}, Landroidx/fragment/app/r;->y(IIII)V

    invoke-virtual {v5, v11}, Landroidx/fragment/app/h0;->a(Landroidx/fragment/app/r;)Landroidx/fragment/app/n0;

    goto :goto_16

    :pswitch_e
    iget v12, v10, Landroidx/fragment/app/o0;->c:I

    iget v13, v10, Landroidx/fragment/app/o0;->d:I

    iget v14, v10, Landroidx/fragment/app/o0;->e:I

    iget v10, v10, Landroidx/fragment/app/o0;->f:I

    invoke-virtual {v11, v12, v13, v14, v10}, Landroidx/fragment/app/r;->y(IIII)V

    invoke-virtual {v5, v11, v9}, Landroidx/fragment/app/h0;->Q(Landroidx/fragment/app/r;Z)V

    invoke-virtual {v5, v11}, Landroidx/fragment/app/h0;->L(Landroidx/fragment/app/r;)V

    :goto_16
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_12

    :cond_1d
    const/4 v5, 0x1

    invoke-virtual {v6, v5}, Landroidx/fragment/app/a;->c(I)V

    iget-object v5, v6, Landroidx/fragment/app/a;->p:Landroidx/fragment/app/h0;

    iget-object v7, v6, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    move v10, v9

    :goto_17
    if-ge v10, v8, :cond_21

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/fragment/app/o0;

    iget-object v12, v11, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/r;

    if-eqz v12, :cond_20

    iget-object v13, v12, Landroidx/fragment/app/r;->H:Landroidx/fragment/app/p;

    if-nez v13, :cond_1e

    goto :goto_18

    :cond_1e
    invoke-virtual {v12}, Landroidx/fragment/app/r;->d()Landroidx/fragment/app/p;

    move-result-object v13

    iput-boolean v9, v13, Landroidx/fragment/app/p;->a:Z

    :goto_18
    iget v13, v6, Landroidx/fragment/app/a;->f:I

    iget-object v14, v12, Landroidx/fragment/app/r;->H:Landroidx/fragment/app/p;

    if-nez v14, :cond_1f

    if-nez v13, :cond_1f

    goto :goto_19

    :cond_1f
    invoke-virtual {v12}, Landroidx/fragment/app/r;->d()Landroidx/fragment/app/p;

    iget-object v14, v12, Landroidx/fragment/app/r;->H:Landroidx/fragment/app/p;

    iput v13, v14, Landroidx/fragment/app/p;->f:I

    :goto_19
    invoke-virtual {v12}, Landroidx/fragment/app/r;->d()Landroidx/fragment/app/p;

    iget-object v13, v12, Landroidx/fragment/app/r;->H:Landroidx/fragment/app/p;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_20
    iget v13, v11, Landroidx/fragment/app/o0;->a:I

    packed-switch v13, :pswitch_data_2

    :pswitch_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown cmd: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v11, Landroidx/fragment/app/o0;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_10
    iget-object v11, v11, Landroidx/fragment/app/o0;->h:Landroidx/lifecycle/l;

    invoke-virtual {v5, v12, v11}, Landroidx/fragment/app/h0;->R(Landroidx/fragment/app/r;Landroidx/lifecycle/l;)V

    goto :goto_1a

    :pswitch_11
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroidx/fragment/app/h0;->S(Landroidx/fragment/app/r;)V

    goto :goto_1a

    :pswitch_12
    invoke-virtual {v5, v12}, Landroidx/fragment/app/h0;->S(Landroidx/fragment/app/r;)V

    goto :goto_1a

    :pswitch_13
    iget v13, v11, Landroidx/fragment/app/o0;->c:I

    iget v14, v11, Landroidx/fragment/app/o0;->d:I

    iget v15, v11, Landroidx/fragment/app/o0;->e:I

    iget v11, v11, Landroidx/fragment/app/o0;->f:I

    invoke-virtual {v12, v13, v14, v15, v11}, Landroidx/fragment/app/r;->y(IIII)V

    invoke-virtual {v5, v12, v9}, Landroidx/fragment/app/h0;->Q(Landroidx/fragment/app/r;Z)V

    invoke-virtual {v5, v12}, Landroidx/fragment/app/h0;->c(Landroidx/fragment/app/r;)V

    goto :goto_1a

    :pswitch_14
    iget v13, v11, Landroidx/fragment/app/o0;->c:I

    iget v14, v11, Landroidx/fragment/app/o0;->d:I

    iget v15, v11, Landroidx/fragment/app/o0;->e:I

    iget v11, v11, Landroidx/fragment/app/o0;->f:I

    invoke-virtual {v12, v13, v14, v15, v11}, Landroidx/fragment/app/r;->y(IIII)V

    invoke-virtual {v5, v12}, Landroidx/fragment/app/h0;->g(Landroidx/fragment/app/r;)V

    goto :goto_1a

    :pswitch_15
    iget v13, v11, Landroidx/fragment/app/o0;->c:I

    iget v14, v11, Landroidx/fragment/app/o0;->d:I

    iget v15, v11, Landroidx/fragment/app/o0;->e:I

    iget v11, v11, Landroidx/fragment/app/o0;->f:I

    invoke-virtual {v12, v13, v14, v15, v11}, Landroidx/fragment/app/r;->y(IIII)V

    invoke-virtual {v5, v12, v9}, Landroidx/fragment/app/h0;->Q(Landroidx/fragment/app/r;Z)V

    invoke-static {v12}, Landroidx/fragment/app/h0;->U(Landroidx/fragment/app/r;)V

    goto :goto_1a

    :pswitch_16
    iget v13, v11, Landroidx/fragment/app/o0;->c:I

    iget v14, v11, Landroidx/fragment/app/o0;->d:I

    iget v15, v11, Landroidx/fragment/app/o0;->e:I

    iget v11, v11, Landroidx/fragment/app/o0;->f:I

    invoke-virtual {v12, v13, v14, v15, v11}, Landroidx/fragment/app/r;->y(IIII)V

    invoke-virtual {v5, v12}, Landroidx/fragment/app/h0;->C(Landroidx/fragment/app/r;)V

    goto :goto_1a

    :pswitch_17
    iget v13, v11, Landroidx/fragment/app/o0;->c:I

    iget v14, v11, Landroidx/fragment/app/o0;->d:I

    iget v15, v11, Landroidx/fragment/app/o0;->e:I

    iget v11, v11, Landroidx/fragment/app/o0;->f:I

    invoke-virtual {v12, v13, v14, v15, v11}, Landroidx/fragment/app/r;->y(IIII)V

    invoke-virtual {v5, v12}, Landroidx/fragment/app/h0;->L(Landroidx/fragment/app/r;)V

    goto :goto_1a

    :pswitch_18
    iget v13, v11, Landroidx/fragment/app/o0;->c:I

    iget v14, v11, Landroidx/fragment/app/o0;->d:I

    iget v15, v11, Landroidx/fragment/app/o0;->e:I

    iget v11, v11, Landroidx/fragment/app/o0;->f:I

    invoke-virtual {v12, v13, v14, v15, v11}, Landroidx/fragment/app/r;->y(IIII)V

    invoke-virtual {v5, v12, v9}, Landroidx/fragment/app/h0;->Q(Landroidx/fragment/app/r;Z)V

    invoke-virtual {v5, v12}, Landroidx/fragment/app/h0;->a(Landroidx/fragment/app/r;)Landroidx/fragment/app/n0;

    :goto_1a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_17

    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_11

    :cond_22
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move/from16 v6, p3

    :goto_1b
    if-ge v6, v3, :cond_27

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/a;

    if-eqz v4, :cond_24

    iget-object v8, v7, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v16, 0x1

    add-int/lit8 v8, v8, -0x1

    :goto_1c
    if-ltz v8, :cond_26

    iget-object v9, v7, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/o0;

    iget-object v9, v9, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/r;

    if-eqz v9, :cond_23

    invoke-virtual {v1, v9}, Landroidx/fragment/app/h0;->f(Landroidx/fragment/app/r;)Landroidx/fragment/app/n0;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/fragment/app/n0;->k()V

    :cond_23
    add-int/lit8 v8, v8, -0x1

    goto :goto_1c

    :cond_24
    iget-object v7, v7, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :cond_25
    :goto_1d
    if-ge v9, v8, :cond_26

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Landroidx/fragment/app/o0;

    iget-object v10, v10, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/r;

    if-eqz v10, :cond_25

    invoke-virtual {v1, v10}, Landroidx/fragment/app/h0;->f(Landroidx/fragment/app/r;)Landroidx/fragment/app/n0;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/fragment/app/n0;->k()V

    goto :goto_1d

    :cond_26
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_27
    iget v6, v1, Landroidx/fragment/app/h0;->m:I

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroidx/fragment/app/h0;->H(IZ)V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move/from16 v7, p3

    :goto_1e
    if-ge v7, v3, :cond_2a

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/a;

    iget-object v8, v8, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :cond_28
    :goto_1f
    if-ge v10, v9, :cond_29

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Landroidx/fragment/app/o0;

    iget-object v11, v11, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/r;

    if-eqz v11, :cond_28

    iget-object v11, v11, Landroidx/fragment/app/r;->D:Landroid/view/ViewGroup;

    if-eqz v11, :cond_28

    invoke-virtual {v1}, Landroidx/fragment/app/h0;->B()Ls1/e;

    move-result-object v12

    invoke-static {v11, v12}, Landroidx/fragment/app/j;->f(Landroid/view/ViewGroup;Ls1/e;)Landroidx/fragment/app/j;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_29
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    :cond_2a
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_20
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/j;

    iput-boolean v4, v7, Landroidx/fragment/app/j;->d:Z

    iget-object v8, v7, Landroidx/fragment/app/j;->b:Ljava/util/ArrayList;

    monitor-enter v8

    :try_start_0
    invoke-virtual {v7}, Landroidx/fragment/app/j;->g()V

    const/4 v9, 0x0

    iput-boolean v9, v7, Landroidx/fragment/app/j;->e:Z

    iget-object v10, v7, Landroidx/fragment/app/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    :goto_21
    if-ltz v10, :cond_2c

    iget-object v11, v7, Landroidx/fragment/app/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/fragment/app/s0;

    iget-object v12, v11, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/r;

    iget-object v12, v12, Landroidx/fragment/app/r;->E:Landroid/view/View;

    invoke-static {v12}, Landroidx/activity/result/b;->c(Landroid/view/View;)I

    move-result v12

    iget v13, v11, Landroidx/fragment/app/s0;->a:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2b

    if-eq v12, v14, :cond_2b

    iget-object v10, v11, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/r;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v9, v7, Landroidx/fragment/app/j;->e:Z

    goto :goto_22

    :catchall_0
    move-exception v0

    goto :goto_23

    :cond_2b
    add-int/lit8 v10, v10, -0x1

    goto :goto_21

    :cond_2c
    :goto_22
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v7}, Landroidx/fragment/app/j;->c()V

    goto :goto_20

    :goto_23
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2d
    move/from16 v4, p3

    :goto_24
    if-ge v4, v3, :cond_2f

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/a;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2e

    iget v7, v6, Landroidx/fragment/app/a;->r:I

    if-ltz v7, :cond_2e

    iput v5, v6, Landroidx/fragment/app/a;->r:I

    :cond_2e
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_2f
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_5
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_18
        :pswitch_f
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final y(I)Landroidx/fragment/app/r;
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    iget-object v1, v0, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/r;

    if-eqz v3, :cond_0

    iget v4, v3, Landroidx/fragment/app/r;->v:I

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Landroidx/fragment/app/f;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/n0;

    if-eqz v1, :cond_2

    iget-object v1, v1, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/r;

    iget v2, v1, Landroidx/fragment/app/r;->v:I

    if-ne v2, p1, :cond_2

    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final z(Landroidx/fragment/app/r;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p1, Landroidx/fragment/app/r;->D:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p1, Landroidx/fragment/app/r;->w:I

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/h0;->o:La1/b;

    invoke-virtual {v0}, La1/b;->M()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/h0;->o:La1/b;

    iget p1, p1, Landroidx/fragment/app/r;->w:I

    invoke-virtual {v0, p1}, La1/b;->L(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
