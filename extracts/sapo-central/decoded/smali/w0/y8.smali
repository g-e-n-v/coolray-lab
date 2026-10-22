.class public final synthetic Lw0/y8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;I)V
    .locals 0

    iput p2, p0, Lw0/y8;->a:I

    iput-object p1, p0, Lw0/y8;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Lw0/y8;->a:I

    const-string v3, "<get-prefs>(...)"

    const/16 v6, 0x10

    const v7, 0x7f090136

    const v8, 0x7f090139

    const v9, 0x7f090134

    const v10, 0x7f090135

    const/16 v11, 0x2f

    const v12, 0x7f0f02cd

    const-string v13, "master_carlock_apply_mode"

    const v14, 0x7f0f0032

    const/4 v15, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v5, "getString(...)"

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lw0/y8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f0f044e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f044d

    invoke-static {v2, v5, v1, v3, v5}, Landroidx/activity/result/b;->g(Ljava/lang/String;Ljava/lang/String;Lcom/ex/auto/MainActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ex/auto/MainActivity;->n2(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v1, v0, Lw0/y8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f0f0468

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f0467

    invoke-static {v2, v5, v1, v3, v5}, Landroidx/activity/result/b;->g(Ljava/lang/String;Ljava/lang/String;Lcom/ex/auto/MainActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ex/auto/MainActivity;->n2(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v1, v0, Lw0/y8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f0f045c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f045b

    invoke-static {v2, v5, v1, v3, v5}, Landroidx/activity/result/b;->g(Ljava/lang/String;Ljava/lang/String;Lcom/ex/auto/MainActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ex/auto/MainActivity;->n2(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object v1, v0, Lw0/y8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "quick_access_enabled"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    xor-int/lit8 v5, v2, 0x1

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-class v3, Lcom/ex/auto/QuickAccessFloaterService;

    if-nez v2, :cond_0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "gestures_enabled"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_1
    :goto_0
    sget v2, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    sget-object v2, Lcom/ex/auto/QuickAccessFloaterService;->x0:Lcom/ex/auto/QuickAccessFloaterService;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v2, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v4, Lw0/ve;

    const/16 v5, 0x11

    invoke-direct {v4, v5, v2}, Lw0/ve;-><init>(ILcom/ex/auto/QuickAccessFloaterService;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->u1()V

    return-void

    :pswitch_3
    iget-object v1, v0, Lw0/y8;->b:Lcom/ex/auto/MainActivity;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "widgets_poslock_all"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    const v3, 0x7f09022a

    invoke-virtual {v1, v3}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ex/auto/MasterToggleView;

    invoke-virtual {v1, v2}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    return-void

    :pswitch_4
    iget-object v1, v0, Lw0/y8;->b:Lcom/ex/auto/MainActivity;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    sget-object v3, Lw0/jh;->a:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v8, "vidro_traseiro"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    const v7, 0x7f0f03a4

    goto :goto_4

    :sswitch_1
    const-string v8, "parabrisa"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_3

    :cond_4
    const v7, 0x7f0f03a3

    goto :goto_4

    :sswitch_2
    const-string v8, "vidro_max"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_3

    :cond_5
    const v7, 0x7f0f039e

    goto :goto_4

    :sswitch_3
    const-string v8, "volante"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_3

    :cond_6
    const v7, 0x7f0f03a2

    goto :goto_4

    :sswitch_4
    const-string v8, "banco_motorista"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    :goto_3
    const v7, 0x7f0f03a1

    goto :goto_4

    :cond_7
    const v7, 0x7f0f03a0

    :goto_4
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    new-array v6, v4, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "widget_heating_icons"

    invoke-interface {v6, v7, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lw0/jh;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    new-array v8, v7, [Z

    :goto_5
    if-ge v4, v7, :cond_9

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    aput-boolean v9, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_9
    new-instance v4, Le/h;

    invoke-direct {v4, v1}, Le/h;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0f0393

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Le/h;->b:Ljava/lang/Object;

    check-cast v7, Le/d;

    iput-object v6, v7, Le/d;->d:Ljava/lang/CharSequence;

    check-cast v5, [Ljava/lang/CharSequence;

    new-instance v6, Lw0/ca;

    invoke-direct {v6, v8}, Lw0/ca;-><init>([Z)V

    iput-object v5, v7, Le/d;->p:[Ljava/lang/CharSequence;

    iput-object v6, v7, Le/d;->x:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iput-object v8, v7, Le/d;->t:[Z

    iput-boolean v2, v7, Le/d;->u:Z

    const v5, 0x7f0f006c

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lw0/e;

    invoke-direct {v6, v3, v1, v8, v2}, Lw0/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v4, v5, v6}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v15}, Le/h;->c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v4}, Le/h;->h()Le/i;

    return-void

    :pswitch_5
    iget-object v1, v0, Lw0/y8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    :try_start_0
    iget-object v2, v1, Lcom/ex/auto/MainActivity;->B:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lw0/x8;

    const/16 v4, 0xc

    invoke-direct {v3, v1, v4}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :pswitch_6
    iget-object v1, v0, Lw0/y8;->b:Lcom/ex/auto/MainActivity;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v6, "persistent"

    invoke-interface {v3, v13, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget v3, v1, Lcom/ex/auto/MainActivity;->c0:I

    iget-object v6, v1, Lcom/ex/auto/MainActivity;->D:Ljava/util/ArrayList;

    invoke-static {v6, v3}, Ly1/g;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_a

    invoke-static {v12, v4, v1, v5}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    move-object v5, v1

    goto :goto_6

    :cond_a
    new-instance v4, Li2/j;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-static {v3, v11}, Lo2/k;->z0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const v11, 0x7f0f00a9

    invoke-virtual {v1, v11, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v11, 0x4e20

    filled-new-array {v10, v9, v8, v7}, [I

    move-result-object v5

    invoke-virtual {v1, v11, v12, v5}, Lcom/ex/auto/MainActivity;->u2(J[I)Lw0/h0;

    move-result-object v5

    new-instance v14, Lw0/ha;

    invoke-direct {v14, v5, v1, v4, v2}, Lw0/ha;-><init>(Lw0/h0;Lcom/ex/auto/MainActivity;Li2/j;I)V

    new-instance v5, Lw0/ia;

    invoke-direct {v5, v4, v1, v3, v2}, Lw0/ia;-><init>(Li2/j;Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    const/16 v18, 0x680

    move-object v7, v6

    const/4 v6, 0x0

    const-wide/16 v8, 0x1388

    const/16 v10, 0x3a98

    const-string v11, ""

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v7

    move-object/from16 v17, v5

    move-object v5, v1

    invoke-static/range {v5 .. v18}, Lcom/ex/auto/MainActivity;->J1(Lcom/ex/auto/MainActivity;Landroid/view/View;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Lh2/l;Lh2/l;ZLjava/lang/String;Lh2/a;I)V

    :goto_6
    invoke-virtual {v5}, Lcom/ex/auto/MainActivity;->p1()V

    return-void

    :pswitch_7
    iget-object v6, v0, Lw0/y8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v6}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "reboot"

    invoke-interface {v1, v13, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget v1, v6, Lcom/ex/auto/MainActivity;->c0:I

    iget-object v2, v6, Lcom/ex/auto/MainActivity;->D:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Ly1/g;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_b

    invoke-static {v12, v4, v6, v5}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    new-instance v2, Li2/j;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v1, v11}, Lo2/k;->z0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v11, 0x7f0f00a8

    invoke-virtual {v6, v11, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v11, 0x61a8

    filled-new-array {v10, v9, v8, v7}, [I

    move-result-object v5

    invoke-virtual {v6, v11, v12, v5}, Lcom/ex/auto/MainActivity;->u2(J[I)Lw0/h0;

    move-result-object v5

    new-instance v15, Lw0/ha;

    invoke-direct {v15, v5, v6, v2, v4}, Lw0/ha;-><init>(Lw0/h0;Lcom/ex/auto/MainActivity;Li2/j;I)V

    new-instance v5, Lw0/ia;

    invoke-direct {v5, v2, v6, v1, v4}, Lw0/ia;-><init>(Li2/j;Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    const/16 v19, 0x680

    const/4 v7, 0x0

    const-wide/16 v9, 0x1388

    const/16 v11, 0x4e20

    const-string v12, ""

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v3

    move-object v8, v3

    move-object/from16 v18, v5

    invoke-static/range {v6 .. v19}, Lcom/ex/auto/MainActivity;->J1(Lcom/ex/auto/MainActivity;Landroid/view/View;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Lh2/l;Lh2/l;ZLjava/lang/String;Lh2/a;I)V

    :goto_7
    invoke-virtual {v6}, Lcom/ex/auto/MainActivity;->p1()V

    return-void

    :pswitch_8
    iget-object v1, v0, Lw0/y8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f0f0454

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f0453

    invoke-static {v2, v5, v1, v3, v5}, Landroidx/activity/result/b;->g(Ljava/lang/String;Ljava/lang/String;Lcom/ex/auto/MainActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ex/auto/MainActivity;->n2(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_9
    iget-object v1, v0, Lw0/y8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f0f0442

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f0441

    invoke-static {v2, v5, v1, v3, v5}, Landroidx/activity/result/b;->g(Ljava/lang/String;Ljava/lang/String;Lcom/ex/auto/MainActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ex/auto/MainActivity;->n2(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_a
    iget-object v1, v0, Lw0/y8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f0f0452

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f0451

    invoke-static {v2, v5, v1, v3, v5}, Landroidx/activity/result/b;->g(Ljava/lang/String;Ljava/lang/String;Lcom/ex/auto/MainActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ex/auto/MainActivity;->n2(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_b
    iget-object v1, v0, Lw0/y8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const-string v2, "1111"

    invoke-virtual {v1, v2}, Lcom/ex/auto/MainActivity;->R0(Ljava/lang/String;)V

    return-void

    :pswitch_c
    iget-object v1, v0, Lw0/y8;->b:Lcom/ex/auto/MainActivity;

    const-string v2, "ambos"

    invoke-static {v1, v2}, Lcom/ex/auto/MainActivity;->Q0(Lcom/ex/auto/MainActivity;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, Lw0/x8;

    invoke-direct {v3, v1, v6}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_d
    const-wide/16 v4, 0x96

    iget-object v1, v0, Lw0/y8;->b:Lcom/ex/auto/MainActivity;

    const-string v2, "aa"

    invoke-static {v1, v2}, Lcom/ex/auto/MainActivity;->Q0(Lcom/ex/auto/MainActivity;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v3, Lw0/x8;

    invoke-direct {v3, v1, v6}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_e
    iget-object v1, v0, Lw0/y8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f0f0440

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f043f

    invoke-static {v2, v5, v1, v3, v5}, Landroidx/activity/result/b;->g(Ljava/lang/String;Ljava/lang/String;Lcom/ex/auto/MainActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ex/auto/MainActivity;->n2(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_f
    iget-object v1, v0, Lw0/y8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f0f046a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f0469

    invoke-static {v2, v5, v1, v3, v5}, Landroidx/activity/result/b;->g(Ljava/lang/String;Ljava/lang/String;Lcom/ex/auto/MainActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ex/auto/MainActivity;->n2(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_10
    iget-object v1, v0, Lw0/y8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const-string v2, "1114"

    invoke-virtual {v1, v2}, Lcom/ex/auto/MainActivity;->R0(Ljava/lang/String;)V

    return-void

    :pswitch_11
    iget-object v1, v0, Lw0/y8;->b:Lcom/ex/auto/MainActivity;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    const v3, 0x7f0f047b

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v3, 0x7f0f047d

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v3, 0x7f0f047c

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v3, 0x7f0f047f

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v3, 0x7f0f047e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v3, 0x7f0f047a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v3

    const-string v9, "th-TH"

    const-string v10, "en-US"

    const-string v5, "pt-BR"

    const-string v6, "es-CL"

    const-string v7, "ru-RU"

    const-string v8, "vi-VN"

    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f09014e

    invoke-virtual {v1, v6}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Landroid/widget/ListPopupWindow;

    invoke-direct {v7, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v7, v6}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    invoke-virtual {v7, v2}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    const v2, 0x7f070064

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v8, v4

    move v9, v8

    :goto_8
    if-ge v8, v6, :cond_10

    aget-object v10, v3, v8

    add-int/lit8 v11, v9, 0x1

    invoke-static {}, Le/o;->c()Ly/e;

    move-result-object v12

    const-string v13, "getApplicationLocales(...)"

    invoke-static {v12, v13}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Ly/e;->b()Z

    move-result v13

    const-string v14, "pt-BR"

    if-nez v13, :cond_d

    iget-object v12, v12, Ly/e;->a:Ly/f;

    iget-object v12, v12, Ly/f;->a:Landroid/os/LocaleList;

    invoke-virtual {v12, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v12

    if-eqz v12, :cond_e

    invoke-virtual {v12}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_c

    goto :goto_9

    :cond_c
    move-object v14, v12

    goto :goto_9

    :cond_d
    invoke-virtual {v1}, Le/j;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v12

    if-eqz v12, :cond_e

    invoke-virtual {v12}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_c

    :cond_e
    :goto_9
    const-string v19, "th"

    const-string v20, "en"

    const-string v15, "pt"

    const-string v16, "es"

    const-string v17, "ru"

    const-string v18, "vi"

    filled-new-array/range {v15 .. v20}, [Ljava/lang/String;

    move-result-object v12

    aget-object v9, v12, v9

    const-string v12, "get(...)"

    invoke-static {v9, v12}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v9}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "\u2713   "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_b

    :cond_f
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "     "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_b
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move v9, v11

    goto :goto_8

    :cond_10
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x7f0c0032

    invoke-direct {v3, v1, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v7, v3}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lw0/x9;

    invoke-direct {v2, v7, v1, v5}, Lw0/x9;-><init>(Landroid/widget/ListPopupWindow;Lcom/ex/auto/MainActivity;[Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v7}, Landroid/widget/ListPopupWindow;->show()V

    return-void

    :pswitch_12
    iget-object v1, v0, Lw0/y8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Lcom/ex/auto/MainActivity;->U1(Ljava/lang/String;)V

    return-void

    :pswitch_13
    iget-object v1, v0, Lw0/y8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f0f0464

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f0463

    invoke-static {v2, v5, v1, v3, v5}, Landroidx/activity/result/b;->g(Ljava/lang/String;Ljava/lang/String;Lcom/ex/auto/MainActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ex/auto/MainActivity;->n2(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_14
    iget-object v1, v0, Lw0/y8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f0f0466

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f0465

    invoke-static {v2, v5, v1, v3, v5}, Landroidx/activity/result/b;->g(Ljava/lang/String;Ljava/lang/String;Lcom/ex/auto/MainActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ex/auto/MainActivity;->n2(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_15
    iget-object v1, v0, Lw0/y8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const-string v2, "dark"

    invoke-virtual {v1, v2}, Lcom/ex/auto/MainActivity;->U1(Ljava/lang/String;)V

    return-void

    :pswitch_16
    iget-object v1, v0, Lw0/y8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const v2, 0x7f0f045a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f0459

    invoke-static {v2, v5, v1, v3, v5}, Landroidx/activity/result/b;->g(Ljava/lang/String;Ljava/lang/String;Lcom/ex/auto/MainActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ex/auto/MainActivity;->n2(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_17
    iget-object v1, v0, Lw0/y8;->b:Lcom/ex/auto/MainActivity;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "silence_avm_log"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    xor-int/lit8 v4, v3, 0x1

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    const v6, 0x7f09015c

    invoke-virtual {v1, v6}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/ex/auto/MasterToggleView;

    invoke-virtual {v6, v4}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    sget-object v6, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    new-instance v6, Lw0/o9;

    invoke-direct {v6, v2, v1, v4, v3}, Lw0/o9;-><init>(ILcom/ex/auto/MainActivity;ZZ)V

    invoke-static {v5, v6}, Lw0/t1;->V(Ljava/lang/String;Lh2/l;)V

    return-void

    :pswitch_18
    iget-object v1, v0, Lw0/y8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "silence_tbox_log"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    xor-int/lit8 v5, v2, 0x1

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    const v6, 0x7f09015e

    invoke-virtual {v1, v6}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/ex/auto/MasterToggleView;

    invoke-virtual {v6, v5}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    sget-object v6, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    new-instance v6, Lw0/o9;

    invoke-direct {v6, v4, v1, v5, v2}, Lw0/o9;-><init>(ILcom/ex/auto/MainActivity;ZZ)V

    invoke-static {v3, v6}, Lw0/t1;->V(Ljava/lang/String;Lh2/l;)V

    return-void

    :pswitch_19
    iget-object v1, v0, Lw0/y8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "package:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_1a
    iget-object v1, v0, Lw0/y8;->b:Lcom/ex/auto/MainActivity;

    iget-object v5, v1, Lcom/ex/auto/MainActivity;->K0:Ljava/lang/Boolean;

    if-eqz v5, :cond_11

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_c

    :cond_11
    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v5, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "ttl_65_ativo"

    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    :goto_c
    xor-int/2addr v3, v2

    iget-boolean v4, v1, Lcom/ex/auto/MainActivity;->L0:Z

    if-eqz v4, :cond_12

    goto :goto_d

    :cond_12
    iput-boolean v2, v1, Lcom/ex/auto/MainActivity;->L0:Z

    iget-object v2, v1, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v4, Lw0/f9;

    const/4 v5, 0x4

    invoke-direct {v4, v1, v3, v5}, Lw0/f9;-><init>(Lcom/ex/auto/MainActivity;ZI)V

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_d
    return-void

    :pswitch_1b
    iget-object v1, v0, Lw0/y8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    const-string v2, "light"

    invoke-virtual {v1, v2}, Lcom/ex/auto/MainActivity;->U1(Ljava/lang/String;)V

    return-void

    :pswitch_1c
    iget-object v1, v0, Lw0/y8;->b:Lcom/ex/auto/MainActivity;

    sget v2, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->O()Z

    move-result v2

    if-eqz v2, :cond_13

    sget v2, Lw0/u;->a:I

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lw0/u;->a(Landroid/content/SharedPreferences;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->O()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lw0/u;->b(Landroid/content/SharedPreferences;)Z

    move-result v2

    if-eqz v2, :cond_13

    new-instance v2, Le/h;

    invoke-direct {v2, v1}, Le/h;-><init>(Landroid/content/Context;)V

    iget-object v3, v2, Le/h;->b:Ljava/lang/Object;

    check-cast v3, Le/d;

    const v4, 0x7f0f03dd

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Le/d;->d:Ljava/lang/CharSequence;

    const v4, 0x7f0f03dc

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Le/d;->f:Ljava/lang/CharSequence;

    invoke-virtual {v2, v14, v15}, Le/h;->b(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v3, Lw0/z8;

    const/4 v5, 0x4

    invoke-direct {v3, v1, v5}, Lw0/z8;-><init>(Lcom/ex/auto/MainActivity;I)V

    const v1, 0x104000a

    invoke-virtual {v2, v1, v3}, Le/h;->e(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2}, Le/h;->h()Le/i;

    goto :goto_e

    :cond_13
    invoke-virtual {v1}, Lcom/ex/auto/MainActivity;->L0()V

    :goto_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x70934378 -> :sswitch_4
        0x25a8eab1 -> :sswitch_3
        0x65a733b3 -> :sswitch_2
        0x73e97247 -> :sswitch_1
        0x7d0ae822 -> :sswitch_0
    .end sparse-switch
.end method
