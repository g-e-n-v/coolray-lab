.class public abstract Landroidx/fragment/app/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroidx/lifecycle/q;
.implements Landroidx/lifecycle/j0;
.implements Landroidx/lifecycle/h;
.implements Lr0/e;


# static fields
.field public static final Q:Ljava/lang/Object;


# instance fields
.field public A:Z

.field public final B:Z

.field public C:Z

.field public D:Landroid/view/ViewGroup;

.field public E:Landroid/view/View;

.field public F:Z

.field public G:Z

.field public H:Landroidx/fragment/app/p;

.field public I:Z

.field public J:Z

.field public K:Landroidx/lifecycle/l;

.field public L:Landroidx/lifecycle/s;

.field public M:Landroidx/fragment/app/p0;

.field public final N:Landroidx/lifecycle/w;

.field public O:Lr0/d;

.field public final P:Ljava/util/ArrayList;

.field public a:I

.field public b:Landroid/os/Bundle;

.field public c:Landroid/util/SparseArray;

.field public d:Landroid/os/Bundle;

.field public e:Ljava/lang/String;

.field public f:Landroid/os/Bundle;

.field public g:Landroidx/fragment/app/r;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Ljava/lang/Boolean;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:I

.field public r:Landroidx/fragment/app/h0;

.field public s:Landroidx/fragment/app/u;

.field public t:Landroidx/fragment/app/h0;

.field public u:Landroidx/fragment/app/r;

.field public v:I

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/fragment/app/r;->Q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/r;->a:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/r;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/r;->j:Ljava/lang/Boolean;

    new-instance v0, Landroidx/fragment/app/h0;

    invoke-direct {v0}, Landroidx/fragment/app/h0;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/r;->B:Z

    iput-boolean v0, p0, Landroidx/fragment/app/r;->G:Z

    sget-object v0, Landroidx/lifecycle/l;->e:Landroidx/lifecycle/l;

    iput-object v0, p0, Landroidx/fragment/app/r;->K:Landroidx/lifecycle/l;

    new-instance v0, Landroidx/lifecycle/w;

    invoke-direct {v0}, Landroidx/lifecycle/w;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/r;->N:Landroidx/lifecycle/w;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/r;->P:Ljava/util/ArrayList;

    new-instance v0, Landroidx/lifecycle/s;

    invoke-direct {v0, p0}, Landroidx/lifecycle/s;-><init>(Landroidx/lifecycle/q;)V

    iput-object v0, p0, Landroidx/fragment/app/r;->L:Landroidx/lifecycle/s;

    new-instance v0, Lr0/d;

    invoke-direct {v0, p0}, Lr0/d;-><init>(Lr0/e;)V

    iput-object v0, p0, Landroidx/fragment/app/r;->O:Lr0/d;

    return-void
.end method


# virtual methods
.method public final a()Li/r;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/r;->O:Lr0/d;

    iget-object v0, v0, Lr0/d;->b:Li/r;

    return-object v0
.end method

.method public c()La1/b;
    .locals 1

    new-instance v0, Landroidx/fragment/app/o;

    invoke-direct {v0, p0}, Landroidx/fragment/app/o;-><init>(Landroidx/fragment/app/r;)V

    return-object v0
.end method

.method public final d()Landroidx/fragment/app/p;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/r;->H:Landroidx/fragment/app/p;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/fragment/app/p;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Landroidx/fragment/app/r;->Q:Ljava/lang/Object;

    iput-object v1, v0, Landroidx/fragment/app/p;->g:Ljava/lang/Object;

    iput-object v1, v0, Landroidx/fragment/app/p;->h:Ljava/lang/Object;

    iput-object v1, v0, Landroidx/fragment/app/p;->i:Ljava/lang/Object;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroidx/fragment/app/p;->j:F

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/fragment/app/p;->k:Landroid/view/View;

    iput-object v0, p0, Landroidx/fragment/app/r;->H:Landroidx/fragment/app/p;

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/r;->H:Landroidx/fragment/app/p;

    return-object v0
.end method

.method public final e()Landroidx/lifecycle/i0;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/r;->r:Landroidx/fragment/app/h0;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/r;->i()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/r;->r:Landroidx/fragment/app/h0;

    iget-object v0, v0, Landroidx/fragment/app/h0;->F:Landroidx/fragment/app/j0;

    iget-object v0, v0, Landroidx/fragment/app/j0;->e:Ljava/util/HashMap;

    iget-object v1, p0, Landroidx/fragment/app/r;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/i0;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/lifecycle/i0;

    invoke-direct {v1}, Landroidx/lifecycle/i0;-><init>()V

    iget-object v2, p0, Landroidx/fragment/app/r;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access ViewModels from detached fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()Landroidx/lifecycle/s;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/r;->L:Landroidx/lifecycle/s;

    return-object v0
.end method

.method public final g()Landroidx/fragment/app/h0;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/r;->s:Landroidx/fragment/app/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has not been attached yet."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/r;->s:Landroidx/fragment/app/u;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/u;->b:Le/j;

    return-object v0
.end method

.method public final i()I
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/r;->K:Landroidx/lifecycle/l;

    sget-object v1, Landroidx/lifecycle/l;->b:Landroidx/lifecycle/l;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/r;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/r;

    invoke-virtual {v1}, Landroidx/fragment/app/r;->i()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public final j()Landroidx/fragment/app/h0;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/r;->r:Landroidx/fragment/app/h0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not associated with a fragment manager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " received the following in onActivityResult(): requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " resultCode: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " data: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public l(Landroid/content/Context;)V
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/r;->C:Z

    iget-object v0, p0, Landroidx/fragment/app/r;->s:Landroidx/fragment/app/u;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/u;->a:Le/j;

    :goto_0
    if-eqz v0, :cond_1

    iput-boolean p1, p0, Landroidx/fragment/app/r;->C:Z

    :cond_1
    return-void
