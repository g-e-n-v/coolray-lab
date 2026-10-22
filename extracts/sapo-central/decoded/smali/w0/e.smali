.class public final synthetic Lw0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lw0/e;->a:I

    iput-object p1, p0, Lw0/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lw0/e;->c:Ljava/lang/Object;

    iput-object p3, p0, Lw0/e;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    iget p1, p0, Lw0/e;->a:I

    const-string p2, "getString(...)"

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lw0/e;->d:Ljava/lang/Object;

    iget-object v3, p0, Lw0/e;->c:Ljava/lang/Object;

    iget-object v4, p0, Lw0/e;->b:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    check-cast v4, Ljava/util/List;

    check-cast v3, Lcom/ex/auto/QuickAccessFloaterService;

    check-cast v2, [Z

    sget p1, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-ltz v5, :cond_1

    move-object v8, v6

    check-cast v8, Lx1/d;

    aget-boolean v5, v2, v5

    if-eqz v5, :cond_0

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move v5, v7

    goto :goto_0

    :cond_1
    invoke-static {}, Ly1/h;->W()V

    throw v0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_3

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lx1/d;

    iget-object v5, v5, Lx1/d;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f0f00ff

    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lcom/ex/auto/QuickAccessFloaterService;->G(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lw0/of;

    invoke-direct {p2, v3, v0, v1}, Lw0/of;-><init>(Lcom/ex/auto/QuickAccessFloaterService;Ljava/util/ArrayList;I)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_2
    return-void

    :pswitch_0
    check-cast v4, Ljava/util/List;

    check-cast v3, Lcom/ex/auto/MainActivity;

    check-cast v2, [Z

    sget p1, Lcom/ex/auto/MainActivity;->z1:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    if-ltz v1, :cond_6

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    aget-boolean v1, v2, v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    move v1, v6

    goto :goto_3

    :cond_6
    invoke-static {}, Ly1/h;->W()V

    throw v0

    :cond_7
    invoke-static {p1}, Ly1/g;->p0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    sget-object v1, Lw0/jh;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v4, Lw0/jh;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v3}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    const-string p1, ","

    const/16 v2, 0x3e

    invoke-static {v1, p1, v0, v2}, Ly1/g;->e0(Ljava/lang/Iterable;Ljava/lang/String;Lh2/l;I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "widget_heating_icons"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-static {v3}, Lw0/t1;->z(Landroid/content/Context;)V

    const-string p1, "heating"

    invoke-static {p1}, Lw0/t1;->U(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    :goto_5
    const p1, 0x7f0f0392

    const/4 v0, 0x1

    invoke-static {p1, v0, v3, p2}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    :goto_6
    return-void

    :pswitch_1
    check-cast v4, Landroid/widget/NumberPicker;

    check-cast v3, Landroid/widget/NumberPicker;

    check-cast v2, Lcom/ex/auto/AcProgramEditActivity;

    sget p1, Lcom/ex/auto/AcProgramEditActivity;->z:I

    invoke-virtual {v4}, Landroid/widget/NumberPicker;->getValue()I

    move-result p1

    mul-int/lit8 p1, p1, 0x3c

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getValue()I

    move-result p2

    add-int/2addr p2, p1

    if-lez p2, :cond_d

    iget-object p1, v2, Lcom/ex/auto/AcProgramEditActivity;->u:Ljava/util/ArrayList;

    new-instance v0, Lw0/l;

    const-string v1, "wait"

    int-to-double v3, p2

    invoke-direct {v0, v1, v3, v4}, Lw0/l;-><init>(Ljava/lang/String;D)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/ex/auto/AcProgramEditActivity;->t()V

    :cond_d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
