.class public final Landroidx/fragment/app/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/j;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/j;->d:Z

    iput-boolean v0, p0, Landroidx/fragment/app/j;->e:Z

    iput-object p1, p0, Landroidx/fragment/app/j;->a:Landroid/view/ViewGroup;

    return-void
.end method

.method public static f(Landroid/view/ViewGroup;Ls1/e;)Landroidx/fragment/app/j;
    .locals 3

    const v0, 0x7f0902a8

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroidx/fragment/app/j;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/fragment/app/j;

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroidx/fragment/app/j;

    invoke-direct {p1, p0}, Landroidx/fragment/app/j;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public final a(IILandroidx/fragment/app/n0;)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/j;->b:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ly/b;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v2, p3, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/r;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/j;->d(Landroidx/fragment/app/r;)Landroidx/fragment/app/s0;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p2}, Landroidx/fragment/app/s0;->c(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/fragment/app/s0;

    invoke-direct {v2, p1, p2, p3, v1}, Landroidx/fragment/app/s0;-><init>(IILandroidx/fragment/app/n0;Ly/b;)V

    iget-object p1, p0, Landroidx/fragment/app/j;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/fragment/app/r0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, v2, p2}, Landroidx/fragment/app/r0;-><init>(Landroidx/fragment/app/j;Landroidx/fragment/app/s0;I)V

    iget-object p2, v2, Landroidx/fragment/app/s0;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/fragment/app/r0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, v2, p2}, Landroidx/fragment/app/r0;-><init>(Landroidx/fragment/app/j;Landroidx/fragment/app/s0;I)V

    iget-object p2, v2, Landroidx/fragment/app/s0;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Ljava/util/ArrayList;Z)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v7, v4

    move-object v6, v5

    :cond_0
    :goto_0
    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ge v7, v3, :cond_3

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v7, v7, 0x1

    check-cast v11, Landroidx/fragment/app/s0;

    iget-object v12, v11, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/r;

    iget-object v12, v12, Landroidx/fragment/app/r;->E:Landroid/view/View;

    invoke-static {v12}, Landroidx/activity/result/b;->c(Landroid/view/View;)I

    move-result v12

    iget v13, v11, Landroidx/fragment/app/s0;->a:I

    invoke-static {v13}, Ln/g;->b(I)I

    move-result v13

    if-eqz v13, :cond_2

    if-eq v13, v10, :cond_1

    if-eq v13, v9, :cond_2

    if-eq v13, v8, :cond_2

    goto :goto_0

    :cond_1
    if-eq v12, v9, :cond_0

    move-object v6, v11

    goto :goto_0

    :cond_2
    if-ne v12, v9, :cond_0

    if-nez v5, :cond_0

    move-object v5, v11

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v13, v4

    :goto_1
    if-ge v13, v12, :cond_c

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    check-cast v14, Landroidx/fragment/app/s0;

    new-instance v15, Ly/b;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v14}, Landroidx/fragment/app/s0;->d()V

    iget-object v10, v14, Landroidx/fragment/app/s0;->e:Ljava/util/HashSet;

    invoke-virtual {v10, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v8, Landroidx/fragment/app/g;

    invoke-direct {v8, v14, v15}, Landroidx/fragment/app/h;-><init>(Landroidx/fragment/app/s0;Ly/b;)V

    iput-boolean v4, v8, Landroidx/fragment/app/g;->d:Z

    iput-boolean v2, v8, Landroidx/fragment/app/g;->c:Z

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Ly/b;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v14}, Landroidx/fragment/app/s0;->d()V

    invoke-virtual {v10, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v10, Landroidx/fragment/app/i;

    if-eqz v2, :cond_5

    if-ne v14, v5, :cond_4

    :goto_2
    const/4 v15, 0x1

    goto :goto_3

    :cond_4
    move v15, v4

    goto :goto_3

    :cond_5
    if-ne v14, v6, :cond_4

    goto :goto_2

    :goto_3
    invoke-direct {v10, v14, v8}, Landroidx/fragment/app/h;-><init>(Landroidx/fragment/app/s0;Ly/b;)V

    iget v8, v14, Landroidx/fragment/app/s0;->a:I

    iget-object v4, v14, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/r;

    if-ne v8, v9, :cond_8

    if-eqz v2, :cond_6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_4

    :cond_6
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_4
    if-eqz v2, :cond_7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_5

    :cond_7
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_5

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_5

    :cond_9
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_5
    if-eqz v15, :cond_b

    if-eqz v2, :cond_a

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_6

    :cond_a
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_b
    :goto_6
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroidx/fragment/app/c;

    invoke-direct {v4, v0, v11, v14}, Landroidx/fragment/app/c;-><init>(Landroidx/fragment/app/j;Ljava/util/ArrayList;Landroidx/fragment/app/s0;)V

    iget-object v8, v14, Landroidx/fragment/app/s0;->d:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    const/4 v8, 0x3

    const/4 v10, 0x1

    goto :goto_1

    :cond_c
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v2, :cond_d

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroidx/fragment/app/i;

    iget-object v5, v5, Landroidx/fragment/app/h;->a:Ljava/lang/Object;

    check-cast v5, Landroidx/fragment/app/s0;

    iget-object v6, v5, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/r;

    iget-object v6, v6, Landroidx/fragment/app/r;->E:Landroid/view/View;

    invoke-static {v6}, Landroidx/activity/result/b;->c(Landroid/view/View;)I

    move-result v6

    iget v5, v5, Landroidx/fragment/app/s0;->a:I

    goto :goto_7

    :cond_d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v2, :cond_e

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroidx/fragment/app/i;

    iget-object v6, v5, Landroidx/fragment/app/h;->a:Ljava/lang/Object;

    check-cast v6, Landroidx/fragment/app/s0;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Landroidx/fragment/app/h;->d()V

    goto :goto_8

    :cond_e
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    iget-object v4, v0, Landroidx/fragment/app/j;->a:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_9
    const-string v12, "FragmentManager"

    if-ge v10, v7, :cond_17

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v10, v10, 0x1

    check-cast v13, Landroidx/fragment/app/g;

    iget-object v14, v13, Landroidx/fragment/app/h;->a:Ljava/lang/Object;

    check-cast v14, Landroidx/fragment/app/s0;

    iget-object v15, v14, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/r;

    iget-object v15, v15, Landroidx/fragment/app/r;->E:Landroid/view/View;

    invoke-static {v15}, Landroidx/activity/result/b;->c(Landroid/view/View;)I

    move-result v15

    iget v14, v14, Landroidx/fragment/app/s0;->a:I

    if-eq v15, v14, :cond_f

    if-eq v15, v9, :cond_10

    if-eq v14, v9, :cond_10

    :cond_f
    move/from16 p1, v2

    move/from16 v22, v9

    const/4 v2, 0x3

    move-object v9, v4

    goto/16 :goto_c

    :cond_10
    invoke-virtual {v13, v5}, Landroidx/fragment/app/g;->j(Landroid/content/Context;)Landroidx/activity/result/c;

    move-result-object v14

    if-nez v14, :cond_11

    invoke-virtual {v13}, Landroidx/fragment/app/h;->d()V

    :goto_a
    move/from16 p1, v2

    move/from16 v22, v9

    const/4 v2, 0x3

    move-object v9, v4

    goto/16 :goto_d

    :cond_11
    iget-object v14, v14, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    check-cast v14, Landroid/animation/Animator;

    if-nez v14, :cond_12

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_12
    iget-object v15, v13, Landroidx/fragment/app/h;->a:Ljava/lang/Object;

    check-cast v15, Landroidx/fragment/app/s0;

    move/from16 v22, v9

    iget-object v9, v15, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/r;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move/from16 p1, v2

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static/range {v22 .. v22}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring Animator set on "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " as this Fragment was involved in a Transition."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    invoke-virtual {v13}, Landroidx/fragment/app/h;->d()V

    move-object v9, v4

    const/4 v2, 0x3

    goto :goto_d

    :cond_14
    iget v0, v15, Landroidx/fragment/app/s0;->a:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_15

    const/16 v19, 0x1

    goto :goto_b

    :cond_15
    const/16 v19, 0x0

    :goto_b
    if-eqz v19, :cond_16

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_16
    iget-object v0, v9, Landroidx/fragment/app/r;->E:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v16, Landroidx/fragment/app/d;

    move-object/from16 v18, v0

    move-object/from16 v17, v4

    move-object/from16 v21, v13

    move-object/from16 v20, v15

    invoke-direct/range {v16 .. v21}, Landroidx/fragment/app/d;-><init>(Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/s0;Landroidx/fragment/app/g;)V

    move-object/from16 v4, v16

    move-object/from16 v9, v17

    invoke-virtual {v14, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v14, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v14}, Landroid/animation/Animator;->start()V

    iget-object v0, v13, Landroidx/fragment/app/h;->b:Ljava/lang/Object;

    check-cast v0, Ly/b;

    new-instance v4, Landroidx/emoji2/text/m;

    const/4 v8, 0x1

    invoke-direct {v4, v8, v14}, Landroidx/emoji2/text/m;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v4}, Ly/b;->a(Ly/a;)V

    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object v4, v9

    move/from16 v9, v22

    const/4 v8, 0x1

    goto/16 :goto_9

    :goto_c
    invoke-virtual {v13}, Landroidx/fragment/app/h;->d()V

    :goto_d
    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object v4, v9

    move/from16 v9, v22

    goto/16 :goto_9

    :cond_17
    move/from16 p1, v2

    move/from16 v22, v9

    move-object v9, v4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_1d

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Landroidx/fragment/app/g;

    iget-object v3, v2, Landroidx/fragment/app/h;->a:Ljava/lang/Object;

    check-cast v3, Landroidx/fragment/app/s0;

    iget-object v4, v3, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/r;

    const-string v7, "Ignoring Animation set on "

    if-eqz p1, :cond_19

    invoke-static/range {v22 .. v22}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v3

    if-eqz v3, :cond_18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " as Animations cannot run alongside Transitions."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    invoke-virtual {v2}, Landroidx/fragment/app/h;->d()V

    goto :goto_e

    :cond_19
    if-eqz v8, :cond_1b

    invoke-static/range {v22 .. v22}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " as Animations cannot run alongside Animators."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    invoke-virtual {v2}, Landroidx/fragment/app/h;->d()V

    goto :goto_e

    :cond_1b
    iget-object v4, v4, Landroidx/fragment/app/r;->E:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroidx/fragment/app/g;->j(Landroid/content/Context;)Landroidx/activity/result/c;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v7, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v7, Landroid/view/animation/Animation;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v3, Landroidx/fragment/app/s0;->a:I

    const/4 v10, 0x1

    if-eq v3, v10, :cond_1c

    invoke-virtual {v4, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2}, Landroidx/fragment/app/h;->d()V

    goto :goto_f

    :cond_1c
    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v3, Landroidx/fragment/app/v;

    invoke-direct {v3, v7, v9, v4}, Landroidx/fragment/app/v;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    new-instance v7, Landroidx/fragment/app/e;

    invoke-direct {v7, v4, v9, v2}, Landroidx/fragment/app/e;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/g;)V

    invoke-virtual {v3, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_f
    iget-object v3, v2, Landroidx/fragment/app/h;->b:Ljava/lang/Object;

    check-cast v3, Ly/b;

    new-instance v7, Landroidx/fragment/app/f;

    invoke-direct {v7, v4, v9, v2}, Landroidx/fragment/app/f;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/g;)V

    invoke-virtual {v3, v7}, Ly/b;->a(Ly/a;)V

    goto/16 :goto_e

    :cond_1d
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v0, :cond_1e

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    check-cast v1, Landroidx/fragment/app/s0;

    iget-object v2, v1, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/r;

    iget-object v2, v2, Landroidx/fragment/app/r;->E:Landroid/view/View;

    iget v1, v1, Landroidx/fragment/app/s0;->a:I

    invoke-static {v2, v1}, Landroidx/activity/result/b;->a(Landroid/view/View;I)V

    goto :goto_10

    :cond_1e
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final c()V
    .locals 9

    iget-boolean v0, p0, Landroidx/fragment/app/j;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->a:Landroid/view/ViewGroup;

    sget-object v1, Lc0/p0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lc0/c0;->b(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/j;->e()V

    iput-boolean v1, p0, Landroidx/fragment/app/j;->d:Z

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/j;->b:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :cond_2
    :goto_0
    if-ge v4, v3, :cond_4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroidx/fragment/app/s0;

    const/4 v6, 0x2

    invoke-static {v6}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SpecialEffectsController: Cancelling operation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_3
    :goto_1
    invoke-virtual {v5}, Landroidx/fragment/app/s0;->a()V

    iget-boolean v6, v5, Landroidx/fragment/app/s0;->g:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/j;->g()V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/j;->b:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Landroidx/fragment/app/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroidx/fragment/app/s0;

    invoke-virtual {v5}, Landroidx/fragment/app/s0;->d()V

    goto :goto_2

    :cond_5
    iget-boolean v3, p0, Landroidx/fragment/app/j;->d:Z

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/j;->b(Ljava/util/ArrayList;Z)V

    iput-boolean v1, p0, Landroidx/fragment/app/j;->d:Z

    :cond_6
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d(Landroidx/fragment/app/r;)Landroidx/fragment/app/s0;
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroidx/fragment/app/s0;

    iget-object v4, v3, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/r;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Landroidx/fragment/app/s0;->f:Z

    if-nez v4, :cond_0

    return-object v3

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e()V
    .locals 11

    iget-object v0, p0, Landroidx/fragment/app/j;->a:Landroid/view/ViewGroup;

    sget-object v1, Lc0/p0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lc0/c0;->b(Landroid/view/View;)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/j;->b:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/j;->g()V

    iget-object v2, p0, Landroidx/fragment/app/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroidx/fragment/app/s0;

    invoke-virtual {v6}, Landroidx/fragment/app/s0;->d()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v4

    :goto_1
    const/4 v6, 0x2

    if-ge v5, v3, :cond_3

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    check-cast v7, Landroidx/fragment/app/s0;

    invoke-static {v6}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SpecialEffectsController: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const-string v9, ""

    goto :goto_2

    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Container "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Landroidx/fragment/app/j;->a:Landroid/view/ViewGroup;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " is not attached to window. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "Cancelling running operation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v7}, Landroidx/fragment/app/s0;->a()V

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/j;->b:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_3
    if-ge v4, v3, :cond_6

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroidx/fragment/app/s0;

    invoke-static {v6}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SpecialEffectsController: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    const-string v9, ""

    goto :goto_4

    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Container "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Landroidx/fragment/app/j;->a:Landroid/view/ViewGroup;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " is not attached to window. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "Cancelling pending operation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v5}, Landroidx/fragment/app/s0;->a()V

    goto :goto_3

    :cond_6
    monitor-exit v1

    return-void

    :goto_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final g()V
    .locals 6

    iget-object v0, p0, Landroidx/fragment/app/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroidx/fragment/app/s0;

    iget v4, v3, Landroidx/fragment/app/s0;->b:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget-object v4, v3, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/r;

    invoke-virtual {v4}, Landroidx/fragment/app/r;->x()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-static {v4}, Landroidx/activity/result/b;->b(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/s0;->c(II)V

    goto :goto_0

    :cond_1
    return-void
.end method