.end method

.method public m(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/r;->C:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "android:support:fragments"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v2, p0, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    invoke-virtual {v2, p1}, Landroidx/fragment/app/h0;->N(Landroid/os/Parcelable;)V

    iget-object p1, p0, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    iput-boolean v1, p1, Landroidx/fragment/app/h0;->y:Z

    iput-boolean v1, p1, Landroidx/fragment/app/h0;->z:Z

    iget-object v2, p1, Landroidx/fragment/app/h0;->F:Landroidx/fragment/app/j0;

    iput-boolean v1, v2, Landroidx/fragment/app/j0;->h:Z

    invoke-virtual {p1, v0}, Landroidx/fragment/app/h0;->s(I)V

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    iget v2, p1, Landroidx/fragment/app/h0;->m:I

    if-lt v2, v0, :cond_1

    return-void

    :cond_1
    iput-boolean v1, p1, Landroidx/fragment/app/h0;->y:Z

    iput-boolean v1, p1, Landroidx/fragment/app/h0;->z:Z

    iget-object v2, p1, Landroidx/fragment/app/h0;->F:Landroidx/fragment/app/j0;

    iput-boolean v1, v2, Landroidx/fragment/app/j0;->h:Z

    invoke-virtual {p1, v0}, Landroidx/fragment/app/h0;->s(I)V

    return-void
.end method

.method public n(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/r;->C:Z

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/r;->C:Z

    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/r;->s:Landroidx/fragment/app/u;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/u;->a:Le/j;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Fragment "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " not attached to an activity."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/r;->C:Z

    return-void
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/r;->C:Z

    return-void
.end method

.method public q(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object p1, p0, Landroidx/fragment/app/r;->s:Landroidx/fragment/app/u;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/fragment/app/u;->e:Le/j;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    iget-object v0, v0, Landroidx/fragment/app/h0;->f:Landroidx/fragment/app/y;

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract r(Landroid/os/Bundle;)V
.end method

.method public s()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/r;->C:Z

    return-void
.end method

.method public t()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/r;->C:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "} ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/r;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/fragment/app/r;->v:I

    if-eqz v1, :cond_0

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/fragment/app/r;->v:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/r;->x:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/r;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/r;->C:Z

    return-void
.end method

.method public v(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 1

    iget-object p3, p0, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    invoke-virtual {p3}, Landroidx/fragment/app/h0;->I()V

    const/4 p3, 0x1

    iput-boolean p3, p0, Landroidx/fragment/app/r;->p:Z

    new-instance p3, Landroidx/fragment/app/p0;

    invoke-virtual {p0}, Landroidx/fragment/app/r;->e()Landroidx/lifecycle/i0;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/fragment/app/p0;-><init>(Landroidx/lifecycle/i0;)V

    iput-object p3, p0, Landroidx/fragment/app/r;->M:Landroidx/fragment/app/p0;

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/r;->n(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/r;->E:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/fragment/app/r;->M:Landroidx/fragment/app/p0;

    invoke-virtual {p1}, Landroidx/fragment/app/p0;->d()V

    iget-object p1, p0, Landroidx/fragment/app/r;->E:Landroid/view/View;

    iget-object p2, p0, Landroidx/fragment/app/r;->M:Landroidx/fragment/app/p0;

    const p3, 0x7f09032a

    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/fragment/app/r;->E:Landroid/view/View;

    iget-object p2, p0, Landroidx/fragment/app/r;->M:Landroidx/fragment/app/p0;

    const p3, 0x7f09032d

    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/fragment/app/r;->E:Landroid/view/View;

    iget-object p2, p0, Landroidx/fragment/app/r;->M:Landroidx/fragment/app/p0;

    const-string p3, "<this>"

    invoke-static {p1, p3}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f09032c

    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/fragment/app/r;->N:Landroidx/lifecycle/w;

    iget-object p2, p0, Landroidx/fragment/app/r;->M:Landroidx/fragment/app/p0;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/w;->e(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/r;->M:Landroidx/fragment/app/p0;

    iget-object p1, p1, Landroidx/fragment/app/p0;->b:Landroidx/lifecycle/s;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/fragment/app/r;->M:Landroidx/fragment/app/p0;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final w()Landroid/content/Context;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/r;->h()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to a context."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final x()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/r;->E:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not return a View from onCreateView() or this was called before onCreateView()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final y(IIII)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/r;->H:Landroidx/fragment/app/p;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/r;->d()Landroidx/fragment/app/p;

    move-result-object v0

    iput p1, v0, Landroidx/fragment/app/p;->b:I

    invoke-virtual {p0}, Landroidx/fragment/app/r;->d()Landroidx/fragment/app/p;

    move-result-object p1

    iput p2, p1, Landroidx/fragment/app/p;->c:I

    invoke-virtual {p0}, Landroidx/fragment/app/r;->d()Landroidx/fragment/app/p;

    move-result-object p1

    iput p3, p1, Landroidx/fragment/app/p;->d:I

    invoke-virtual {p0}, Landroidx/fragment/app/r;->d()Landroidx/fragment/app/p;

    move-result-object p1

    iput p4, p1, Landroidx/fragment/app/p;->e:I

    return-void
.end method

.method public final z(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/r;->r:Landroidx/fragment/app/h0;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Landroidx/fragment/app/h0;->y:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Landroidx/fragment/app/h0;->z:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment already added and state has been saved"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/fragment/app/r;->f:Landroid/os/Bundle;

    return-void
.end method
