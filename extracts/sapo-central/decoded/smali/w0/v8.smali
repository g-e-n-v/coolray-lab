.class public final synthetic Lw0/v8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;I)V
    .locals 0

    iput p2, p0, Lw0/v8;->a:I

    iput-object p1, p0, Lw0/v8;->b:Lcom/ex/auto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lw0/v8;->a:I

    const/4 v1, 0x2

    const/16 v2, 0x11

    const/16 v3, 0x10

    const/4 v4, 0x7

    const/4 v5, 0x3

    const v6, 0x7f0f0032

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw0/v8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->C:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lw0/x8;

    const/16 v3, 0x1b

    invoke-direct {v2, v0, v3}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lw0/v8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->s()V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lw0/v8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->L()V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lw0/v8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Lcom/ex/auto/MainActivity;->Y1(I)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lw0/v8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/ex/auto/MainActivity;->Y1(I)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lw0/v8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/ex/auto/MainActivity;->Y1(I)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_5
    iget-object v0, p0, Lw0/v8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/ex/auto/MainActivity;->Y1(I)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_6
    iget-object v0, p0, Lw0/v8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0, v9}, Lcom/ex/auto/MainActivity;->Y1(I)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_7
    iget-object v0, p0, Lw0/v8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    new-instance v1, Le/h;

    invoke-direct {v1, v0}, Le/h;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f02c5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Le/h;->b:Ljava/lang/Object;

    check-cast v3, Le/d;

    iput-object v2, v3, Le/d;->d:Ljava/lang/CharSequence;

    const v2, 0x7f0f02c4

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Le/d;->f:Ljava/lang/CharSequence;

    const v2, 0x7f0f0039

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lw0/z8;

    invoke-direct {v3, v0, v4}, Lw0/z8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v1, v2, v3}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v7}, Le/h;->c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Le/h;->h()Le/i;

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_8
    iget-object v0, p0, Lw0/v8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Le/j;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v4, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v4, 0x7f050087

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v1, v3

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->w0:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v3, v0, Lcom/ex/auto/MainActivity;->v0:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string v3, "\u2014"

    :cond_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v2, Le/h;

    invoke-direct {v2, v0}, Le/h;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f04dd

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Le/h;->b:Ljava/lang/Object;

    check-cast v4, Le/d;

    iput-object v3, v4, Le/d;->d:Ljava/lang/CharSequence;

    iput-object v1, v4, Le/d;->s:Landroid/view/View;

    const v3, 0x104000a

    invoke-virtual {v2, v3, v7}, Le/h;->e(ILandroid/content/DialogInterface$OnClickListener;)V

    const v3, 0x7f0f060f

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lw0/z8;

    const/16 v5, 0xe

    invoke-direct {v4, v0, v5}, Lw0/z8;-><init>(Lcom/ex/auto/MainActivity;I)V

    iget-object v5, v2, Le/h;->b:Ljava/lang/Object;

    check-cast v5, Le/d;

    iput-object v3, v5, Le/d;->k:Ljava/lang/String;

    iput-object v4, v5, Le/d;->l:Lw0/z8;

    const v3, 0x7f0f05ca

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lw0/z8;

    const/16 v5, 0xf

    invoke-direct {v4, v0, v5}, Lw0/z8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v2, v3, v4}, Le/h;->c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2}, Le/h;->h()Le/i;

    new-instance v0, Lw0/z9;

    invoke-direct {v0, v1, v8}, Lw0/z9;-><init>(Landroid/widget/ScrollView;I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_9
    iget-object v0, p0, Lw0/v8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->M0()V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_a
    iget-object v0, p0, Lw0/v8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    sget-object v1, Lw0/wd;->a:Lw0/wd;

    invoke-static {v0}, Lw0/wd;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lw0/wd;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Le/h;

    invoke-direct {v1, v0}, Le/h;-><init>(Landroid/content/Context;)V

    iget-object v3, v1, Le/h;->b:Ljava/lang/Object;

    check-cast v3, Le/d;

    const v4, 0x7f0f0249

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Le/d;->d:Ljava/lang/CharSequence;

    const v4, 0x7f0f0248

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Le/d;->f:Ljava/lang/CharSequence;

    const v3, 0x7f0f0246

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lw0/z8;

    invoke-direct {v4, v0, v2}, Lw0/z8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v1, v3, v4}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v7}, Le/h;->c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Le/h;->h()Le/i;

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->M0()V

    :goto_1
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_b
    iget-object v0, p0, Lw0/v8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->B:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lw0/x8;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v3}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget v1, v0, Lcom/ex/auto/MainActivity;->I:I

    iget v2, v0, Lcom/ex/auto/MainActivity;->G:I

    if-eq v1, v2, :cond_3

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->n1()V

    :cond_3
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_c
    iget-object v0, p0, Lw0/v8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->B:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lw0/f9;

    const/16 v3, 0x9

    invoke-direct {v2, v0, v8, v3}, Lw0/f9;-><init>(Lcom/ex/auto/MainActivity;ZI)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget-boolean v1, v0, Lcom/ex/auto/MainActivity;->t0:Z

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lcom/ex/auto/MainActivity;->s0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    :try_start_1
    iget-object v2, v0, Lcom/ex/auto/MainActivity;->B:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lw0/a9;

    const/4 v4, 0x5

    invoke-direct {v3, v0, v1, v4}, Lw0/a9;-><init>(Lcom/ex/auto/MainActivity;II)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_2
    new-instance v1, Ll2/c;

    invoke-direct {v1, v8, v5, v8}, Ll2/a;-><init>(III)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ly1/i;->X(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ll2/a;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    move-object v3, v1

    check-cast v3, Ll2/b;

    iget-boolean v4, v3, Ll2/b;->c:Z

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Ll2/b;->nextInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f0f0356

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iput-object v2, v0, Lcom/ex/auto/MainActivity;->d0:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->q1()V

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->M:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    iget-object v2, v0, Lcom/ex/auto/MainActivity;->u0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    :try_start_2
    iget-object v3, v0, Lcom/ex/auto/MainActivity;->B:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v4, Lw0/y9;

    invoke-direct {v4, v1, v0, v2}, Lw0/y9;-><init>(Landroid/car/hardware/property/CarPropertyManager;Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :goto_4
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->q1()V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_d
    iget-object v0, p0, Lw0/v8;->b:Lcom/ex/auto/MainActivity;

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->B:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lw0/x8;

    invoke-direct {v3, v0, v2}, Lw0/x8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_e
    iget-object v0, p0, Lw0/v8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-object v1, Lcom/ex/auto/CentralWatchdogService;->V2:Lcom/ex/auto/CentralWatchdogService;

    if-nez v1, :cond_7

    goto :goto_5

    :cond_7
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, La1/i;

    const/16 v4, 0x8

    invoke-direct {v3, v1, v4, v7}, La1/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :goto_5
    const v1, 0x7f0f0326

    const-string v2, "getString(...)"

    invoke-static {v1, v9, v0, v2}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_f
    iget-object v0, p0, Lw0/v8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "status_brightness2_enabled"

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->v1()V

    if-nez v1, :cond_8

    const v1, 0x7f0f02f8

    :goto_6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_8
    const v1, 0x7f0f02f9

    goto :goto_6

    :goto_7
    invoke-static {v1}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v9}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_10
    const-class v0, Lcom/ex/auto/AppPipFloaterService;

    iget-object v2, p0, Lw0/v8;->b:Lcom/ex/auto/MainActivity;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    const-string v3, "getString(...)"

    sget-object v4, Lcom/ex/auto/AppPipFloaterService;->x:Lcom/ex/auto/AppPipFloaterService;

    sget-object v4, Lcom/ex/auto/AppPipFloaterService;->x:Lcom/ex/auto/AppPipFloaterService;

    if-eqz v4, :cond_a

    sget-object v1, Lcom/ex/auto/AppPipFloaterService;->x:Lcom/ex/auto/AppPipFloaterService;

    if-nez v1, :cond_9

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_8

    :cond_9
    invoke-virtual {v1}, Lcom/ex/auto/AppPipFloaterService;->d()V

    :goto_8
    const v0, 0x7f0f009f

    invoke-static {v0, v9, v2, v3}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    goto :goto_9

    :cond_a
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v4}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const v0, 0x7f0f00a0

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v2, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v4, Lw0/c9;

    invoke-direct {v4, v2, v0, v1}, Lw0/c9;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_9
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_11
    const-class v0, Lcom/ex/auto/SplitFloaterService;

    iget-object v2, p0, Lw0/v8;->b:Lcom/ex/auto/MainActivity;

    sget v3, Lcom/ex/auto/MainActivity;->z1:I

    const-string v3, "getString(...)"

    sget-object v4, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    sget-object v4, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    if-eqz v4, :cond_d

    sget-object v1, Lcom/ex/auto/SplitFloaterService;->v:Lcom/ex/auto/SplitFloaterService;

    if-nez v1, :cond_b

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_a

    :cond_b
    iget-object v0, v1, Lcom/ex/auto/SplitFloaterService;->j:Lw0/mg;

    iget-object v4, v1, Lcom/ex/auto/SplitFloaterService;->k:Lw0/mg;

    if-nez v0, :cond_c

    if-nez v4, :cond_c

    invoke-virtual {v1}, Landroid/app/Service;->stopSelf()V

    goto :goto_a

    :cond_c
    iput-boolean v8, v1, Lcom/ex/auto/SplitFloaterService;->o:Z

    invoke-virtual {v1}, Lcom/ex/auto/SplitFloaterService;->h()V

    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lw0/hg;

    invoke-direct {v6, v4, v1, v0, v9}, Lw0/hg;-><init>(Lw0/mg;Lcom/ex/auto/SplitFloaterService;Lw0/mg;I)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    :goto_a
    const v0, 0x7f0f031e

    invoke-static {v0, v9, v2, v3}, Landroidx/activity/result/b;->n(IILcom/ex/auto/MainActivity;Ljava/lang/String;)V

    goto :goto_b

    :cond_d
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v4}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const v0, 0x7f0f031f

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Li2/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v2, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v4, Lw0/c9;

    invoke-direct {v4, v2, v0, v1}, Lw0/c9;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_b
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_12
    iget-object v0, p0, Lw0/v8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "gestures_ac_swipe_single_step"

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/2addr v1, v8

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->c1()V

    iget-object v2, v0, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lw0/f9;

    invoke-direct {v3, v1, v0, v5}, Lw0/f9;-><init>(ZLcom/ex/auto/MainActivity;I)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_13
    iget-object v0, p0, Lw0/v8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ex/auto/FavoriteAppsActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_14
    iget-object v0, p0, Lw0/v8;->b:Lcom/ex/auto/MainActivity;

    iget-object v1, v0, Lcom/ex/auto/MainActivity;->z0:Ljava/lang/Boolean;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_c

    :cond_e
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "speed_auto_lock_enabled"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_15
    iget-object v0, p0, Lw0/v8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    const-string v1, "\n\n"

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "aeb_restore_on_boot"

    invoke-interface {v2, v5, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_f

    new-instance v2, Le/h;

    invoke-direct {v2, v0}, Le/h;-><init>(Landroid/content/Context;)V

    iget-object v4, v2, Le/h;->b:Ljava/lang/Object;

    check-cast v4, Le/d;

    const v5, 0x7f0f008f

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Le/d;->d:Ljava/lang/CharSequence;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0f0089

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f0f008e

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0f0372

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Le/d;->f:Ljava/lang/CharSequence;

    const v1, 0x7f0f0033

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lw0/z8;

    invoke-direct {v4, v0, v3}, Lw0/z8;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-virtual {v2, v1, v4}, Le/h;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v7}, Le/h;->c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2}, Le/h;->h()Le/i;

    move-result-object v0

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Le/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_10

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_d

    :cond_f
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v5, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->v1()V

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->S2:[I

    sget-object v0, Lcom/ex/auto/CentralWatchdogService;->V2:Lcom/ex/auto/CentralWatchdogService;

    if-eqz v0, :cond_10

    iget-object v1, v0, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v2, Lw0/v2;

    invoke-direct {v2, v0, v4}, Lw0/v2;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_10
    :goto_d
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_16
    iget-object v0, p0, Lw0/v8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "aeb_desired"

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "aeb_state_saved"

    invoke-interface {v0, v3, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_17
    iget-object v0, p0, Lw0/v8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    new-instance v1, Lw0/p3;

    new-instance v2, Lw0/l9;

    invoke-direct {v2, v0, v9}, Lw0/l9;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v3, Lw0/e9;

    invoke-direct {v3, v0, v8}, Lw0/e9;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v4, Lw0/h9;

    invoke-direct {v4, v0, v5}, Lw0/h9;-><init>(Lcom/ex/auto/MainActivity;I)V

    new-instance v5, Lw0/h9;

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6}, Lw0/h9;-><init>(Lcom/ex/auto/MainActivity;I)V

    invoke-direct {v1, v2, v3, v4, v5}, Lw0/p3;-><init>(Lw0/l9;Lw0/e9;Lw0/h9;Lw0/h9;)V

    return-object v1

    :pswitch_18
    iget-object v0, p0, Lw0/v8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "rear_cam_hold_open_5s"

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->v1()V

    if-nez v1, :cond_11

    const v1, 0x7f0f02c0

    :goto_e
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_11
    const v1, 0x7f0f02bf

    goto :goto_e

    :goto_f
    invoke-static {v1}, Li2/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v9}, Lcom/ex/auto/MainActivity;->t2(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_19
    iget-object v0, p0, Lw0/v8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "rear_cam_turn_signal_enabled"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_1a
    iget-object v0, p0, Lw0/v8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ex/auto/AcProgramListActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_1b
    iget-object v0, p0, Lw0/v8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    const-string v1, "temp_batt_pill_prefs"

    invoke-virtual {v0, v1, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pill_text_white"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, Lcom/ex/auto/TempBattPillFloaterService;->v:Lcom/ex/auto/TempBattPillFloaterService;

    sget-object v0, Lcom/ex/auto/TempBattPillFloaterService;->v:Lcom/ex/auto/TempBattPillFloaterService;

    if-eqz v0, :cond_12

    invoke-virtual {v0, v9}, Lcom/ex/auto/TempBattPillFloaterService;->c(Z)V

    :cond_12
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    :pswitch_1c
    iget-object v0, p0, Lw0/v8;->b:Lcom/ex/auto/MainActivity;

    sget v1, Lcom/ex/auto/MainActivity;->z1:I

    const-string v1, "temp_batt_pill_prefs"

    invoke-virtual {v0, v1, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pill_text_white"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, Lcom/ex/auto/TempBattPillFloaterService;->v:Lcom/ex/auto/TempBattPillFloaterService;

    sget-object v0, Lcom/ex/auto/TempBattPillFloaterService;->v:Lcom/ex/auto/TempBattPillFloaterService;

    if-eqz v0, :cond_13

    invoke-virtual {v0, v8}, Lcom/ex/auto/TempBattPillFloaterService;->c(Z)V

    :cond_13
    sget-object v0, Lx1/e;->c:Lx1/e;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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
