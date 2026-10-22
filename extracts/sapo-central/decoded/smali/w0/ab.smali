.class public final synthetic Lw0/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Lw0/vd;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lw0/ab;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/ab;->b:Ljava/lang/Object;

    iput-object p2, p0, Lw0/ab;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 2
    iput p2, p0, Lw0/ab;->a:I

    iput-object p1, p0, Lw0/ab;->c:Ljava/lang/Object;

    iput-object p3, p0, Lw0/ab;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 30

    move-object/from16 v1, p0

    iget v0, v1, Lw0/ab;->a:I

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v9, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lw0/ab;->c:Ljava/lang/Object;

    check-cast v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    iget-object v2, v1, Lw0/ab;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    iget-object v0, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->v:La1/d;

    iget-boolean v0, v0, La1/d;->b:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->M:Z

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, v1, Lw0/ab;->c:Ljava/lang/Object;

    check-cast v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    iget-object v2, v1, Lw0/ab;->b:Ljava/lang/Object;

    check-cast v2, Lw0/c0;

    iget-object v0, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->v:La1/d;

    iget-boolean v0, v0, La1/d;->b:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->M:Z

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lw0/c0;->run()V

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, v1, Lw0/ab;->c:Ljava/lang/Object;

    check-cast v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    iget-object v2, v1, Lw0/ab;->b:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    sget-boolean v3, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->M:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lw0/fd;

    invoke-direct {v0, v9}, Lw0/fd;-><init>(I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {v2, v9}, Landroid/view/View;->setClipToOutline(Z)V

    return-void

    :pswitch_2
    iget-object v0, v1, Lw0/ab;->c:Ljava/lang/Object;

    check-cast v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    iget-object v2, v1, Lw0/ab;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->v:La1/d;

    iget-boolean v3, v3, La1/d;->b:Z

    if-nez v3, :cond_2

    iget-object v0, v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :pswitch_3
    iget-object v0, v1, Lw0/ab;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/ex/auto/VhalProviderService;

    iget-object v0, v1, Lw0/ab;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/net/Socket;

    sget-boolean v0, Lcom/ex/auto/VhalProviderService;->l:Z

    sget v0, Lcom/ex/auto/VhalProviderService;->m:I

    add-int/2addr v0, v9

    sput v0, Lcom/ex/auto/VhalProviderService;->m:I

    invoke-virtual {v2}, Lcom/ex/auto/VhalProviderService;->e()V

    :try_start_0
    invoke-virtual {v3, v9}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    sget-object v4, Lcom/ex/auto/VhalProviderService;->p:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    sget-wide v5, Lcom/ex/auto/VhalProviderService;->r:J

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    iget-object v4, v2, Lcom/ex/auto/VhalProviderService;->e:Lw0/m3;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lw0/m3;->a()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v11, v7

    :goto_0
    if-ge v11, v10, :cond_3

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    check-cast v12, Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\n"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v0

    move v15, v9

    goto/16 :goto_b

    :cond_3
    const-string v4, "{\"tripsDone\":true}\n"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    iget-object v4, v2, Lcom/ex/auto/VhalProviderService;->g:Lw0/m3;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lw0/m3;->a()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v11, v7

    :goto_1
    if-ge v11, v10, :cond_4

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    check-cast v12, Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\n"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    :cond_4
    const-string v4, "{\"chargesDone\":true}\n"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    :goto_2
    :try_start_3
    iget-boolean v4, v2, Lcom/ex/auto/VhalProviderService;->d:Z

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_b

    sget-object v4, Lcom/ex/auto/VhalProviderService;->p:Ljava/lang/Object;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    sget-object v13, Lcom/ex/auto/VhalProviderService;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v13}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lw0/hh;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move v15, v9

    move-wide/from16 v16, v10

    :try_start_5
    iget-wide v9, v14, Lw0/hh;->a:J

    cmp-long v9, v9, v5

    if-lez v9, :cond_5

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_8

    :cond_5
    :goto_4
    move v9, v15

    move-wide/from16 v10, v16

    goto :goto_3

    :catchall_2
    move-exception v0

    move v15, v9

    goto/16 :goto_8

    :cond_6
    move v15, v9

    move-wide/from16 v16, v10

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v9, v7

    :goto_5
    if-ge v9, v4, :cond_7

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v9, v9, 0x1

    check-cast v5, Lw0/hh;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v5, Lw0/hh;->b:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/OutputStream;->write([B)V

    iget-wide v5, v5, Lw0/hh;->a:J

    goto :goto_5

    :catchall_3
    move-exception v0

    :goto_6
    move-object v4, v0

    goto/16 :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_8
    invoke-virtual {v2}, Lcom/ex/auto/VhalProviderService;->d()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v9, v9, v16

    const-wide/16 v11, 0x1388

    cmp-long v9, v9, v11

    if-lez v9, :cond_a

    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-wide v10, v8

    move-object v8, v4

    goto :goto_7

    :cond_a
    move-wide/from16 v10, v16

    :goto_7
    const-wide/16 v12, 0x1f4

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move v9, v15

    goto/16 :goto_2

    :goto_8
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_b
    move v15, v9

    goto :goto_9

    :catchall_4
    move-exception v0

    move v15, v9

    goto :goto_6

    :goto_9
    :try_start_9
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catch_1
    sget v0, Lcom/ex/auto/VhalProviderService;->m:I

    sub-int/2addr v0, v15

    sput v0, Lcom/ex/auto/VhalProviderService;->m:I

    invoke-virtual {v2}, Lcom/ex/auto/VhalProviderService;->e()V

    goto :goto_e

    :catchall_5
    move-exception v0

    goto :goto_d

    :catchall_6
    move-exception v0

    move v15, v9

    :goto_a
    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_7
    move-exception v0

    goto :goto_a

    :goto_b
    if-eqz v3, :cond_c

    :try_start_c
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    goto :goto_c

    :catchall_8
    move-exception v0

    :try_start_d
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_c
    throw v4
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :goto_d
    sget v3, Lcom/ex/auto/VhalProviderService;->m:I

    sub-int/2addr v3, v15

    sput v3, Lcom/ex/auto/VhalProviderService;->m:I

    invoke-virtual {v2}, Lcom/ex/auto/VhalProviderService;->e()V

    throw v0

    :goto_e
    return-void

    :pswitch_4
    iget-object v0, v1, Lw0/ab;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v2, v1, Lw0/ab;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    :try_start_e
    sget-object v3, Lw0/cg;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lw0/cg;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    goto :goto_f

    :catchall_9
    move-exception v0

    const-string v3, "RemoteArtwork"

    const-string v4, "fetch \'"

    const-string v5, "\' falhou: "

    invoke-static {v4, v2, v5}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroidx/activity/result/b;->s(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_f
    sget-object v3, Lw0/cg;->b:Ljava/lang/Object;

    monitor-enter v3

    :try_start_f
    sget-object v0, Lw0/cg;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_d

    sget-object v0, Ly1/p;->a:Ly1/p;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    goto :goto_10

    :catchall_a
    move-exception v0

    goto :goto_12

    :cond_d
    :goto_10
    monitor-exit v3

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh2/l;

    :try_start_10
    invoke-interface {v0, v8}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    goto :goto_11

    :catchall_b
    move-exception v0

    const-string v3, "RemoteArtwork"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "callback de capa falhou: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v3}, Landroidx/activity/result/b;->s(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_11

    :cond_e
    return-void

    :goto_12
    monitor-exit v3

    throw v0

    :pswitch_5
    move v15, v9

    iget-object v0, v1, Lw0/ab;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v9, v1, Lw0/ab;->b:Ljava/lang/Object;

    check-cast v9, Lcom/ex/auto/QuickAccessFloaterService;

    sget v10, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    const-string v10, "getString(...)"

    const-string v11, "dlg"

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_f

    const v0, 0x7f0f00fe

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lcom/ex/auto/QuickAccessFloaterService;->G(Ljava/lang/String;)V

    goto/16 :goto_1b

    :cond_f
    invoke-static {v9}, Lw0/t1;->P(Landroid/content/Context;)Ljava/util/List;

    move-result-object v12

    invoke-static {v12}, Ly1/g;->p0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v12

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v13

    new-array v14, v13, [Z

    move/from16 v16, v15

    move v15, v7

    :goto_13
    if-ge v15, v13, :cond_10

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v2, v17

    check-cast v2, Lx1/d;

    iget-object v2, v2, Lx1/d;->a:Ljava/lang/Object;

    invoke-interface {v12, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    aput-boolean v2, v14, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_13

    :cond_10
    new-instance v2, Li2/m;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move/from16 v15, v16

    invoke-virtual {v13, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v15, Landroid/widget/Button;

    invoke-direct {v15, v9}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v3, "\ud83d\udd12 "

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v3, 0x7f0f00fd

    invoke-virtual {v9, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const v3, 0x7f05002e

    invoke-virtual {v9, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const v3, 0x7f050038

    invoke-virtual {v9, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v3, Lw0/af;

    const/4 v8, 0x1

    invoke-direct {v3, v9, v2, v8}, Lw0/af;-><init>(Lcom/ex/auto/QuickAccessFloaterService;Li2/m;I)V

    invoke-virtual {v15, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x30

    invoke-virtual {v9, v8}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v8

    const/4 v4, -0x1

    invoke-direct {v3, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xe

    invoke-virtual {v9, v8}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v8

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v13, v15, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v15, v7

    :goto_14
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_15

    add-int/lit8 v18, v15, 0x1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v4, v19

    check-cast v4, Lx1/d;

    iget-object v7, v4, Lx1/d;->a:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v5, v4, Lx1/d;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v4, v4, Lx1/d;->c:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/drawable/Drawable;

    if-nez v15, :cond_11

    const/16 v20, 0x1

    :goto_15
    move-object/from16 v21, v8

    goto :goto_16

    :cond_11
    const/16 v20, 0x0

    goto :goto_15

    :goto_16
    aget-boolean v8, v14, v15

    move-object/from16 v28, v11

    new-instance v11, Lw0/c7;

    invoke-direct {v11, v14, v15, v6}, Lw0/c7;-><init>(Ljava/lang/Object;II)V

    invoke-interface {v12, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    new-instance v6, Lw0/i9;

    move-object/from16 v27, v11

    const/4 v11, 0x5

    invoke-direct {v6, v9, v11, v7}, Lw0/i9;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v11, 0x10

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v7, v11}, Landroid/view/View;->setFocusable(Z)V

    move v11, v15

    const v15, 0x7f070074

    invoke-virtual {v7, v15}, Landroid/view/View;->setBackgroundResource(I)V

    const v15, 0x7f05003e

    invoke-virtual {v9, v15}, Landroid/content/Context;->getColor(I)I

    move-result v15

    invoke-static {v15}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    invoke-virtual {v7, v15}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    move-object/from16 v25, v6

    const/16 v15, 0x10

    invoke-virtual {v9, v15}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v6

    move-object/from16 v29, v12

    invoke-virtual {v9, v15}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v12

    invoke-virtual {v9, v15}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v1

    invoke-virtual {v9, v15}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v15

    invoke-virtual {v7, v6, v12, v1, v15}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v12, -0x1

    invoke-direct {v1, v12, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz v20, :cond_12

    const/4 v15, 0x0

    goto :goto_17

    :cond_12
    const/16 v15, 0xa

    invoke-virtual {v9, v15}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v15

    :goto_17
    iput v15, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v7, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    if-eqz v4, :cond_13

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_18

    :cond_13
    const v4, 0x1080093

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_18
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v15, 0x32

    invoke-virtual {v9, v15}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v12

    invoke-virtual {v9, v15}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v15

    invoke-direct {v4, v12, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0x12

    invoke-virtual {v9, v12}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f050041

    invoke-virtual {v9, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41a80000    # 21.0f

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    invoke-direct {v4, v12, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/CheckBox;

    invoke-direct {v1, v9}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {v1, v12}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v1, v12}, Landroid/view/View;->setFocusable(Z)V

    sget v4, Lcom/ex/auto/QuickAccessFloaterService;->D0:I

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    const v4, 0x3fa66666    # 1.3f

    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleY(F)V

    new-instance v4, Li2/j;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-boolean v11, v4, Li2/j;->a:Z

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-boolean v8, v4, Li2/j;->a:Z

    if-eqz v8, :cond_14

    const-string v8, "\ud83d\udd12"

    goto :goto_19

    :cond_14
    const-string v8, "\ud83d\udd13"

    :goto_19
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v5, v15}, Landroid/view/View;->setFocusable(Z)V

    const/16 v8, 0xc

    invoke-virtual {v9, v8}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v11

    const/16 v12, 0x8

    invoke-virtual {v9, v12}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v15

    invoke-virtual {v9, v8}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v8

    invoke-virtual {v9, v12}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v12

    invoke-virtual {v5, v11, v15, v8, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v22, Lw0/nf;

    move-object/from16 v26, v1

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    invoke-direct/range {v22 .. v27}, Lw0/nf;-><init>(Li2/j;Landroid/widget/TextView;Lw0/i9;Landroid/widget/CheckBox;Lw0/c7;)V

    move-object/from16 v8, v22

    move-object/from16 v4, v26

    move-object/from16 v1, v27

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x6

    invoke-virtual {v9, v6}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v6

    invoke-virtual {v8, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v7, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Lw0/a0;

    const/16 v6, 0x9

    invoke-direct {v5, v4, v6, v1}, Lw0/a0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v7, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v1, p0

    move/from16 v15, v18

    move-object/from16 v8, v21

    move-object/from16 v11, v28

    move-object/from16 v12, v29

    const/4 v4, -0x1

    const/4 v6, 0x4

    const/4 v7, 0x0

    goto/16 :goto_14

    :cond_15
    move-object/from16 v28, v11

    invoke-virtual {v13, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, v9}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v13}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    const/16 v3, 0x14

    invoke-virtual {v9, v3}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v4

    const/16 v8, 0xc

    invoke-virtual {v9, v8}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v5

    invoke-virtual {v9, v3}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v3

    const/4 v6, 0x4

    invoke-virtual {v9, v6}, Lcom/ex/auto/QuickAccessFloaterService;->p(I)I

    move-result v6

    invoke-virtual {v1, v4, v5, v3, v6}, Landroid/view/View;->setPadding(IIII)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f0100

    invoke-virtual {v9, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v10}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Lcom/ex/auto/QuickAccessFloaterService;->o(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0f00fb

    invoke-virtual {v9, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lw0/e;

    const/4 v5, 0x2

    invoke-direct {v4, v0, v9, v14, v5}, Lw0/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f0036

    invoke-virtual {v9, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v2, Li2/m;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_16

    const/16 v1, 0x7f6

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_16
    iget-object v0, v2, Li2/m;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1a

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_17

    const v1, 0x7f070059

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_17
    :try_start_11
    iget-object v0, v2, Li2/m;->a:Ljava/lang/Object;

    if-eqz v0, :cond_19

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, v2, Li2/m;->a:Ljava/lang/Object;

    if-eqz v0, :cond_18

    check-cast v0, Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/ex/auto/QuickAccessFloaterService;->n(Landroid/app/AlertDialog;)V

    goto :goto_1b

    :catch_2
    move-exception v0

    goto :goto_1a

    :cond_18
    invoke-static/range {v28 .. v28}, Li2/g;->h(Ljava/lang/String;)V

    const/16 v17, 0x0

    throw v17

    :cond_19
    invoke-static/range {v28 .. v28}, Li2/g;->h(Ljava/lang/String;)V

    const/16 v17, 0x0

    throw v17
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    :goto_1a
    const-string v1, "QuickAccessFloater"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "confirmCloseUserApps: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v1}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1b
    return-void

    :cond_1a
    invoke-static/range {v28 .. v28}, Li2/g;->h(Ljava/lang/String;)V

    const/16 v17, 0x0

    throw v17

    :cond_1b
    const/16 v17, 0x0

    invoke-static/range {v28 .. v28}, Li2/g;->h(Ljava/lang/String;)V

    throw v17

    :pswitch_6
    iget-object v0, v1, Lw0/ab;->c:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/QuickAccessFloaterService;

    iget-object v2, v1, Lw0/ab;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    iget-boolean v3, v0, Lcom/ex/auto/QuickAccessFloaterService;->M:Z

    if-eqz v3, :cond_1c

    goto/16 :goto_1c

    :cond_1c
    if-nez v2, :cond_1d

    const v2, 0x7f0f00ef

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/ex/auto/QuickAccessFloaterService;->G(Ljava/lang/String;)V

    goto :goto_1c

    :cond_1d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x4

    if-eq v2, v6, :cond_1e

    const v2, 0x7f0f02a0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v15, 0x1

    invoke-static {v0, v2, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1c

    :cond_1e
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f02a1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0f029f

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0f029e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lw0/h;

    const/4 v11, 0x5

    invoke-direct {v4, v11, v0}, Lw0/h;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0f0036

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_1f

    const/16 v3, 0x7f6

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    :cond_1f
    :try_start_12
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    goto :goto_1c

    :catch_3
    move-exception v0

    const-string v2, "QuickAccessFloater"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "confirmPowerOffVehicle: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v2}, Landroidx/activity/result/b;->o(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1c
    return-void

    :pswitch_7
    iget-object v0, v1, Lw0/ab;->c:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/QuickAccessFloaterService;

    iget-object v2, v1, Lw0/ab;->b:Ljava/lang/Object;

    check-cast v2, Lh2/l;

    iget-boolean v3, v0, Lcom/ex/auto/QuickAccessFloaterService;->M:Z

    if-eqz v3, :cond_20

    goto :goto_1d

    :cond_20
    iget-object v0, v0, Lcom/ex/auto/QuickAccessFloaterService;->K:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_21

    goto :goto_1d

    :cond_21
    invoke-interface {v2, v0}, Lh2/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1d
    return-void

    :pswitch_8
    iget-object v0, v1, Lw0/ab;->c:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/QuickAccessFloaterService;

    iget-object v2, v1, Lw0/ab;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget v3, Lcom/ex/auto/QuickAccessFloaterService;->t0:I

    invoke-virtual {v0, v2}, Lcom/ex/auto/QuickAccessFloaterService;->G(Ljava/lang/String;)V

    return-void

    :pswitch_9
    iget-object v0, v1, Lw0/ab;->c:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/ex/auto/PhoneSyncService;

    iget-object v0, v1, Lw0/ab;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    sget-boolean v2, Lcom/ex/auto/PhoneSyncService;->z:Z

    sget-object v2, Lw0/d8;->a:Lw0/d8;

    const-string v2, "hvac_digital_temp"

    const/4 v11, 0x0

    invoke-interface {v0, v2, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v2, "hvac_digital_batt"

    invoke-interface {v0, v2, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v2, "hvac_digital_ext_temp"

    invoke-interface {v0, v2, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const/4 v7, 0x0

    sget-object v2, Lw0/d8;->a:Lw0/d8;

    invoke-virtual/range {v2 .. v7}, Lw0/d8;->j(Landroid/content/Context;ZZZLw0/e9;)Z

    return-void

    :pswitch_a
    iget-object v0, v1, Lw0/ab;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v2, v1, Lw0/ab;->b:Ljava/lang/Object;

    check-cast v2, Lw0/vd;

    sget-object v3, Lcom/ex/auto/ModoOficinaTriggerService;->f:Lcom/ex/auto/ModoOficinaTriggerService;

    iget-object v2, v2, Lw0/vd;->b:Ljava/lang/String;

    const/4 v15, 0x1

    invoke-static {v0, v2, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_b
    iget-object v0, v1, Lw0/ab;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v2, v1, Lw0/ab;->b:Ljava/lang/Object;

    check-cast v2, Lcom/ex/auto/ModoOficinaTriggerService;

    sget-object v3, Lcom/ex/auto/ModoOficinaTriggerService;->f:Lcom/ex/auto/ModoOficinaTriggerService;

    sget-object v3, Lw0/wd;->a:Lw0/wd;

    invoke-static {v0}, Li2/g;->b(Ljava/lang/Object;)V

    const-string v4, "gesto"

    invoke-virtual {v3, v0, v4}, Lw0/wd;->f(Landroid/content/Context;Ljava/lang/String;)Lw0/vd;

    move-result-object v3

    const/4 v11, 0x0

    iput-boolean v11, v2, Lcom/ex/auto/ModoOficinaTriggerService;->e:Z

    iget-boolean v4, v3, Lw0/vd;->a:Z

    if-nez v4, :cond_22

    new-instance v4, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lw0/ab;

    const/4 v11, 0x5

    invoke-direct {v2, v0, v11, v3}, Lw0/ab;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_22
    return-void

    :pswitch_c
    iget-object v0, v1, Lw0/ab;->c:Ljava/lang/Object;

    check-cast v0, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;

    iget-object v2, v1, Lw0/ab;->b:Ljava/lang/Object;

    if-eqz v0, :cond_23

    if-eqz v2, :cond_23

    :try_start_13
    invoke-virtual {v0, v2}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->unregister(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    :catchall_c
    :cond_23
    if-eqz v0, :cond_24

    :try_start_14
    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/mediacenter/MediaCenterAPI;->destroy()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    :catchall_d
    :cond_24
    return-void

    :pswitch_d
    iget-object v0, v1, Lw0/ab;->c:Ljava/lang/Object;

    check-cast v0, Lw0/xb;

    iget-object v2, v1, Lw0/ab;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0, v2}, Lw0/xb;->b(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lw0/xb;->a()V

    return-void

    :pswitch_e
    iget-object v0, v1, Lw0/ab;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ex/auto/MainActivity;

    iget-object v2, v1, Lw0/ab;->c:Ljava/lang/Object;

    check-cast v2, Lw0/vd;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_1e

    :cond_25
    iget-boolean v3, v2, Lw0/vd;->a:Z

    if-eqz v3, :cond_26

    sget-object v3, Lw0/wd;->a:Lw0/wd;

    invoke-static {v0}, Lw0/wd;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1e

    :cond_26
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->r1()V

    iget-boolean v3, v2, Lw0/vd;->a:Z

    if-eqz v3, :cond_27

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Le/l;

    const/4 v5, 0x2

    invoke-direct {v3, v0, v5}, Le/l;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1e

    :cond_27
    new-instance v3, Le/h;

    invoke-direct {v3, v0}, Le/h;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f05d7

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Le/h;->b:Ljava/lang/Object;

    check-cast v5, Le/d;

    iput-object v4, v5, Le/d;->d:Ljava/lang/CharSequence;

    iget-object v2, v2, Lw0/vd;->b:Ljava/lang/String;

    iput-object v2, v5, Le/d;->f:Ljava/lang/CharSequence;

    const v2, 0x7f0f0038

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v2}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3}, Le/h;->h()Le/i;

    :cond_28
    :goto_1e
    return-void

    :pswitch_f
    iget-object v0, v1, Lw0/ab;->c:Ljava/lang/Object;

    check-cast v0, Le/i;

    iget-object v2, v1, Lw0/ab;->b:Ljava/lang/Object;

    check-cast v2, Lcom/ex/auto/MainActivity;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    :try_start_15
    invoke-virtual {v0}, Le/i;->dismiss()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    :catchall_e
    invoke-virtual {v2}, Lcom/ex/auto/MainActivity;->S0()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
