.class public final synthetic Lw0/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/AppPipFloaterService;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/AppPipFloaterService;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lw0/y;->a:I

    iput-object p1, p0, Lw0/y;->b:Lcom/ex/auto/AppPipFloaterService;

    iput-object p2, p0, Lw0/y;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Lw0/y;->a:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/y;->b:Lcom/ex/auto/AppPipFloaterService;

    iget-object v2, p0, Lw0/y;->c:Ljava/lang/String;

    sget-object v3, Lcom/ex/auto/AppPipFloaterService;->x:Lcom/ex/auto/AppPipFloaterService;

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lw0/y;->b:Lcom/ex/auto/AppPipFloaterService;

    iget-object v1, p0, Lw0/y;->c:Ljava/lang/String;

    sget-object v2, Lcom/ex/auto/AppPipFloaterService;->x:Lcom/ex/auto/AppPipFloaterService;

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/ex/auto/AppPipFloaterService;->g(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    :pswitch_1
    sget-object v0, Lw0/v4;->c:Lw0/v4;

    sget-object v2, Lw0/v4;->a:Lw0/v4;

    iget-object v3, p0, Lw0/y;->b:Lcom/ex/auto/AppPipFloaterService;

    iget-object v4, p0, Lw0/y;->c:Ljava/lang/String;

    sget-object v5, Lcom/ex/auto/AppPipFloaterService;->x:Lcom/ex/auto/AppPipFloaterService;

    const-string v5, "AppPipFloater"

    invoke-static {}, Lw0/og;->f()Lw0/ng;

    move-result-object v6

    const-string v7, "getString(...)"

    if-nez v6, :cond_0

    sget-object v0, Lw0/og;->f:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f0f017d

    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/ex/auto/AppPipFloaterService;->f(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_0
    iput-object v6, v3, Lcom/ex/auto/AppPipFloaterService;->j:Lw0/ng;

    invoke-static {v3, v4}, Lw0/og;->n(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    const v0, 0x7f0f0179

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/ex/auto/AppPipFloaterService;->f(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1
    iget v6, v6, Lw0/ng;->a:I

    int-to-double v9, v6

    const-wide v11, 0x3fd47ae147ae147bL    # 0.32

    mul-double/2addr v9, v11

    double-to-int v9, v9

    const/16 v10, 0x104

    if-ge v9, v10, :cond_2

    move v9, v10

    :cond_2
    mul-int/lit8 v10, v9, 0x9

    div-int/lit8 v10, v10, 0x10

    const/16 v11, 0x96

    if-ge v10, v11, :cond_3

    move v10, v11

    :cond_3
    const/16 v11, 0x18

    invoke-virtual {v3, v11}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result v12

    sub-int/2addr v6, v12

    invoke-virtual {v3, v11}, Lcom/ex/auto/AppPipFloaterService;->e(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x48

    new-instance v12, Lw0/lg;

    sub-int v9, v6, v9

    add-int/2addr v10, v11

    invoke-direct {v12, v9, v11, v6, v10}, Lw0/lg;-><init>(IIII)V

    const-string v6, "tela_preta_prefs"

    const/4 v9, 0x0

    invoke-virtual {v3, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v10, "pip_app_fixado"

    invoke-interface {v6, v10, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    :try_start_1
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-static {v10}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v11, v10, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v10

    const-string v11, "getActivityInfo(...)"

    invoke-static {v10, v11}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v10, v10, Landroid/content/pm/ActivityInfo;->flags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/high16 v11, 0x400000

    and-int/2addr v10, v11

    if-eqz v10, :cond_4

    move v10, v1

    goto :goto_1

    :cond_4
    :goto_0
    move v10, v9

    goto :goto_1

    :catchall_1
    move-exception v10

    const-string v11, "appSuportaPipNativo("

    const-string v13, "): "

    invoke-static {v11, v8, v13}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v10, v11, v5}, Landroidx/activity/result/b;->s(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    if-nez v6, :cond_5

    sget-object v6, Lw0/v4;->b:Lw0/v4;

    goto :goto_2

    :cond_5
    if-eqz v10, :cond_6

    move-object v6, v2

    goto :goto_2

    :cond_6
    move-object v6, v0

    :goto_2
    const/4 v10, 0x0

    if-ne v6, v2, :cond_d

    sget-object v2, Lw0/og;->e:Lo2/h;

    invoke-virtual {v2, v8}, Lo2/h;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v1, "componente inv\u00e1lido: "

    invoke-virtual {v1, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lw0/og;->f:Ljava/lang/String;

    :goto_3
    move-object v1, v10

    goto :goto_6

    :cond_7
    const-string v2, "am force-stop "

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0x1770

    invoke-static {v11, v2}, Lw0/og;->a(ILjava/lang/String;)Ljava/lang/String;

    const-wide/16 v13, 0x12c

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    const-string v2, "am start -n "

    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v13, 0x2710

    invoke-static {v13, v2}, Lw0/og;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v13, "ADB_FAIL"

    invoke-static {v2, v13}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_b

    const-string v13, "Error:"

    invoke-static {v2, v13, v1}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v13

    if-eqz v13, :cond_8

    goto :goto_5

    :cond_8
    const-wide/16 v13, 0x7d0

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    const-string v2, "input keyevent 171"

    invoke-static {v11, v2}, Lw0/og;->a(ILjava/lang/String;)Ljava/lang/String;

    :goto_4
    const/4 v2, 0x7

    if-ge v1, v2, :cond_a

    const-wide/16 v13, 0x2bc

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Lw0/og;->j()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_6

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    const-string v1, "o app nao entrou em PiP depois do pedido (nao suporta ou recusou)"

    sput-object v1, Lw0/og;->f:Ljava/lang/String;

    goto :goto_3

    :cond_b
    :goto_5
    sput-object v2, Lw0/og;->f:Ljava/lang/String;

    goto :goto_3

    :goto_6
    if-eqz v1, :cond_c

    iput-object v1, v3, Lcom/ex/auto/AppPipFloaterService;->u:Ljava/lang/Integer;

    iput-object v10, v3, Lcom/ex/auto/AppPipFloaterService;->i:Lw0/mg;

    sget-object v0, Lw0/og;->a:Lo2/h;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v12}, Lw0/og;->m(ILw0/lg;)Z

    iput-object v12, v3, Lcom/ex/auto/AppPipFloaterService;->k:Lw0/lg;

    iput-boolean v9, v3, Lcom/ex/auto/AppPipFloaterService;->l:Z

    iput-boolean v9, v3, Lcom/ex/auto/AppPipFloaterService;->n:Z

    iget-object v0, v3, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    new-instance v1, Lw0/b0;

    const/4 v2, 0x3

    invoke-direct {v1, v3, v2}, Lw0/b0;-><init>(Lcom/ex/auto/AppPipFloaterService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pinned falhou ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lw0/og;->a:Lo2/h;

    sget-object v2, Lw0/og;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") \u2014 caindo no flutuante"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    if-ne v6, v0, :cond_e

    iget-object v0, v3, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    new-instance v1, Lw0/b0;

    const/4 v2, 0x4

    invoke-direct {v1, v3, v2}, Lw0/b0;-><init>(Lcom/ex/auto/AppPipFloaterService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    invoke-static {v8, v4, v12}, Lw0/og;->k(Ljava/lang/String;Ljava/lang/String;Lw0/lg;)Lw0/mg;

    move-result-object v0

    if-nez v0, :cond_f

    sget-object v0, Lw0/og;->f:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f0f017b

    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/ex/auto/AppPipFloaterService;->f(Ljava/lang/String;)V

    goto :goto_7

    :cond_f
    iput-object v0, v3, Lcom/ex/auto/AppPipFloaterService;->i:Lw0/mg;

    iput-object v10, v3, Lcom/ex/auto/AppPipFloaterService;->u:Ljava/lang/Integer;

    iput-object v12, v3, Lcom/ex/auto/AppPipFloaterService;->k:Lw0/lg;

    iput-boolean v9, v3, Lcom/ex/auto/AppPipFloaterService;->l:Z

    iput-boolean v9, v3, Lcom/ex/auto/AppPipFloaterService;->n:Z

    iget-object v0, v3, Lcom/ex/auto/AppPipFloaterService;->h:Landroid/os/Handler;

    new-instance v1, Lw0/b0;

    const/4 v2, 0x5

    invoke-direct {v1, v3, v2}, Lw0/b0;-><init>(Lcom/ex/auto/AppPipFloaterService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
