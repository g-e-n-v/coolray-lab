.class public final synthetic Lw0/s9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Z

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Le/i;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lw0/s9;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/s9;->b:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, Lw0/s9;->g:Ljava/lang/Object;

    iput-object p3, p0, Lw0/s9;->c:Ljava/lang/String;

    iput-object p4, p0, Lw0/s9;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lw0/s9;->f:Z

    iput-object p6, p0, Lw0/s9;->e:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Li2/j;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Lw0/s9;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/s9;->b:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, Lw0/s9;->c:Ljava/lang/String;

    iput-object p3, p0, Lw0/s9;->g:Ljava/lang/Object;

    iput-boolean p4, p0, Lw0/s9;->f:Z

    iput-object p5, p0, Lw0/s9;->d:Ljava/lang/String;

    iput-object p6, p0, Lw0/s9;->e:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lw0/zb;Z)V
    .locals 1

    .line 3
    const/4 v0, 0x1

    iput v0, p0, Lw0/s9;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/s9;->b:Lcom/ex/auto/MainActivity;

    iput-object p5, p0, Lw0/s9;->g:Ljava/lang/Object;

    iput-object p2, p0, Lw0/s9;->c:Ljava/lang/String;

    iput-object p3, p0, Lw0/s9;->d:Ljava/lang/String;

    iput-object p4, p0, Lw0/s9;->e:Ljava/lang/String;

    iput-boolean p6, p0, Lw0/s9;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    move-object/from16 v1, p0

    iget v0, v1, Lw0/s9;->a:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lw0/s9;->b:Lcom/ex/auto/MainActivity;

    iget-object v2, v1, Lw0/s9;->c:Ljava/lang/String;

    iget-object v5, v1, Lw0/s9;->g:Ljava/lang/Object;

    check-cast v5, Li2/j;

    iget-boolean v6, v1, Lw0/s9;->f:Z

    iget-object v7, v1, Lw0/s9;->d:Ljava/lang/String;

    iget-object v8, v1, Lw0/s9;->e:Ljava/lang/String;

    sget v9, Lcom/ex/auto/MainActivity;->z1:I

    const-string v9, "ConnAdaptor: "

    invoke-virtual {v9, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x3e80

    invoke-static {v10, v9}, Lcom/ex/auto/MainActivity;->v2(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Update"

    invoke-virtual {v0, v10, v9}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/ex/auto/MainActivity;->S1(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v4}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->e1()V

    iget-boolean v2, v5, Li2/j;->a:Z

    if-eqz v2, :cond_0

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->R()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->C()V

    goto :goto_0

    :cond_0
    iget-boolean v2, v5, Li2/j;->a:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lcom/ex/auto/MainActivity;->m1:Z

    if-eqz v2, :cond_1

    new-instance v2, Le/h;

    invoke-direct {v2, v0}, Le/h;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f003c

    invoke-virtual {v2, v0}, Le/h;->g(I)V

    iget-object v0, v2, Le/h;->b:Ljava/lang/Object;

    check-cast v0, Le/d;

    iget-object v4, v0, Le/d;->a:Landroid/view/ContextThemeWrapper;

    const v5, 0x7f0f003b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v0, Le/d;->f:Ljava/lang/CharSequence;

    const v0, 0x104000a

    invoke-virtual {v2, v0, v3}, Le/h;->e(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2}, Le/h;->h()Le/i;

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v5, v1, Lw0/s9;->b:Lcom/ex/auto/MainActivity;

    iget-object v14, v5, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    iget-object v0, v1, Lw0/s9;->g:Ljava/lang/Object;

    check-cast v0, Lw0/zb;

    iget-object v15, v1, Lw0/s9;->c:Ljava/lang/String;

    iget-object v6, v1, Lw0/s9;->d:Ljava/lang/String;

    iget-object v7, v1, Lw0/s9;->e:Ljava/lang/String;

    iget-boolean v8, v1, Lw0/s9;->f:Z

    sget v9, Lcom/ex/auto/MainActivity;->z1:I

    const-string v9, "caApk"

    const-string v10, "/data/local/tmp/ca_fix-update.apk"

    new-instance v11, Li2/j;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {}, Lw0/e8;->v()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x1f40

    invoke-virtual {v5, v13, v12}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    iget-object v12, v0, Lw0/zb;->b:Ljava/lang/String;

    iget-wide v3, v0, Lw0/zb;->e:J

    invoke-virtual {v0}, Lw0/zb;->a()Z

    move-result v13

    if-eqz v13, :cond_2

    move-object v13, v10

    const/4 v10, 0x0

    :goto_1
    move-object/from16 v16, v12

    goto :goto_2

    :cond_2
    move-object v13, v10

    move-object v10, v15

    goto :goto_1

    :goto_2
    new-instance v12, Lw0/e9;

    const/16 v2, 0x13

    invoke-direct {v12, v5, v2}, Lw0/e9;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v2, Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move/from16 v17, v8

    :try_start_1
    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    move-object/from16 v18, v9

    const-string v9, "ca_fix-update-staging.apk"

    invoke-direct {v2, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v8, "ca_fix"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-object v9, v11

    :try_start_2
    new-instance v11, Lw0/h0;

    move-object/from16 v19, v2

    const/4 v2, 0x4

    invoke-direct {v11, v5, v6, v7, v2}, Lw0/h0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-object v2, v13

    const/16 v13, 0x28

    move-object/from16 v20, v9

    const/4 v9, 0x0

    move-object v1, v14

    move-object v14, v2

    move-object v2, v6

    move-object/from16 v6, v16

    move-object/from16 v16, v1

    move-object v1, v7

    move-object/from16 v21, v18

    move-object/from16 v7, v19

    move-object/from16 v22, v20

    :try_start_3
    invoke-static/range {v5 .. v13}, Lcom/ex/auto/MainActivity;->X(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh2/a;Lh2/l;I)V

    const-string v6, "ca_fix"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v14, v6, v8}, Lcom/ex/auto/MainActivity;->q2(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lw0/zb;->a()Z

    move-result v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/16 v8, 0x8

    const-string v9, "com.njda.adapter"

    if-eqz v7, :cond_3

    :try_start_4
    iget-wide v10, v0, Lw0/zb;->c:J

    invoke-virtual {v5, v6, v9, v10, v11}, Lcom/ex/auto/MainActivity;->z2(Ljava/io/File;Ljava/lang/String;J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    throw v0

    :catch_1
    move-exception v0

    move-object/from16 v3, v16

    :goto_3
    move-object/from16 v7, v22

    goto/16 :goto_10

    :cond_3
    const-string v0, "MD5"

    invoke-static {v6, v0}, Lcom/ex/auto/MainActivity;->h0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    :goto_4
    invoke-virtual {v5}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    const-string v7, "connadaptor_expected_md5"

    if-lez v6, :cond_4

    :try_start_6
    invoke-interface {v0, v7, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_5

    :cond_4
    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_5
    const-string v6, "connadaptor_arquivo_versao"

    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v6, "connadaptor_arquivo_modo"

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_5

    invoke-static {v1, v2}, Lcom/ex/auto/MainActivity;->I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_6

    :cond_5
    invoke-static {v1, v2}, Lcom/ex/auto/MainActivity;->I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v5, v1, v2}, Lcom/ex/auto/MainActivity;->B(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lw0/ma;

    const/16 v3, 0x1c

    invoke-direct {v0, v5, v3}, Lw0/ma;-><init>(Lcom/ex/auto/MainActivity;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-object/from16 v3, v16

    :try_start_7
    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :try_start_8
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v4, 0x0

    :try_start_9
    invoke-virtual {v0, v14, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_7

    :catchall_0
    const/4 v4, 0x0

    :catchall_1
    const/4 v0, 0x0

    :goto_7
    if-nez v0, :cond_6

    goto :goto_9

    :cond_6
    :try_start_a
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v9, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_8

    :catchall_2
    const/4 v6, 0x0

    :goto_8
    if-nez v6, :cond_7

    goto :goto_9

    :cond_7
    :try_start_b
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v9

    invoke-virtual {v6}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v6

    cmp-long v0, v9, v6

    if-ltz v0, :cond_e

    :goto_9
    invoke-virtual {v5}, Lcom/ex/auto/MainActivity;->O()Z

    move-result v0

    invoke-static {v1, v2}, Lw0/u;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lw0/qe;->a:Lw0/qe;

    const-string v6, "rede.trocarArquivoConnAdaptor"

    new-instance v7, Lx1/a;

    move-object/from16 v9, v21

    invoke-direct {v7, v9, v4}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v10, "staging"

    new-instance v11, Lx1/a;

    invoke-direct {v11, v10, v14}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v7, v11}, [Lx1/a;

    move-result-object v7

    invoke-static {v7}, Ly1/s;->X([Lx1/a;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v5, v6, v7, v8}, Lw0/qe;->e(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-static {v4}, Lw0/t1;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_8

    goto :goto_a

    :cond_8
    const/4 v6, 0x0

    :goto_a
    if-eqz v6, :cond_9

    invoke-virtual {v5, v6, v1, v2}, Lcom/ex/auto/MainActivity;->p0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :catch_2
    move-exception v0

    goto/16 :goto_3

    :cond_9
    :goto_b
    if-eqz v0, :cond_c

    if-nez v17, :cond_c

    invoke-static {v4}, Lw0/t1;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "rede.ativarConnAdaptor"

    new-instance v7, Lx1/a;

    invoke-direct {v7, v9, v4}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "caMd5"

    new-instance v9, Lx1/a;

    invoke-direct {v9, v4, v0}, Lx1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v7, v9}, [Lx1/a;

    move-result-object v0

    invoke-static {v0}, Ly1/s;->X([Lx1/a;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v5, v6, v0, v8}, Lw0/qe;->e(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v5}, Lcom/ex/auto/MainActivity;->O()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_c

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const v4, 0x7f0f0129

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const v4, 0x7f0f012e

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_c
    const-string v0, ""
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    move-object/from16 v7, v22

    const/4 v4, 0x1

    :try_start_c
    iput-boolean v4, v7, Li2/j;->a:Z

    const-string v4, "BIND_ATIVO=1"

    const/4 v8, 0x0

    invoke-static {v0, v4, v8}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    iput-boolean v4, v5, Lcom/ex/auto/MainActivity;->m1:Z

    invoke-static {v0}, Lo2/k;->E0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v4, 0x7f0f00d3

    invoke-virtual {v5, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_d
    move-object v6, v0

    goto/16 :goto_11

    :catch_3
    move-exception v0

    goto :goto_10

    :cond_d
    move-object/from16 v7, v22

    new-instance v0, Ljava/lang/IllegalStateException;

    const v4, 0x7f0f012f

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move-object/from16 v7, v22

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v5, v2}, Lcom/ex/auto/MainActivity;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v6, 0x7f0f011e

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move-object/from16 v3, v16

    move-object/from16 v7, v22

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-static {v8, v15}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v0}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v6, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v6, 0x7f0f0229

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    :catch_4
    move-exception v0

    move-object v2, v6

    move-object v1, v7

    move-object v7, v9

    goto :goto_f

    :catch_5
    move-exception v0

    move-object v2, v6

    move-object v1, v7

    goto :goto_e

    :catch_6
    move-exception v0

    move-object v2, v6

    move-object v1, v7

    move/from16 v17, v8

    :goto_e
    move-object v7, v11

    :goto_f
    move-object v3, v14

    :goto_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    :cond_10
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v0

    const v4, 0x7f0f011d

    invoke-virtual {v5, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :goto_11
    invoke-static {v6}, Li2/g;->b(Ljava/lang/Object;)V

    new-instance v4, Lw0/s9;

    move-object v9, v1

    move-object v10, v2

    move/from16 v8, v17

    invoke-direct/range {v4 .. v10}, Lw0/s9;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Li2/j;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1
    iget-object v0, v1, Lw0/s9;->b:Lcom/ex/auto/MainActivity;

    iget-object v2, v1, Lw0/s9;->g:Ljava/lang/Object;

    check-cast v2, Le/i;

    iget-object v3, v1, Lw0/s9;->c:Ljava/lang/String;

    iget-object v4, v1, Lw0/s9;->d:Ljava/lang/String;

    iget-boolean v5, v1, Lw0/s9;->f:Z

    iget-object v6, v1, Lw0/s9;->e:Ljava/lang/String;

    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/ex/auto/MainActivity;->n1:Z

    :try_start_d
    invoke-virtual {v2}, Le/i;->dismiss()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :catchall_3
    const-string v2, "compile "

    const-string v7, ": "

    invoke-static {v2, v3, v7}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-static {v3, v4}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Desempenho"

    invoke-virtual {v0, v3, v2}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_11

    const v2, 0x7f0f0497

    goto :goto_12

    :cond_11
    const v2, 0x7f0f0499

    :goto_12
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {v0, v2, v8}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->W0()V

    :cond_12
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
