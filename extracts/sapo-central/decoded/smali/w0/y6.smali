.class public final synthetic Lw0/y6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lh2/p;Lh2/a;Lh2/a;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    iput v0, p0, Lw0/y6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Li2/e;

    iput-object p1, p0, Lw0/y6;->c:Ljava/lang/Object;

    iput-object p2, p0, Lw0/y6;->b:Ljava/lang/Object;

    check-cast p3, Li2/e;

    iput-object p3, p0, Lw0/y6;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, Lw0/y6;->a:I

    iput-object p1, p0, Lw0/y6;->c:Ljava/lang/Object;

    iput-object p2, p0, Lw0/y6;->b:Ljava/lang/Object;

    iput-object p3, p0, Lw0/y6;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 20

    move-object/from16 v1, p0

    iget v0, v1, Lw0/y6;->a:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lw0/y6;->c:Ljava/lang/Object;

    check-cast v0, Li2/m;

    iget-object v2, v1, Lw0/y6;->b:Ljava/lang/Object;

    check-cast v2, Lcom/ex/auto/QuickAccessFloaterService;

    iget-object v3, v1, Lw0/y6;->d:Ljava/lang/Object;

    check-cast v3, Lh2/a;

    sget v4, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    iget-object v0, v0, Li2/m;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v4, v5}, Lcom/ex/auto/QuickAccessFloaterService;->P(J)V

    invoke-interface {v3}, Lh2/a;->a()Ljava/lang/Object;

    return-void

    :cond_0
    const-string v0, "dlg"

    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v5

    :pswitch_0
    iget-object v0, v1, Lw0/y6;->c:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/QuickAccessFloaterService;

    iget-object v2, v1, Lw0/y6;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lw0/y6;->d:Ljava/lang/Object;

    check-cast v3, Lw0/sf;

    sget v4, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-virtual {v0, v3, v2}, Lcom/ex/auto/QuickAccessFloaterService;->H(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v0, v1, Lw0/y6;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowManager;

    iget-object v2, v1, Lw0/y6;->b:Ljava/lang/Object;

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v3, v1, Lw0/y6;->d:Ljava/lang/Object;

    check-cast v3, Lh2/a;

    :try_start_0
    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sput-boolean v4, Lw0/sd;->b:Z

    invoke-interface {v3}, Lh2/a;->a()Ljava/lang/Object;

    return-void

    :pswitch_2
    iget-object v0, v1, Lw0/y6;->c:Ljava/lang/Object;

    check-cast v0, Landroid/media/browse/MediaBrowser$MediaItem;

    iget-object v2, v1, Lw0/y6;->b:Ljava/lang/Object;

    check-cast v2, Lcom/ex/auto/MediaBrowserHostActivity;

    iget-object v3, v1, Lw0/y6;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    sget v4, Lcom/ex/auto/MediaBrowserHostActivity;->s:I

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser$MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser$MediaItem;->isBrowsable()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v0, v2, Lcom/ex/auto/MediaBrowserHostActivity;->e:Ljava/util/ArrayList;

    new-instance v5, Lx1/a;

    invoke-direct {v5, v4, v3}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v4}, Lcom/ex/auto/MediaBrowserHostActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser$MediaItem;->isPlayable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v2, Lcom/ex/auto/MediaBrowserHostActivity;->c:Landroid/media/session/MediaController;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v4, v5}, Landroid/media/session/MediaController$TransportControls;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    :goto_0
    return-void

    :pswitch_3
    iget-object v0, v1, Lw0/y6;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Lw0/y6;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/SharedPreferences;

    iget-object v4, v1, Lw0/y6;->d:Ljava/lang/Object;

    check-cast v4, Lcom/ex/auto/MainActivity;

    sget v5, Lcom/ex/auto/MainActivity;->z1:I

    sget-object v5, Lcom/ex/auto/QuickAccessFloaterService;->w0:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v3

    const-string v6, "qa_visible_"

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    xor-int/2addr v3, v5

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v2, Lcom/ex/auto/QuickAccessFloaterService;->x0:Lcom/ex/auto/QuickAccessFloaterService;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/ex/auto/QuickAccessFloaterService;->t()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v2}, Lcom/ex/auto/QuickAccessFloaterService;->J()V

    :cond_4
    invoke-virtual {v4}, Lcom/ex/auto/MainActivity;->u1()V

    return-void

    :pswitch_4
    iget-object v0, v1, Lw0/y6;->c:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-object v2, v1, Lw0/y6;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lw0/y6;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    sget v6, Lcom/ex/auto/MainActivity;->z1:I

    new-instance v6, Le/h;

    invoke-direct {v6, v0}, Le/h;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0f035a

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, Le/h;->b:Ljava/lang/Object;

    check-cast v8, Le/d;

    iput-object v7, v8, Le/d;->d:Ljava/lang/CharSequence;

    const v7, 0x7f0f0359

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Le/d;->f:Ljava/lang/CharSequence;

    const v7, 0x7f0f0032

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Le/h;->c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const v5, 0x7f0f035b

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lw0/kb;

    invoke-direct {v7, v4, v0, v3, v2}, Lw0/kb;-><init>(ILcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v5, v7}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v6}, Le/h;->h()Le/i;

    return-void

    :pswitch_5
    iget-object v0, v1, Lw0/y6;->c:Ljava/lang/Object;

    check-cast v0, Li2/e;

    iget-object v2, v1, Lw0/y6;->b:Ljava/lang/Object;

    check-cast v2, Lh2/a;

    iget-object v4, v1, Lw0/y6;->d:Ljava/lang/Object;

    check-cast v4, Li2/e;

    sget v5, Lcom/ex/auto/MainActivity;->z1:I

    invoke-interface {v2}, Lh2/a;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-instance v3, Lw0/f2;

    invoke-direct {v3, v4}, Lw0/f2;-><init>(Lh2/a;)V

    invoke-interface {v0, v2, v3}, Lh2/p;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4}, Lh2/a;->a()Ljava/lang/Object;

    return-void

    :pswitch_6
    iget-object v0, v1, Lw0/y6;->c:Ljava/lang/Object;

    check-cast v0, Lh2/a;

    iget-object v3, v1, Lw0/y6;->b:Ljava/lang/Object;

    check-cast v3, Lh2/a;

    iget-object v4, v1, Lw0/y6;->d:Ljava/lang/Object;

    check-cast v4, Lcom/ex/auto/MainActivity;

    sget v5, Lcom/ex/auto/MainActivity;->z1:I

    invoke-interface {v0}, Lh2/a;->a()Ljava/lang/Object;

    if-eqz v3, :cond_5

    iget-object v0, v4, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v4, Lw0/n1;

    invoke-direct {v4, v3, v2}, Lw0/n1;-><init>(Lh2/a;I)V

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void

    :pswitch_7
    iget-object v0, v1, Lw0/y6;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    iget-object v2, v1, Lw0/y6;->b:Ljava/lang/Object;

    check-cast v2, Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v3, v1, Lw0/y6;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    const/high16 v4, 0x10000000

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "launch "

    const-string v4, ": "

    invoke-static {v2, v3, v4}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HomeFloatingWidgets"

    invoke-static {v0, v2, v3}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_8
    iget-object v0, v1, Lw0/y6;->c:Ljava/lang/Object;

    check-cast v0, Lc0/f;

    iget-object v5, v1, Lw0/y6;->b:Ljava/lang/Object;

    check-cast v5, Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v6, v1, Lw0/y6;->d:Ljava/lang/Object;

    check-cast v6, Landroid/widget/ImageView;

    sget-object v7, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-virtual {v0}, Lc0/f;->e()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-virtual {v0}, Lc0/f;->l()Z

    move-result v7

    xor-int/lit8 v8, v7, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v0, Lc0/f;->f:Ljava/lang/Object;

    if-nez v10, :cond_7

    :cond_6
    move/from16 v16, v3

    move/from16 p1, v4

    goto/16 :goto_9

    :cond_7
    const-string v12, "setGroupMute"

    const-string v13, "setGroupMuteState"

    filled-new-array {v12, v13}, [Ljava/lang/String;

    move-result-object v12

    move v13, v4

    :goto_2
    const/4 v14, 0x2

    if-ge v13, v14, :cond_6

    aget-object v15, v12, v13

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    move/from16 p1, v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    move/from16 v16, v3

    const-string v3, "array"

    invoke-static {v4, v3}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v3, p1

    :goto_3
    array-length v11, v4

    if-ge v3, v11, :cond_8

    move/from16 v11, v16

    goto :goto_4

    :cond_8
    move/from16 v11, p1

    :goto_4
    if-eqz v11, :cond_f

    add-int/lit8 v11, v3, 0x1

    :try_start_2
    aget-object v3, v4, v3
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    :try_start_3
    array-length v14, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v19, v4

    const/4 v4, 0x2

    if-ne v14, v4, :cond_9

    :try_start_4
    aget-object v4, v2, p1

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v14}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    aget-object v4, v2, v16

    invoke-static {v4, v1}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget v1, v0, Lc0/f;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v10, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :catchall_0
    :goto_5
    const/16 v18, 0x2

    goto :goto_7

    :cond_9
    array-length v4, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v14, 0x3

    if-ne v4, v14, :cond_a

    const/16 v18, 0x2

    :try_start_5
    aget-object v4, v2, v18

    invoke-static {v4, v1}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget v1, v0, Lc0/f;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v9, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v10, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_a
    const/16 v18, 0x2

    :cond_b
    array-length v4, v2

    const/4 v14, 0x3

    if-ne v4, v14, :cond_d

    aget-object v2, v2, v16

    invoke-static {v2, v1}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget v1, v0, Lc0/f;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v1, v2, v9}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v10, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_6
    if-eqz v7, :cond_15

    const/4 v1, -0x1

    iput v1, v0, Lc0/f;->d:I

    goto/16 :goto_e

    :catchall_1
    :cond_c
    :goto_7
    move-object/from16 v1, p0

    move v3, v11

    move/from16 v14, v18

    move-object/from16 v4, v19

    :goto_8
    const/4 v2, 0x3

    goto/16 :goto_3

    :cond_d
    move-object/from16 v1, p0

    move v3, v11

    move v2, v14

    move/from16 v14, v18

    move-object/from16 v4, v19

    goto/16 :goto_3

    :catchall_2
    move-object/from16 v19, v4

    goto :goto_5

    :cond_e
    move-object/from16 v1, p0

    move v3, v11

    goto :goto_8

    :catch_2
    move-exception v0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move/from16 v4, p1

    move/from16 v3, v16

    const/4 v2, 0x3

    goto/16 :goto_2

    :goto_9
    if-eqz v7, :cond_12

    iget v1, v0, Lc0/f;->d:I

    if-lez v1, :cond_10

    :goto_a
    const/4 v2, -0x1

    goto :goto_c

    :cond_10
    invoke-virtual {v0}, Lc0/f;->d()I

    move-result v1

    const/16 v17, 0x3

    div-int/lit8 v1, v1, 0x3

    move/from16 v2, v16

    if-ge v1, v2, :cond_11

    move v3, v2

    goto :goto_b

    :cond_11
    move v3, v1

    :goto_b
    move v1, v3

    goto :goto_a

    :goto_c
    iput v2, v0, Lc0/f;->d:I

    invoke-virtual {v0, v1}, Lc0/f;->n(I)V

    goto :goto_e

    :cond_12
    move/from16 v2, v16

    invoke-virtual {v0}, Lc0/f;->f()I

    move-result v1

    if-ge v1, v2, :cond_13

    move v3, v2

    goto :goto_d

    :cond_13
    move v3, v1

    :goto_d
    iput v3, v0, Lc0/f;->d:I

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lc0/f;->n(I)V

    goto :goto_e

    :cond_14
    move v1, v4

    :try_start_6
    iget-object v2, v0, Lc0/f;->b:Ljava/lang/Object;

    check-cast v2, Landroid/media/AudioManager;

    const/16 v3, 0x65

    const/4 v14, 0x3

    invoke-virtual {v2, v14, v3, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    :cond_15
    :goto_e
    invoke-static {v0, v6, v5}, Lcom/ex/auto/HomeFloatingWidgetsService;->l(Lc0/f;Landroid/widget/ImageView;Lcom/ex/auto/HomeFloatingWidgetsService;)V

    iget-object v1, v5, Lcom/ex/auto/HomeFloatingWidgetsService;->P:Landroid/widget/SeekBar;

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Lc0/f;->f()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_16
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
.end method
