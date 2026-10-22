.class public final synthetic Lw0/hf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/QuickAccessFloaterService;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Lcom/ex/auto/QuickAccessFloaterService;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lw0/hf;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/hf;->c:Landroid/widget/TextView;

    iput-object p2, p0, Lw0/hf;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iput-object p3, p0, Lw0/hf;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/QuickAccessFloaterService;Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 0

    .line 2
    iput p4, p0, Lw0/hf;->a:I

    iput-object p1, p0, Lw0/hf;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iput-object p2, p0, Lw0/hf;->c:Landroid/widget/TextView;

    iput-object p3, p0, Lw0/hf;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lw0/hf;->a:I

    const-string v1, "QuickAccessFloater"

    const-string v2, "getApplicationContext(...)"

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/hf;->b:Lcom/ex/auto/QuickAccessFloaterService;

    sget v1, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    const-string v1, "\u21ba AA\n!"

    iget-object v2, p0, Lw0/hf;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0f02d0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object v0, v0, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v1, Lw0/mf;

    iget-object v4, p0, Lw0/hf;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v3}, Lw0/mf;-><init>(Landroid/widget/TextView;Ljava/lang/String;I)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_0
    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    const-string v0, "\u21ba AA"

    invoke-static {v0}, Lw0/t1;->q(Ljava/lang/String;)Lw0/a5;

    move-result-object v0

    sget-object v4, Lw0/a5;->b:Lw0/a5;

    iget-object v8, p0, Lw0/hf;->b:Lcom/ex/auto/QuickAccessFloaterService;

    iget-object v6, p0, Lw0/hf;->c:Landroid/widget/TextView;

    iget-object v9, p0, Lw0/hf;->d:Ljava/lang/String;

    if-ne v0, v4, :cond_0

    iget-object v0, v8, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v1, Lw0/hf;

    invoke-direct {v1, v6, v8, v9}, Lw0/hf;-><init>(Landroid/widget/TextView;Lcom/ex/auto/QuickAccessFloaterService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_0
    :try_start_1
    sget-object v0, Lw0/qe;->a:Lw0/qe;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "rede.reiniciarAa"

    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-static {v0, v2, v4, v5}, Lw0/qe;->e(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    move v7, v3

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "reiniciar AA: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v1}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    iget-object v0, v8, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v5, Lw0/lf;

    const/4 v10, 0x1

    invoke-direct/range {v5 .. v10}, Lw0/lf;-><init>(Landroid/widget/TextView;ZLcom/ex/auto/QuickAccessFloaterService;Ljava/lang/String;I)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    return-void

    :pswitch_1
    sget v0, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    const-string v0, "tela_preta_prefs"

    iget-object v7, p0, Lw0/hf;->b:Lcom/ex/auto/QuickAccessFloaterService;

    invoke-virtual {v7, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-static {v0}, Lw0/u;->d(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lx1/a;

    const-string v5, "caApk"

    invoke-direct {v4, v5, v0}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lw0/t1;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lx1/a;

    const-string v6, "caMd5"

    invoke-direct {v5, v6, v0}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v4, v5}, [Lx1/a;

    move-result-object v0

    invoke-static {v0}, Ly1/s;->X([Lx1/a;)Ljava/util/Map;

    move-result-object v0

    :try_start_2
    sget-object v4, Lw0/qe;->a:Lw0/qe;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "rede.ativarConnAdaptor"

    const/16 v5, 0x8

    invoke-static {v4, v2, v0, v5}, Lw0/qe;->e(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    move v6, v3

    goto :goto_4

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "ativar AA: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v1}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_3

    :goto_4
    iget-object v0, v7, Lcom/ex/auto/QuickAccessFloaterService;->a:Landroid/os/Handler;

    new-instance v4, Lw0/lf;

    const/4 v9, 0x0

    iget-object v5, p0, Lw0/hf;->c:Landroid/widget/TextView;

    iget-object v8, p0, Lw0/hf;->d:Ljava/lang/String;

    invoke-direct/range {v4 .. v9}, Lw0/lf;-><init>(Landroid/widget/TextView;ZLcom/ex/auto/QuickAccessFloaterService;Ljava/lang/String;I)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
