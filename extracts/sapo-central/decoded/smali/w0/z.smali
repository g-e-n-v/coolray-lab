.class public final synthetic Lw0/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Lw0/z;->a:I

    iput-object p1, p0, Lw0/z;->b:Ljava/lang/Object;

    iput-object p2, p0, Lw0/z;->c:Ljava/lang/Object;

    iput-object p3, p0, Lw0/z;->d:Ljava/lang/Object;

    iput-object p4, p0, Lw0/z;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lw0/mg;Lcom/ex/auto/SplitFloaterService;Lw0/ng;Lw0/mg;)V
    .locals 1

    .line 2
    const/16 v0, 0xa

    iput v0, p0, Lw0/z;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/z;->b:Ljava/lang/Object;

    iput-object p2, p0, Lw0/z;->c:Ljava/lang/Object;

    iput-object p3, p0, Lw0/z;->e:Ljava/lang/Object;

    iput-object p4, p0, Lw0/z;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    move-object/from16 v1, p0

    iget v0, v1, Lw0/z;->a:I

    const-string v2, ", "

    const/4 v8, 0x0

    const-string v9, "Apps"

    const-string v10, ": "

    const-string v12, " ("

    const-string v13, "getString(...)"

    const/16 v3, 0x10

    const/16 v4, 0xa

    const/4 v7, -0x2

    const/4 v14, -0x1

    const/4 v6, 0x3

    const/4 v15, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lw0/z;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/TempBattPillFloaterService;

    iget-object v2, v1, Lw0/z;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    iget-object v3, v1, Lw0/z;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    iget-object v4, v1, Lw0/z;->e:Ljava/lang/Object;

    check-cast v4, Lw0/yg;

    iput-object v2, v0, Lcom/ex/auto/TempBattPillFloaterService;->h:Ljava/lang/Float;

    iput-object v3, v0, Lcom/ex/auto/TempBattPillFloaterService;->i:Ljava/lang/Float;

    invoke-virtual {v0}, Lcom/ex/auto/TempBattPillFloaterService;->f()V

    iget-object v0, v0, Lcom/ex/auto/TempBattPillFloaterService;->e:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_0
    iget-object v0, v1, Lw0/z;->b:Ljava/lang/Object;

    check-cast v0, Lw0/mg;

    iget-object v2, v1, Lw0/z;->c:Ljava/lang/Object;

    check-cast v2, Lcom/ex/auto/SplitFloaterService;

    iget-object v3, v1, Lw0/z;->e:Ljava/lang/Object;

    check-cast v3, Lw0/ng;

    iget-object v4, v1, Lw0/z;->d:Ljava/lang/Object;

    check-cast v4, Lw0/mg;

    sget-object v6, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    sget-object v6, Lw0/og;->a:Lo2/h;

    invoke-virtual {v2, v3}, Lcom/ex/auto/SplitFloaterService;->d(Lw0/ng;)Lw0/lg;

    move-result-object v6

    invoke-static {v0, v6}, Lw0/og;->l(Lw0/mg;Lw0/lg;)Z

    move-result v0

    sget-object v6, Lw0/og;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ex/auto/SplitFloaterService;->e(Lw0/ng;)Lw0/lg;

    move-result-object v3

    invoke-static {v4, v3}, Lw0/og;->l(Lw0/mg;Lw0/lg;)Z

    move-result v3

    sget-object v4, Lw0/og;->f:Ljava/lang/String;

    iput-boolean v5, v2, Lcom/ex/auto/SplitFloaterService;->o:Z

    iget-object v5, v2, Lcom/ex/auto/SplitFloaterService;->i:Landroid/os/Handler;

    new-instance v7, Lw0/ig;

    invoke-direct {v7, v2, v15}, Lw0/ig;-><init>(Lcom/ex/auto/SplitFloaterService;I)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz v0, :cond_0

    if-nez v3, :cond_2

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v6, v4

    :goto_0
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0x7f0f0314

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/ex/auto/SplitFloaterService;->g(Ljava/lang/String;)V

    :cond_2
    return-void

    :pswitch_1
    iget-object v0, v1, Lw0/z;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    iget-object v0, v1, Lw0/z;->c:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/ex/auto/MainActivity;

    iget-object v0, v1, Lw0/z;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/content/pm/PackageManager;

    iget-object v0, v1, Lw0/z;->e:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Le/i;

    const-string v4, "ModoOficina"

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Li2/l;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v0, v5

    :goto_1
    if-ge v0, v8, :cond_6

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v13, v0, 0x1

    check-cast v9, Lw0/yf;

    :try_start_0
    iget-object v0, v9, Lw0/yf;->a:Ljava/lang/String;

    const/16 v14, 0x200

    invoke-virtual {v3, v0, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const-string v14, "getApplicationInfo(...)"

    invoke-static {v0, v14}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v14, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v14, v14, 0x81

    const-string v11, "Check failed."

    if-nez v14, :cond_5

    :try_start_1
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v14

    if-ne v0, v14, :cond_3

    move v0, v15

    goto :goto_2

    :cond_3
    move v0, v5

    :goto_2
    iget-object v14, v9, Lw0/yf;->a:Ljava/lang/String;

    invoke-virtual {v3, v14, v15, v0}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    iget-object v0, v9, Lw0/yf;->a:Ljava/lang/String;

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_4

    iget v0, v7, Li2/l;->a:I

    add-int/2addr v0, v15

    iput v0, v7, Li2/l;->a:I

    sget-object v0, Lw0/ae;->a:Lw0/ae;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "recupera\u00e7\u00e3o assistida: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v9, Lw0/yf;->a:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " habilitado"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v5}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v9, Lw0/yf;->b:Ljava/lang/String;

    iget-object v9, v9, Lw0/yf;->a:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0x29

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v11, Lw0/ae;->a:Lw0/ae;

    const-string v11, "recupera\u00e7\u00e3o assistida: falha em "

    invoke-static {v11, v9, v10}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v5}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_4
    const-wide/16 v19, 0x78

    invoke-static/range {v19 .. v20}, Ljava/lang/Thread;->sleep(J)V

    move v0, v13

    goto/16 :goto_1

    :cond_6
    new-instance v16, Lw0/qa;

    const/16 v22, 0x3

    move-object/from16 v20, v2

    move-object/from16 v21, v6

    move-object/from16 v19, v7

    invoke-direct/range {v16 .. v22}, Lw0/qa;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/Object;Ljava/io/Serializable;Ljava/io/Serializable;Ljava/lang/Object;I)V

    move-object/from16 v0, v16

    move-object/from16 v2, v17

    invoke-virtual {v2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_2
    iget-object v0, v1, Lw0/z;->b:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/ex/auto/MainActivity;

    iget-object v0, v1, Lw0/z;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Lw0/z;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lw0/z;->e:Ljava/lang/Object;

    check-cast v3, Ljava/io/File;

    sget v4, Lcom/ex/auto/MainActivity;->z1:I

    const-string v4, "Update"

    const-string v15, "outra variante baixada e guardada em cache: "

    const-string v7, "ca_fix "

    :try_start_2
    invoke-virtual {v6, v0, v2}, Lcom/ex/auto/MainActivity;->d0(Ljava/lang/String;Ljava/lang/String;)Lw0/zb;

    move-result-object v8

    iget-object v9, v8, Lw0/zb;->a:Ljava/lang/String;

    invoke-static {v9}, Lcom/ex/auto/MainActivity;->K0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_7

    goto :goto_5

    :cond_7
    new-instance v9, Ljava/io/File;

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v10

    const-string v12, "ca_fix-outra-variante"

    invoke-direct {v9, v10, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v8, v8, Lw0/zb;->b:Ljava/lang/String;

    move-object v10, v8

    move-object v8, v9

    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    const/16 v14, 0xc8

    move-object v12, v7

    move-object v7, v10

    const/4 v10, 0x0

    move-object/from16 v16, v12

    const/4 v12, 0x0

    move-object/from16 v5, v16

    invoke-static/range {v6 .. v14}, Lcom/ex/auto/MainActivity;->X(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh2/a;Lh2/l;I)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v7, "getAbsolutePath(...)"

    invoke-static {v3, v7}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v6, v8, v3, v5, v7}, Lcom/ex/auto/MainActivity;->q2(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lw0/ae;->a:Lw0/ae;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2f

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    invoke-static {v4, v0, v7}, Lw0/ae;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    const-string v3, "outra variante ("

    const-string v5, ") n\u00e3o baixou: "

    invoke-static {v3, v2, v5}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v4, v0}, Lcom/ex/auto/MainActivity;->x(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void

    :pswitch_3
    iget-object v0, v1, Lw0/z;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Lw0/z;->c:Ljava/lang/Object;

    check-cast v2, Lcom/ex/auto/MainActivity;

    iget-object v3, v1, Lw0/z;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v1, Lw0/z;->e:Ljava/lang/Object;

    check-cast v4, Lh2/a;

    sget v5, Lcom/ex/auto/MainActivity;->z1:I

    const-string v5, "Success"

    invoke-static {v0, v5, v15}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-eqz v5, :cond_8

    const v5, 0x7f0f00a3

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_8
    const v5, 0x7f0f00a2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_6
    invoke-static {v5}, Li2/g;->b(Ljava/lang/Object;)V

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pm uninstall "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4}, Lh2/a;->a()Ljava/lang/Object;

    return-void

    :pswitch_4
    iget-object v0, v1, Lw0/z;->b:Ljava/lang/Object;

    check-cast v0, Lw0/xb;

    iget-object v2, v1, Lw0/z;->c:Ljava/lang/Object;

    check-cast v2, Lx1/a;

    iget-object v3, v1, Lw0/z;->d:Ljava/lang/Object;

    check-cast v3, Lcom/ex/auto/MainActivity;

    iget-object v4, v1, Lw0/z;->e:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    sget v5, Lcom/ex/auto/MainActivity;->z1:I

    iput-boolean v15, v0, Lw0/xb;->f:Z

    iget-object v5, v2, Lx1/a;->a:Ljava/lang/Object;

    check-cast v5, Lw0/wb;

    iget-object v2, v2, Lx1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Exception;

    if-nez v2, :cond_d

    if-nez v5, :cond_9

    goto/16 :goto_8

    :cond_9
    iget-object v2, v5, Lw0/wb;->b:Ljava/lang/String;

    invoke-static {v2, v4}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    iget-wide v9, v5, Lw0/wb;->a:J

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    if-lez v5, :cond_b

    invoke-static {v4}, Lo2/s;->Y(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    :cond_a
    cmp-long v5, v9, v11

    if-gtz v5, :cond_b

    goto :goto_7

    :cond_b
    const v5, 0x7f0f0265

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lw0/xb;->b(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lw0/xb;->a()V

    new-instance v5, Le/h;

    invoke-direct {v5, v3}, Le/h;-><init>(Landroid/content/Context;)V

    iget-object v7, v5, Le/h;->b:Ljava/lang/Object;

    check-cast v7, Le/d;

    const v9, 0x7f0f0363

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Le/d;->d:Ljava/lang/CharSequence;

    const v9, 0x7f0f0362

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v9, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Le/d;->f:Ljava/lang/CharSequence;

    const v2, 0x7f0f0035

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lw0/g;

    invoke-direct {v4, v3, v6, v0}, Lw0/g;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v5, v2, v4}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const v0, 0x7f0f0032

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v8}, Le/h;->c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v5}, Le/h;->h()Le/i;

    goto :goto_9

    :cond_c
    :goto_7
    const v4, 0x7f0f0098

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lw0/xb;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lw0/xb;->a()V

    const/4 v7, 0x0

    invoke-virtual {v3, v2, v7}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_9

    :cond_d
    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkAppUpdate erro: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    :cond_e
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v9, v2}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f0f0149

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lw0/xb;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lw0/xb;->a()V

    invoke-virtual {v3, v2, v15}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    :goto_9
    return-void

    :pswitch_5
    iget-object v0, v1, Lw0/z;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-object v2, v1, Lw0/z;->c:Ljava/lang/Object;

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v1, Lw0/z;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v1, Lw0/z;->e:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    sget v5, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_a

    :cond_f
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    :goto_a
    return-void

    :pswitch_6
    iget-object v0, v1, Lw0/z;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v2, v1, Lw0/z;->c:Ljava/lang/Object;

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v5, v1, Lw0/z;->d:Ljava/lang/Object;

    check-cast v5, Landroid/widget/LinearLayout;

    iget-object v8, v1, Lw0/z;->e:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    iget-object v9, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->K:Landroid/widget/FrameLayout;

    if-eq v9, v2, :cond_11

    goto/16 :goto_e

    :cond_11
    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/high16 v9, 0x41700000    # 15.0f

    if-eqz v2, :cond_12

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "N\u00e3o foi poss\u00edvel ler o uso de CPU."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f050040

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_e

    :cond_12
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v10, 0x0

    :goto_b
    if-ge v10, v2, :cond_18

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lw0/n7;

    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v14, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v6

    iput v6, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v12, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v4, v11, Lw0/n7;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v4, 0x1e

    invoke-virtual {v0, v4}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v4

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v14

    invoke-virtual {v3, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v13, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v4, v11, Lw0/n7;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f05003f

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    invoke-direct {v4, v14, v7, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget v4, v11, Lw0/n7;->d:F

    const/high16 v13, 0x41200000    # 10.0f

    cmpl-float v13, v4, v13

    if-ltz v13, :cond_13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v14, 0x25

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_c

    :cond_13
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v13

    const-string v14, "%.1f%%"

    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    :goto_c
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v13, 0x7f05002e

    invoke-virtual {v0, v13}, Landroid/content/Context;->getColor(I)I

    move-result v14

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v13, 0x41800000    # 16.0f

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v3, v13, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-boolean v3, v11, Lw0/n7;->e:Z

    const/16 v13, 0x1c

    if-nez v3, :cond_14

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v14, "\u2715"

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v14, -0x1

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v14, 0x11

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v13}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v13

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v13, 0xe

    invoke-virtual {v0, v13}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v9

    invoke-virtual {v14, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v3, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v9, v15}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const v13, -0x4cd9e2

    invoke-virtual {v9, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v3, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v9, Lw0/a0;

    const/4 v13, 0x3

    invoke-direct {v9, v0, v13, v11}, Lw0/a0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v3, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_d

    :cond_14
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v13}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v11

    const/16 v13, 0xe

    invoke-virtual {v0, v13}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v14

    add-int/2addr v14, v11

    invoke-virtual {v0, v15}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v11

    invoke-direct {v9, v14, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_d
    invoke-virtual {v12, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v3, 0x0

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-static {v4, v3, v6}, Lk1/a;->j(FFF)F

    move-result v4

    cmpl-float v9, v4, v3

    if-lez v9, :cond_16

    const/high16 v21, 0x3f800000    # 1.0f

    cmpg-float v3, v4, v21

    if-gez v3, :cond_15

    const/high16 v4, 0x3f800000    # 1.0f

    :cond_15
    move v3, v4

    :cond_16
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, 0x6

    invoke-virtual {v0, v11}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v13

    const/4 v14, -0x1

    invoke-direct {v9, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v11}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v11

    iput v11, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v4, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v13, 0x3

    invoke-virtual {v0, v13}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v9, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v11, 0x7f05003e

    invoke-virtual {v0, v11}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v4, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v9, Landroid/view/View;

    invoke-direct {v9, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, v13}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v11, v14}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    move/from16 v17, v6

    const v14, 0x7f05002e

    invoke-virtual {v0, v14}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v11, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v9, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, 0x0

    const/4 v14, -0x1

    invoke-direct {v6, v11, v14, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    cmpg-float v6, v3, v17

    if-gez v6, :cond_17

    new-instance v6, Landroid/view/View;

    invoke-direct {v6, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    sub-float v3, v17, v3

    invoke-direct {v9, v11, v14, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_17
    invoke-virtual {v12, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v6, v13

    const/16 v3, 0x10

    const/16 v4, 0xa

    const/high16 v9, 0x41700000    # 15.0f

    const/4 v14, -0x1

    goto/16 :goto_b

    :cond_18
    :goto_e
    return-void

    :pswitch_7
    iget-object v0, v1, Lw0/z;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/CloseAppsWhitelistActivity;

    iget-object v2, v1, Lw0/z;->c:Ljava/lang/Object;

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v3, v1, Lw0/z;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-object v4, v1, Lw0/z;->e:Ljava/lang/Object;

    check-cast v4, Ljava/util/Set;

    sget v5, Lcom/ex/auto/CloseAppsWhitelistActivity;->c:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_1b

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v5

    if-eqz v5, :cond_19

    goto/16 :goto_10

    :cond_19
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1a

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f0487

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v14, 0x11

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setGravity(I)V

    const v4, 0x7f050042

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x78

    invoke-virtual {v0, v5}, Lcom/ex/auto/CloseAppsWhitelistActivity;->a(I)I

    move-result v0

    const/4 v14, -0x1

    invoke-direct {v4, v14, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_10

    :cond_1a
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lw0/g8;

    iget-object v6, v5, Lw0/g8;->a:Ljava/lang/String;

    iget-object v8, v5, Lw0/g8;->b:Ljava/lang/String;

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v9, v15}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v9, v15}, Landroid/view/View;->setFocusable(Z)V

    const v10, 0x7f070059

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v13, 0xe

    invoke-virtual {v0, v13}, Lcom/ex/auto/CloseAppsWhitelistActivity;->a(I)I

    move-result v10

    invoke-virtual {v0, v13}, Lcom/ex/auto/CloseAppsWhitelistActivity;->a(I)I

    move-result v11

    invoke-virtual {v0, v13}, Lcom/ex/auto/CloseAppsWhitelistActivity;->a(I)I

    move-result v12

    invoke-virtual {v0, v13}, Lcom/ex/auto/CloseAppsWhitelistActivity;->a(I)I

    move-result v14

    invoke-virtual {v9, v10, v11, v12, v14}, Landroid/view/View;->setPadding(IIII)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    invoke-direct {v10, v14, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0xa

    invoke-virtual {v0, v11}, Lcom/ex/auto/CloseAppsWhitelistActivity;->a(I)I

    move-result v12

    iput v12, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v5, v5, Lw0/g8;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x2e

    invoke-virtual {v0, v11}, Lcom/ex/auto/CloseAppsWhitelistActivity;->a(I)I

    move-result v12

    invoke-virtual {v0, v11}, Lcom/ex/auto/CloseAppsWhitelistActivity;->a(I)I

    move-result v11

    invoke-direct {v5, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0x12

    invoke-virtual {v0, v11}, Lcom/ex/auto/CloseAppsWhitelistActivity;->a(I)I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v10, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f050041

    invoke-virtual {v0, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v8, 0x41980000    # 19.0f

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    invoke-direct {v8, v14, v7, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/CheckBox;

    invoke-direct {v8, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v8, v11}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {v8, v14}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v8, v14}, Landroid/view/View;->setFocusable(Z)V

    const v14, 0x7f05002e

    invoke-virtual {v0, v14}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-static {v11}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    const v11, 0x3fa66666    # 1.3f

    invoke-virtual {v8, v11}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v8, v11}, Landroid/view/View;->setScaleY(F)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0x14

    invoke-virtual {v0, v12}, Lcom/ex/auto/CloseAppsWhitelistActivity;->a(I)I

    move-result v13

    invoke-virtual {v11, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v8, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Lw0/o3;

    invoke-direct {v11, v8, v4, v6, v0}, Lw0/o3;-><init>(Landroid/widget/CheckBox;Ljava/util/Set;Ljava/lang/String;Lcom/ex/auto/CloseAppsWhitelistActivity;)V

    invoke-virtual {v9, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_f

    :cond_1b
    :goto_10
    return-void

    :pswitch_8
    iget-object v0, v1, Lw0/z;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/CentralWatchdogService;

    iget-object v2, v1, Lw0/z;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lw0/z;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v1, Lw0/z;->e:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    invoke-static {v0, v2, v3}, Lw0/u1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sget-object v5, Lw0/ae;->a:Lw0/ae;

    const-string v5, "CarPlay identity ("

    const-string v6, "): "

    invoke-static {v5, v4, v6, v2, v12}, Landroidx/activity/result/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v3, :cond_1c

    const-string v3, "?"

    :cond_1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") \u2192 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1d

    const-string v0, "aceita"

    goto :goto_11

    :cond_1d
    const-string v0, "recusada"

    :goto_11
    const-string v3, "CentralWatchdog"

    const/4 v7, 0x0

    invoke-static {v2, v0, v3, v7}, Landroidx/activity/result/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :pswitch_9
    iget-object v0, v1, Lw0/z;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/BackgroundKeepAliveActivity;

    iget-object v3, v1, Lw0/z;->c:Ljava/lang/Object;

    check-cast v3, Landroid/widget/LinearLayout;

    iget-object v4, v1, Lw0/z;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v1, Lw0/z;->e:Ljava/lang/Object;

    check-cast v5, Ljava/util/Set;

    sget v6, Lcom/ex/auto/BackgroundKeepAliveActivity;->v:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_22

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_1e

    goto/16 :goto_13

    :cond_1e
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const/high16 v9, 0x41a00000    # 20.0f

    if-eqz v6, :cond_1f

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0f0487

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v14, 0x11

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setGravity(I)V

    const v10, 0x7f050089

    invoke-virtual {v0, v10}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0xa0

    invoke-virtual {v0, v11}, Lcom/ex/auto/BackgroundKeepAliveActivity;->s(I)I

    move-result v11

    const/4 v14, -0x1

    invoke-direct {v10, v14, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1f
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v11, v6, 0x1

    if-ltz v6, :cond_21

    check-cast v10, Lw0/g8;

    iget-object v12, v10, Lw0/g8;->a:Ljava/lang/String;

    iget-object v13, v10, Lw0/g8;->b:Ljava/lang/String;

    if-lez v6, :cond_20

    new-instance v6, Landroid/view/View;

    invoke-direct {v6, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v14, 0x7f05007d

    invoke-virtual {v0, v14}, Landroid/content/Context;->getColor(I)I

    move-result v14

    invoke-virtual {v6, v14}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v15}, Lcom/ex/auto/BackgroundKeepAliveActivity;->s(I)I

    move-result v7

    const/4 v9, -0x1

    invoke-direct {v14, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_20
    iget-object v6, v10, Lw0/g8;->c:Landroid/graphics/drawable/Drawable;

    invoke-interface {v5, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    new-instance v9, Lw0/q;

    invoke-direct {v9, v5, v12, v0, v15}, Lw0/q;-><init>(Ljava/util/Set;Ljava/lang/String;Le/j;I)V

    new-instance v10, Lcom/ex/auto/MasterToggleView;

    invoke-direct {v10, v0, v8}, Lcom/ex/auto/MasterToggleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v10, v7}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move-object/from16 v19, v8

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v7, v15}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v7, v15}, Landroid/view/View;->setFocusable(Z)V

    const v8, 0x1080062

    invoke-virtual {v0, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Lcom/ex/auto/BackgroundKeepAliveActivity;->s(I)I

    move-result v15

    move-object/from16 v22, v4

    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Lcom/ex/auto/BackgroundKeepAliveActivity;->s(I)I

    move-result v4

    invoke-virtual {v7, v15, v14, v4, v14}, Landroid/view/View;->setPadding(IIII)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v14, 0x4c

    invoke-virtual {v0, v14}, Lcom/ex/auto/BackgroundKeepAliveActivity;->s(I)I

    move-result v14

    const/4 v15, -0x1

    invoke-direct {v4, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v13}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v14, 0x2c

    invoke-virtual {v0, v14}, Lcom/ex/auto/BackgroundKeepAliveActivity;->s(I)I

    move-result v8

    invoke-virtual {v0, v14}, Lcom/ex/auto/BackgroundKeepAliveActivity;->s(I)I

    move-result v14

    invoke-direct {v6, v8, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x14

    invoke-virtual {v0, v8}, Lcom/ex/auto/BackgroundKeepAliveActivity;->s(I)I

    move-result v14

    invoke-virtual {v6, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v7, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f050087

    invoke-virtual {v0, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v14

    const/4 v6, 0x0

    invoke-virtual {v4, v14, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v15, -0x2

    invoke-direct {v14, v6, v15, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v4, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v14, 0x38

    invoke-virtual {v0, v14}, Lcom/ex/auto/BackgroundKeepAliveActivity;->s(I)I

    move-result v14

    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Lcom/ex/auto/BackgroundKeepAliveActivity;->s(I)I

    move-result v6

    invoke-direct {v4, v14, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v10, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lw0/a0;

    const/4 v14, 0x1

    invoke-direct {v4, v10, v14, v9}, Lw0/a0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v7, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v6, v11

    move v7, v15

    move-object/from16 v8, v19

    move-object/from16 v4, v22

    const/high16 v9, 0x41a00000    # 20.0f

    move v15, v14

    goto/16 :goto_12

    :cond_21
    move-object/from16 v19, v8

    invoke-static {}, Ly1/h;->W()V

    throw v19

    :cond_22
    :goto_13
    return-void

    :pswitch_a
    iget-object v0, v1, Lw0/z;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/AppPipFloaterService;

    iget-object v3, v1, Lw0/z;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, v1, Lw0/z;->d:Ljava/lang/Object;

    check-cast v4, Lw0/lg;

    iget-object v5, v1, Lw0/z;->e:Ljava/lang/Object;

    check-cast v5, Lw0/ng;

    sget-object v6, Lcom/ex/auto/AppPipFloaterService;->x:Lcom/ex/auto/AppPipFloaterService;

    invoke-virtual {v0}, Lcom/ex/auto/AppPipFloaterService;->j()Z

    move-result v6

    if-nez v6, :cond_26

    iget-boolean v6, v0, Lcom/ex/auto/AppPipFloaterService;->n:Z

    if-eqz v6, :cond_23

    goto :goto_14

    :cond_23
    iput-object v3, v0, Lcom/ex/auto/AppPipFloaterService;->u:Ljava/lang/Integer;

    if-eqz v4, :cond_24

    iput-object v4, v0, Lcom/ex/auto/AppPipFloaterService;->k:Lw0/lg;

    :cond_24
    if-eqz v5, :cond_25

    iput-object v5, v0, Lcom/ex/auto/AppPipFloaterService;->j:Lw0/ng;

    :cond_25
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "adotado o PiP que ja estava na tela (stack "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v14, 0x29

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppPipFloater"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/ex/auto/AppPipFloaterService;->l()V

    :cond_26
    :goto_14
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
.end method
