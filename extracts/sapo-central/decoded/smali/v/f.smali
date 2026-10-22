.class public abstract Lv/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lk1/a;

.field public static final b:Ll/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, Lv/h;

    invoke-direct {v0}, Lk1/a;-><init>()V

    sput-object v0, Lv/f;->a:Lk1/a;

    goto :goto_0

    :cond_0
    new-instance v0, Lv/g;

    invoke-direct {v0}, Lv/g;-><init>()V

    sput-object v0, Lv/f;->a:Lk1/a;

    :goto_0
    new-instance v0, Ll/f;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ll/f;-><init>(I)V

    sput-object v0, Lv/f;->b:Ll/f;

    return-void
.end method

.method public static a(Landroid/content/Context;Lu/e;Landroid/content/res/Resources;ILjava/lang/String;IILu/b;Z)Landroid/graphics/Typeface;
    .locals 14

    move/from16 v4, p6

    move-object/from16 v1, p7

    instance-of v2, p1, Lu/h;

    const/4 v3, 0x3

    const/4 v6, -0x3

    if-eqz v2, :cond_d

    move-object v0, p1

    check-cast v0, Lu/h;

    iget-object v2, v0, Lu/h;->d:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    sget-object v8, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v8, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v8

    if-eqz v2, :cond_1

    invoke-virtual {v2, v8}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, v7

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, La1/i;

    invoke-direct {v0, v1, v3, v2}, La1/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-object v2

    :cond_3
    const/4 v8, 0x1

    if-eqz p8, :cond_5

    iget v2, v0, Lu/h;->c:I

    if-nez v2, :cond_4

    :goto_2
    move v2, v8

    goto :goto_3

    :cond_4
    move v2, v5

    goto :goto_3

    :cond_5
    if-nez v1, :cond_4

    goto :goto_2

    :goto_3
    const/4 v9, -0x1

    if-eqz p8, :cond_6

    iget v10, v0, Lu/h;->b:I

    goto :goto_4

    :cond_6
    move v10, v9

    :goto_4
    new-instance v11, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v12, Landroidx/emoji2/text/m;

    const/16 v13, 0x1b

    invoke-direct {v12, v13}, Landroidx/emoji2/text/m;-><init>(I)V

    iput-object v1, v12, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    iget-object v0, v0, Lu/h;->a:Lq0/b;

    new-instance v13, Landroidx/activity/result/c;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    iput-object v12, v13, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    iput-object v11, v13, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    if-eqz v2, :cond_9

    sget-object v1, Lz/g;->a:Ll/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lq0/b;->f:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lz/g;->a:Ll/f;

    invoke-virtual {v2, v1}, Ll/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    if-eqz v2, :cond_7

    new-instance p0, Landroidx/fragment/app/c;

    invoke-direct {p0, v12, v3, v2}, Landroidx/fragment/app/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v11, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_5
    move-object v7, v2

    goto/16 :goto_9

    :cond_7
    if-ne v10, v9, :cond_8

    invoke-static {v1, p0, v0, v4}, Lz/g;->a(Ljava/lang/String;Landroid/content/Context;Lq0/b;I)Lz/f;

    move-result-object p0

    invoke-virtual {v13, p0}, Landroidx/activity/result/c;->A(Lz/f;)V

    iget-object v7, p0, Lz/f;->a:Landroid/graphics/Typeface;

    goto/16 :goto_9

    :cond_8
    move-object v3, v0

    new-instance v0, Lz/d;

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lz/d;-><init>(Ljava/lang/String;Landroid/content/Context;Lq0/b;II)V

    :try_start_0
    sget-object p0, Lz/g;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    int-to-long v0, v10

    :try_start_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    check-cast p0, Lz/f;

    invoke-virtual {v13, p0}, Landroidx/activity/result/c;->A(Lz/f;)V

    iget-object v7, p0, Lz/f;->a:Landroid/graphics/Typeface;

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object p0, v0

    goto :goto_7

    :catch_2
    new-instance p0, Ljava/lang/InterruptedException;

    const-string v0, "timeout"

    invoke-direct {p0, v0}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_6
    throw p0

    :goto_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    :catch_3
    iget-object p0, v13, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    iget-object v0, v13, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/m;

    new-instance v1, Landroidx/emoji2/text/i;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v6, v2}, Landroidx/emoji2/text/i;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_9

    :cond_9
    sget-object v1, Lz/g;->a:Ll/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lq0/b;->f:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lz/g;->a:Ll/f;

    invoke-virtual {v2, v1}, Ll/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    if-eqz v2, :cond_a

    new-instance p0, Landroidx/fragment/app/c;

    invoke-direct {p0, v12, v3, v2}, Landroidx/fragment/app/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v11, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    :cond_a
    new-instance v2, Lz/e;

    invoke-direct {v2, v5, v13}, Lz/e;-><init>(ILjava/lang/Object;)V

    sget-object v5, Lz/g;->c:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    sget-object v3, Lz/g;->d:Ll/k;

    invoke-virtual {v3, v1, v7}, Ll/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_b

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v5

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_a

    :cond_b
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v1, v6}, Ll/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v0

    new-instance v0, Lz/d;

    const/4 v5, 0x1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lz/d;-><init>(Ljava/lang/String;Landroid/content/Context;Lq0/b;II)V

    sget-object p0, Lz/g;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lz/e;

    invoke-direct {v2, v8, v1}, Lz/e;-><init>(ILjava/lang/Object;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_c

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_8

    :cond_c
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    :goto_8
    new-instance v3, Lw0/u7;

    invoke-direct {v3}, Lw0/u7;-><init>()V

    iput-object v0, v3, Lw0/u7;->b:Ljava/lang/Object;

    iput-object v2, v3, Lw0/u7;->c:Ljava/lang/Object;

    iput-object v1, v3, Lw0/u7;->d:Ljava/lang/Object;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_9
    move-object p0, v7

    move-object/from16 v7, p2

    goto :goto_b

    :goto_a
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_d
    sget-object v5, Lv/f;->a:Lk1/a;

    move-object v0, p1

    check-cast v0, Lu/f;

    move-object/from16 v7, p2

    invoke-virtual {v5, p0, v0, v7, v4}, Lk1/a;->t(Landroid/content/Context;Lu/f;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz v1, :cond_f

    if-eqz p0, :cond_e

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, La1/i;

    invoke-direct {v2, v1, v3, p0}, La1/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b

    :cond_e
    invoke-virtual {v1, v6}, Lu/b;->a(I)V

    :cond_f
    :goto_b
    if-eqz p0, :cond_10

    sget-object v0, Lv/f;->b:Ll/f;

    invoke-static/range {p2 .. p6}, Lv/f;->b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ll/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-object p0
.end method

.method public static b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x2d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
