.class public final synthetic Lw0/qa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/io/Serializable;

.field public final synthetic e:Ljava/io/Serializable;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;Lcom/ex/auto/MediaBarFloaterService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lw0/qa;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/qa;->b:Ljava/lang/Object;

    iput-object p2, p0, Lw0/qa;->f:Ljava/lang/Object;

    iput-object p3, p0, Lw0/qa;->c:Ljava/lang/Object;

    iput-object p4, p0, Lw0/qa;->d:Ljava/io/Serializable;

    iput-object p5, p0, Lw0/qa;->e:Ljava/io/Serializable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Ljava/lang/Object;Ljava/io/Serializable;Ljava/io/Serializable;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p6, p0, Lw0/qa;->a:I

    iput-object p1, p0, Lw0/qa;->b:Ljava/lang/Object;

    iput-object p2, p0, Lw0/qa;->c:Ljava/lang/Object;

    iput-object p3, p0, Lw0/qa;->d:Ljava/io/Serializable;

    iput-object p4, p0, Lw0/qa;->e:Ljava/io/Serializable;

    iput-object p5, p0, Lw0/qa;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Le/i;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    const/4 v0, 0x1

    iput v0, p0, Lw0/qa;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/qa;->b:Ljava/lang/Object;

    iput-object p2, p0, Lw0/qa;->c:Ljava/lang/Object;

    iput-object p3, p0, Lw0/qa;->f:Ljava/lang/Object;

    iput-object p4, p0, Lw0/qa;->d:Ljava/io/Serializable;

    iput-object p5, p0, Lw0/qa;->e:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 29

    move-object/from16 v1, p0

    iget v0, v1, Lw0/qa;->a:I

    const/4 v3, 0x1

    iget-object v4, v1, Lw0/qa;->f:Ljava/lang/Object;

    iget-object v5, v1, Lw0/qa;->e:Ljava/io/Serializable;

    iget-object v6, v1, Lw0/qa;->d:Ljava/io/Serializable;

    iget-object v7, v1, Lw0/qa;->c:Ljava/lang/Object;

    iget-object v8, v1, Lw0/qa;->b:Ljava/lang/Object;

    const/4 v9, 0x0

    packed-switch v0, :pswitch_data_0

    check-cast v8, Lcom/ex/auto/MainActivity;

    check-cast v7, Le/i;

    check-cast v6, Li2/l;

    check-cast v5, Ljava/util/ArrayList;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v8}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v7}, Le/i;->dismiss()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v6, Li2/l;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f0f0526

    invoke-virtual {v8, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ""

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\n\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v3, 0x7f0f0525

    invoke-virtual {v8, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    const/16 v5, 0x3e

    invoke-static {v4, v3, v9, v5}, Ly1/g;->e0(Ljava/lang/Iterable;Ljava/lang/String;Lh2/l;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lw0/zc;

    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-static {v8}, Lw0/e8;->p(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1001ee

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v3, v5}, Le/h;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f0f0527

    invoke-virtual {v2, v3}, Le/h;->g(I)V

    iget-object v3, v2, Le/h;->b:Ljava/lang/Object;

    check-cast v3, Le/d;

    iput-object v0, v3, Le/d;->f:Ljava/lang/CharSequence;

    const v0, 0x7f0f0038

    invoke-virtual {v2, v0, v9}, Le/h;->e(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2}, Le/h;->h()Le/i;

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    check-cast v8, Landroid/graphics/Bitmap;

    check-cast v4, Lcom/ex/auto/MediaBarFloaterService;

    check-cast v7, Ljava/lang/String;

    check-cast v6, Ljava/lang/String;

    check-cast v5, Ljava/lang/String;

    if-eqz v8, :cond_5

    iget-object v0, v4, Lcom/ex/auto/MediaBarFloaterService;->m:Ljava/lang/String;

    invoke-static {v0, v7}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-object v8, v4, Lcom/ex/auto/MediaBarFloaterService;->n:Landroid/graphics/Bitmap;

    iget-object v0, v4, Lcom/ex/auto/MediaBarFloaterService;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v9

    :goto_2
    invoke-static {v0, v6}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v4, Lcom/ex/auto/MediaBarFloaterService;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    :cond_4
    invoke-static {v9, v5}, Li2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v4, Lcom/ex/auto/MediaBarFloaterService;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/ex/auto/MediaBarFloaterService;->v:Ljava/util/Set;

    :cond_6
    :goto_3
    return-void

    :pswitch_1
    check-cast v8, Lcom/ex/auto/MainActivity;

    check-cast v7, Ljava/lang/String;

    check-cast v4, Le/i;

    check-cast v6, Ljava/lang/String;

    check-cast v5, Ljava/lang/String;

    sget v0, Lcom/ex/auto/MainActivity;->z1:I

    iget-object v10, v8, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v13, "/proc/meminfo"

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v13, Lo2/a;->a:Ljava/nio/charset/Charset;

    new-instance v14, Ljava/io/InputStreamReader;

    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v14, v15, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v13, Ljava/io/BufferedReader;

    const/16 v0, 0x2000

    invoke-direct {v13, v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {v13}, La1/b;->F(Ljava/io/BufferedReader;)Ln2/f;

    move-result-object v0

    check-cast v0, Ln2/a;

    invoke-virtual {v0}, Ln2/a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Ljava/lang/String;

    const-string v11, "MemAvailable:"

    invoke-static {v15, v11}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_7

    :cond_8
    move-object v14, v9

    :goto_4
    check-cast v14, Ljava/lang/String;

    if-eqz v14, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v11, :cond_a

    invoke-virtual {v14, v2}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isDigit(C)Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "toString(...)"

    invoke-static {v0, v2}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lo2/s;->Y(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :cond_b
    const-wide/16 v11, 0x0

    :goto_6
    :try_start_2
    invoke-interface {v13}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_8

    :goto_7
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {v13, v2}, La1/b;->p(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    const-wide/16 v11, 0x0

    :goto_8
    :try_start_5
    new-instance v0, Landroid/os/StatFs;

    const-string v2, "/data"

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v13

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    mul-long/2addr v13, v15

    move-wide/from16 v16, v13

    goto :goto_9

    :catchall_3
    const-wide/16 v16, 0x0

    :goto_9
    sget-object v0, Lw0/r5;->a:Lo2/h;

    const-wide/32 v13, 0x57800

    cmp-long v0, v11, v13

    if-gez v0, :cond_c

    sget-object v9, Lw0/p5;->a:Lw0/p5;

    goto :goto_a

    :cond_c
    const-wide/32 v11, 0x3b9aca00

    cmp-long v0, v16, v11

    if-gez v0, :cond_d

    sget-object v9, Lw0/p5;->b:Lw0/p5;

    :cond_d
    :goto_a
    if-eqz v9, :cond_e

    new-instance v0, La1/g;

    const/16 v2, 0xc

    invoke-direct {v0, v8, v4, v9, v2}, La1/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b

    :cond_e
    const v0, 0x2bf20

    invoke-virtual {v8, v0, v7}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Success"

    invoke-static {v0, v2, v3}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v7

    new-instance v2, Lw0/s9;

    move-object v3, v8

    move-object v8, v5

    move-object v5, v6

    move-object v6, v0

    invoke-direct/range {v2 .. v8}, Lw0/s9;-><init>(Lcom/ex/auto/MainActivity;Le/i;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v10, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_b
    return-void

    :pswitch_2
    const-string v0, "/data/local/tmp/"

    move-object v10, v8

    check-cast v10, Lcom/ex/auto/MainActivity;

    iget-object v8, v10, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    check-cast v7, Ljava/lang/String;

    check-cast v6, Ljava/lang/String;

    check-cast v5, Ljava/lang/String;

    check-cast v4, Lw0/xb;

    sget v11, Lcom/ex/auto/MainActivity;->z1:I

    const-string v11, "install_failed:"

    const-string v12, "\n                        echo \"== pm install ==\"\n                        pm install -r -g -d "

    const-string v13, " 2>&1 || true\n                        echo \"exit_code=$code\"\n                    "

    const-string v14, "\n                        fi\n                        code=$?\n                        rm -f "

    const-string v15, "/filtered_apks.txt)\n                          pm install -r -g -d \"$BASE\" 2>&1\n                        else\n                          "

    const-string v9, "/filtered_apks.txt)\n                        echo \"APKs apos filtro: $FILTERED_COUNT\"\n                        if [ \"$FILTERED_COUNT\" -eq 1 ]; then\n                          BASE=$(head -1 "

    const-string v3, "\n                        FILTERED_COUNT=$(wc -l < "

    move-object/from16 v16, v14

    const-string v14, "/extracted -maxdepth 2 -name \"*.apk\" | wc -l)\n                        echo \"APKs encontrados: $APK_COUNT\"\n                        if [ \"$APK_COUNT\" -eq 0 ]; then\n                          echo \"INSTALL_FAILURE: nenhum APK encontrado no pacote\"\n                          exit 1\n                        fi\n                        echo \"-- filtrando por arquitetura/densidade --\"\n                        "

    move-object/from16 v17, v14

    const-string v14, "/extracted -maxdepth 2 -name \"*.apk\" | sort\n                        APK_COUNT=$(find "

    move-object/from16 v18, v14

    const-string v14, "\n                        echo \"== instalando pacote multi-split ==\"\n                        rm -rf "

    move-object/from16 v19, v14

    const-string v14, "/data/local/tmp/apkm_work_"

    move-object/from16 v20, v14

    const-string v14, "sha256_mismatch:got="

    const-string v2, "v"

    :try_start_6
    invoke-virtual {v10, v7}, Lcom/ex/auto/MainActivity;->c0(Ljava/lang/String;)Lw0/wb;

    move-result-object v7

    move-object/from16 v21, v11

    iget-object v11, v7, Lw0/wb;->c:Ljava/lang/String;

    move-object/from16 v22, v14

    iget-object v14, v7, Lw0/wb;->d:Ljava/lang/String;

    if-nez v11, :cond_f

    iget-object v1, v7, Lw0/wb;->e:Ljava/lang/String;

    if-eqz v1, :cond_f

    new-instance v0, Lw0/fb;

    const/4 v1, 0x0

    invoke-direct {v0, v4, v10, v7, v1}, Lw0/fb;-><init>(Lw0/xb;Lcom/ex/auto/MainActivity;Lw0/wb;I)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_13

    :catch_0
    move-exception v0

    goto/16 :goto_f

    :cond_f
    move-object v1, v12

    new-instance v12, Ljava/io/File;

    move-object/from16 v23, v1

    invoke-virtual {v10}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v12, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v11}, Li2/g;->b(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Lw0/wb;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lw0/i9;

    invoke-direct {v2, v10, v4}, Lw0/i9;-><init>(Lcom/ex/auto/MainActivity;Lw0/xb;)V

    move-object/from16 v24, v18

    const/16 v18, 0x78

    move-object/from16 v25, v14

    const/4 v14, 0x0

    move-object/from16 v26, v15

    const/4 v15, 0x0

    move-object/from16 v27, v16

    const/16 v16, 0x0

    move-object/from16 v28, v13

    move-object v13, v1

    move-object/from16 v1, v20

    move-object/from16 v20, v9

    move-object/from16 v9, v22

    move-object/from16 v22, v3

    move-object/from16 v3, v25

    move-object/from16 v25, v19

    move-object/from16 v19, v28

    move-object/from16 v28, v17

    move-object/from16 v17, v2

    move-object/from16 v2, v23

    move-object/from16 v23, v28

    invoke-static/range {v10 .. v18}, Lcom/ex/auto/MainActivity;->X(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh2/a;Lh2/l;I)V

    iget-object v11, v7, Lw0/wb;->f:Ljava/lang/String;

    if-eqz v11, :cond_10

    new-instance v3, Lw0/fb;

    const/4 v9, 0x1

    invoke-direct {v3, v4, v10, v7, v9}, Lw0/fb;-><init>(Lw0/xb;Lcom/ex/auto/MainActivity;Lw0/wb;I)V

    invoke-virtual {v8, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iget-wide v13, v7, Lw0/wb;->a:J

    invoke-virtual {v10, v12, v11, v13, v14}, Lcom/ex/auto/MainActivity;->z2(Ljava/io/File;Ljava/lang/String;J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_c

    :catch_1
    move-exception v0

    :try_start_8
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    throw v0

    :cond_10
    if-eqz v3, :cond_12

    new-instance v11, Lw0/fb;

    const/4 v13, 0x2

    invoke-direct {v11, v4, v10, v7, v13}, Lw0/fb;-><init>(Lw0/xb;Lcom/ex/auto/MainActivity;Lw0/wb;I)V

    invoke-virtual {v8, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v11, "SHA-256"

    invoke-static {v12, v11}, Lcom/ex/auto/MainActivity;->h0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    goto :goto_c

    :cond_11
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x10

    invoke-static {v2, v11}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",exp="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lo2/k;->C0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    :goto_c
    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "app"

    const/4 v9, 0x0

    invoke-virtual {v10, v12, v0, v3, v9}, Lcom/ex/auto/MainActivity;->q2(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    new-instance v3, Lw0/fb;

    const/4 v9, 0x3

    invoke-direct {v3, v4, v10, v7, v9}, Lw0/fb;-><init>(Lw0/xb;Lcom/ex/auto/MainActivity;Lw0/wb;I)V

    invoke-virtual {v8, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {v0}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ".apkm"

    const/4 v9, 0x1

    invoke-static {v6, v3, v9}, Lo2/t;->Z(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, ".xapk"

    invoke-static {v6, v3, v9}, Lo2/t;->Z(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_d

    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 2>&1\n                        code=$?\n                        rm -f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2>/dev/null || true\n                        echo \"exit_code=$code\"\n                    "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x1d4c0

    invoke-virtual {v10, v1, v0}, Lcom/ex/auto/MainActivity;->H1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    :cond_14
    :goto_d
    const/16 v2, 0x2e

    const/16 v3, 0x5f

    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const-string v3, "replace(...)"

    invoke-static {v2, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ex/auto/MainActivity;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " 2>&1 || true\n                        mkdir -p "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/extracted 2>&1 || exit 10\n                        unzip -q "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -d "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/extracted/ 2>&1\n                        echo \"-- conteudo extraido --\"\n                        find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v23

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/ex/auto/MainActivity;->p2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v26

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/ex/auto/MainActivity;->u0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2>/dev/null || true\n                        rm -rf "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2/m;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lw0/l9;

    const/4 v9, 0x1

    invoke-direct {v1, v10, v9}, Lw0/l9;-><init>(Lcom/ex/auto/MainActivity;I)V

    const v2, 0x249f0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lw0/m;->x(Ljava/lang/String;ILh2/l;Lh2/p;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    const-string v1, "exit_code=0"

    const/4 v9, 0x0

    invoke-static {v0, v1, v9}, Lo2/k;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    if-eqz v1, :cond_16

    const-wide/16 v0, 0x4b0

    :try_start_9
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :catch_2
    :try_start_a
    invoke-virtual {v10, v5}, Lcom/ex/auto/MainActivity;->m0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f0f01df

    invoke-virtual {v10, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_15
    const v0, 0x7f0f01dc

    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_16
    const/16 v1, 0xc8

    invoke-static {v1, v0}, Lo2/k;->D0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v21

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_10

    :goto_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :cond_17
    const-string v0, "install_error:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    const-string v1, "install_failed"

    invoke-static {v0, v1}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "install_error"

    invoke-static {v0, v1}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "sha256_mismatch"

    invoke-static {v0, v1}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "adb_copy_fail"

    invoke-static {v0, v1}, Lo2/t;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_11

    :cond_18
    move-object v1, v0

    goto :goto_12

    :cond_19
    :goto_11
    const v1, 0x7f0f01d8

    invoke-virtual {v10, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_12
    invoke-static {v1}, Li2/g;->b(Ljava/lang/Object;)V

    new-instance v2, Lw0/la;

    invoke-direct {v2, v4, v1, v10, v0}, Lw0/la;-><init>(Lw0/xb;Ljava/lang/String;Lcom/ex/auto/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_13
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
