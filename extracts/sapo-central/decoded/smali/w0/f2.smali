.class public final synthetic Lw0/f2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lw0/f2;->a:I

    iput-object p2, p0, Lw0/f2;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh2/a;)V
    .locals 1

    .line 2
    const/4 v0, 0x7

    iput v0, p0, Lw0/f2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Li2/e;

    iput-object p1, p0, Lw0/f2;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lw0/f2;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/f2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/WifiFloaterService;

    iget-object v2, v0, Lcom/ex/auto/WifiFloaterService;->e:Landroid/os/Handler;

    new-instance v3, Lw0/kh;

    invoke-direct {v3, v0, v1}, Lw0/kh;-><init>(Lcom/ex/auto/WifiFloaterService;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lw0/f2;->b:Ljava/lang/Object;

    check-cast v0, Li2/e;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-interface {v0}, Lh2/a;->a()Ljava/lang/Object;

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lw0/f2;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lw0/f2;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lw0/d8;->a:Lw0/d8;

    invoke-virtual {v1, v0}, Lw0/d8;->g(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lw0/f2;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    sget-object v1, Lw0/d8;->a:Lw0/d8;

    const-string v3, "remove: "

    monitor-enter v1

    :try_start_0
    sget-object v4, Lw0/qe;->a:Lw0/qe;

    const-string v5, "visual.removerArDigital"

    sget-object v6, Ly1/q;->a:Ly1/q;

    invoke-virtual {v4, v0, v5, v6}, Lw0/qe;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v4, "rm -f \'/data/local/tmp/fixes/hvac_em_bind\' 2>/dev/null || true"

    const/16 v5, 0x1f40

    invoke-static {v5, v4}, Lw0/d8;->a(ILjava/lang/String;)Ljava/lang/String;

    invoke-static {v2, v2, v2}, Lw0/d8;->i(ZZZ)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_1
    const-string v2, "HvacDigital"

    if-eqz v0, :cond_2

    const-string v4, "OK"

    goto :goto_2

    :cond_2
    const-string v4, "FAIL"

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lw0/n;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lw0/n;-><init>(I)V

    invoke-static {v2}, Lw0/e8;->I(Lh2/p;)Lw0/e5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_4
    iget-object v0, p0, Lw0/f2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeWidgetsPollService;

    sget v1, Lcom/ex/auto/HomeWidgetsPollService;->E:I

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clima_ultimo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    :pswitch_5
    iget-object v0, p0, Lw0/f2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/ExSapoCastFloaterService;

    sget v1, Lcom/ex/auto/ExSapoCastFloaterService;->j:I

    const-string v1, "pip-close"

    sget-object v2, Lw0/m;->i:Lw0/m6;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Lw0/m6;->g(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_6
    iget-object v0, p0, Lw0/f2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/ExSapoCastActivity;

    sget v1, Lcom/ex/auto/ExSapoCastActivity;->e:I

    const-string v1, "user"

    sget-object v2, Lw0/m;->i:Lw0/m6;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Lw0/m6;->g(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_7
    iget-object v0, p0, Lw0/f2;->b:Ljava/lang/Object;

    check-cast v0, Lw0/re;

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-object v1, Lw0/ae;->a:Lw0/ae;

    const-string v1, "CentralWatchdog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "despertar: a\u00e7\u00e3o "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lw0/re;->a:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " desconhecida \u2014 ignorada"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

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
.end method
