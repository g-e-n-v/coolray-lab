.class public Landroidx/lifecycle/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lk/f;

.field public c:I

.field public d:Z

.field public volatile e:Ljava/lang/Object;

.field public volatile f:Ljava/lang/Object;

.field public g:I

.field public h:Z

.field public i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/w;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/w;->a:Ljava/lang/Object;

    new-instance v0, Lk/f;

    invoke-direct {v0}, Lk/f;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/w;->b:Lk/f;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/w;->c:I

    sget-object v0, Landroidx/lifecycle/w;->j:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/w;->f:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/w;->e:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/lifecycle/w;->g:I

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

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

    const-string v1, "Cannot invoke "

    const-string v2, " on a background thread"

    invoke-static {v1, p0, v2}, Landroidx/activity/result/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/v;)V
    .locals 4

    iget-boolean v0, p1, Landroidx/lifecycle/v;->b:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/lifecycle/v;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/v;->c(Z)V

    return-void

    :cond_1
    iget v0, p1, Landroidx/lifecycle/v;->c:I

    iget v1, p0, Landroidx/lifecycle/w;->g:I

    if-lt v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iput v1, p1, Landroidx/lifecycle/v;->c:I

    iget-object p1, p1, Landroidx/lifecycle/v;->a:Landroidx/emoji2/text/m;

    iget-object v0, p0, Landroidx/lifecycle/w;->e:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroidx/lifecycle/q;

    iget-object v1, p1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/n;

    if-eqz v0, :cond_5

    iget-boolean v0, v1, Landroidx/fragment/app/n;->W:Z

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Landroidx/fragment/app/r;->x()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v2, v1, Landroidx/fragment/app/n;->a0:Landroid/app/Dialog;

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    invoke-static {v2}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DialogFragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " setting the content view on "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Landroidx/fragment/app/n;->a0:Landroid/app/Dialog;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "FragmentManager"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p1, v1, Landroidx/fragment/app/n;->a0:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DialogFragment can not be attached to a container view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    return-void
.end method

.method public final c(Landroidx/lifecycle/v;)V
    .locals 4

    iget-boolean v0, p0, Landroidx/lifecycle/w;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/lifecycle/w;->i:Z

    return-void

    :cond_0
    iput-boolean v1, p0, Landroidx/lifecycle/w;->h:Z

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/w;->i:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroidx/lifecycle/w;->b(Landroidx/lifecycle/v;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/lifecycle/w;->b:Lk/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lk/d;

    invoke-direct {v2, v1}, Lk/d;-><init>(Lk/f;)V

    iget-object v1, v1, Lk/f;->c:Ljava/util/WeakHashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v2}, Lk/d;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lk/d;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/v;

    invoke-virtual {p0, v1}, Landroidx/lifecycle/w;->b(Landroidx/lifecycle/v;)V

    iget-boolean v1, p0, Landroidx/lifecycle/w;->i:Z

    if-eqz v1, :cond_3

    :cond_4
    :goto_0
    iget-boolean v1, p0, Landroidx/lifecycle/w;->i:Z

    if-nez v1, :cond_1

    iput-boolean v0, p0, Landroidx/lifecycle/w;->h:Z

    return-void
.end method

.method public final d(Landroidx/emoji2/text/m;)V
    .locals 4

    const-string v0, "observeForever"

    invoke-static {v0}, Landroidx/lifecycle/w;->a(Ljava/lang/String;)V

    new-instance v0, Landroidx/lifecycle/u;

    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/v;-><init>(Landroidx/lifecycle/w;Landroidx/emoji2/text/m;)V

    iget-object v1, p0, Landroidx/lifecycle/w;->b:Lk/f;

    invoke-virtual {v1, p1}, Lk/f;->a(Ljava/lang/Object;)Lk/c;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object p1, v2, Lk/c;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    new-instance v2, Lk/c;

    invoke-direct {v2, p1, v0}, Lk/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget p1, v1, Lk/f;->d:I

    add-int/2addr p1, v3

    iput p1, v1, Lk/f;->d:I

    iget-object p1, v1, Lk/f;->b:Lk/c;

    if-nez p1, :cond_1

    iput-object v2, v1, Lk/f;->a:Lk/c;

    iput-object v2, v1, Lk/f;->b:Lk/c;

    goto :goto_0

    :cond_1
    iput-object v2, p1, Lk/c;->c:Lk/c;

    iput-object p1, v2, Lk/c;->d:Lk/c;

    iput-object v2, v1, Lk/f;->b:Lk/c;

    :goto_0
    const/4 p1, 0x0

    :goto_1
    check-cast p1, Landroidx/lifecycle/v;

    instance-of v1, p1, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0, v3}, Landroidx/lifecycle/v;->c(Z)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot add the same observer with different lifecycles"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "setValue"

    invoke-static {v0}, Landroidx/lifecycle/w;->a(Ljava/lang/String;)V

    iget v0, p0, Landroidx/lifecycle/w;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/lifecycle/w;->g:I

    iput-object p1, p0, Landroidx/lifecycle/w;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/w;->c(Landroidx/lifecycle/v;)V

    return-void
.end method
