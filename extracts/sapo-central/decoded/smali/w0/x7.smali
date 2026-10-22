.class public final synthetic Lw0/x7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Landroid/content/ContextWrapper;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/HomeWidgetsPollService;Ljava/lang/String;Landroid/car/hardware/property/CarPropertyManager;Landroid/appwidget/AppWidgetManager;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lw0/x7;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/x7;->c:Landroid/content/ContextWrapper;

    iput-object p2, p0, Lw0/x7;->d:Ljava/lang/Object;

    iput-object p3, p0, Lw0/x7;->e:Ljava/lang/Object;

    iput-object p4, p0, Lw0/x7;->f:Ljava/lang/Object;

    iput-boolean p5, p0, Lw0/x7;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Lcom/ex/auto/MasterToggleView;ZLandroid/widget/TextView;Ljava/lang/Boolean;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lw0/x7;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/x7;->c:Landroid/content/ContextWrapper;

    iput-object p2, p0, Lw0/x7;->d:Ljava/lang/Object;

    iput-boolean p3, p0, Lw0/x7;->b:Z

    iput-object p4, p0, Lw0/x7;->e:Ljava/lang/Object;

    iput-object p5, p0, Lw0/x7;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Lw0/x7;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lw0/x7;->f:Ljava/lang/Object;

    iget-object v4, p0, Lw0/x7;->e:Ljava/lang/Object;

    iget-object v5, p0, Lw0/x7;->d:Ljava/lang/Object;

    iget-object v6, p0, Lw0/x7;->c:Landroid/content/ContextWrapper;

    packed-switch v0, :pswitch_data_0

    check-cast v6, Lcom/ex/auto/MainActivity;

    check-cast v5, Lcom/ex/auto/MasterToggleView;

    check-cast v4, Landroid/widget/TextView;

    check-cast v3, Ljava/lang/Boolean;

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v6}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v0, p0, Lw0/x7;->b:Z

    invoke-virtual {v5, v0}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    if-eqz v0, :cond_1

    const v5, 0x7f0f04a1

    goto :goto_0

    :cond_1
    const v5, 0x7f0f049e

    :goto_0
    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "jit_pedido"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v6}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-ne v4, v0, :cond_3

    if-eqz v4, :cond_2

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3, v7}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "JIT pedido="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " getprop="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " code-cache-executavel="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Desempenho"

    invoke-virtual {v6, v3, v0}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez v1, :cond_4

    if-eqz v4, :cond_4

    const v0, 0x7f0f049d

    const-string v1, "getString(...)"

    invoke-static {v0, v2, v6, v1}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void

    :pswitch_0
    move-object v8, v6

    check-cast v8, Lcom/ex/auto/HomeWidgetsPollService;

    move-object v10, v5

    check-cast v10, Ljava/lang/String;

    check-cast v4, Landroid/car/hardware/property/CarPropertyManager;

    move-object v11, v3

    check-cast v11, Landroid/appwidget/AppWidgetManager;

    sget v0, Lcom/ex/auto/HomeWidgetsPollService;->E:I

    :try_start_0
    invoke-virtual {v8, v10, v4}, Lcom/ex/auto/HomeWidgetsPollService;->c(Ljava/lang/String;Landroid/car/hardware/property/CarPropertyManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v9, v2

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "widget command "

    const-string v3, ": "

    invoke-static {v2, v10, v3}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HomeWidgetsPoll"

    invoke-static {v0, v2, v3}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    move v9, v1

    :goto_2
    iget-object v0, v8, Lcom/ex/auto/HomeWidgetsPollService;->a:Landroid/os/Handler;

    new-instance v7, La1/l;

    iget-boolean v12, p0, Lw0/x7;->b:Z

    invoke-direct/range {v7 .. v12}, La1/l;-><init>(Lcom/ex/auto/HomeWidgetsPollService;ZLjava/lang/String;Landroid/appwidget/AppWidgetManager;Z)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
