.class public final synthetic Lw0/c8;
.super Li2/e;
.source "SourceFile"

# interfaces
.implements Lh2/p;


# instance fields
.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p6, p0, Lw0/c8;->i:I

    invoke-direct/range {p0 .. p5}, Li2/e;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lw0/c8;->i:I

    const-string v1, "p0"

    const-string v2, "getString(...)"

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lh2/a;

    iget-object v0, p0, Li2/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Le/h;

    invoke-direct {p1, v0}, Le/h;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0313

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Le/h;->b:Ljava/lang/Object;

    check-cast v2, Le/d;

    iput-object v1, v2, Le/d;->d:Ljava/lang/CharSequence;

    const v1, 0x7f0f030f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Le/h;->b:Ljava/lang/Object;

    check-cast v2, Le/d;

    iput-object v1, v2, Le/d;->f:Ljava/lang/CharSequence;

    const v1, 0x7f0f0033

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lw0/z8;

    const/16 v3, 0xa

    invoke-direct {v2, v0, v3}, Lw0/z8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {p1, v1, v2}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const v1, 0x7f0f0032

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lw0/h;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p2}, Lw0/h;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Le/h;->c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lw0/aa;

    invoke-direct {v0, v4, p2}, Lw0/aa;-><init>(ILjava/lang/Object;)V

    iget-object p2, p1, Le/h;->b:Ljava/lang/Object;

    check-cast p2, Le/d;

    iput-object v0, p2, Le/d;->n:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p1}, Le/h;->h()Le/i;

    move-result-object p1

    const p2, 0x102000b

    invoke-virtual {p1, p2}, Le/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "speed_auto_lock_enabled"

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, v0, Lcom/ex/auto/MainActivity;->z0:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/ex/auto/MainActivity;->y(Z)V

    :cond_1
    :goto_0
    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lh2/a;

    iget-object v0, p0, Li2/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->M:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v1, :cond_2

    const p1, 0x7f0f00d8

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v4}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    invoke-interface {p2}, Lh2/a;->a()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object p2, v0, Lcom/ex/auto/MainActivity;->M:Landroid/car/hardware/property/CarPropertyManager;

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "aeb_desired"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->v1()V

    :try_start_0
    iget-object v1, v0, Lcom/ex/auto/MainActivity;->z:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lw0/c0;

    const/4 v3, 0x2

    invoke-direct {v2, p2, p1, v0, v3}, Lw0/c0;-><init>(Ljava/lang/Object;ZLjava/lang/Object;I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lh2/a;

    iget-object v0, p0, Li2/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    const-string v1, "br.com.central.dualdashcam"

    if-eqz p1, :cond_4

    invoke-virtual {v0, v1}, Lcom/ex/auto/MainActivity;->m0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    const p1, 0x7f0f02c1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v3}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    invoke-interface {p2}, Lh2/a;->a()Ljava/lang/Object;

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "br.com.central.dualdashcam.camera.RearCamPipService"

    invoke-direct {v5, v1, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const-string v5, "setComponent(...)"

    invoke-static {v1, v5}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_5

    goto :goto_2

    :catchall_0
    :cond_5
    const p1, 0x7f0f02c2

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v3}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    invoke-interface {p2}, Lh2/a;->a()Ljava/lang/Object;

    goto :goto_3

    :cond_6
    :goto_2
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "rear_cam_turn_signal_enabled"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-object p1, Lcom/ex/auto/CentralWatchdogService;->V2:Lcom/ex/auto/CentralWatchdogService;

    if-eqz p1, :cond_7

    iget-object p2, p1, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v0, Lw0/v2;

    const/16 v1, 0xd

    invoke-direct {v0, p1, v1}, Lw0/v2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_3
    sget-object p1, Lx1/e;->c:Lx1/e;

    return-object p1

    :pswitch_2
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-static {p1, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Li2/e;->b:Ljava/lang/Object;

    check-cast v0, Lw0/d8;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lw0/d8;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-static {p1, v1}, Li2/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Li2/e;->b:Ljava/lang/Object;

    check-cast v0, Lw0/d8;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lw0/d8;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
