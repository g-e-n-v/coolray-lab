.class public final Landroidx/fragment/app/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field public final a:Landroidx/fragment/app/h0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/h0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/h0;

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 2
    iget-object v4, v1, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/h0;

    iget-object v5, v4, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    const-class v6, Landroidx/fragment/app/w;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "Fragment "

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v6, :cond_14

    .line 3
    new-instance v0, Landroidx/fragment/app/w;

    .line 4
    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    iput-boolean v11, v0, Landroidx/fragment/app/w;->d:Z

    .line 6
    invoke-interface {v3}, Landroid/util/AttributeSet;->getClassAttribute()Ljava/lang/String;

    move-result-object v6

    .line 7
    sget-object v12, Ll0/a;->b:[I

    invoke-virtual {v2, v3, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    if-nez v6, :cond_0

    .line 8
    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 9
    :cond_0
    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 10
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    .line 12
    invoke-virtual {v4, v3}, Landroidx/fragment/app/h0;->y(I)Landroidx/fragment/app/r;

    move-result-object v13

    if-eqz v6, :cond_11

    if-nez v13, :cond_11

    .line 13
    const-string v13, " with tag "

    if-gtz v3, :cond_2

    if-eqz v12, :cond_1

    .line 14
    invoke-virtual {v13, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 15
    :cond_1
    const-string v0, ""

    .line 16
    :goto_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "FragmentContainerView must have an android:id to add Fragment "

    .line 17
    invoke-static {v3, v6, v0}, Landroidx/activity/result/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 19
    :cond_2
    invoke-virtual {v4}, Landroidx/fragment/app/h0;->A()Landroidx/fragment/app/b0;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    invoke-virtual {v3, v6}, Landroidx/fragment/app/b0;->a(Ljava/lang/String;)Landroidx/fragment/app/r;

    move-result-object v2

    .line 20
    iput-boolean v11, v2, Landroidx/fragment/app/r;->C:Z

    .line 21
    iget-object v3, v2, Landroidx/fragment/app/r;->s:Landroidx/fragment/app/u;

    if-nez v3, :cond_3

    move-object v3, v10

    goto :goto_1

    .line 22
    :cond_3
    iget-object v3, v3, Landroidx/fragment/app/u;->a:Le/j;

    :goto_1
    if-eqz v3, :cond_4

    .line 23
    iput-boolean v11, v2, Landroidx/fragment/app/r;->C:Z

    .line 24
    :cond_4
    new-instance v3, Landroidx/fragment/app/a;

    invoke-direct {v3, v4}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/h0;)V

    .line 25
    iput-boolean v11, v3, Landroidx/fragment/app/a;->o:Z

    .line 26
    iput-object v0, v2, Landroidx/fragment/app/r;->D:Landroid/view/ViewGroup;

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v4

    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 29
    invoke-virtual {v6}, Ljava/lang/Class;->getModifiers()I

    move-result v14

    .line 30
    invoke-virtual {v6}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v15

    if-nez v15, :cond_10

    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 31
    invoke-virtual {v6}, Ljava/lang/Class;->isMemberClass()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 32
    :cond_5
    const-string v6, " now "

    const-string v7, ": was "

    if-eqz v12, :cond_8

    .line 33
    iget-object v14, v2, Landroidx/fragment/app/r;->x:Ljava/lang/String;

    if-eqz v14, :cond_7

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    goto :goto_2

    .line 34
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t change tag of fragment "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroidx/fragment/app/r;->x:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_7
    :goto_2
    iput-object v12, v2, Landroidx/fragment/app/r;->x:Ljava/lang/String;

    :cond_8
    if-eqz v4, :cond_c

    if-eq v4, v9, :cond_b

    .line 36
    iget v9, v2, Landroidx/fragment/app/r;->v:I

    if-eqz v9, :cond_a

    if-ne v9, v4, :cond_9

    goto :goto_3

    .line 37
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t change container ID of fragment "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroidx/fragment/app/r;->v:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_a
    :goto_3
    iput v4, v2, Landroidx/fragment/app/r;->v:I

    iput v4, v2, Landroidx/fragment/app/r;->w:I

    goto :goto_4

    .line 39
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t add fragment "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to container view with no id"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_c
    :goto_4
    new-instance v4, Landroidx/fragment/app/o0;

    invoke-direct {v4, v11, v2}, Landroidx/fragment/app/o0;-><init>(ILandroidx/fragment/app/r;)V

    invoke-virtual {v3, v4}, Landroidx/fragment/app/a;->b(Landroidx/fragment/app/o0;)V

    .line 41
    iget-object v4, v3, Landroidx/fragment/app/a;->p:Landroidx/fragment/app/h0;

    iput-object v4, v2, Landroidx/fragment/app/r;->r:Landroidx/fragment/app/h0;

    .line 42
    iget-boolean v2, v3, Landroidx/fragment/app/a;->g:Z

    if-nez v2, :cond_f

    .line 43
    iget-object v2, v4, Landroidx/fragment/app/h0;->n:Landroidx/fragment/app/u;

    if-eqz v2, :cond_11

    .line 44
    iget-boolean v2, v4, Landroidx/fragment/app/h0;->A:Z

    if-eqz v2, :cond_d

    goto :goto_5

    .line 45
    :cond_d
    invoke-virtual {v4, v11}, Landroidx/fragment/app/h0;->v(Z)V

    .line 46
    iget-object v2, v4, Landroidx/fragment/app/h0;->C:Ljava/util/ArrayList;

    iget-object v6, v4, Landroidx/fragment/app/h0;->D:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v6}, Landroidx/fragment/app/a;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 47
    iput-boolean v11, v4, Landroidx/fragment/app/h0;->b:Z

    .line 48
    :try_start_0
    iget-object v2, v4, Landroidx/fragment/app/h0;->C:Ljava/util/ArrayList;

    iget-object v3, v4, Landroidx/fragment/app/h0;->D:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v3}, Landroidx/fragment/app/h0;->M(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-virtual {v4}, Landroidx/fragment/app/h0;->d()V

    .line 50
    invoke-virtual {v4}, Landroidx/fragment/app/h0;->W()V

    .line 51
    iget-boolean v2, v4, Landroidx/fragment/app/h0;->B:Z

    if-eqz v2, :cond_e

    .line 52
    iput-boolean v8, v4, Landroidx/fragment/app/h0;->B:Z

    .line 53
    invoke-virtual {v4}, Landroidx/fragment/app/h0;->V()V

    .line 54
    :cond_e
    iget-object v2, v4, Landroidx/fragment/app/h0;->c:Landroidx/fragment/app/f;

    .line 55
    iget-object v2, v2, Landroidx/fragment/app/f;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 56
    invoke-static {v10}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 57
    invoke-virtual {v4}, Landroidx/fragment/app/h0;->d()V

    .line 58
    throw v0

    .line 59
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "This transaction is already being added to the back stack"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must be a public static class to be  properly recreated from instance state."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_11
    :goto_5
    invoke-virtual {v5}, Landroidx/fragment/app/f;->g()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_12
    :goto_6
    if-ge v8, v3, :cond_13

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v8, v8, 0x1

    check-cast v4, Landroidx/fragment/app/n0;

    .line 62
    iget-object v5, v4, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/r;

    .line 63
    iget v6, v5, Landroidx/fragment/app/r;->w:I

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v6, v7, :cond_12

    iget-object v6, v5, Landroidx/fragment/app/r;->E:Landroid/view/View;

    if-eqz v6, :cond_12

    .line 64
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_12

    .line 65
    iput-object v0, v5, Landroidx/fragment/app/r;->D:Landroid/view/ViewGroup;

    .line 66
    invoke-virtual {v4}, Landroidx/fragment/app/n0;->b()V

    goto :goto_6

    :cond_13
    return-object v0

    .line 67
    :cond_14
    const-string v6, "fragment"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    :cond_15
    :goto_7
    move-object/from16 v17, v10

    goto/16 :goto_11

    .line 68
    :cond_16
    const-string v0, "class"

    invoke-interface {v3, v10, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    sget-object v6, Ll0/a;->a:[I

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    if-nez v0, :cond_17

    .line 70
    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    :cond_17
    invoke-virtual {v6, v11, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    const/4 v13, 0x2

    .line 72
    invoke-virtual {v6, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 73
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v0, :cond_15

    .line 74
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 75
    :try_start_1
    invoke-static {v6, v0}, Landroidx/fragment/app/b0;->b(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 76
    const-class v15, Landroidx/fragment/app/r;

    invoke-virtual {v15, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move v6, v8

    :goto_8
    if-nez v6, :cond_18

    goto :goto_7

    :cond_18
    if-eqz p1, :cond_19

    .line 77
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v8

    :cond_19
    if-ne v8, v9, :cond_1b

    if-ne v12, v9, :cond_1b

    if-eqz v14, :cond_1a

    goto :goto_9

    .line 78
    :cond_1a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1b
    :goto_9
    if-eq v12, v9, :cond_1c

    .line 79
    invoke-virtual {v4, v12}, Landroidx/fragment/app/h0;->y(I)Landroidx/fragment/app/r;

    move-result-object v6

    goto :goto_a

    :cond_1c
    move-object v6, v10

    :goto_a
    if-nez v6, :cond_21

    if-eqz v14, :cond_21

    .line 80
    iget-object v6, v5, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    .line 81
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    sub-int/2addr v15, v11

    :goto_b
    if-ltz v15, :cond_1e

    .line 82
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v10

    move-object/from16 v10, v16

    check-cast v10, Landroidx/fragment/app/r;

    move/from16 p2, v13

    if-eqz v10, :cond_1d

    .line 83
    iget-object v13, v10, Landroidx/fragment/app/r;->x:Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d

    move-object v6, v10

    goto :goto_c

    :cond_1d
    add-int/lit8 v15, v15, -0x1

    move/from16 v13, p2

    move-object/from16 v10, v17

    goto :goto_b

    :cond_1e
    move-object/from16 v17, v10

    move/from16 p2, v13

    .line 84
    iget-object v5, v5, Landroidx/fragment/app/f;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/n0;

    if-eqz v6, :cond_1f

    .line 85
    iget-object v6, v6, Landroidx/fragment/app/n0;->c:Landroidx/fragment/app/r;

    .line 86
    iget-object v10, v6, Landroidx/fragment/app/r;->x:Ljava/lang/String;

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    goto :goto_c

    :cond_20
    move-object/from16 v6, v17

    goto :goto_c

    :cond_21
    move-object/from16 v17, v10

    move/from16 p2, v13

    :goto_c
    if-nez v6, :cond_22

    if-eq v8, v9, :cond_22

    .line 87
    invoke-virtual {v4, v8}, Landroidx/fragment/app/h0;->y(I)Landroidx/fragment/app/r;

    move-result-object v6

    .line 88
    :cond_22
    const-string v5, "FragmentManager"

    if-nez v6, :cond_26

    .line 89
    invoke-virtual {v4}, Landroidx/fragment/app/h0;->A()Landroidx/fragment/app/b0;

    move-result-object v3

    .line 90
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 91
    invoke-virtual {v3, v0}, Landroidx/fragment/app/b0;->a(Ljava/lang/String;)Landroidx/fragment/app/r;

    move-result-object v6

    .line 92
    iput-boolean v11, v6, Landroidx/fragment/app/r;->m:Z

    if-eqz v12, :cond_23

    move v2, v12

    goto :goto_d

    :cond_23
    move v2, v8

    .line 93
    :goto_d
    iput v2, v6, Landroidx/fragment/app/r;->v:I

    .line 94
    iput v8, v6, Landroidx/fragment/app/r;->w:I

    .line 95
    iput-object v14, v6, Landroidx/fragment/app/r;->x:Ljava/lang/String;

    .line 96
    iput-boolean v11, v6, Landroidx/fragment/app/r;->n:Z

    .line 97
    iput-object v4, v6, Landroidx/fragment/app/r;->r:Landroidx/fragment/app/h0;

    .line 98
    iget-object v2, v4, Landroidx/fragment/app/h0;->n:Landroidx/fragment/app/u;

    .line 99
    iput-object v2, v6, Landroidx/fragment/app/r;->s:Landroidx/fragment/app/u;

    .line 100
    iget-object v3, v2, Landroidx/fragment/app/u;->b:Le/j;

    .line 101
    iput-boolean v11, v6, Landroidx/fragment/app/r;->C:Z

    if-nez v2, :cond_24

    move-object/from16 v10, v17

    goto :goto_e

    .line 102
    :cond_24
    iget-object v10, v2, Landroidx/fragment/app/u;->a:Le/j;

    :goto_e
    if-eqz v10, :cond_25

    .line 103
    iput-boolean v11, v6, Landroidx/fragment/app/r;->C:Z

    .line 104
    :cond_25
    invoke-virtual {v4, v6}, Landroidx/fragment/app/h0;->a(Landroidx/fragment/app/r;)Landroidx/fragment/app/n0;

    move-result-object v2

    .line 105
    invoke-static/range {p2 .. p2}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " has been inflated via the <fragment> tag: id=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 109
    :cond_26
    iget-boolean v2, v6, Landroidx/fragment/app/r;->n:Z

    if-nez v2, :cond_2d

    .line 110
    iput-boolean v11, v6, Landroidx/fragment/app/r;->n:Z

    .line 111
    iput-object v4, v6, Landroidx/fragment/app/r;->r:Landroidx/fragment/app/h0;

    .line 112
    iget-object v2, v4, Landroidx/fragment/app/h0;->n:Landroidx/fragment/app/u;

    .line 113
    iput-object v2, v6, Landroidx/fragment/app/r;->s:Landroidx/fragment/app/u;

    .line 114
    iget-object v3, v2, Landroidx/fragment/app/u;->b:Le/j;

    .line 115
    iput-boolean v11, v6, Landroidx/fragment/app/r;->C:Z

    if-nez v2, :cond_27

    move-object/from16 v10, v17

    goto :goto_f

    .line 116
    :cond_27
    iget-object v10, v2, Landroidx/fragment/app/u;->a:Le/j;

    :goto_f
    if-eqz v10, :cond_28

    .line 117
    iput-boolean v11, v6, Landroidx/fragment/app/r;->C:Z

    .line 118
    :cond_28
    invoke-virtual {v4, v6}, Landroidx/fragment/app/h0;->f(Landroidx/fragment/app/r;)Landroidx/fragment/app/n0;

    move-result-object v2

    .line 119
    invoke-static/range {p2 .. p2}, Landroidx/fragment/app/h0;->D(I)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Retained Fragment "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " has been re-attached via the <fragment> tag: id=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 122
    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_29
    :goto_10
    move-object/from16 v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, v6, Landroidx/fragment/app/r;->D:Landroid/view/ViewGroup;

    .line 124
    invoke-virtual {v2}, Landroidx/fragment/app/n0;->k()V

    .line 125
    invoke-virtual {v2}, Landroidx/fragment/app/n0;->j()V

    .line 126
    iget-object v3, v6, Landroidx/fragment/app/r;->E:Landroid/view/View;

    if-eqz v3, :cond_2c

    if-eqz v12, :cond_2a

    .line 127
    invoke-virtual {v3, v12}, Landroid/view/View;->setId(I)V

    .line 128
    :cond_2a
    iget-object v0, v6, Landroidx/fragment/app/r;->E:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 129
    iget-object v0, v6, Landroidx/fragment/app/r;->E:Landroid/view/View;

    invoke-virtual {v0, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 130
    :cond_2b
    iget-object v0, v6, Landroidx/fragment/app/r;->E:Landroid/view/View;

    new-instance v3, Landroidx/fragment/app/x;

    invoke-direct {v3, v1, v2}, Landroidx/fragment/app/x;-><init>(Landroidx/fragment/app/y;Landroidx/fragment/app/n0;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 131
    iget-object v0, v6, Landroidx/fragment/app/r;->E:Landroid/view/View;

    return-object v0

    .line 132
    :cond_2c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, " did not create a view."

    .line 133
    invoke-static {v7, v0, v3}, Landroidx/activity/result/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    :cond_2d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Duplicate id 0x"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", tag "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", or parent id 0x"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with another fragment for "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_11
    return-object v17
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/y;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
