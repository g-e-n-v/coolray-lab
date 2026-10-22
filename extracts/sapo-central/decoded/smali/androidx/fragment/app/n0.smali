.class public final Landroidx/fragment/app/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/activity/result/c;

.field public final b:Landroidx/fragment/app/f;

.field public final c:Landroidx/fragment/app/r;

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>(Landroidx/activity/result/c;Landroidx/fragment/app/f;Landroidx/fragment/app/r;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/n0;->d:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/fragment/app/n0;->e:I

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/n0;->a:Landroidx/activity/result/c;

    .line 5
    iput-object p2, p0, Landroidx/fragment/app/n0;->b:Landroidx/fragment/app/f;

    .line 6
    iput-object p3, p0, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/r;

    return-void
.end method

.method public constructor <init>(Landroidx/activity/result/c;Landroidx/fragment/app/f;Landroidx/fragment/app/r;Landroidx/fragment/app/l0;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Landroidx/fragment/app/n0;->d:Z

    const/4 v1, -0x1

    .line 34
    iput v1, p0, Landroidx/fragment/app/n0;->e:I

    .line 35
    iput-object p1, p0, Landroidx/fragment/app/n0;->a:Landroidx/activity/result/c;

    .line 36
    iput-object p2, p0, Landroidx/fragment/app/n0;->b:Landroidx/fragment/app/f;

    .line 37
    iput-object p3, p0, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/r;

    const/4 p1, 0x0

    .line 38
    iput-object p1, p3, Landroidx/fragment/app/r;->c:Landroid/util/SparseArray;

    .line 39
    iput-object p1, p3, Landroidx/fragment/app/r;->d:Landroid/os/Bundle;

    .line 40
    iput v0, p3, Landroidx/fragment/app/r;->q:I

    .line 41
    iput-boolean v0, p3, Landroidx/fragment/app/r;->n:Z

    .line 42
    iput-boolean v0, p3, Landroidx/fragment/app/r;->k:Z

    .line 43
    iget-object p2, p3, Landroidx/fragment/app/r;->g:Landroidx/fragment/app/r;

    if-eqz p2, :cond_0

    iget-object p2, p2, Landroidx/fragment/app/r;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p3, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    .line 44
    iput-object p1, p3, Landroidx/fragment/app/r;->g:Landroidx/fragment/app/r;

    .line 45
    iget-object p1, p4, Landroidx/fragment/app/l0;->m:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    .line 46
    iput-object p1, p3, Landroidx/fragment/app/r;->b:Landroid/os/Bundle;

    return-void

    .line 47
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p3, Landroidx/fragment/app/r;->b:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroidx/activity/result/c;Landroidx/fragment/app/f;Ljava/lang/ClassLoader;Landroidx/fragment/app/b0;Landroidx/fragment/app/l0;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroidx/fragment/app/n0;->d:Z

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Landroidx/fragment/app/n0;->e:I

    .line 10
    iput-object p1, p0, Landroidx/fragment/app/n0;->a:Landroidx/activity/result/c;

    .line 11
    iput-object p2, p0, Landroidx/fragment/app/n0;->b:Landroidx/fragment/app/f;

    .line 12
    iget-object p1, p5, Landroidx/fragment/app/l0;->a:Ljava/lang/String;

    invoke-virtual {p4, p1}, Landroidx/fragment/app/b0;->a(Ljava/lang/String;)Landroidx/fragment/app/r;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/r;

    .line 13
    iget-object p2, p5, Landroidx/fragment/app/l0;->j:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    .line 14
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 15
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/fragment/app/r;->z(Landroid/os/Bundle;)V

    .line 16
    iget-object p2, p5, Landroidx/fragment/app/l0;->b:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/r;->e:Ljava/lang/String;

    .line 17
    iget-boolean p2, p5, Landroidx/fragment/app/l0;->c:Z

    iput-boolean p2, p1, Landroidx/fragment/app/r;->m:Z

    const/4 p2, 0x1

    .line 18
    iput-boolean p2, p1, Landroidx/fragment/app/r;->o:Z

    .line 19
    iget p2, p5, Landroidx/fragment/app/l0;->d:I

    iput p2, p1, Landroidx/fragment/app/r;->v:I

    .line 20
    iget p2, p5, Landroidx/fragment/app/l0;->e:I

    iput p2, p1, Landroidx/fragment/app/r;->w:I

    .line 21
    iget-object p2, p5, Landroidx/fragment/app/l0;->f:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/r;->x:Ljava/lang/String;

    .line 22
    iget-boolean p2, p5, Landroidx/fragment/app/l0;->g:Z

    iput-boolean p2, p1, Landroidx/fragment/app/r;->A:Z

    .line 23
    iget-boolean p2, p5, Landroidx/fragment/app/l0;->h:Z

    iput-boolean p2, p1, Landroidx/fragment/app/r;->l:Z

    .line 24
    iget-boolean p2, p5, Landroidx/fragment/app/l0;->i:Z

    iput-boolean p2, p1, Landroidx/fragment/app/r;->z:Z

    .line 25
    iget-boolean p2, p5, Landroidx/fragment/app/l0;->k:Z

    iput-boolean p2, p1, Landroidx/fragment/app/r;->y:Z

    .line 26
    invoke-static {}, Landroidx/lifecycle/l;->values()[Landroidx/lifecycle/l;

    move-result-object p2

    iget p3, p5, Landroidx/fragment/app/l0;->l:I

    aget-object p2, p2, p3

    iput-object p2, p1, Landroidx/fragment/app/r;->K:Landroidx/lifecycle/l;

    .line 27
    iget-object p2, p5, Landroidx/fragment/app/l0;->m:Landroid/os/Bundle;

    if-eqz p2, :cond_1

    .line 28
    iput-object p2, p1, Landroidx/fragment/app/r;->b:Landroid/os/Bundle;

    goto :goto_0

    .line 29
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p1, Landroidx/fragment/app/r;->b:Landroid/os/Bundle;

    :goto_0
    const/4 p2, 0x2

    .line 30
    invoke-static {p2}, Landroidx/fragment/app/h0;->D(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Instantiated fragment "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    iget-object v3, p0, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/r;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "moveto ACTIVITY_CREATED: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, v3, Landroidx/fragment/app/r;->b:Landroid/os/Bundle;

    iget-object v1, v3, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    invoke-virtual {v1}, Landroidx/fragment/app/h0;->I()V

    iput v0, v3, Landroidx/fragment/app/r;->a:I

    const/4 v1, 0x1

    iput-boolean v1, v3, Landroidx/fragment/app/r;->C:Z

    invoke-static {v0}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveto RESTORE_VIEW_STATE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, v3, Landroidx/fragment/app/r;->E:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v4, v3, Landroidx/fragment/app/r;->b:Landroid/os/Bundle;

    iget-object v5, v3, Landroidx/fragment/app/r;->c:Landroid/util/SparseArray;

    if-eqz v5, :cond_2

    invoke-virtual {v0, v5}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    iput-object v2, v3, Landroidx/fragment/app/r;->c:Landroid/util/SparseArray;

    :cond_2
    iget-object v0, v3, Landroidx/fragment/app/r;->E:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, v3, Landroidx/fragment/app/r;->M:Landroidx/fragment/app/p0;

    iget-object v5, v3, Landroidx/fragment/app/r;->d:Landroid/os/Bundle;

    iget-object v0, v0, Landroidx/fragment/app/p0;->c:Lr0/d;

    invoke-virtual {v0, v5}, Lr0/d;->b(Landroid/os/Bundle;)V

    iput-object v2, v3, Landroidx/fragment/app/r;->d:Landroid/os/Bundle;

    :cond_3
    iput-boolean v1, v3, Landroidx/fragment/app/r;->C:Z

    invoke-virtual {v3, v4}, Landroidx/fragment/app/r;->u(Landroid/os/Bundle;)V

    iget-boolean v0, v3, Landroidx/fragment/app/r;->C:Z

    if-eqz v0, :cond_4

    iget-object v0, v3, Landroidx/fragment/app/r;->E:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, v3, Landroidx/fragment/app/r;->M:Landroidx/fragment/app/p0;

    sget-object v4, Landroidx/lifecycle/k;->ON_CREATE:Landroidx/lifecycle/k;

    invoke-virtual {v0, v4}, Landroidx/fragment/app/p0;->c(Landroidx/lifecycle/k;)V

    goto :goto_0

    :cond_4
    new-instance v0, Landroidx/fragment/app/t0;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    iput-object v2, v3, Landroidx/fragment/app/r;->b:Landroid/os/Bundle;

    iget-object v0, v3, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    iput-boolean v1, v0, Landroidx/fragment/app/h0;->y:Z

    iput-boolean v1, v0, Landroidx/fragment/app/h0;->z:Z

    iget-object v2, v0, Landroidx/fragment/app/h0;->F:Landroidx/fragment/app/j0;

    iput-boolean v1, v2, Landroidx/fragment/app/j0;->h:Z

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroidx/fragment/app/h0;->s(I)V

    iget-object v0, p0, Landroidx/fragment/app/n0;->a:Landroidx/activity/result/c;

    invoke-virtual {v0, v1}, Landroidx/activity/result/c;->c(Z)V

    return-void
.end method

.method public final b()V
    .locals 8

    iget-object v0, p0, Landroidx/fragment/app/n0;->b:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/r;

    iget-object v2, v1, Landroidx/fragment/app/r;->D:Landroid/view/ViewGroup;

    const/4 v3, -0x1

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    :goto_0
    if-ltz v5, :cond_2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/r;

    iget-object v7, v6, Landroidx/fragment/app/r;->D:Landroid/view/ViewGroup;

    if-ne v7, v2, :cond_1

    iget-object v6, v6, Landroidx/fragment/app/r;->E:Landroid/view/View;

    if-eqz v6, :cond_1

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/r;

    iget-object v6, v5, Landroidx/fragment/app/r;->D:Landroid/view/ViewGroup;

    if-ne v6, v2, :cond_3

    iget-object v5, v5, Landroidx/fragment/app/r;->E:Landroid/view/View;

    if-eqz v5, :cond_3

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    goto :goto_2

    :cond_3
    goto :goto_1

    :cond_4
    :goto_2
    iget-object v0, v1, Landroidx/fragment/app/r;->D:Landroid/view/ViewGroup;

    iget-object v1, v1, Landroidx/fragment/app/r;->E:Landroid/view/View;

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public final c()V
    .locals 7

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "moveto ATTACHED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/r;->g:Landroidx/fragment/app/r;

    const-string v2, " that does not belong to this FragmentManager!"

    const-string v3, " declared target fragment "

    iget-object v4, p0, Landroidx/fragment/app/n0;->b:Landroidx/fragment/app/f;

    const/4 v5, 0x0

    const-string v6, "Fragment "

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/fragment/app/r;->e:Ljava/lang/String;

    iget-object v4, v4, Landroidx/fragment/app/f;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/n0;

    if-eqz v0, :cond_1

    iget-object v2, v1, Landroidx/fragment/app/r;->g:Landroidx/fragment/app/r;

    iget-object v2, v2, Landroidx/fragment/app/r;->e:Ljava/lang/String;

    iput-object v2, v1, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    iput-object v5, v1, Landroidx/fragment/app/r;->g:Landroidx/fragment/app/r;

    move-object v5, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroidx/fragment/app/r;->g:Landroidx/fragment/app/r;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v1, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v4, v4, Landroidx/fragment/app/f;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/fragment/app/n0;

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroidx/fragment/app/n0;->k()V

    :cond_5
    iget-object v0, v1, Landroidx/fragment/app/r;->r:Landroidx/fragment/app/h0;

    iget-object v2, v0, Landroidx/fragment/app/h0;->n:Landroidx/fragment/app/u;

    iput-object v2, v1, Landroidx/fragment/app/r;->s:Landroidx/fragment/app/u;

    iget-object v0, v0, Landroidx/fragment/app/h0;->p:Landroidx/fragment/app/r;

    iput-object v0, v1, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/r;

    iget-object v0, p0, Landroidx/fragment/app/n0;->a:Landroidx/activity/result/c;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/activity/result/c;->i(Z)V

    iget-object v3, v1, Landroidx/fragment/app/r;->P:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v1, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    iget-object v4, v1, Landroidx/fragment/app/r;->s:Landroidx/fragment/app/u;

    invoke-virtual {v1}, Landroidx/fragment/app/r;->c()La1/b;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Landroidx/fragment/app/h0;->b(Landroidx/fragment/app/u;La1/b;Landroidx/fragment/app/r;)V

    iput v2, v1, Landroidx/fragment/app/r;->a:I

    iput-boolean v2, v1, Landroidx/fragment/app/r;->C:Z

    iget-object v3, v1, Landroidx/fragment/app/r;->s:Landroidx/fragment/app/u;

    iget-object v3, v3, Landroidx/fragment/app/u;->b:Le/j;

    invoke-virtual {v1, v3}, Landroidx/fragment/app/r;->l(Landroid/content/Context;)V

    iget-boolean v3, v1, Landroidx/fragment/app/r;->C:Z

    if-eqz v3, :cond_7

    iget-object v3, v1, Landroidx/fragment/app/r;->r:Landroidx/fragment/app/h0;

    iget-object v3, v3, Landroidx/fragment/app/h0;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/k0;

    invoke-interface {v4}, Landroidx/fragment/app/k0;->d()V

    goto :goto_1

    :cond_6
    iget-object v1, v1, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    iput-boolean v2, v1, Landroidx/fragment/app/h0;->y:Z

    iput-boolean v2, v1, Landroidx/fragment/app/h0;->z:Z

    iget-object v3, v1, Landroidx/fragment/app/h0;->F:Landroidx/fragment/app/j0;

    iput-boolean v2, v3, Landroidx/fragment/app/j0;->h:Z

    invoke-virtual {v1, v2}, Landroidx/fragment/app/h0;->s(I)V

    invoke-virtual {v0, v2}, Landroidx/activity/result/c;->d(Z)V

    return-void

    :cond_7
    new-instance v0, Landroidx/fragment/app/t0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onAttach()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method

.method public final d()I
    .locals 14

    iget-object v0, p0, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/r;

    iget-object v1, v0, Landroidx/fragment/app/r;->r:Landroidx/fragment/app/h0;

    if-nez v1, :cond_0

    iget v0, v0, Landroidx/fragment/app/r;->a:I

    return v0

    :cond_0
    iget v1, p0, Landroidx/fragment/app/n0;->e:I

    iget-object v2, v0, Landroidx/fragment/app/r;->K:Landroidx/lifecycle/l;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, -0x1

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v2, v9, :cond_3

    if-eq v2, v8, :cond_2

    if-eq v2, v6, :cond_1

    if-eq v2, v7, :cond_4

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_3
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_4
    :goto_0
    iget-boolean v2, v0, Landroidx/fragment/app/r;->m:Z

    if-eqz v2, :cond_7

    iget-boolean v2, v0, Landroidx/fragment/app/r;->n:Z

    if-eqz v2, :cond_5

    iget v1, p0, Landroidx/fragment/app/n0;->e:I

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, v0, Landroidx/fragment/app/r;->E:Landroid/view/View;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_5
    iget v2, p0, Landroidx/fragment/app/n0;->e:I

    if-ge v2, v7, :cond_6

    iget v2, v0, Landroidx/fragment/app/r;->a:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_6
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_7
    :goto_1
    iget-boolean v2, v0, Landroidx/fragment/app/r;->k:Z

    if-nez v2, :cond_8

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_8
    iget-object v2, v0, Landroidx/fragment/app/r;->D:Landroid/view/ViewGroup;

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Landroidx/fragment/app/r;->j()Landroidx/fragment/app/h0;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/fragment/app/h0;->B()Ls1/e;

    move-result-object v10

    invoke-static {v2, v10}, Landroidx/fragment/app/j;->f(Landroid/view/ViewGroup;Ls1/e;)Landroidx/fragment/app/j;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/fragment/app/j;->d(Landroidx/fragment/app/r;)Landroidx/fragment/app/s0;

    move-result-object v10

    if-eqz v10, :cond_9

    iget v10, v10, Landroidx/fragment/app/s0;->b:I

    goto :goto_2

    :cond_9
    move v10, v3

    :goto_2
    iget-object v2, v2, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    :cond_a
    if-ge v3, v11, :cond_b

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v3, v3, 0x1

    check-cast v12, Landroidx/fragment/app/s0;

    iget-object v13, v12, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/r;

    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    iget-boolean v13, v12, Landroidx/fragment/app/s0;->f:Z

    if-nez v13, :cond_a

    goto :goto_3

    :cond_b
    const/4 v12, 0x0

    :goto_3
    if-eqz v12, :cond_d

    if-eqz v10, :cond_c

    if-ne v10, v9, :cond_d

    :cond_c
    iget v2, v12, Landroidx/fragment/app/s0;->b:I

    move v3, v2

    goto :goto_4

    :cond_d
    move v3, v10

    :cond_e
    :goto_4
    if-ne v3, v8, :cond_f

    const/4 v2, 0x6

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_5

    :cond_f
    if-ne v3, v6, :cond_10

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_5

    :cond_10
    iget-boolean v2, v0, Landroidx/fragment/app/r;->l:Z

    if-eqz v2, :cond_12

    iget v2, v0, Landroidx/fragment/app/r;->q:I

    if-lez v2, :cond_11

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_5

    :cond_11
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_12
    :goto_5
    iget-boolean v2, v0, Landroidx/fragment/app/r;->F:Z

    if-eqz v2, :cond_13

    iget v2, v0, Landroidx/fragment/app/r;->a:I

    if-ge v2, v4, :cond_13

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_13
    invoke-static {v8}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v2

    if-eqz v2, :cond_14

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "computeExpectedState() of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return v1
.end method

.method public final e()V
    .locals 7

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "moveto CREATED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, v1, Landroidx/fragment/app/r;->J:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/n0;->a:Landroidx/activity/result/c;

    invoke-virtual {v0, v3}, Landroidx/activity/result/c;->j(Z)V

    iget-object v4, v1, Landroidx/fragment/app/r;->b:Landroid/os/Bundle;

    iget-object v5, v1, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    invoke-virtual {v5}, Landroidx/fragment/app/h0;->I()V

    iput v2, v1, Landroidx/fragment/app/r;->a:I

    iput-boolean v3, v1, Landroidx/fragment/app/r;->C:Z

    iget-object v5, v1, Landroidx/fragment/app/r;->L:Landroidx/lifecycle/s;

    new-instance v6, Landroidx/fragment/app/Fragment$5;

    invoke-direct {v6, v1}, Landroidx/fragment/app/Fragment$5;-><init>(Landroidx/fragment/app/r;)V

    invoke-virtual {v5, v6}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/p;)V

    iget-object v5, v1, Landroidx/fragment/app/r;->O:Lr0/d;

    invoke-virtual {v5, v4}, Lr0/d;->b(Landroid/os/Bundle;)V

    invoke-virtual {v1, v4}, Landroidx/fragment/app/r;->m(Landroid/os/Bundle;)V

    iput-boolean v2, v1, Landroidx/fragment/app/r;->J:Z

    iget-boolean v2, v1, Landroidx/fragment/app/r;->C:Z

    if-eqz v2, :cond_1

    iget-object v1, v1, Landroidx/fragment/app/r;->L:Landroidx/lifecycle/s;

    sget-object v2, Landroidx/lifecycle/k;->ON_CREATE:Landroidx/lifecycle/k;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/s;->d(Landroidx/lifecycle/k;)V

    invoke-virtual {v0, v3}, Landroidx/activity/result/c;->e(Z)V

    return-void

    :cond_1
    new-instance v0, Landroidx/fragment/app/t0;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onCreate()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v1, Landroidx/fragment/app/r;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    const-string v4, "android:support:fragments"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v4, v1, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    invoke-virtual {v4, v0}, Landroidx/fragment/app/h0;->N(Landroid/os/Parcelable;)V

    iget-object v0, v1, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    iput-boolean v3, v0, Landroidx/fragment/app/h0;->y:Z

    iput-boolean v3, v0, Landroidx/fragment/app/h0;->z:Z

    iget-object v4, v0, Landroidx/fragment/app/h0;->F:Landroidx/fragment/app/j0;

    iput-boolean v3, v4, Landroidx/fragment/app/j0;->h:Z

    invoke-virtual {v0, v2}, Landroidx/fragment/app/h0;->s(I)V

    :cond_3
    iput v2, v1, Landroidx/fragment/app/r;->a:I

    return-void
.end method

.method public final f()V
    .locals 7

    iget-object v0, p0, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/r;

    iget-boolean v1, v0, Landroidx/fragment/app/r;->m:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    invoke-static {v1}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "moveto CREATE_VIEW: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, v0, Landroidx/fragment/app/r;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/r;->q(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v3, v0, Landroidx/fragment/app/r;->D:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iget v3, v0, Landroidx/fragment/app/r;->w:I

    if-eqz v3, :cond_5

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    iget-object v4, v0, Landroidx/fragment/app/r;->r:Landroidx/fragment/app/h0;

    iget-object v4, v4, Landroidx/fragment/app/h0;->o:La1/b;

    invoke-virtual {v4, v3}, La1/b;->L(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-nez v3, :cond_6

    iget-boolean v4, v0, Landroidx/fragment/app/r;->o:Z

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/r;->w()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroidx/fragment/app/r;->w:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "unknown"

    :goto_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No view found for id 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Landroidx/fragment/app/r;->w:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") for fragment "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot create fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for a container view with no id"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const/4 v3, 0x0

    :cond_6
    :goto_1
    iput-object v3, v0, Landroidx/fragment/app/r;->D:Landroid/view/ViewGroup;

    iget-object v4, v0, Landroidx/fragment/app/r;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v3, v4}, Landroidx/fragment/app/r;->v(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v1, v0, Landroidx/fragment/app/r;->E:Landroid/view/View;

    const/4 v4, 0x2

    if-eqz v1, :cond_b

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v1, v0, Landroidx/fragment/app/r;->E:Landroid/view/View;

    const v6, 0x7f0900e4

    invoke-virtual {v1, v6, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/n0;->b()V

    :cond_7
    iget-boolean v1, v0, Landroidx/fragment/app/r;->y:Z

    if-eqz v1, :cond_8

    iget-object v1, v0, Landroidx/fragment/app/r;->E:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v1, v0, Landroidx/fragment/app/r;->E:Landroid/view/View;

    sget-object v3, Lc0/p0;->a:Ljava/util/WeakHashMap;

    invoke-static {v1}, Lc0/c0;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Landroidx/fragment/app/r;->E:Landroid/view/View;

    invoke-static {v1}, Lc0/d0;->c(Landroid/view/View;)V

    goto :goto_2

    :cond_9
    iget-object v1, v0, Landroidx/fragment/app/r;->E:Landroid/view/View;

    new-instance v3, Landroidx/fragment/app/m0;

    invoke-direct {v3, v5, v1}, Landroidx/fragment/app/m0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_2
    iget-object v1, v0, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    invoke-virtual {v1, v4}, Landroidx/fragment/app/h0;->s(I)V

    iget-object v1, p0, Landroidx/fragment/app/n0;->a:Landroidx/activity/result/c;

    invoke-virtual {v1, v5}, Landroidx/activity/result/c;->o(Z)V

    iget-object v1, v0, Landroidx/fragment/app/r;->E:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    iget-object v3, v0, Landroidx/fragment/app/r;->E:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    invoke-virtual {v0}, Landroidx/fragment/app/r;->d()Landroidx/fragment/app/p;

    move-result-object v5

    iput v3, v5, Landroidx/fragment/app/p;->j:F

    iget-object v3, v0, Landroidx/fragment/app/r;->D:Landroid/view/ViewGroup;

    if-eqz v3, :cond_b

    if-nez v1, :cond_b

    iget-object v1, v0, Landroidx/fragment/app/r;->E:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Landroidx/fragment/app/r;->d()Landroidx/fragment/app/p;

    move-result-object v3

    iput-object v1, v3, Landroidx/fragment/app/p;->k:Landroid/view/View;

    invoke-static {v4}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "requestFocus: Saved focused view "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for Fragment "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v1, v0, Landroidx/fragment/app/r;->E:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_b
    iput v4, v0, Landroidx/fragment/app/r;->a:I

    return-void
.end method

.method public final g()V
    .locals 10

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    iget-object v3, p0, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/r;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "movefrom CREATED: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, v3, Landroidx/fragment/app/r;->l:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    iget v1, v3, Landroidx/fragment/app/r;->q:I

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v4

    :goto_1
    iget-object v6, p0, Landroidx/fragment/app/n0;->b:Landroidx/fragment/app/f;

    if-nez v1, :cond_7

    iget-object v7, v6, Landroidx/fragment/app/f;->d:Ljava/lang/Object;

    check-cast v7, Landroidx/fragment/app/j0;

    iget-object v8, v7, Landroidx/fragment/app/j0;->c:Ljava/util/HashMap;

    iget-object v9, v3, Landroidx/fragment/app/r;->e:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    iget-boolean v8, v7, Landroidx/fragment/app/j0;->f:Z

    if-eqz v8, :cond_4

    iget-boolean v7, v7, Landroidx/fragment/app/j0;->g:Z

    goto :goto_3

    :cond_4
    :goto_2
    move v7, v5

    :goto_3
    if-eqz v7, :cond_5

    goto :goto_4

    :cond_5
    iget-object v0, v3, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v6, v0}, Landroidx/fragment/app/f;->e(Ljava/lang/String;)Landroidx/fragment/app/r;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-boolean v1, v0, Landroidx/fragment/app/r;->A:Z

    if-eqz v1, :cond_6

    iput-object v0, v3, Landroidx/fragment/app/r;->g:Landroidx/fragment/app/r;

    :cond_6
    iput v4, v3, Landroidx/fragment/app/r;->a:I

    return-void

    :cond_7
    :goto_4
    iget-object v7, v3, Landroidx/fragment/app/r;->s:Landroidx/fragment/app/u;

    if-eqz v7, :cond_8

    iget-object v7, v6, Landroidx/fragment/app/f;->d:Ljava/lang/Object;

    check-cast v7, Landroidx/fragment/app/j0;

    iget-boolean v7, v7, Landroidx/fragment/app/j0;->g:Z

    goto :goto_5

    :cond_8
    iget-object v7, v7, Landroidx/fragment/app/u;->b:Le/j;

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v7

    xor-int/2addr v7, v5

    goto :goto_5

    :cond_9
    move v7, v5

    :goto_5
    if-nez v1, :cond_a

    if-eqz v7, :cond_d

    :cond_a
    iget-object v1, v6, Landroidx/fragment/app/f;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/j0;

    iget-object v7, v1, Landroidx/fragment/app/j0;->e:Ljava/util/HashMap;

    iget-object v1, v1, Landroidx/fragment/app/j0;->d:Ljava/util/HashMap;

    invoke-static {v0}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "Clearing non-config state for "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, v3, Landroidx/fragment/app/r;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/j0;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/fragment/app/j0;->a()V

    iget-object v0, v3, Landroidx/fragment/app/r;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object v0, v3, Landroidx/fragment/app/r;->e:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/i0;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroidx/lifecycle/i0;->a()V

    iget-object v0, v3, Landroidx/fragment/app/r;->e:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget-object v0, v3, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    invoke-virtual {v0}, Landroidx/fragment/app/h0;->k()V

    iget-object v0, v3, Landroidx/fragment/app/r;->L:Landroidx/lifecycle/s;

    sget-object v1, Landroidx/lifecycle/k;->ON_DESTROY:Landroidx/lifecycle/k;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/s;->d(Landroidx/lifecycle/k;)V

    iput v4, v3, Landroidx/fragment/app/r;->a:I

    iput-boolean v4, v3, Landroidx/fragment/app/r;->J:Z

    iput-boolean v5, v3, Landroidx/fragment/app/r;->C:Z

    iget-object v0, p0, Landroidx/fragment/app/n0;->a:Landroidx/activity/result/c;

    invoke-virtual {v0, v4}, Landroidx/activity/result/c;->f(Z)V

    invoke-virtual {v6}, Landroidx/fragment/app/f;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_e
    :goto_6
    if-ge v4, v1, :cond_f

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    check-cast v2, Landroidx/fragment/app/n0;

    if-eqz v2, :cond_e

    iget-object v2, v2, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/r;

    iget-object v5, v3, Landroidx/fragment/app/r;->e:Ljava/lang/String;

    iget-object v7, v2, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iput-object v3, v2, Landroidx/fragment/app/r;->g:Landroidx/fragment/app/r;

    const/4 v5, 0x0

    iput-object v5, v2, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    goto :goto_6

    :cond_f
    iget-object v0, v3, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-virtual {v6, v0}, Landroidx/fragment/app/f;->e(Ljava/lang/String;)Landroidx/fragment/app/r;

    move-result-object v0

    iput-object v0, v3, Landroidx/fragment/app/r;->g:Landroidx/fragment/app/r;

    :cond_10
    invoke-virtual {v6, p0}, Landroidx/fragment/app/f;->t(Landroidx/fragment/app/n0;)V

    return-void
.end method

.method public final h()V
    .locals 7

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "movefrom CREATE_VIEW: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/r;->D:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v2, v1, Landroidx/fragment/app/r;->E:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, v1, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/fragment/app/h0;->s(I)V

    iget-object v0, v1, Landroidx/fragment/app/r;->E:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, v1, Landroidx/fragment/app/r;->M:Landroidx/fragment/app/p0;

    invoke-virtual {v0}, Landroidx/fragment/app/p0;->d()V

    iget-object v0, v0, Landroidx/fragment/app/p0;->b:Landroidx/lifecycle/s;

    iget-object v0, v0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/l;

    sget-object v3, Landroidx/lifecycle/l;->c:Landroidx/lifecycle/l;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/l;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Landroidx/fragment/app/r;->M:Landroidx/fragment/app/p0;

    sget-object v3, Landroidx/lifecycle/k;->ON_DESTROY:Landroidx/lifecycle/k;

    invoke-virtual {v0, v3}, Landroidx/fragment/app/p0;->c(Landroidx/lifecycle/k;)V

    :cond_2
    iput v2, v1, Landroidx/fragment/app/r;->a:I

    const/4 v0, 0x0

    iput-boolean v0, v1, Landroidx/fragment/app/r;->C:Z

    invoke-virtual {v1}, Landroidx/fragment/app/r;->o()V

    iget-boolean v2, v1, Landroidx/fragment/app/r;->C:Z

    if-eqz v2, :cond_8

    invoke-interface {v1}, Landroidx/lifecycle/j0;->e()Landroidx/lifecycle/i0;

    move-result-object v2

    const-string v3, "store"

    invoke-static {v2, v3}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v2, Landroidx/lifecycle/i0;->a:Ljava/util/HashMap;

    sget-object v3, Ln0/a;->b:Ln0/a;

    const-string v4, "defaultCreationExtras"

    invoke-static {v3, v4}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v4, Lo0/a;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    const-string v6, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "key"

    invoke-static {v5, v6}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/lifecycle/g0;

    invoke-virtual {v4, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v3, v3, Ln0/b;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v4, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    sget-object v3, Landroidx/lifecycle/h0;->b:Landroidx/lifecycle/h0;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v3, Lo0/a;

    invoke-direct {v3}, Lo0/a;-><init>()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v6, v3

    goto :goto_1

    :catch_0
    new-instance v3, Lo0/a;

    invoke-direct {v3}, Lo0/a;-><init>()V

    goto :goto_0

    :goto_1
    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/g0;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroidx/lifecycle/g0;->a()V

    :cond_5
    :goto_2
    check-cast v6, Lo0/a;

    iget-object v2, v6, Lo0/a;->c:Ll/l;

    iget v3, v2, Ll/l;->c:I

    if-gtz v3, :cond_6

    iput-boolean v0, v1, Landroidx/fragment/app/r;->p:Z

    iget-object v0, p0, Landroidx/fragment/app/n0;->a:Landroidx/activity/result/c;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/activity/result/c;->p(Z)V

    const/4 v0, 0x0

    iput-object v0, v1, Landroidx/fragment/app/r;->D:Landroid/view/ViewGroup;

    iput-object v0, v1, Landroidx/fragment/app/r;->E:Landroid/view/View;

    iput-object v0, v1, Landroidx/fragment/app/r;->M:Landroidx/fragment/app/p0;

    iget-object v3, v1, Landroidx/fragment/app/r;->N:Landroidx/lifecycle/w;

    invoke-virtual {v3, v0}, Landroidx/lifecycle/w;->e(Ljava/lang/Object;)V

    iput-boolean v2, v1, Landroidx/fragment/app/r;->n:Z

    return-void

    :cond_6
    iget-object v1, v2, Ll/l;->b:[Ljava/lang/Object;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Landroidx/fragment/app/t0;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onDestroyView()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()V
    .locals 8

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    iget-object v3, p0, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/r;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "movefrom ATTACHED: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, -0x1

    iput v1, v3, Landroidx/fragment/app/r;->a:I

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/fragment/app/r;->C:Z

    invoke-virtual {v3}, Landroidx/fragment/app/r;->p()V

    iget-boolean v5, v3, Landroidx/fragment/app/r;->C:Z

    if-eqz v5, :cond_8

    iget-object v5, v3, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    iget-boolean v6, v5, Landroidx/fragment/app/h0;->A:Z

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroidx/fragment/app/h0;->k()V

    new-instance v5, Landroidx/fragment/app/h0;

    invoke-direct {v5}, Landroidx/fragment/app/h0;-><init>()V

    iput-object v5, v3, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    :cond_1
    iget-object v5, p0, Landroidx/fragment/app/n0;->a:Landroidx/activity/result/c;

    invoke-virtual {v5, v4}, Landroidx/activity/result/c;->g(Z)V

    iput v1, v3, Landroidx/fragment/app/r;->a:I

    const/4 v1, 0x0

    iput-object v1, v3, Landroidx/fragment/app/r;->s:Landroidx/fragment/app/u;

    iput-object v1, v3, Landroidx/fragment/app/r;->u:Landroidx/fragment/app/r;

    iput-object v1, v3, Landroidx/fragment/app/r;->r:Landroidx/fragment/app/h0;

    iget-boolean v5, v3, Landroidx/fragment/app/r;->l:Z

    if-eqz v5, :cond_2

    iget v5, v3, Landroidx/fragment/app/r;->q:I

    if-lez v5, :cond_5

    :cond_2
    iget-object v5, p0, Landroidx/fragment/app/n0;->b:Landroidx/fragment/app/f;

    iget-object v5, v5, Landroidx/fragment/app/f;->d:Ljava/lang/Object;

    check-cast v5, Landroidx/fragment/app/j0;

    iget-object v6, v5, Landroidx/fragment/app/j0;->c:Ljava/util/HashMap;

    iget-object v7, v3, Landroidx/fragment/app/r;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v6, v5, Landroidx/fragment/app/j0;->f:Z

    if-eqz v6, :cond_4

    iget-boolean v5, v5, Landroidx/fragment/app/j0;->g:Z

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_7

    :cond_5
    invoke-static {v0}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "initState called for fragment: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v0, Landroidx/lifecycle/s;

    invoke-direct {v0, v3}, Landroidx/lifecycle/s;-><init>(Landroidx/lifecycle/q;)V

    iput-object v0, v3, Landroidx/fragment/app/r;->L:Landroidx/lifecycle/s;

    new-instance v0, Lr0/d;

    invoke-direct {v0, v3}, Lr0/d;-><init>(Lr0/e;)V

    iput-object v0, v3, Landroidx/fragment/app/r;->O:Lr0/d;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroidx/fragment/app/r;->e:Ljava/lang/String;

    iput-boolean v4, v3, Landroidx/fragment/app/r;->k:Z

    iput-boolean v4, v3, Landroidx/fragment/app/r;->l:Z

    iput-boolean v4, v3, Landroidx/fragment/app/r;->m:Z

    iput-boolean v4, v3, Landroidx/fragment/app/r;->n:Z

    iput-boolean v4, v3, Landroidx/fragment/app/r;->o:Z

    iput v4, v3, Landroidx/fragment/app/r;->q:I

    iput-object v1, v3, Landroidx/fragment/app/r;->r:Landroidx/fragment/app/h0;

    new-instance v0, Landroidx/fragment/app/h0;

    invoke-direct {v0}, Landroidx/fragment/app/h0;-><init>()V

    iput-object v0, v3, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    iput-object v1, v3, Landroidx/fragment/app/r;->s:Landroidx/fragment/app/u;

    iput v4, v3, Landroidx/fragment/app/r;->v:I

    iput v4, v3, Landroidx/fragment/app/r;->w:I

    iput-object v1, v3, Landroidx/fragment/app/r;->x:Ljava/lang/String;

    iput-boolean v4, v3, Landroidx/fragment/app/r;->y:Z

    iput-boolean v4, v3, Landroidx/fragment/app/r;->z:Z

    :cond_7
    return-void

    :cond_8
    new-instance v0, Landroidx/fragment/app/t0;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j()V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/r;

    iget-boolean v1, v0, Landroidx/fragment/app/r;->m:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Landroidx/fragment/app/r;->n:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Landroidx/fragment/app/r;->p:Z

    if-nez v1, :cond_2

    const/4 v1, 0x3

    invoke-static {v1}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveto CREATE_VIEW: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, v0, Landroidx/fragment/app/r;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/r;->q(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, v0, Landroidx/fragment/app/r;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/r;->v(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v1, v0, Landroidx/fragment/app/r;->E:Landroid/view/View;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v1, v0, Landroidx/fragment/app/r;->E:Landroid/view/View;

    const v3, 0x7f0900e4

    invoke-virtual {v1, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-boolean v1, v0, Landroidx/fragment/app/r;->y:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroidx/fragment/app/r;->E:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v1, v0, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroidx/fragment/app/h0;->s(I)V

    iget-object v1, p0, Landroidx/fragment/app/n0;->a:Landroidx/activity/result/c;

    invoke-virtual {v1, v2}, Landroidx/activity/result/c;->o(Z)V

    iput v3, v0, Landroidx/fragment/app/r;->a:I

    :cond_2
    return-void
.end method

.method public final k()V
    .locals 9

    iget-boolean v0, p0, Landroidx/fragment/app/n0;->d:Z

    const-string v1, "FragmentManager"

    const/4 v2, 0x2

    iget-object v3, p0, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/r;

    if-eqz v0, :cond_1

    invoke-static {v2}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring re-entrant call to moveToExpectedState() for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v4, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/n0;->d:Z

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/n0;->d()I

    move-result v5

    iget v6, v3, Landroidx/fragment/app/r;->a:I

    const/4 v7, 0x3

    if-eq v5, v6, :cond_9

    if-le v5, v6, :cond_4

    add-int/lit8 v6, v6, 0x1

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/n0;->n()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :pswitch_1
    const/4 v5, 0x6

    iput v5, v3, Landroidx/fragment/app/r;->a:I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/n0;->p()V

    goto :goto_0

    :pswitch_3
    iget-object v5, v3, Landroidx/fragment/app/r;->E:Landroid/view/View;

    if-eqz v5, :cond_3

    iget-object v5, v3, Landroidx/fragment/app/r;->D:Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Landroidx/fragment/app/r;->j()Landroidx/fragment/app/h0;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/fragment/app/h0;->B()Ls1/e;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/fragment/app/j;->f(Landroid/view/ViewGroup;Ls1/e;)Landroidx/fragment/app/j;

    move-result-object v5

    iget-object v6, v3, Landroidx/fragment/app/r;->E:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    invoke-static {v6}, Landroidx/activity/result/b;->b(I)I

    move-result v6

    invoke-static {v2}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SpecialEffectsController: Enqueuing add operation for fragment "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v5, v6, v2, p0}, Landroidx/fragment/app/j;->a(IILandroidx/fragment/app/n0;)V

    :cond_3
    const/4 v5, 0x4

    iput v5, v3, Landroidx/fragment/app/r;->a:I

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/n0;->a()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Landroidx/fragment/app/n0;->j()V

    invoke-virtual {p0}, Landroidx/fragment/app/n0;->f()V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Landroidx/fragment/app/n0;->e()V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Landroidx/fragment/app/n0;->c()V

    goto :goto_0

    :cond_4
    add-int/lit8 v6, v6, -0x1

    packed-switch v6, :pswitch_data_1

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Landroidx/fragment/app/n0;->l()V

    goto :goto_0

    :pswitch_9
    const/4 v5, 0x5

    iput v5, v3, Landroidx/fragment/app/r;->a:I

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0}, Landroidx/fragment/app/n0;->q()V

    goto/16 :goto_0

    :pswitch_b
    invoke-static {v7}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v5, v3, Landroidx/fragment/app/r;->E:Landroid/view/View;

    if-eqz v5, :cond_6

    iget-object v5, v3, Landroidx/fragment/app/r;->c:Landroid/util/SparseArray;

    if-nez v5, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/n0;->o()V

    :cond_6
    iget-object v5, v3, Landroidx/fragment/app/r;->E:Landroid/view/View;

    if-eqz v5, :cond_8

    iget-object v5, v3, Landroidx/fragment/app/r;->D:Landroid/view/ViewGroup;

    if-eqz v5, :cond_8

    invoke-virtual {v3}, Landroidx/fragment/app/r;->j()Landroidx/fragment/app/h0;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/fragment/app/h0;->B()Ls1/e;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/fragment/app/j;->f(Landroid/view/ViewGroup;Ls1/e;)Landroidx/fragment/app/j;

    move-result-object v5

    invoke-static {v2}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "SpecialEffectsController: Enqueuing remove operation for fragment "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v5, v0, v7, p0}, Landroidx/fragment/app/j;->a(IILandroidx/fragment/app/n0;)V

    :cond_8
    iput v7, v3, Landroidx/fragment/app/r;->a:I

    goto/16 :goto_0

    :pswitch_c
    iput-boolean v4, v3, Landroidx/fragment/app/r;->n:Z

    iput v2, v3, Landroidx/fragment/app/r;->a:I

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p0}, Landroidx/fragment/app/n0;->h()V

    iput v0, v3, Landroidx/fragment/app/r;->a:I

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p0}, Landroidx/fragment/app/n0;->g()V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p0}, Landroidx/fragment/app/n0;->i()V

    goto/16 :goto_0

    :cond_9
    iget-boolean v5, v3, Landroidx/fragment/app/r;->I:Z

    if-eqz v5, :cond_f

    iget-object v5, v3, Landroidx/fragment/app/r;->E:Landroid/view/View;

    if-eqz v5, :cond_d

    iget-object v5, v3, Landroidx/fragment/app/r;->D:Landroid/view/ViewGroup;

    if-eqz v5, :cond_d

    invoke-virtual {v3}, Landroidx/fragment/app/r;->j()Landroidx/fragment/app/h0;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/fragment/app/h0;->B()Ls1/e;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/fragment/app/j;->f(Landroid/view/ViewGroup;Ls1/e;)Landroidx/fragment/app/j;

    move-result-object v5

    iget-boolean v6, v3, Landroidx/fragment/app/r;->y:Z

    if-eqz v6, :cond_b

    invoke-static {v2}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "SpecialEffectsController: Enqueuing hide operation for fragment "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {v5, v7, v0, p0}, Landroidx/fragment/app/j;->a(IILandroidx/fragment/app/n0;)V

    goto :goto_1

    :cond_b
    invoke-static {v2}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v6

    if-eqz v6, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SpecialEffectsController: Enqueuing show operation for fragment "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-virtual {v5, v2, v0, p0}, Landroidx/fragment/app/j;->a(IILandroidx/fragment/app/n0;)V

    :cond_d
    :goto_1
    iget-object v1, v3, Landroidx/fragment/app/r;->r:Landroidx/fragment/app/h0;

    if-eqz v1, :cond_e

    iget-boolean v2, v3, Landroidx/fragment/app/r;->k:Z

    if-eqz v2, :cond_e

    invoke-static {v3}, Landroidx/fragment/app/h0;->E(Landroidx/fragment/app/r;)Z

    move-result v2

    if-eqz v2, :cond_e

    iput-boolean v0, v1, Landroidx/fragment/app/h0;->x:Z

    :cond_e
    iput-boolean v4, v3, Landroidx/fragment/app/r;->I:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_f
    iput-boolean v4, p0, Landroidx/fragment/app/n0;->d:Z

    return-void

    :goto_2
    iput-boolean v4, p0, Landroidx/fragment/app/n0;->d:Z

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final l()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "movefrom RESUMED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroidx/fragment/app/h0;->s(I)V

    iget-object v0, v1, Landroidx/fragment/app/r;->E:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, v1, Landroidx/fragment/app/r;->M:Landroidx/fragment/app/p0;

    sget-object v2, Landroidx/lifecycle/k;->ON_PAUSE:Landroidx/lifecycle/k;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/p0;->c(Landroidx/lifecycle/k;)V

    :cond_1
    iget-object v0, v1, Landroidx/fragment/app/r;->L:Landroidx/lifecycle/s;

    sget-object v2, Landroidx/lifecycle/k;->ON_PAUSE:Landroidx/lifecycle/k;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/s;->d(Landroidx/lifecycle/k;)V

    const/4 v0, 0x6

    iput v0, v1, Landroidx/fragment/app/r;->a:I

    const/4 v0, 0x1

    iput-boolean v0, v1, Landroidx/fragment/app/r;->C:Z

    iget-object v0, p0, Landroidx/fragment/app/n0;->a:Landroidx/activity/result/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/activity/result/c;->h(Z)V

    return-void
.end method

.method public final m(Ljava/lang/ClassLoader;)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/r;

    iget-object v1, v0, Landroidx/fragment/app/r;->b:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object p1, v0, Landroidx/fragment/app/r;->b:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, v0, Landroidx/fragment/app/r;->c:Landroid/util/SparseArray;

    iget-object p1, v0, Landroidx/fragment/app/r;->b:Landroid/os/Bundle;

    const-string v1, "android:view_registry_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, v0, Landroidx/fragment/app/r;->d:Landroid/os/Bundle;

    iget-object p1, v0, Landroidx/fragment/app/r;->b:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroidx/fragment/app/r;->h:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, v0, Landroidx/fragment/app/r;->b:Landroid/os/Bundle;

    const-string v1, "android:target_req_state"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Landroidx/fragment/app/r;->i:I

    :cond_1
    iget-object p1, v0, Landroidx/fragment/app/r;->b:Landroid/os/Bundle;

    const-string v1, "android:user_visible_hint"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Landroidx/fragment/app/r;->G:Z

    if-nez p1, :cond_2

    iput-boolean v2, v0, Landroidx/fragment/app/r;->F:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final n()V
    .locals 7

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v0

    const-string v1, "FragmentManager"

    iget-object v2, p0, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "moveto RESUMED: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v2, Landroidx/fragment/app/r;->H:Landroidx/fragment/app/p;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    iget-object v0, v0, Landroidx/fragment/app/p;->k:Landroid/view/View;

    :goto_0
    if-eqz v0, :cond_5

    iget-object v4, v2, Landroidx/fragment/app/r;->E:Landroid/view/View;

    if-ne v0, v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_5

    iget-object v5, v2, Landroidx/fragment/app/r;->E:Landroid/view/View;

    if-ne v4, v5, :cond_4

    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v4

    const/4 v5, 0x2

    invoke-static {v5}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "requestFocus: Restoring focused view "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_3

    const-string v0, "succeeded"

    goto :goto_3

    :cond_3
    const-string v0, "failed"

    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " on Fragment "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " resulting in focused view "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Landroidx/fragment/app/r;->E:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_1

    :cond_5
    :goto_4
    invoke-virtual {v2}, Landroidx/fragment/app/r;->d()Landroidx/fragment/app/p;

    move-result-object v0

    iput-object v3, v0, Landroidx/fragment/app/p;->k:Landroid/view/View;

    iget-object v0, v2, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    invoke-virtual {v0}, Landroidx/fragment/app/h0;->I()V

    iget-object v0, v2, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/h0;->w(Z)Z

    const/4 v0, 0x7

    iput v0, v2, Landroidx/fragment/app/r;->a:I

    iput-boolean v1, v2, Landroidx/fragment/app/r;->C:Z

    iget-object v1, v2, Landroidx/fragment/app/r;->L:Landroidx/lifecycle/s;

    sget-object v4, Landroidx/lifecycle/k;->ON_RESUME:Landroidx/lifecycle/k;

    invoke-virtual {v1, v4}, Landroidx/lifecycle/s;->d(Landroidx/lifecycle/k;)V

    iget-object v1, v2, Landroidx/fragment/app/r;->E:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, v2, Landroidx/fragment/app/r;->M:Landroidx/fragment/app/p0;

    invoke-virtual {v1, v4}, Landroidx/fragment/app/p0;->c(Landroidx/lifecycle/k;)V

    :cond_6
    iget-object v1, v2, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    const/4 v4, 0x0

    iput-boolean v4, v1, Landroidx/fragment/app/h0;->y:Z

    iput-boolean v4, v1, Landroidx/fragment/app/h0;->z:Z

    iget-object v5, v1, Landroidx/fragment/app/h0;->F:Landroidx/fragment/app/j0;

    iput-boolean v4, v5, Landroidx/fragment/app/j0;->h:Z

    invoke-virtual {v1, v0}, Landroidx/fragment/app/h0;->s(I)V

    iget-object v0, p0, Landroidx/fragment/app/n0;->a:Landroidx/activity/result/c;

    invoke-virtual {v0, v4}, Landroidx/activity/result/c;->k(Z)V

    iput-object v3, v2, Landroidx/fragment/app/r;->b:Landroid/os/Bundle;

    iput-object v3, v2, Landroidx/fragment/app/r;->c:Landroid/util/SparseArray;

    iput-object v3, v2, Landroidx/fragment/app/r;->d:Landroid/os/Bundle;

    return-void
.end method

.method public final o()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/r;

    iget-object v1, v0, Landroidx/fragment/app/r;->E:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, v0, Landroidx/fragment/app/r;->E:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    iput-object v1, v0, Landroidx/fragment/app/r;->c:Landroid/util/SparseArray;

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Landroidx/fragment/app/r;->M:Landroidx/fragment/app/p0;

    iget-object v2, v2, Landroidx/fragment/app/p0;->c:Lr0/d;

    invoke-virtual {v2, v1}, Lr0/d;->c(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iput-object v1, v0, Landroidx/fragment/app/r;->d:Landroid/os/Bundle;

    :cond_2
    :goto_0
    return-void
.end method

.method public final p()V
    .locals 5

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "moveto STARTED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    invoke-virtual {v0}, Landroidx/fragment/app/h0;->I()V

    iget-object v0, v1, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/fragment/app/h0;->w(Z)Z

    const/4 v0, 0x5

    iput v0, v1, Landroidx/fragment/app/r;->a:I

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/r;->C:Z

    invoke-virtual {v1}, Landroidx/fragment/app/r;->s()V

    iget-boolean v3, v1, Landroidx/fragment/app/r;->C:Z

    if-eqz v3, :cond_2

    iget-object v3, v1, Landroidx/fragment/app/r;->L:Landroidx/lifecycle/s;

    sget-object v4, Landroidx/lifecycle/k;->ON_START:Landroidx/lifecycle/k;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/s;->d(Landroidx/lifecycle/k;)V

    iget-object v3, v1, Landroidx/fragment/app/r;->E:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, v1, Landroidx/fragment/app/r;->M:Landroidx/fragment/app/p0;

    invoke-virtual {v3, v4}, Landroidx/fragment/app/p0;->c(Landroidx/lifecycle/k;)V

    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    iput-boolean v2, v1, Landroidx/fragment/app/h0;->y:Z

    iput-boolean v2, v1, Landroidx/fragment/app/h0;->z:Z

    iget-object v3, v1, Landroidx/fragment/app/h0;->F:Landroidx/fragment/app/j0;

    iput-boolean v2, v3, Landroidx/fragment/app/j0;->h:Z

    invoke-virtual {v1, v0}, Landroidx/fragment/app/h0;->s(I)V

    iget-object v0, p0, Landroidx/fragment/app/n0;->a:Landroidx/activity/result/c;

    invoke-virtual {v0, v2}, Landroidx/activity/result/c;->m(Z)V

    return-void

    :cond_2
    new-instance v0, Landroidx/fragment/app/t0;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onStart()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final q()V
    .locals 4

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "movefrom STARTED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/r;->t:Landroidx/fragment/app/h0;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/fragment/app/h0;->z:Z

    iget-object v3, v0, Landroidx/fragment/app/h0;->F:Landroidx/fragment/app/j0;

    iput-boolean v2, v3, Landroidx/fragment/app/j0;->h:Z

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroidx/fragment/app/h0;->s(I)V

    iget-object v0, v1, Landroidx/fragment/app/r;->E:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, v1, Landroidx/fragment/app/r;->M:Landroidx/fragment/app/p0;

    sget-object v3, Landroidx/lifecycle/k;->ON_STOP:Landroidx/lifecycle/k;

    invoke-virtual {v0, v3}, Landroidx/fragment/app/p0;->c(Landroidx/lifecycle/k;)V

    :cond_1
    iget-object v0, v1, Landroidx/fragment/app/r;->L:Landroidx/lifecycle/s;

    sget-object v3, Landroidx/lifecycle/k;->ON_STOP:Landroidx/lifecycle/k;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/s;->d(Landroidx/lifecycle/k;)V

    iput v2, v1, Landroidx/fragment/app/r;->a:I

    const/4 v0, 0x0

    iput-boolean v0, v1, Landroidx/fragment/app/r;->C:Z

    invoke-virtual {v1}, Landroidx/fragment/app/r;->t()V

    iget-boolean v2, v1, Landroidx/fragment/app/r;->C:Z

    if-eqz v2, :cond_2

    iget-object v1, p0, Landroidx/fragment/app/n0;->a:Landroidx/activity/result/c;

    invoke-virtual {v1, v0}, Landroidx/activity/result/c;->n(Z)V

    return-void

    :cond_2
    new-instance v0, Landroidx/fragment/app/t0;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onStop()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
