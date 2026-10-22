.class public final synthetic Lw0/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lw0/a0;->a:I

    iput-object p1, p0, Lw0/a0;->b:Ljava/lang/Object;

    iput-object p3, p0, Lw0/a0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13

    iget p1, p0, Lw0/a0;->a:I

    const-string v0, "getString(...)"

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lw0/a0;->b:Ljava/lang/Object;

    check-cast p1, Lcom/ex/auto/SplitFloaterService;

    iget-object v3, p0, Lw0/a0;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-boolean v4, p1, Lcom/ex/auto/SplitFloaterService;->o:Z

    if-eqz v4, :cond_0

    const v1, 0x7f0f0349

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/ex/auto/SplitFloaterService;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v4, p1, Lcom/ex/auto/SplitFloaterService;->e:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iput-boolean v1, p1, Lcom/ex/auto/SplitFloaterService;->n:Z

    iput-boolean v2, p1, Lcom/ex/auto/SplitFloaterService;->o:Z

    invoke-virtual {p1}, Lcom/ex/auto/SplitFloaterService;->h()V

    const v2, 0x7f0f0277

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/ex/auto/SplitFloaterService;->g(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lw0/jg;

    invoke-direct {v2, p1, v3, v1}, Lw0/jg;-><init>(Lcom/ex/auto/SplitFloaterService;Ljava/lang/String;I)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lw0/a0;->b:Ljava/lang/Object;

    check-cast p1, Landroid/widget/CheckBox;

    iget-object v0, p0, Lw0/a0;->c:Ljava/lang/Object;

    check-cast v0, Lw0/c7;

    sget v1, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lw0/c7;->c(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_1
    iget-object p1, p0, Lw0/a0;->b:Ljava/lang/Object;

    check-cast p1, Lh2/a;

    iget-object v0, p0, Lw0/a0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/QuickAccessFloaterService;

    sget v1, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-interface {p1}, Lh2/a;->a()Ljava/lang/Object;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/ex/auto/QuickAccessFloaterService;->P(J)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lw0/a0;->b:Ljava/lang/Object;

    check-cast p1, Lcom/ex/auto/MediaBrowserHostActivity;

    iget-object v0, p0, Lw0/a0;->c:Ljava/lang/Object;

    check-cast v0, Lw0/hd;

    sget v3, Lcom/ex/auto/MediaBrowserHostActivity;->s:I

    invoke-virtual {p1}, Lcom/ex/auto/MediaBrowserHostActivity;->e()V

    iput-object v0, p1, Lcom/ex/auto/MediaBrowserHostActivity;->d:Lw0/hd;

    iget-object v3, p1, Lcom/ex/auto/MediaBrowserHostActivity;->h:Landroid/widget/TextView;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v5, v0, Lw0/hd;->c:Ljava/lang/String;

    iget-object v6, v0, Lw0/hd;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v4, v2}, Lcom/ex/auto/MediaBrowserHostActivity;->g(Ljava/lang/String;Z)V

    :try_start_0
    new-instance v2, Landroid/media/browse/MediaBrowser;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v5, v0, Lw0/hd;->b:Ljava/lang/String;

    invoke-direct {v3, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lw0/jd;

    invoke-direct {v5, p1, v0}, Lw0/jd;-><init>(Lcom/ex/auto/MediaBrowserHostActivity;Lw0/hd;)V

    invoke-direct {v2, p1, v3, v5, v4}, Landroid/media/browse/MediaBrowser;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/media/browse/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V

    invoke-virtual {v2}, Landroid/media/browse/MediaBrowser;->connect()V

    iput-object v2, p1, Lcom/ex/auto/MediaBrowserHostActivity;->b:Landroid/media/browse/MediaBrowser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "conectar "

    const-string v3, " falhou: "

    invoke-static {v2, v6, v3}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaBrowserHost"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0f0226

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/ex/auto/MediaBrowserHostActivity;->g(Ljava/lang/String;Z)V

    :goto_1
    return-void

    :cond_2
    const-string p1, "tituloNivel"

    invoke-static {p1}, Li2/g;->h(Ljava/lang/String;)V

    throw v4

    :pswitch_3
    iget-object p1, p0, Lw0/a0;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lw0/a0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lw0/ec;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v5

    iget-object v4, v4, Lw0/ec;->b:Ljava/lang/String;

    invoke-interface {v5, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    :cond_5
    :goto_2
    xor-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw0/ec;

    iget-object v3, v3, Lw0/ec;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    :cond_6
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-static {v0}, Lw0/t1;->z(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->u1()V

    return-void

    :pswitch_4
    iget-object p1, p0, Lw0/a0;->b:Ljava/lang/Object;

    check-cast p1, Lcom/ex/auto/MainActivity;

    iget-object v0, p0, Lw0/a0;->c:Ljava/lang/Object;

    check-cast v0, Lw0/ec;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v3

    iget-object v0, v0, Lw0/ec;->b:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    invoke-static {p1}, Lw0/t1;->z(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->u1()V

    return-void

    :pswitch_5
    iget-object p1, p0, Lw0/a0;->b:Ljava/lang/Object;

    check-cast p1, Lcom/ex/auto/MainActivity;

    iget-object v3, p0, Lw0/a0;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-boolean v4, p1, Lcom/ex/auto/MainActivity;->J0:Z

    if-eqz v4, :cond_7

    const v2, 0x7f0f00a7

    invoke-static {v2, v1, p1, v0}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_7
    iput-boolean v2, p1, Lcom/ex/auto/MainActivity;->J0:Z

    iget-object v4, p1, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v5, Lw0/ma;

    const/16 v6, 0x9

    invoke-direct {v5, p1, v6}, Lw0/ma;-><init>(Lcom/ex/auto/MainActivity;I)V

    const-wide/32 v7, 0x2bf20

    invoke-virtual {v4, v5, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v4, p1, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string v5, "temp"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "hvac_digital_temp"

    const-string v9, "batt"

    const-string v10, "hvac_digital_batt"

    const-string v11, "hvac_digital_ext_temp"

    if-eqz v7, :cond_8

    move-object v7, v8

    goto :goto_4

    :cond_8
    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    move-object v7, v10

    goto :goto_4

    :cond_9
    move-object v7, v11

    :goto_4
    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v12

    invoke-interface {v12, v7, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move-object v5, v8

    goto :goto_5

    :cond_a
    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    move-object v5, v10

    goto :goto_5

    :cond_b
    move-object v5, v11

    :goto_5
    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v11, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_6

    :cond_c
    move v2, v1

    :goto_6
    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    if-eqz v2, :cond_d

    invoke-interface {v3, v11, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_d
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->v1()V

    const v2, 0x7f0f02d8

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2, v1}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v8, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v10, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v11, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v3, Lw0/gb;

    invoke-direct {v3, p1, v0, v2, v1}, Lw0/gb;-><init>(Lcom/ex/auto/MainActivity;ZZZ)V

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_e
    new-instance v0, Lw0/c9;

    invoke-direct {v0, p1, v3, v6}, Lw0/c9;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_7
    return-void

    :pswitch_6
    iget-object p1, p0, Lw0/a0;->b:Ljava/lang/Object;

    check-cast p1, Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v0, p0, Lw0/a0;->c:Ljava/lang/Object;

    check-cast v0, Lw0/n7;

    sget-object v2, Lcom/ex/auto/HomeFloatingWidgetsService;->a0:Ljava/util/List;

    iget-object v0, v0, Lw0/n7;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lw0/m7;

    invoke-direct {v3, p1, v0, v1}, Lw0/m7;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void

    :pswitch_7
    iget-object p1, p0, Lw0/a0;->b:Ljava/lang/Object;

    check-cast p1, Lcom/ex/auto/MasterToggleView;

    iget-object v0, p0, Lw0/a0;->c:Ljava/lang/Object;

    check-cast v0, Lw0/q;

    sget v1, Lcom/ex/auto/FavoriteAppsActivity;->t:I

    invoke-virtual {p1}, Lcom/ex/auto/MasterToggleView;->getActive()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    invoke-virtual {p1}, Lcom/ex/auto/MasterToggleView;->getActive()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lw0/q;->c(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_8
    iget-object p1, p0, Lw0/a0;->b:Ljava/lang/Object;

    check-cast p1, Lcom/ex/auto/MasterToggleView;

    iget-object v0, p0, Lw0/a0;->c:Ljava/lang/Object;

    check-cast v0, Lw0/q;

    sget v1, Lcom/ex/auto/BackgroundKeepAliveActivity;->v:I

    invoke-virtual {p1}, Lcom/ex/auto/MasterToggleView;->getActive()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    invoke-virtual {p1}, Lcom/ex/auto/MasterToggleView;->getActive()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lw0/q;->c(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_9
    iget-object p1, p0, Lw0/a0;->b:Ljava/lang/Object;

    check-cast p1, Lcom/ex/auto/AppPipFloaterService;

    iget-object v0, p0, Lw0/a0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/ex/auto/AppPipFloaterService;->x:Lcom/ex/auto/AppPipFloaterService;

    invoke-virtual {p1, v0}, Lcom/ex/auto/AppPipFloaterService;->g(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
.end method
